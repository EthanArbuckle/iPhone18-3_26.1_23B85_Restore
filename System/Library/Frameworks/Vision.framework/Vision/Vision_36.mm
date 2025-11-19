void std::vector<CGPointWithPts>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPointWithPts>>(v11);
    }

    v12 = 48 * v8;
    v13 = *a2;
    v14 = a2[2];
    *(v12 + 16) = a2[1];
    *(v12 + 32) = v14;
    *v12 = v13;
    v7 = 48 * v8 + 48;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    v3[1] = a2[1];
    v3[2] = v6;
    *v3 = v5;
    v7 = (v3 + 3);
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPointWithPts>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, unsigned int (**a5)(__int128 *, __int128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v76 = *a2;
  *v77 = v11;
  *&v77[16] = a2[2];
  v12 = a1[1];
  v73 = *a1;
  v74 = v12;
  v75 = a1[2];
  v13 = v10(&v76, &v73);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v76 = *a3;
    *v77 = v15;
    *&v77[16] = a3[2];
    v16 = a2[1];
    v73 = *a2;
    v74 = v16;
    v75 = a2[2];
    if (v14(&v76, &v73))
    {
      v18 = a1[1];
      v17 = a1[2];
      v19 = *a1;
      *v77 = v18;
      *&v77[16] = v17;
      v20 = *(a3 + 28);
      v21 = a3[1];
      *a1 = *a3;
      a1[1] = v21;
      *(a1 + 28) = v20;
LABEL_9:
      *a3 = v19;
      a3[1] = v18;
      *(a3 + 28) = *&v77[12];
      goto LABEL_10;
    }

    v37 = a1[2];
    v39 = *a1;
    *v77 = a1[1];
    v38 = *v77;
    *&v77[16] = v37;
    v40 = *(a2 + 28);
    v41 = a2[1];
    *a1 = *a2;
    a1[1] = v41;
    *(a1 + 28) = v40;
    *a2 = v39;
    a2[1] = v38;
    *(a2 + 28) = *&v77[12];
    v42 = *a5;
    v43 = a3[1];
    v76 = *a3;
    *v77 = v43;
    *&v77[16] = a3[2];
    v44 = a2[1];
    v73 = *a2;
    v74 = v44;
    v75 = a2[2];
    if (v42(&v76, &v73))
    {
      v18 = a2[1];
      v45 = a2[2];
      v19 = *a2;
      *v77 = v18;
      *&v77[16] = v45;
      v46 = *(a3 + 28);
      v47 = a3[1];
      *a2 = *a3;
      a2[1] = v47;
      *(a2 + 28) = v46;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = a3[1];
    v76 = *a3;
    *v77 = v22;
    *&v77[16] = a3[2];
    v23 = a2[1];
    v73 = *a2;
    v74 = v23;
    v75 = a2[2];
    if (v14(&v76, &v73))
    {
      v24 = a2[2];
      v26 = *a2;
      *v77 = a2[1];
      v25 = *v77;
      *&v77[16] = v24;
      v27 = *(a3 + 28);
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      *(a2 + 28) = v27;
      *a3 = v26;
      a3[1] = v25;
      *(a3 + 28) = *&v77[12];
      v29 = *a5;
      v30 = a2[1];
      v76 = *a2;
      *v77 = v30;
      *&v77[16] = a2[2];
      v31 = a1[1];
      v73 = *a1;
      v74 = v31;
      v75 = a1[2];
      if (v29(&v76, &v73))
      {
        v32 = a1[2];
        v34 = *a1;
        *v77 = a1[1];
        v33 = *v77;
        *&v77[16] = v32;
        v35 = *(a2 + 28);
        v36 = a2[1];
        *a1 = *a2;
        a1[1] = v36;
        *(a1 + 28) = v35;
        *a2 = v34;
        a2[1] = v33;
        *(a2 + 28) = *&v77[12];
      }
    }
  }

LABEL_10:
  v48 = *a5;
  v49 = a4[1];
  v76 = *a4;
  *v77 = v49;
  *&v77[16] = a4[2];
  v50 = a3[1];
  v73 = *a3;
  v74 = v50;
  v75 = a3[2];
  if (v48(&v76, &v73))
  {
    v52 = a3[2];
    v54 = *a3;
    *v77 = a3[1];
    v53 = *v77;
    *&v77[16] = v52;
    v55 = *(a4 + 28);
    v56 = a4[1];
    *a3 = *a4;
    a3[1] = v56;
    *(a3 + 28) = v55;
    *a4 = v54;
    a4[1] = v53;
    *(a4 + 28) = *&v77[12];
    v57 = *a5;
    v58 = a3[1];
    v76 = *a3;
    *v77 = v58;
    *&v77[16] = a3[2];
    v59 = a2[1];
    v73 = *a2;
    v74 = v59;
    v75 = a2[2];
    if (v57(&v76, &v73))
    {
      v60 = a2[2];
      v62 = *a2;
      *v77 = a2[1];
      v61 = *v77;
      *&v77[16] = v60;
      v63 = *(a3 + 28);
      v64 = a3[1];
      *a2 = *a3;
      a2[1] = v64;
      *(a2 + 28) = v63;
      *a3 = v62;
      a3[1] = v61;
      *(a3 + 28) = *&v77[12];
      v65 = *a5;
      v66 = a2[1];
      v76 = *a2;
      *v77 = v66;
      *&v77[16] = a2[2];
      v67 = a1[1];
      v73 = *a1;
      v74 = v67;
      v75 = a1[2];
      if (v65(&v76, &v73))
      {
        v68 = a1[2];
        v70 = *a1;
        *v77 = a1[1];
        v69 = *v77;
        *&v77[16] = v68;
        v71 = *(a2 + 28);
        v72 = a2[1];
        *a1 = *a2;
        a1[1] = v72;
        *(a1 + 28) = v71;
        *a2 = v70;
        a2[1] = v69;
        result = *&v77[12];
        *(a2 + 28) = *&v77[12];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*>(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v49 = a2 - 3;
        v50 = *a3;
        v51 = a1[4];
        v52 = a1[5];
        v53 = a1[2];
        v157 = a1[3];
        *v158 = v51;
        *&v158[16] = v52;
        v54 = a1[1];
        v154 = *a1;
        v155 = v54;
        v156 = v53;
        v55 = v50(&v157, &v154);
        v56 = *a3;
        if (v55)
        {
          v57 = v49[1];
          v157 = *v49;
          *v158 = v57;
          *&v158[16] = v49[2];
          v58 = a1[4];
          v154 = a1[3];
          v155 = v58;
          v156 = a1[5];
          if (v56(&v157, &v154))
          {
            v60 = a1[1];
            v59 = a1[2];
            v61 = *a1;
            *v158 = v60;
            *&v158[16] = v59;
            v62 = *(v49 + 28);
            v63 = v49[1];
            *a1 = *v49;
            a1[1] = v63;
            *(a1 + 28) = v62;
          }

          else
          {
            v113 = *a1;
            v114 = a1[2];
            v115 = a1[3];
            *v158 = a1[1];
            v112 = *v158;
            *&v158[16] = v114;
            a1[3] = v113;
            v117 = a1[3];
            v116 = a1[4];
            *a1 = v115;
            a1[1] = v116;
            *(a1 + 28) = *(a1 + 76);
            a1[4] = v112;
            *(a1 + 76) = *&v158[12];
            v118 = *a3;
            v119 = v49[1];
            v157 = *v49;
            *v158 = v119;
            *&v158[16] = v49[2];
            v120 = a1[4];
            v121 = a1[5];
            v154 = v117;
            v155 = v120;
            v156 = v121;
            if (!v118(&v157, &v154))
            {
              return 1;
            }

            v60 = a1[4];
            v122 = a1[5];
            v61 = a1[3];
            *v158 = v60;
            *&v158[16] = v122;
            v123 = *(v49 + 28);
            v124 = v49[1];
            a1[3] = *v49;
            a1[4] = v124;
            *(a1 + 76) = v123;
          }

          *v49 = v61;
          v49[1] = v60;
          *(v49 + 28) = *&v158[12];
          return 1;
        }

        v78 = v49[1];
        v157 = *v49;
        *v158 = v78;
        *&v158[16] = v49[2];
        v79 = a1[4];
        v154 = a1[3];
        v155 = v79;
        v156 = a1[5];
        if (!v56(&v157, &v154))
        {
          return 1;
        }

        v80 = a1[5];
        v82 = a1[3];
        *v158 = a1[4];
        v81 = *v158;
        *&v158[16] = v80;
        v83 = *(v49 + 28);
        v84 = v49[1];
        a1[3] = *v49;
        a1[4] = v84;
        *(a1 + 76) = v83;
        *v49 = v82;
        v49[1] = v81;
        *(v49 + 28) = *&v158[12];
        v85 = *a3;
        v86 = a1[4];
        v87 = a1[5];
        v88 = a1[2];
        v157 = a1[3];
        *v158 = v86;
        *&v158[16] = v87;
        v89 = a1[1];
        v154 = *a1;
        v155 = v89;
        v156 = v88;
        v48 = v85(&v157, &v154);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(CGPointWithPts,CGPointWithPts),CGPointWithPts*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        v16 = *a3;
        v17 = *(a2 - 2);
        v157 = *(a2 - 3);
        *v158 = v17;
        *&v158[16] = *(a2 - 1);
        v18 = a1[10];
        v154 = a1[9];
        v155 = v18;
        v156 = a1[11];
        if (!v16(&v157, &v154))
        {
          return 1;
        }

        v19 = a2 - 3;
        v20 = a1[11];
        v22 = a1[9];
        *v158 = a1[10];
        v21 = *v158;
        *&v158[16] = v20;
        v23 = *(a2 - 20);
        v24 = *(a2 - 2);
        a1[9] = *(a2 - 3);
        a1[10] = v24;
        *(a1 + 172) = v23;
        *v19 = v22;
        v19[1] = v21;
        *(v19 + 28) = *&v158[12];
        v25 = *a3;
        v26 = a1[10];
        v27 = a1[11];
        v28 = a1[8];
        v157 = a1[9];
        *v158 = v26;
        *&v158[16] = v27;
        v29 = a1[7];
        v154 = a1[6];
        v155 = v29;
        v156 = v28;
        if (!v25(&v157, &v154))
        {
          return 1;
        }

        v30 = a1[8];
        v32 = a1[5];
        v31 = a1[6];
        a1[6] = a1[9];
        v34 = a1[6];
        v33 = a1[7];
        a1[7] = a1[10];
        *(a1 + 124) = *(a1 + 172);
        a1[9] = v31;
        a1[10] = v33;
        *v158 = v33;
        *&v158[16] = v30;
        *(a1 + 172) = *&v158[12];
        v35 = *a3;
        v36 = a1[7];
        v37 = a1[8];
        v157 = v34;
        *v158 = v36;
        *&v158[16] = v37;
        v38 = a1[4];
        v154 = a1[3];
        v155 = v38;
        v156 = v32;
        if (!v35(&v157, &v154))
        {
          return 1;
        }

        v39 = a1[5];
        v41 = a1[2];
        v40 = a1[3];
        a1[3] = a1[6];
        v43 = a1[3];
        v42 = a1[4];
        a1[4] = a1[7];
        *(a1 + 76) = *(a1 + 124);
        a1[6] = v40;
        a1[7] = v42;
        *v158 = v42;
        *&v158[16] = v39;
        *(a1 + 124) = *&v158[12];
        v44 = *a3;
        v45 = a1[4];
        v46 = a1[5];
        v157 = v43;
        *v158 = v45;
        *&v158[16] = v46;
        v47 = a1[1];
        v154 = *a1;
        v155 = v47;
        v156 = v41;
        v48 = v44(&v157, &v154);
        break;
      default:
        goto LABEL_16;
    }

    if (v48)
    {
      v91 = *a1;
      v92 = a1[2];
      v93 = a1[3];
      *v158 = a1[1];
      v90 = *v158;
      *&v158[16] = v92;
      v94 = a1[4];
      *a1 = v93;
      a1[1] = v94;
      *(a1 + 28) = *(a1 + 76);
      a1[3] = v91;
      a1[4] = v90;
      *(a1 + 76) = *&v158[12];
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = *(a2 - 2);
    v157 = *(a2 - 3);
    *v158 = v8;
    *&v158[16] = *(a2 - 1);
    v9 = a1[1];
    v154 = *a1;
    v155 = v9;
    v156 = a1[2];
    if (v7(&v157, &v154))
    {
      v10 = a2 - 3;
      v11 = a1[2];
      v13 = *a1;
      *v158 = a1[1];
      v12 = *v158;
      *&v158[16] = v11;
      v14 = *(a2 - 20);
      v15 = *(a2 - 2);
      *a1 = *(a2 - 3);
      a1[1] = v15;
      *(a1 + 28) = v14;
      *v10 = v13;
      v10[1] = v12;
      *(v10 + 28) = *&v158[12];
    }

    return 1;
  }

LABEL_16:
  v64 = a1 + 6;
  v65 = *a3;
  v66 = a1[4];
  v67 = a1[5];
  v68 = a1[2];
  v157 = a1[3];
  *v158 = v66;
  *&v158[16] = v67;
  v69 = a1[1];
  v154 = *a1;
  v155 = v69;
  v156 = v68;
  v70 = v65(&v157, &v154);
  v71 = *a3;
  if (v70)
  {
    v72 = a1[7];
    v157 = *v64;
    *v158 = v72;
    *&v158[16] = a1[8];
    v73 = a1[4];
    v154 = a1[3];
    v155 = v73;
    v156 = a1[5];
    if (v71(&v157, &v154))
    {
      v75 = a1[1];
      v74 = a1[2];
      v76 = *a1;
      *v158 = v75;
      *&v158[16] = v74;
      v77 = a1[7];
      *a1 = *v64;
      a1[1] = v77;
      *(a1 + 28) = *(a1 + 124);
    }

    else
    {
      v126 = a1[2];
      v125 = a1[3];
      v127 = a1[1];
      a1[3] = *a1;
      v129 = a1[3];
      v128 = a1[4];
      *a1 = v125;
      a1[1] = v128;
      *(a1 + 28) = *(a1 + 76);
      a1[4] = v127;
      v130 = *v64;
      v131 = a1[7];
      *v158 = v127;
      *&v158[16] = v126;
      *(a1 + 76) = *&v158[12];
      v132 = *a3;
      v157 = v130;
      *v158 = v131;
      *&v158[16] = a1[8];
      v133 = a1[4];
      v134 = a1[5];
      v154 = v129;
      v155 = v133;
      v156 = v134;
      if (!v132(&v157, &v154))
      {
        goto LABEL_33;
      }

      v75 = a1[4];
      v135 = a1[5];
      v76 = a1[3];
      *v158 = v75;
      *&v158[16] = v135;
      v136 = a1[7];
      a1[3] = *v64;
      a1[4] = v136;
      *(a1 + 76) = *(a1 + 124);
    }

    *v64 = v76;
    a1[7] = v75;
    *(a1 + 124) = *&v158[12];
  }

  else
  {
    v95 = a1[7];
    v157 = *v64;
    *v158 = v95;
    *&v158[16] = a1[8];
    v96 = a1[4];
    v154 = a1[3];
    v155 = v96;
    v156 = a1[5];
    if (v71(&v157, &v154))
    {
      v97 = a1[5];
      v98 = a1[7];
      v100 = a1[2];
      v99 = a1[3];
      a1[3] = *v64;
      v102 = a1[3];
      v101 = a1[4];
      a1[4] = v98;
      *(a1 + 76) = *(a1 + 124);
      *v64 = v99;
      a1[7] = v101;
      *v158 = v101;
      *&v158[16] = v97;
      *(a1 + 124) = *&v158[12];
      v103 = *a3;
      v104 = a1[4];
      v105 = a1[5];
      v157 = v102;
      *v158 = v104;
      *&v158[16] = v105;
      v106 = a1[1];
      v154 = *a1;
      v155 = v106;
      v156 = v100;
      if (v103(&v157, &v154))
      {
        v108 = *a1;
        v109 = a1[2];
        v110 = a1[3];
        *v158 = a1[1];
        v107 = *v158;
        *&v158[16] = v109;
        v111 = a1[4];
        *a1 = v110;
        a1[1] = v111;
        *(a1 + 28) = *(a1 + 76);
        a1[3] = v108;
        a1[4] = v107;
        *(a1 + 76) = *&v158[12];
      }
    }
  }

LABEL_33:
  v137 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v138 = 0;
  v139 = 0;
  while (1)
  {
    v140 = *a3;
    v141 = v137[1];
    v157 = *v137;
    *v158 = v141;
    *&v158[16] = v137[2];
    v142 = *v64;
    v143 = v64[2];
    v155 = v64[1];
    v156 = v143;
    v154 = v142;
    if (v140(&v157, &v154))
    {
      v144 = v137[1];
      v157 = *v137;
      *v158 = v144;
      *&v158[16] = v137[2];
      v145 = v138;
      while (1)
      {
        v146 = (a1 + v145);
        v147 = *(a1 + v145 + 112);
        v146[9] = *(a1 + v145 + 96);
        v146[10] = v147;
        *(v146 + 172) = *(a1 + v145 + 124);
        if (v145 == -96)
        {
          break;
        }

        v148 = *a3;
        v154 = v157;
        v155 = *v158;
        v156 = *&v158[16];
        v149 = v146[4];
        v153[0] = v146[3];
        v153[1] = v149;
        v153[2] = v146[5];
        v145 -= 48;
        if (((v148)(&v154, v153) & 1) == 0)
        {
          v150 = (a1 + v145 + 144);
          goto LABEL_41;
        }
      }

      v150 = a1;
LABEL_41:
      v151 = *v158;
      *v150 = v157;
      v150[1] = v151;
      *(v150 + 28) = *&v158[12];
      if (++v139 == 8)
      {
        return v137 + 3 == a2;
      }
    }

    v64 = v137;
    v138 += 48;
    v137 += 3;
    if (v137 == a2)
    {
      return 1;
    }
  }
}

void sanitizeAllFrames(void *a1, void *a2, __int128 *a3, __int128 *a4, int a5, int a6)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a4)
  {
    v7 = a3;
    v10 = a5;
    v11 = a6;
    while (1)
    {
      v12 = v7[1];
      v25[0] = *v7;
      v25[1] = v12;
      v25[2] = v7[2];
      v13 = a2[1];
      if (a2[2] != v13)
      {
        v14 = a2[4];
        v15 = (v13 + 8 * (v14 / 0xAA));
        v16 = (*v15 - 4080 * (v14 / 0xAA) + 24 * v14);
        v17 = *(v13 + 8 * ((a2[5] + v14) / 0xAA)) - 4080 * ((a2[5] + v14) / 0xAA) + 24 * (a2[5] + v14);
        if (v16 != v17)
        {
          break;
        }
      }

LABEL_19:
      std::vector<CGPointWithPts>::push_back[abi:ne200100](a1, v25);
LABEL_20:
      v7 += 3;
      if (v7 == a4)
      {
        return;
      }
    }

    v18 = v25[0];
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      std::vector<CGPointWithPts>::__init_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(&v22, *v16, v16[1], 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 4));
      v19 = v22;
      if (v22 != v23)
      {
        break;
      }

LABEL_10:
      v20 = 1;
      if (v22)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (!v20)
      {
        goto LABEL_20;
      }

      v16 += 3;
      if ((v16 - *v15) == 4080)
      {
        v21 = v15[1];
        ++v15;
        v16 = v21;
      }

      if (v16 == v17)
      {
        goto LABEL_19;
      }
    }

    while (vabdd_f64(*v19, *&v18) >= v10 || vabdd_f64(v19[1], *(&v18 + 1)) >= v11)
    {
      v19 += 6;
      if (v19 == v23)
      {
        goto LABEL_10;
      }
    }

    v20 = 0;
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(v22);
    goto LABEL_12;
  }
}

void sub_1A5EF9C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CGPointWithPts>::__init_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CGPointWithPts>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5EF9CF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGPointWithPts>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPointWithPts>>(a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5EFC2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void *std::vector<CGPointWithPts>::__assign_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CGPointWithPts>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

void sub_1A5EFC83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<std::vector<double> ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void InternalObservedParabola::InternalObservedParabola(InternalObservedParabola *this)
{
  *(this + 56) = 0u;
  *(this + 12) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  v2 = *MEMORY[0x1E695EFF8];
  *(this + 8) = xmmword_1A6038D10;
  *(this + 9) = v2;
  *(this + 40) = 0;
  *(this + 11) = xmmword_1A6038D20;
  *(this + 12) = xmmword_1A6038D30;
  *(this + 13) = xmmword_1A6038D40;
  *(this + 14) = xmmword_1A6038D50;
  *(this + 15) = xmmword_1A6036B00;
  *(this + 16) = xmmword_1A6038D60;
  *(this + 17) = xmmword_1A6038D40;
  *(this + 18) = xmmword_1A6038D50;
  *(this + 19) = xmmword_1A6036B00;
  *(this + 20) = xmmword_1A6038D60;
  *(this + 21) = xmmword_1A6038D40;
  *(this + 22) = xmmword_1A6038D50;
  *(this + 23) = xmmword_1A6038D70;
  *(this + 24) = xmmword_1A6038D80;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = xmmword_1A6038D90;
  *(this + 28) = xmmword_1A6038DA0;
  *(this + 29) = xmmword_1A6038DB0;
  *(this + 30) = xmmword_1A6038DC0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = xmmword_1A6036B00;
  *(this + 37) = xmmword_1A6038D60;
  *(this + 38) = xmmword_1A6038D40;
  *(this + 39) = xmmword_1A6038D50;
  *(this + 717) = 0;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 40) = 0u;
  std::vector<float>::vector[abi:ne200100](this + 91, 4uLL);
  *(this + 94) = 0;
}

void sub_1A5EFCA20(_Unwind_Exception *a1)
{
  KalmanFilter::~KalmanFilter(v2);
  v5 = *(v1 + 104);
  if (v5)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 80);
  if (v6)
  {
    *(v1 + 88) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 8);
  if (v8)
  {
    *(v1 + 16) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

float32x4_t KalmanFilter::updateMeasurementAndPredict(KalmanFilter *this, CGPoint a2)
{
  v4 = *(this + 61);
  v3 = *(this + 62);
  x = a2.x;
  y = a2.y;
  if (v4 >= v3)
  {
    v6 = *(this + 60);
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<vision::mod::DescriptorItemSideInfo>>(v11);
    }

    *(16 * v8) = a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    v12 = *(this + 60);
    *(this + 60) = 0;
    *(this + 61) = v5;
    *(this + 62) = 0;
    if (v12)
    {
      operator delete(v12);
    }

    a2.x = x;
    a2.y = y;
  }

  else
  {
    *v4 = a2;
    v5 = &v4[1];
  }

  v13 = 0;
  *(this + 61) = v5;
  v14 = *(this + 21);
  v111 = vsubq_f64(a2, vcvtq_f64_f32(*(this + 320)));
  *(this + 33) = v111;
  v15 = *this;
  v16 = *(this + 1);
  v17 = *(this + 2);
  v18 = *(this + 3);
  v19 = vzip1q_s32(*this, v17);
  v20 = (this + 64);
  v123 = vld4q_f32(v20);
  v114 = v123;
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip1q_s32(v19, v21);
  v113 = *(this + 29);
  v23 = *(this + 22);
  v123.val[0] = *(this + 23);
  v123.val[1] = *(this + 24);
  v117.columns[0] = v14;
  v117.columns[1] = v23;
  v117.columns[2] = v123.val[0];
  v117.columns[3] = v123.val[1];
  do
  {
    *(&v118 + v13 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*&v117.columns[v13])), v16, *v117.columns[v13].f32, 1), v17, v117.columns[v13], 2), v18, v117.columns[v13], 3);
    ++v13;
  }

  while (v13 != 4);
  v24 = 0;
  v25 = vzip2q_s32(v15, v17);
  v26 = vzip2q_s32(v16, v18);
  v27 = vzip1q_s32(v25, v26);
  v28 = vzip2q_s32(v19, v21);
  v29 = vzip2q_s32(v25, v26);
  v30 = v118;
  v31 = v119;
  v32 = v120;
  v33 = v121;
  v117.columns[0] = v22;
  v117.columns[1] = v28;
  v108 = v28;
  v109 = v27;
  v117.columns[2] = v27;
  v117.columns[3] = v29;
  v110 = v29;
  do
  {
    *(&v118 + v24 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*&v117.columns[v24])), v31, *v117.columns[v24].f32, 1), v32, v117.columns[v24], 2), v33, v117.columns[v24], 3);
    ++v24;
  }

  while (v24 != 4);
  v34 = 0;
  v35 = vaddq_f32(v118, *(this + 12));
  v36 = vaddq_f32(v119, *(this + 13));
  v37 = vaddq_f32(v120, *(this + 14));
  v38 = vaddq_f32(v121, *(this + 15));
  v39 = *(this + 8);
  v40 = *(this + 9);
  v41 = *(this + 10);
  v42 = *(this + 11);
  v117.columns[0] = v35;
  v117.columns[1] = v36;
  v117.columns[2] = v37;
  v117.columns[3] = v38;
  do
  {
    *(&v118 + v34 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*&v117.columns[v34])), v40, *v117.columns[v34].f32, 1), v41, v117.columns[v34], 2), v42, v117.columns[v34], 3);
    ++v34;
  }

  while (v34 != 4);
  v43 = 0;
  v44 = v118;
  v45 = v119;
  v46 = v120;
  v47 = v121;
  v48 = vzip1q_s32(v39, v41);
  v98 = v42;
  v99 = v41;
  v96 = v40;
  v97 = v39;
  v49 = vzip2q_s32(v39, v41);
  v50 = vzip1q_s32(v40, v42);
  v51 = vzip2q_s32(v40, v42);
  v52 = vzip1q_s32(v48, v50);
  v53 = vzip2q_s32(v48, v50);
  v54 = vzip1q_s32(v49, v51);
  v55 = vzip2q_s32(v49, v51);
  v117.columns[0] = v52;
  v117.columns[1] = v53;
  v117.columns[2] = v54;
  v117.columns[3] = v55;
  do
  {
    *(&v118 + v43 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&v117.columns[v43])), v45, *v117.columns[v43].f32, 1), v46, v117.columns[v43], 2), v47, v117.columns[v43], 3);
    ++v43;
  }

  while (v43 != 4);
  v112 = v22;
  v56 = 0;
  v59.columns[2] = v120;
  v59.columns[3] = v121;
  v57 = *(this + 18);
  v58 = *(this + 19);
  v59.columns[0] = vaddq_f32(v118, *(this + 16));
  v59.columns[1] = vaddq_f32(v119, *(this + 17));
  v104 = v52;
  v105 = v53;
  v117.columns[0] = v52;
  v117.columns[1] = v53;
  v106 = v54;
  v107 = v55;
  v117.columns[2] = v54;
  v117.columns[3] = v55;
  do
  {
    *(&v118 + v56 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*&v117.columns[v56])), v36, *v117.columns[v56].f32, 1), v37, v117.columns[v56], 2), v38, v117.columns[v56], 3);
    ++v56;
  }

  while (v56 != 4);
  v100 = v38;
  v101 = v37;
  v102 = v36;
  v103 = v35;
  v59.columns[2] = vaddq_f32(v59.columns[2], v57);
  v59.columns[3] = vaddq_f32(v59.columns[3], v58);
  v94 = v118;
  v95 = v119;
  v92 = v121;
  v93 = v120;
  v122 = __invert_f4(v59);
  v60 = 0;
  v117 = v122;
  do
  {
    *(&v118 + v60 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v94, COERCE_FLOAT(*&v117.columns[v60])), v95, *v117.columns[v60].f32, 1), v93, v117.columns[v60], 2), v92, v117.columns[v60], 3);
    ++v60;
  }

  while (v60 != 4);
  v61 = 0;
  v62 = v118;
  v63 = v119;
  v64 = v120;
  v65 = v121;
  v66 = *(this + 25);
  v67 = *(this + 26);
  v68 = *(this + 27);
  v69 = *(this + 28);
  v117.columns[0] = v97;
  v117.columns[1] = v96;
  v117.columns[2] = v99;
  v117.columns[3] = v98;
  do
  {
    *(&v118 + v61 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*&v117.columns[v61])), v63, *v117.columns[v61].f32, 1), v64, v117.columns[v61], 2), v65, v117.columns[v61], 3);
    ++v61;
  }

  while (v61 != 4);
  v70 = 0;
  v71 = vsubq_f32(v66, v118);
  v72 = vsubq_f32(v67, v119);
  v73 = vsubq_f32(v68, v120);
  v74 = vsubq_f32(v69, v121);
  v117.columns[0] = v103;
  v117.columns[1] = v102;
  v117.columns[2] = v101;
  v117.columns[3] = v100;
  do
  {
    *(&v118 + v70 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*&v117.columns[v70])), v72, *v117.columns[v70].f32, 1), v73, v117.columns[v70], 2), v74, v117.columns[v70], 3);
    ++v70;
  }

  while (v70 != 4);
  v75 = x;
  v76 = y;
  v77 = v111.f64[0];
  v78 = v111.f64[1];
  v79.i64[0] = __PAIR64__(LODWORD(v76), LODWORD(v75));
  v79.i64[1] = __PAIR64__(LODWORD(v78), LODWORD(v77));
  v80 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v112, v75), v108, v76), v109, v77), v110, v78), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114.val[0], v113.f32[0]), v114.val[1], *v113.f32, 1), v114.val[2], v113, 2), v114.val[3], v113, 3));
  v81 = vzip2q_s32(v62, v64);
  v82 = vzip2q_s32(v63, v65);
  v83 = vsubq_f32(v79, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, v80.f32[0]), v105, *v80.f32, 1), v106, v80, 2), v107, v80, 3));
  v84 = vzip1q_s32(v62, v64);
  v85 = vzip1q_s32(v63, v65);
  v86 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v84, v85), v83.f32[0]), vzip2q_s32(v84, v85), *v83.f32, 1), vzip1q_s32(v81, v82), v83, 2), vzip2q_s32(v81, v82), v83, 3);
  v87 = v118;
  v88 = v119;
  v89 = v120;
  v90 = v121;
  result = vaddq_f32(v80, v86);
  *(this + 20) = result;
  *(this + 21) = v87;
  *(this + 22) = v88;
  *(this + 23) = v89;
  *(this + 24) = v90;
  return result;
}

uint64_t *std::__tree<std::__value_type<int,InternalObservedParabola>,std::__map_value_compare<int,std::__value_type<int,InternalObservedParabola>,std::less<int>,true>,std::allocator<std::__value_type<int,InternalObservedParabola>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A5EFD1C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<int,InternalObservedParabola>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,InternalObservedParabola>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t InternalObservedParabola::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  if (a1 == a2)
  {
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v8;
    v9 = *(a2 + 128);
    v10 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v9;
    *(a1 + 144) = v10;
    memcpy((a1 + 176), (a2 + 176), 0x1E0uLL);
    *(a1 + 704) = *(a2 + 704);
    v11 = *(a2 + 720);
    *(a1 + 724) = *(a2 + 724);
    *(a1 + 720) = v11;
  }

  else
  {
    std::vector<CGPointWithPts>::__assign_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    std::vector<CGPointWithPts>::__assign_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>((a1 + 56), *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 4));
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    v5 = *(a2 + 128);
    v6 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v5;
    *(a1 + 144) = v6;
    memcpy((a1 + 176), (a2 + 176), 0x1E0uLL);
    std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>((a1 + 656), *(a2 + 656), *(a2 + 664), (*(a2 + 664) - *(a2 + 656)) >> 4);
    std::vector<CGPoint>::__assign_with_size[abi:ne200100]<CGPoint*,CGPoint*>((a1 + 680), *(a2 + 680), *(a2 + 688), (*(a2 + 688) - *(a2 + 680)) >> 4);
    *(a1 + 704) = *(a2 + 704);
    v7 = *(a2 + 720);
    *(a1 + 724) = *(a2 + 724);
    *(a1 + 720) = v7;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 728), *(a2 + 728), *(a2 + 736), (*(a2 + 736) - *(a2 + 728)) >> 2);
  }

  *(a1 + 752) = *(a2 + 752);
  return a1;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<int,InternalObservedParabola>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,InternalObservedParabola>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      InternalObservedParabola::~InternalObservedParabola((v2 + 48));
    }

    operator delete(v2);
  }

  return a1;
}

void KalmanFilter::~KalmanFilter(KalmanFilter *this)
{
  v2 = *(this + 63);
  if (v2)
  {
    *(this + 64) = v2;
    operator delete(v2);
  }

  v3 = *(this + 60);
  if (v3)
  {
    *(this + 61) = v3;
    operator delete(v3);
  }
}

uint64_t std::function<std::vector<double> ()(double)>::operator()(double a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (!a3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a3 + 48))(a3, &v4);
}

uint64_t std::__function::__value_func<std::vector<double> ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1A5EFD57C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<std::vector<CGPointWithPts>>::push_back(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 170 * ((v4 - v5) >> 3) - 1;
  }

  v7 = a1[4];
  v8 = a1[5] + v7;
  if (v6 == v8)
  {
    if (v7 < 0xAA)
    {
      v9 = a1[3];
      v10 = v9 - *a1;
      if (v4 - v5 < v10)
      {
        operator new();
      }

      v11 = v10 >> 2;
      if (v9 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v12);
    }

    a1[4] = v7 - 170;
    v15 = *v5;
    a1[1] = v5 + 8;
    std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>(a1, &v15);
    v5 = a1[1];
    v8 = a1[5] + a1[4];
  }

  v13 = (*&v5[8 * (v8 / 0xAA)] - 4080 * (v8 / 0xAA) + 24 * v8);
  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  result = std::vector<CGPointWithPts>::__init_with_size[abi:ne200100]<CGPointWithPts*,CGPointWithPts*>(v13, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  ++a1[5];
  return result;
}

void sub_1A5EFDA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void vision::mod::ImageClassifierGlimmer::classifyImage_Planar8(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierGlimmer::classifyImage_BGRA8888(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierGlimmer::classifyImage_RGBA8888(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  exception = __cxa_allocate_exception(8uLL);
  *exception = 3967;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void vision::mod::ImageClassifierGlimmer::classifyDescriptorHandler(vision::mod::ImageClassifierGlimmer *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v21, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
  v5 = v21;
  v6 = v22;
  if (v21 != v22)
  {
    v7 = 0;
    do
    {
      v8 = *(*(this + 15) + 40);
      cblas_sasum_NEWLAPACK();
      v10 = v9;
      cblas_snrm2_NEWLAPACK();
      v12 = v11;
      cblas_sasum_NEWLAPACK();
      v14 = v13;
      cblas_snrm2_NEWLAPACK();
      v16 = v15;
      cblas_sdot_NEWLAPACK();
      v18 = v17;
      v24 = v5;
      v19 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5);
      v20 = fmax((((v12 * v12) - ((v10 * v10) / v8)) * ((v16 * v16) - ((v14 * v14) / v8))), 0.000001);
      v19[10] = 1.0 / (expf(((1.0 / sqrtf(v20)) * (v18 - ((v10 * v14) / v8))) * -10.0) + 1.0);
      ++v7;
      v5 += 3;
    }

    while (v5 != v6);
  }

  v25 = &v21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
}

uint64_t *vision::mod::ImageClassifierGlimmer::setDescriptorProcessor(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[15];
  if (!v2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v29 = 3965;
    goto LABEL_27;
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v2[1];
  *v2 = v6;
  v2[1] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a1[15];
  if (!*a2)
  {
    v8[5] = 0;
    return a1;
  }

  v9 = (*(**v8 + 128))();
  v10 = a1[15];
  *(v10 + 40) = v9 >> 2;
  v11 = (v10 + 56);
  v12 = *(v10 + 79);
  if (*(v10 + 48) == 1)
  {
    if (v12 < 0)
    {
      v11 = *v11;
    }

    v13 = (v10 + 80);
    if (*(v10 + 103) < 0)
    {
      v13 = *v13;
    }

    v14 = fopen(v11, "rb");
    if (v14)
    {
      v15 = v14;
      v32 = 0;
      v35 = 0;
      fseek(v14, 0, 0);
      v16 = BinSerializer_freadInBytes(v15, v13, &v32, &v35);
      v17 = v32;
      if (v32 && v16 == 128)
      {
        vision::mod::ImageClassifierGlimmer::private_t::loadData(v10, v32, v35, -1431655765 * ((a1[2] - a1[1]) >> 3));
        free(v17);
        fclose(v15);
        return a1;
      }

      fclose(v15);
      free(v17);
      exception = __cxa_allocate_exception(8uLL);
      v29 = 3957;
LABEL_27:
      *exception = v29;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

LABEL_25:
    exception = __cxa_allocate_exception(8uLL);
    v29 = 3964;
    goto LABEL_27;
  }

  if (v12 < 0)
  {
    v11 = *v11;
  }

  v18 = fopen(v11, "rb");
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = MEMORY[0x1AC5576A0]();
  fseek(v19, 0, 2);
  v21 = MEMORY[0x1AC5576A0](v19);
  fseek(v19, v20, 0);
  v22 = v21 - v20;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v32, a1[1], a1[2], 0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3));
  v24 = v32;
  v23 = v33;
  v25 = malloc_type_malloc(v22, 0x100004052888210uLL);
  v26 = v25;
  if (!v25)
  {
    fclose(v19);
    v30 = __cxa_allocate_exception(8uLL);
    *v30 = 3963;
    __cxa_throw(v30, MEMORY[0x1E69E54B0], 0);
  }

  if (fread(v25, 1uLL, v22, v19) != v22)
  {
    free(v26);
    fclose(v19);
    v31 = __cxa_allocate_exception(8uLL);
    *v31 = 3964;
    __cxa_throw(v31, MEMORY[0x1E69E54B0], 0);
  }

  vision::mod::ImageClassifierGlimmer::private_t::loadData(v10, v26, v22, -1431655765 * ((v23 - v24) >> 3));
  free(v26);
  fclose(v19);
  v35 = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v35);
  return a1;
}

void sub_1A5EFE114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void vision::mod::ImageClassifierGlimmer::private_t::loadData(vision::mod::ImageClassifierGlimmer::private_t *this, void *a2, size_t a3, int a4)
{
  v7 = a4;
  v8 = *(this + 5) * a4;
  std::vector<float>::resize((this + 16), v8);
  if (a3 == 4 * v8)
  {
    v9 = *(this + 2);

    memcpy(v9, a2, a3);
  }

  else
  {
    if (v8 != a3)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 3964;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    v10 = *(this + 2);
    v11 = *(this + 5) * v7;

    vDSP_vfltu8(a2, 1, v10, 1, v11);
  }
}

uint64_t vision::mod::ImageClassifierGlimmer::getDescriptorProcessor@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void vision::mod::ImageClassifierGlimmer::~ImageClassifierGlimmer(vision::mod::ImageClassifierGlimmer *this)
{
  *this = &unk_1F1974098;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1974098;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  vision::mod::ImageClassifierAbstract::~ImageClassifierAbstract(this);
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierGlimmer::private_t>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierGlimmer::private_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void normalizeArray(float *a1, unsigned int a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = 1;
  v7 = *a1;
  do
  {
    v8 = a1[v6];
    if (v8 <= v7)
    {
      if (v8 < v4)
      {
        v4 = a1[v6];
      }
    }

    else
    {
      v7 = a1[v6];
    }

    ++v6;
  }

  while (a2 != v6);
  v11 = v2;
  v12 = v3;
  if (v4 == v7)
  {
    if (v4 != 0.0 && v7 != 1.0)
    {
      v10 = 1065353216;
      memset_pattern4(a1, &v10, 4 * a2);
    }
  }

  else
  {
    v9 = 1.0 / (v7 - v4);
    do
    {
      *a1 = v9 * (*a1 - v4);
      ++a1;
      --v5;
    }

    while (v5);
  }
}

void boxFilter(float *a1, unsigned int a2, unsigned int a3, int a4, float *a5)
{
  v10 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  v11 = 0;
  v12 = a2 - (a3 >> 1);
  if (a4)
  {
    v13 = v10;
  }

  else
  {
    v13 = a5;
  }

  v14 = a3 >> 1;
  v15 = a2 - (a3 | 1) + 1;
  v16 = 1.0 / a3;
  if (a4)
  {
    v17 = a5;
  }

  else
  {
    v17 = v10;
  }

  v18 = v16;
  v19 = a2 - (a3 & 0xFFFFFFFE);
  v20 = a2 + (a3 >> 1) - (a3 & 0xFFFFFFFE);
  do
  {
    v21 = 0;
    if (a3)
    {
      v52 = v14 + 1;
      do
      {
        v53 = 0.0;
        v54 = v21;
        do
        {
          v53 = v53 + a1[(v12 + v54++)];
        }

        while (v54 < v14);
        v55 = 0;
        do
        {
          v53 = v53 + a1[v55++];
        }

        while (v52 != v55);
        v17[v21++] = v16 * v53;
        ++v52;
      }

      while (v21 != v14);
      v56 = 0;
      v57 = 0;
      v58 = a1;
      v59 = a3 >> 1;
      v60 = a3 | 1;
      do
      {
        v61 = 0.0;
        if (v59 - v14 < (v14 + 1 + v59))
        {
          v62 = v56 + v60;
          v63 = v58;
          do
          {
            v64 = *v63++;
            v61 = v61 + v64;
            --v62;
          }

          while (v62);
        }

        v17[v59++] = v16 * v61;
        ++v57;
        ++v60;
        --v56;
        ++v58;
      }

      while (v57 != v19);
      if (a3 >= 2)
      {
        v65 = 0;
        v66 = v15;
        v67 = a3 - 1;
        v68 = 1;
        v69 = v12;
        do
        {
          v70 = 0.0;
          if (v69 - v12 < (a3 - 1))
          {
            v71 = v66;
            v72 = v67;
            do
            {
              v70 = v70 + a1[v71++];
              --v72;
            }

            while (v72);
          }

          v73 = 0;
          do
          {
            v70 = v70 + a1[v73++];
          }

          while (v68 != v73);
          v17[v69++] = v16 * v70;
          ++v65;
          ++v68;
          --v67;
          ++v66;
        }

        while (v65 != v14);
      }
    }

    else
    {
      v22 = v12;
      v23 = v14 + 1;
      do
      {
        v24 = 0;
        v25 = 0.0;
        v26 = v22;
        v27 = 0.0;
        do
        {
          if (v24)
          {
            v27 = v27 + a1[v26];
          }

          else
          {
            v25 = v25 + a1[(v12 + v21)];
          }

          ++v26;
          ++v24;
        }

        while (v21 + v24 < v14);
        v28 = v23;
        v29 = a1;
        do
        {
          if (v28 == 1)
          {
            v25 = v25 + a1[v21 + v14];
          }

          else
          {
            v27 = v27 + *v29;
          }

          ++v29;
          --v28;
        }

        while (v28);
        v30 = (v27 + v25 * 0.5) * v18;
        v17[v21++] = v30;
        ++v23;
        ++v22;
      }

      while (v21 != v14);
      v31 = a1 + 1;
      v32 = a3 >> 1;
      do
      {
        v33 = (v14 + v32);
        v34 = 0.0;
        if (v32 - v14 + 1 < v33)
        {
          v35 = 0.0;
          v36 = v31;
          v37 = (a3 & 0xFFFFFFFE) - 1;
          do
          {
            v38 = *v36++;
            v35 = v35 + v38;
            --v37;
          }

          while (v37);
          v34 = v35;
        }

        v39 = (v34 + (a1[v32 - v14] + a1[v33]) * 0.5) * v18;
        v17[v32++] = v39;
        ++v31;
      }

      while (v20 != v32);
      if (a3 >= 2)
      {
        v40 = 0;
        v41 = a3;
        v42 = v15;
        v43 = 1;
        v44 = v12;
        do
        {
          v45 = v44 - v12;
          v46 = 0.0;
          v47 = 0.0;
          if (v44 - v12 < a3)
          {
            v48 = 0;
            v49 = v42;
            do
            {
              if (v48)
              {
                v46 = v46 + a1[v49];
              }

              else
              {
                v47 = v47 + a1[(v15 + v45)];
              }

              ++v49;
              ++v48;
            }

            while (v41 != v48);
          }

          v50 = 0;
          do
          {
            if (v40 == v50)
            {
              v47 = v47 + a1[v45];
            }

            else
            {
              v46 = v46 + a1[v50];
            }

            ++v50;
          }

          while (v43 != v50);
          v51 = (v46 + v47 * 0.5) * v18;
          v17[v44++] = v51;
          ++v40;
          ++v43;
          ++v42;
          --v41;
        }

        while (v40 != v14);
      }
    }

    if (v11)
    {
      v74 = a1;
    }

    else
    {
      v74 = v13;
    }

    ++v11;
    a1 = v17;
    v17 = v74;
  }

  while (v11 != a4);
  if (v10)
  {

    free(v10);
  }
}

void findPeaks(float *a1, int a2, float *a3, _DWORD *a4, float a5, float a6)
{
  v10 = 4 * a2;
  v11 = a2;
  v12 = malloc_type_malloc(v10, 0x100004052888210uLL);
  v13 = malloc_type_malloc(v10, 0x100004052888210uLL);
  v14 = v13;
  v15 = 0;
  v16 = (a2 - 1);
  *v12 = (a1[1] - a1[v16]) * 0.5;
  v17 = v16 - 1;
  do
  {
    v12[v15 + 1] = (a1[v15 + 2] - a1[v15]) * 0.5;
    ++v15;
  }

  while (v17 != v15);
  v18 = 0;
  v19 = &a1[a2];
  v12[v16] = (*a1 - *(v19 - 2)) * 0.5;
  *v13 = (a1[1] + (*a1 * -2.0)) + a1[v16];
  do
  {
    v13[v18 + 1] = (a1[v18 + 2] + (a1[v18 + 1] * -2.0)) + a1[v18];
    ++v18;
    --v17;
  }

  while (v17);
  v20 = 0;
  if (a6 > 0.0)
  {
    a5 = 0.0;
  }

  v13[v16] = (*a1 + (a1[v16] * -2.0)) + *(v19 - 2);
  v21 = a2;
  v22 = (a2 + 1);
  v23 = 1;
  v24 = 0.5;
  v116 = a2;
  v107 = a5;
  v108 = a6;
  v118 = v11;
  do
  {
    if (v23 == v11)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    if (v12[v23 - 1] <= 0.0)
    {
      goto LABEL_210;
    }

    v26 = v12[v25];
    if (v26 > 0.0)
    {
      goto LABEL_210;
    }

    if (v26 == 0.0)
    {
      v27 = v25;
      while (1)
      {
        v28 = v27 >= a2 ? a2 : 0;
        v30 = v27 - v28;
        if (v12[v30] < 0.0)
        {
          break;
        }

        if (++v27 >= v25 + a2)
        {
          goto LABEL_210;
        }
      }

      v29 = v25;
      if (v25 == -1)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v29 = v23 - 1;
      v30 = v25;
    }

    v31 = v14[v23 - 1];
    if (v31 >= 0.0 && (v32 = v14[v25], v32 <= 0.0) || v31 <= 0.0 && (v32 = v14[v25], v32 >= 0.0))
    {
      v29 = v23 - 2;
      if (v23 == 1)
      {
        v29 = v16;
      }

      if (v25 == v16)
      {
        v30 = 0;
      }

      else
      {
        v30 = v25 + 1;
      }

      if ((v31 + v14[v29]) >= 0.0 || (v32 + v14[v30]) >= 0.0)
      {
        goto LABEL_210;
      }

      if (v31 >= 0.0)
      {
        v30 = v25;
      }
    }

    v33 = 0;
    v34 = v29;
    v35 = v30;
    v36 = -1;
    v37 = 0xFFFFFFFFLL;
    v38 = v29;
    v39 = ((a1[v29] + a1[v30]) * v24) * v24;
    v40 = 0xFFFFFFFFLL;
    v41 = -1;
    v42 = -1;
    v43 = -1;
    while (1)
    {
      v44 = v38 >= a2 ? a2 : 0;
      v45 = v38 >= 0 ? -v44 : a2;
      v46 = v45 + v38;
      v47 = v45 + v38 - a2;
      v48 = v45 + v38 <= a2 ? 0 : a2;
      v49 = v46 >= 1 ? -v48 : a2;
      v50 = (v46 + v49 - 1);
      v51 = a1[v46];
      if (v51 < v39)
      {
        break;
      }

      if (v12[v50] < 0.0 && v12[v46] >= 0.0)
      {
        v43 = v46;
        v42 = v50;
      }

      v52 = v14[v50];
      if (v33)
      {
        if (v52 >= 0.0 || (v53 = v14[v46], v53 < 0.0) || v12[v46] >= 0.0)
        {
          v33 = 1;
          goto LABEL_93;
        }
      }

      else if (v52 <= 0.0 || (v53 = v14[v46], v53 > 0.0))
      {
        v33 = 0;
        goto LABEL_93;
      }

      if (v53 == 0.0)
      {
        do
        {
          if (v46 >= a2)
          {
            v54 = a2;
          }

          else
          {
            v54 = 0;
          }

          if (v46 >= 0)
          {
            v55 = -v54;
          }

          else
          {
            v55 = a2;
          }

          v56 = (v55 + v46);
          if (a1[v56] < v39)
          {
            v41 = v50;
            if (v33)
            {
              v50 = v37;
            }

            else
            {
              v50 = v50;
            }

            if (!v33)
            {
              v36 = v55 + v46;
            }

            goto LABEL_87;
          }

          v57 = v14[v56];
          if (v33)
          {
            if (v57 > 0.0)
            {
              v41 = v50;
              LODWORD(v40) = v55 + v46;
              if (v56 == -1)
              {
                goto LABEL_210;
              }

              goto LABEL_102;
            }
          }

          else if (v57 < 0.0)
          {
            v36 = v55 + v46;
            v56 = v40;
            goto LABEL_88;
          }

          --v46;
        }

        while (v46 > v47);
        v56 = v40;
        v50 = v37;
        if (!v33)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v33)
        {
          v41 = v46;
          v56 = v50;
        }

        else
        {
          v56 = v40;
        }

        if (v33)
        {
          v50 = v37;
        }

        else
        {
          v36 = v50;
          v50 = v46;
        }

LABEL_87:
        if (!v33)
        {
LABEL_88:
          if (v36 == -1)
          {
            goto LABEL_210;
          }
        }
      }

      if (v56 == -1 && v33 == 1)
      {
        goto LABEL_210;
      }

      if (v33)
      {
        LODWORD(v40) = v56;
        LODWORD(v37) = v50;
        goto LABEL_102;
      }

      v33 = 1;
      v40 = v56;
      v37 = v50;
LABEL_93:
      if (--v38 <= v29 - a2)
      {
        goto LABEL_102;
      }
    }

    if (!v33)
    {
      LODWORD(v37) = v46;
      v36 = v50;
    }

    v43 = v46;
    v42 = v50;
    v41 = v46;
    LODWORD(v40) = v50;
LABEL_102:
    v58 = 0;
    v59 = v30 + a2;
    v60 = -1;
    v61 = v30;
    v62 = -1;
    v121 = -1;
    v122 = -1;
    v120 = -1;
    v123 = -1;
    while (2)
    {
      if (v61 >= a2)
      {
        v63 = a2;
      }

      else
      {
        v63 = 0;
      }

      if (v61 >= 0)
      {
        v64 = -v63;
      }

      else
      {
        v64 = a2;
      }

      v65 = v64 + v61;
      if (v64 + v61 <= a2)
      {
        v66 = 0;
      }

      else
      {
        v66 = a2;
      }

      if (v65 >= 1)
      {
        v67 = -v66;
      }

      else
      {
        v67 = a2;
      }

      v68 = v65 + v67 - 1;
      v69 = a1[v65];
      if (v69 >= v39)
      {
        if (v12[v68] < 0.0 && v12[v65] >= 0.0)
        {
          v62 = v68;
          v60 = v65;
        }

        v70 = v14[v68];
        if (v58)
        {
          if (v70 <= 0.0 || (v71 = v14[v65], v71 > 0.0) || v12[v65] <= 0.0)
          {
            v58 = 1;
            goto LABEL_163;
          }
        }

        else if (v70 >= 0.0 || (v71 = v14[v65], v71 < 0.0))
        {
          v58 = 0;
LABEL_163:
          if (++v61 >= v59)
          {
            goto LABEL_173;
          }

          continue;
        }

        if (v71 == 0.0)
        {
          v72 = v65 + a2;
          while (1)
          {
            v73 = v65 >= a2 ? a2 : 0;
            v74 = v65 >= 0 ? -v73 : a2;
            v75 = v74 + v65;
            if (a1[v74 + v65] < v39)
            {
              break;
            }

            v76 = v14[v75];
            if (v58)
            {
              if (v76 < 0.0)
              {
                v121 = v74 + v65;
                v122 = v68;
                if (v75 != -1)
                {
                  goto LABEL_173;
                }

                goto LABEL_177;
              }
            }

            else if (v76 > 0.0)
            {
              v77 = v74 + v65;
              v120 = v68;
              v75 = v121;
              v68 = v122;
              goto LABEL_158;
            }

            if (++v65 >= v72)
            {
              v75 = v121;
              v68 = v122;
              v77 = v123;
              if (!v58)
              {
                goto LABEL_158;
              }

              goto LABEL_159;
            }
          }

          v77 = v123;
          if (!v58)
          {
            v77 = v74 + v65;
          }

          v79 = v120;
          if (!v58)
          {
            v79 = v68;
          }

          v120 = v79;
          if (!v58)
          {
            goto LABEL_158;
          }
        }

        else
        {
          v77 = v123;
          if (!v58)
          {
            v77 = v68;
          }

          v78 = v120;
          if (!v58)
          {
            v78 = v65;
          }

          v120 = v78;
          v75 = v121;
          if (v58)
          {
            v75 = v68;
          }

          v68 = v122;
          if (v58)
          {
            v68 = v65;
          }

          else
          {
LABEL_158:
            if (v77 == -1)
            {
              goto LABEL_177;
            }
          }
        }

LABEL_159:
        if (v75 == -1 && v58 == 1)
        {
          goto LABEL_177;
        }

        v123 = v77;
        if (v58)
        {
          v121 = v75;
          v122 = v68;
          goto LABEL_173;
        }

        v58 = 1;
        v121 = v75;
        v122 = v68;
        goto LABEL_163;
      }

      break;
    }

    v80 = v123;
    if (!v58)
    {
      v80 = v68;
    }

    v122 = v65;
    v123 = v80;
    v81 = v120;
    if (!v58)
    {
      v81 = v65;
    }

    v120 = v81;
    v121 = v68;
    v60 = v65;
    v62 = v68;
LABEL_173:
    v82 = -v12[v30] / (v12[v29] - v12[v30]);
    v117 = v62;
    if (v29 >= v30)
    {
      v111 = v42;
      v113 = v43;
      v84 = v20;
      v109 = v60;
      v85 = v36;
      v110 = v29;
      v86 = v30;
      v87 = v41;
      v83 = fmodf((v21 + (v82 * (v29 - v59))) + v59, v21);
      v41 = v87;
      v35 = v86;
      v34 = v110;
      v42 = v111;
      v36 = v85;
      v60 = v109;
      v22 = (a2 + 1);
      LODWORD(v16) = a2 - 1;
      v20 = v84;
      v43 = v113;
    }

    else
    {
      v83 = v30 + (v82 * (v29 - v30));
    }

    v88 = &a3[6 * v20];
    v88[1] = v83;
    v89 = a1[v35] + (v82 * (a1[v34] - a1[v35]));
    v88[5] = v89;
    if (v89 < a5)
    {
LABEL_177:
      v11 = v118;
      goto LABEL_210;
    }

    v90 = 0.5;
    if (v51 >= v39)
    {
      v90 = -v14[v41] / (v14[v40] - v14[v41]);
    }

    v112 = v12[v37];
    v114 = v12[v36];
    v115 = v20;
    if (v40 >= v41)
    {
      v91 = fmodf((v21 + (v90 * (v40 - (v41 + a2)))) + (v41 + a2), v21);
    }

    else
    {
      v91 = v41 + (v90 * (v40 - v41));
    }

    v92 = 0.5;
    if (v51 >= v39)
    {
      v92 = -v12[v43] / (v12[v42] - v12[v43]);
    }

    if (v42 >= v43)
    {
      v93 = fmodf((v21 + (v92 * (v42 - (v43 + a2)))) + (v43 + a2), v21);
    }

    else
    {
      v93 = v43 + (v92 * (v42 - v43));
    }

    if (v51 < v39)
    {
      v94 = v91;
    }

    else
    {
      v94 = v93;
    }

    v88[2] = v94;
    v124 = v12[v123];
    v95 = v12[v120];
    v96 = 0.5;
    if (v69 >= v39)
    {
      v96 = -v14[v122] / (v14[v121] - v14[v122]);
    }

    if (v121 >= v122)
    {
      v97 = fmodf((v116 + (v96 * (v121 - (v122 + a2)))) + (v122 + a2), v116);
    }

    else
    {
      v97 = v122 + (v96 * (v121 - v122));
    }

    v98 = 0.5;
    if (v69 >= v39)
    {
      v98 = -v12[v60] / (v12[v117] - v12[v60]);
    }

    if (v117 >= v60)
    {
      v21 = a2;
      v99 = fmodf((v116 + (v98 * (v117 - (v60 + a2)))) + (v60 + a2), v116);
      v11 = v118;
      LODWORD(v16) = a2 - 1;
      v20 = v115;
    }

    else
    {
      v99 = v60 + (v98 * (v117 - v60));
      v11 = v118;
      LODWORD(v16) = a2 - 1;
      v20 = v115;
      v21 = a2;
    }

    v22 = (a2 + 1);
    v100 = fabsf(v112 + (v82 * (v114 - v112)));
    v101 = fabsf(v95 + (v92 * (v124 - v95)));
    if (v69 < v39)
    {
      v99 = v97;
    }

    v102 = v99 + v21;
    if (v94 < v99)
    {
      v102 = v99;
    }

    v88[3] = v99;
    v88[4] = v102 - v94;
    if (v100 <= v101)
    {
      v103 = v101 < v108;
    }

    else
    {
      v103 = v100 < v108;
    }

    a5 = v107;
    v24 = 0.5;
    if (!v103)
    {
      *v88 = 0.0;
      v20 = (v20 + 1);
      if (v20 == 200)
      {
        *a4 = 200;
        goto LABEL_212;
      }
    }

LABEL_210:
    ++v23;
  }

  while (v23 != v22);
  *a4 = v20;
  if (v20)
  {
LABEL_212:
    if (a3[1] > a3[7])
    {
      v125 = *a3;
      v126 = *(a3 + 2);
      v104 = v20 - 1;
      if (v20 == 1)
      {
        v104 = 0;
      }

      else
      {
        memmove(a3, a3 + 6, 24 * (v20 - 1));
      }

      v105 = &a3[6 * v104];
      *v105 = v125;
      *(v105 + 2) = v126;
    }
  }

  free(v12);

  free(v14);
}

uint64_t *std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char &&>,std::tuple<>>(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1A5F010C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ObjectTrackerAbstract::reset(vision::mod::ObjectTrackerAbstract *this)
{
  result = (*(*this + 56))(this);
  if (result == 128)
  {
    result = (*(*this + 48))(this);
    if (result == 128)
    {
      return 6784;
    }
  }

  return result;
}

void vision::mod::ObjectTrackerAbstract::ObjectTrackerAbstract(vision::mod::ObjectTrackerAbstract *this, vision::mod::ObjectDetectorAbstract *a2, const vision::mod::ObjectTrackerOptions *a3)
{
  *this = &unk_1F19763B0;
  *(this + 1) = 0;
  *(this + 2) = (**a2)(a2);
  operator new();
}

void sub_1A5F01CAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1AC556B00](v1, 0x10A1C40DF6760FDLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<vision::mod::ObjectTrackerOptions *,std::shared_ptr<vision::mod::ObjectTrackerOptions>::__shared_ptr_default_delete<vision::mod::ObjectTrackerOptions,vision::mod::ObjectTrackerOptions>,std::allocator<vision::mod::ObjectTrackerOptions>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN6vision3mod20ObjectTrackerOptionsEE27__shared_ptr_default_deleteIS3_S3_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<vision::mod::ObjectTrackerOptions *,std::shared_ptr<vision::mod::ObjectTrackerOptions>::__shared_ptr_default_delete<vision::mod::ObjectTrackerOptions,vision::mod::ObjectTrackerOptions>,std::allocator<vision::mod::ObjectTrackerOptions>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::ObjectTrackerOptions *,std::shared_ptr<vision::mod::ObjectTrackerOptions>::__shared_ptr_default_delete<vision::mod::ObjectTrackerOptions,vision::mod::ObjectTrackerOptions>,std::allocator<vision::mod::ObjectTrackerOptions>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F025CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __CVBuffer *a18, __CVBuffer *a19, __CVBuffer *a20, uint64_t a21, uint64_t a22, __CVBuffer *a23)
{
  if (a2)
  {

    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a23);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a18);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a19);
    apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&a20);

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5F025A0);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef NtCreatePixelBuffer(int a1, int a2, IOSurfaceRef *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = *MEMORY[0x1E696D130];
  LODWORD(valuePtr) = a1;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, v7, v8);
  CFRelease(v8);
  v9 = *MEMORY[0x1E696CF58];
  LODWORD(valuePtr) = a2;
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, v9, v10);
  CFRelease(v10);
  v11 = *MEMORY[0x1E696CFC0];
  LODWORD(valuePtr) = 1111970369;
  v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, v11, v12);
  CFRelease(v12);
  v13 = *MEMORY[0x1E696CE58];
  v14 = 4 * a1 + 63;
  if (v14 <= 0)
  {
    v15 = -(-v14 & 0x3F);
  }

  else
  {
    v15 = v14 & 0x3F;
  }

  LODWORD(valuePtr) = v14 - v15;
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, v13, v16);
  CFRelease(v16);
  *a3 = IOSurfaceCreate(Mutable);
  CFRelease(Mutable);
  if (!*a3)
  {
    return 0;
  }

  v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = *MEMORY[0x1E6966130];
  LODWORD(valuePtr) = 1111970369;
  v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v17, v18, v19);
  CFRelease(v19);
  valuePtr = 0;
  v20 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], *a3, v17, &valuePtr);
  result = 0;
  if (!v20)
  {
    CFRelease(v17);
    return valuePtr;
  }

  return result;
}

uint64_t NtDestroyTracker(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result == -1430532899)
    {
      if (!*(result + 4089))
      {
        espresso_plan_destroy();
        *(v1 + 16) = 0;
        espresso_context_destroy();
        *(v1 + 8) = 0;
        espresso_plan_destroy();
        *(v1 + 384) = 0;
        espresso_context_destroy();
        *(v1 + 376) = 0;
      }

      TtTrkRpnStop(*(v1 + 1104));
      CFRelease(*(v1 + 4080));
      CFRelease(*(v1 + 4064));
      CVPixelBufferRelease(*(v1 + 4072));
      CVPixelBufferRelease(*(v1 + 4056));
      TtTrkRpnDestroy(*(v1 + 1104));
      v2 = *(v1 + 3504);
      if (v2)
      {
        MEMORY[0x1AC556AE0](v2, 0x1000C8077774924);
      }

      JUMPOUT(0x1AC556B00);
    }
  }

  return result;
}

void *NtLockCvPixelBuffers(uint64_t a1)
{
  CVPixelBufferLockBaseAddress(*(a1 + 4056), 0);
  CVPixelBufferLockBaseAddress(*(a1 + 4072), 0);
  *(a1 + 3204) = CVPixelBufferGetBaseAddress(*(a1 + 4056));
  result = CVPixelBufferGetBaseAddress(*(a1 + 4072));
  *(a1 + 3216) = result;
  return result;
}

uint64_t NtUnlockCvPixelBuffers(uint64_t a1)
{
  CVPixelBufferUnlockBaseAddress(*(a1 + 4072), 0);
  v2 = *(a1 + 4056);

  return CVPixelBufferUnlockBaseAddress(v2, 0);
}

uint64_t EspressoNetExemplarRun(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  result = 4294967287;
  if (a3 && a4 && a5)
  {
    if (!espresso_network_bind_input_vimagebuffer_bgra8())
    {
      if (*(a1 + 4089))
      {
        dispatch_sync_f(*(a1 + 1088), a1, EspressoExemplarPlanExecuteSynced);
        if (*(a1 + 1080))
        {
          return 4294967287;
        }
      }

      else
      {
        v7 = espresso_plan_execute_sync();
        *(a1 + 1080) = v7;
        if (v7)
        {
          return 4294967287;
        }
      }

      memcpy((a1 + 4090), *(a1 + 40), 0x28000uLL);
      memcpy((a1 + 167930), *(a1 + 208), 0x14000uLL);
      return 0;
    }

    return 4294967287;
  }

  return result;
}

uint64_t EspressoExemplarPlanExecuteSynced(uint64_t a1)
{
  result = espresso_plan_execute_sync();
  *(a1 + 1080) = result;
  return result;
}

uint64_t EspressoInstancePlanExecuteSynced(uint64_t a1)
{
  result = espresso_plan_execute_sync();
  *(a1 + 1080) = result;
  return result;
}

uint64_t __Block_byref_object_copy__24283(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5F044F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5F04498);
  }

  _Unwind_Resume(exception_object);
}

void nonMaxSuppression(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1;
  if (v4 != v3)
  {
    std::__introsort<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,false>(v4, v3, 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (&v3[-v4] >> 2)), 1, v2);
    v5 = *a1;
    v6 = a1[1];
    v7 = &v6[-*a1] >> 2;
    v8 = 0x6DB6DB6DB6DB6DB7 * v7;
    if (-1227133513 * v7 < 1)
    {
      v27 = v8;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = -1;
      do
      {
        v12 = v10 + 1;
        if (v10 + 1 >= v8)
        {
          LODWORD(v8) = v10 + 1;
        }

        else
        {
          v13 = v11 + v8;
          v14 = v9;
          LODWORD(v8) = v10 + 1;
          do
          {
            v15 = *a1 + 28 * v10;
            v16 = *a1 + v14;
            v17 = (v16 + 28);
            if (*(v15 + 24) != *(v16 + 52) || (v18 = *(v15 + 4), v19 = *(v16 + 32), v20 = *(v16 + 36), v21 = *(v15 + 8), v22 = *(v15 + 12), v23 = *(v16 + 40), v24 = fmaxf(fminf(v21, v20) - fmaxf(*v15, *v17), 0.0) * fmaxf(fminf(v22, v23) - fmaxf(v18, v19), 0.0), (v24 / ((((v20 - *v17) * (v23 - v19)) + ((v21 - *v15) * (v22 - v18))) - v24)) <= 0.5))
            {
              v25 = (*a1 + 28 * v8);
              v26 = *v17;
              *(v25 + 12) = *(v16 + 40);
              *v25 = v26;
              LODWORD(v8) = v8 + 1;
            }

            v14 += 28;
            --v13;
          }

          while (v13);
        }

        --v11;
        v9 += 28;
        ++v10;
      }

      while (v12 < v8);
      v27 = v8;
      v5 = *a1;
      v6 = a1[1];
      v8 = 0x6DB6DB6DB6DB6DB7 * (&v6[-*a1] >> 2);
    }

    v28 = v27 - v8;
    if (v27 <= v8)
    {
      if (v27 >= v8)
      {
        return;
      }

      v32 = (v5 + 28 * v27);
    }

    else
    {
      v29 = a1[2];
      if (0x6DB6DB6DB6DB6DB7 * ((v29 - v6) >> 2) < v28)
      {
        if (v27 <= 0x924924924924924)
        {
          v30 = 0x6DB6DB6DB6DB6DB7 * ((v29 - v5) >> 2);
          if (2 * v30 > v27)
          {
            v27 = 2 * v30;
          }

          if (v30 >= 0x492492492492492)
          {
            v31 = 0x924924924924924;
          }

          else
          {
            v31 = v27;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<DetectedRectangle>>(v31);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      bzero(v6, 28 * ((28 * v28 - 28) / 0x1C) + 28);
      v32 = &v6[28 * ((28 * v28 - 28) / 0x1C) + 28];
    }

    a1[1] = v32;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<DetectedRectangle>>(unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::remove_if[abi:ne200100]<std::__wrap_iter<DetectedRectangle *>,-[VNMRCDetector _performMLBasedAnalysisOnLockedPixelBuffer:sample:mrcDecoderOptions:error:]::$_0>(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    while (*(result + 4) >= flt_1A6038F30[*(result + 6)])
    {
      result = (result + 28);
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = (result + 28); i != a2; i = (i + 28))
      {
        if (*(i + 4) >= flt_1A6038F30[*(i + 6)])
        {
          v3 = *i;
          *(result + 12) = *(i + 12);
          *result = v3;
          result = (result + 28);
        }
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,false>(uint64_t a1, char *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 28);
  v10 = (a2 - 56);
  v11 = (a2 - 84);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = &a2[-v12];
    v14 = 0x6DB6DB6DB6DB6DB7 * (&a2[-v12] >> 2);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_u32[0] = *(a2 - 3);
        if (result.n128_f32[0] <= *(v12 + 16))
        {
          return result;
        }

LABEL_111:
        *&v155[12] = *(v12 + 12);
        *v155 = *v12;
        v80 = *v9;
        *(v12 + 12) = *(a2 - 1);
        *v12 = v80;
LABEL_112:
        result = *v155;
        *(a2 - 1) = *&v155[12];
        *v9 = *v155;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v81 = *(v12 + 44);
      v82 = *(v12 + 72);
      if (v81 <= *(v12 + 16))
      {
        if (v82 > v81)
        {
          *v161 = *(v12 + 28);
          *&v161[12] = *(v12 + 40);
          *(v12 + 28) = *(v12 + 56);
          *(v12 + 40) = *(v12 + 68);
          *(v12 + 56) = *v161;
          result = *&v161[12];
          *(v12 + 68) = *&v161[12];
          if (*(v12 + 44) > *(v12 + 16))
          {
            *&v162[12] = *(v12 + 12);
            *v162 = *v12;
            *v12 = *(v12 + 28);
            *(v12 + 12) = *(v12 + 40);
            *(v12 + 28) = *v162;
            result = *&v162[12];
            *(v12 + 40) = *&v162[12];
          }
        }
      }

      else
      {
        if (v82 > v81)
        {
          *&v156[12] = *(v12 + 12);
          *v156 = *v12;
          *v12 = *(v12 + 56);
          *(v12 + 12) = *(v12 + 68);
          goto LABEL_184;
        }

        *&v165[12] = *(v12 + 12);
        *v165 = *v12;
        *v12 = *(v12 + 28);
        *(v12 + 12) = *(v12 + 40);
        *(v12 + 28) = *v165;
        *(v12 + 40) = *&v165[12];
        if (v82 > *(v12 + 44))
        {
          *v156 = *(v12 + 28);
          *&v156[12] = *(v12 + 40);
          *(v12 + 28) = *(v12 + 56);
          *(v12 + 40) = *(v12 + 68);
LABEL_184:
          *(v12 + 56) = *v156;
          result = *&v156[12];
          *(v12 + 68) = *&v156[12];
        }
      }

      result.n128_u32[0] = *(a2 - 3);
      if (result.n128_f32[0] <= *(v12 + 72))
      {
        return result;
      }

      *v166 = *(v12 + 56);
      *&v166[12] = *(v12 + 68);
      v128 = *v9;
      *(v12 + 68) = *(a2 - 1);
      *(v12 + 56) = v128;
      result = *v166;
      *(a2 - 1) = *&v166[12];
      *v9 = *v166;
      result.n128_u32[0] = *(v12 + 72);
      if (result.n128_f32[0] <= *(v12 + 44))
      {
        return result;
      }

      *v167 = *(v12 + 28);
      *&v167[12] = *(v12 + 40);
      *(v12 + 28) = *(v12 + 56);
      *(v12 + 40) = *(v12 + 68);
      *(v12 + 56) = *v167;
      result = *&v167[12];
      *(v12 + 68) = *&v167[12];
LABEL_188:
      result.n128_u32[0] = *(v12 + 44);
      if (result.n128_f32[0] > *(v12 + 16))
      {
        *&v168[12] = *(v12 + 12);
        *v168 = *v12;
        *v12 = *(v12 + 28);
        *(v12 + 12) = *(v12 + 40);
        *(v12 + 28) = *v168;
        result = *&v168[12];
        *(v12 + 40) = *&v168[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,0>(v12, v12 + 28, v12 + 56, v12 + 84, (a2 - 28)).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 671)
    {
      v83 = (v12 + 28);
      v85 = v12 == a2 || v83 == a2;
      if (a4)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v12;
          do
          {
            v88 = v83;
            result.n128_u32[0] = *(v87 + 44);
            if (result.n128_f32[0] > *(v87 + 16))
            {
              v157 = *v83;
              v89 = *(v87 + 48);
              v90 = v86;
              while (1)
              {
                v91 = v12 + v90;
                *(v91 + 28) = *(v12 + v90);
                *(v91 + 40) = *(v12 + v90 + 12);
                if (!v90)
                {
                  break;
                }

                v90 -= 28;
                if (result.n128_f32[0] <= *(v91 - 12))
                {
                  v92 = v12 + v90 + 28;
                  goto LABEL_131;
                }
              }

              v92 = v12;
LABEL_131:
              *v92 = v157;
              *(v92 + 16) = result.n128_u32[0];
              *(v92 + 20) = v89;
            }

            v83 = (v88 + 28);
            v86 += 28;
            v87 = v88;
          }

          while (v88 + 28 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v124 = v83;
          result.n128_u32[0] = *(a1 + 44);
          if (result.n128_f32[0] > *(a1 + 16))
          {
            v163 = *v83;
            v125 = *(a1 + 48);
            do
            {
              *v83 = *(v83 - 28);
              *(v83 + 12) = *(v83 - 1);
              v126 = *(v83 - 10);
              v83 = (v83 - 28);
            }

            while (result.n128_f32[0] > v126);
            *v83 = v163;
            *(v83 + 4) = result.n128_u32[0];
            *(v83 + 20) = v125;
          }

          v83 = (v124 + 28);
          a1 = v124;
        }

        while ((v124 + 28) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v93 = (v14 - 2) >> 1;
        v94 = v93;
        do
        {
          v95 = v94;
          if (v93 >= v94)
          {
            v96 = (2 * v94) | 1;
            v97 = v12 + 28 * v96;
            if (2 * v95 + 2 < v14 && *(v97 + 16) > *(v97 + 44))
            {
              v97 += 28;
              v96 = 2 * v95 + 2;
            }

            v98 = v12 + 28 * v95;
            v99 = *(v98 + 16);
            if (*(v97 + 16) <= v99)
            {
              v158 = *v98;
              v100 = *(v98 + 20);
              do
              {
                v101 = v98;
                v98 = v97;
                v102 = *v97;
                *(v101 + 12) = *(v97 + 12);
                *v101 = v102;
                if (v93 < v96)
                {
                  break;
                }

                v103 = 2 * v96;
                v96 = (2 * v96) | 1;
                v97 = v12 + 28 * v96;
                v104 = v103 + 2;
                if (v104 < v14 && *(v97 + 16) > *(v97 + 44))
                {
                  v97 += 28;
                  v96 = v104;
                }
              }

              while (*(v97 + 16) <= v99);
              *v98 = v158;
              *(v98 + 16) = v99;
              *(v98 + 20) = v100;
            }
          }

          v94 = v95 - 1;
        }

        while (v95);
        v105 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 2);
        do
        {
          v106 = 0;
          *&v159[12] = *(v12 + 12);
          *v159 = *v12;
          v107 = v12;
          do
          {
            v108 = v107 + 7 * v106;
            v109 = (v108 + 7);
            v110 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 >= v105)
            {
              v106 = v110;
            }

            else
            {
              v111 = v108[11];
              v112 = v108[18];
              v113 = (v108 + 14);
              if (v111 <= v112)
              {
                v106 = v110;
              }

              else
              {
                v109 = v113;
              }
            }

            v114 = *v109;
            *(v107 + 12) = *(v109 + 12);
            *v107 = v114;
            v107 = v109;
          }

          while (v106 <= ((v105 - 2) >> 1));
          a2 -= 28;
          if (v109 == a2)
          {
            result = *v159;
            *(v109 + 12) = *&v159[12];
            *v109 = *v159;
          }

          else
          {
            v115 = *a2;
            *(v109 + 12) = *(a2 + 12);
            *v109 = v115;
            result = *v159;
            *(a2 + 12) = *&v159[12];
            *a2 = *v159;
            v116 = &v109[-v12 + 28];
            if (v116 >= 29)
            {
              v117 = (0x6DB6DB6DB6DB6DB7 * (v116 >> 2) - 2) >> 1;
              v118 = v12 + 28 * v117;
              result.n128_u32[0] = *(v109 + 4);
              if (*(v118 + 16) > result.n128_f32[0])
              {
                v131 = *v109;
                v119 = *(v109 + 20);
                do
                {
                  v120 = v109;
                  v109 = v118;
                  v121 = *v118;
                  *(v120 + 12) = *(v118 + 12);
                  *v120 = v121;
                  if (!v117)
                  {
                    break;
                  }

                  v117 = (v117 - 1) >> 1;
                  v118 = v12 + 28 * v117;
                }

                while (*(v118 + 16) > result.n128_f32[0]);
                *v109 = v131;
                *(v109 + 4) = result.n128_u32[0];
                *(v109 + 20) = v119;
              }
            }
          }
        }

        while (v105-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 28 * (v14 >> 1);
    v17 = *(a2 - 3);
    if (v13 >= 0xE01)
    {
      v18 = *(v16 + 16);
      if (v18 <= *(v12 + 16))
      {
        if (v17 > v18)
        {
          *&v134[12] = *(v16 + 12);
          *v134 = *v16;
          v22 = *v9;
          *(v16 + 12) = *(a2 - 1);
          *v16 = v22;
          *(a2 - 1) = *&v134[12];
          *v9 = *v134;
          if (*(v16 + 16) > *(v12 + 16))
          {
            *&v135[12] = *(v12 + 12);
            *v135 = *v12;
            v23 = *v16;
            *(v12 + 12) = *(v16 + 12);
            *v12 = v23;
            *(v16 + 12) = *&v135[12];
            *v16 = *v135;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          *&v132[12] = *(v12 + 12);
          *v132 = *v12;
          v19 = *v9;
          *(v12 + 12) = *(a2 - 1);
          *v12 = v19;
          goto LABEL_26;
        }

        *&v138[12] = *(v12 + 12);
        *v138 = *v12;
        v26 = *v16;
        *(v12 + 12) = *(v16 + 12);
        *v12 = v26;
        *(v16 + 12) = *&v138[12];
        *v16 = *v138;
        if (*(a2 - 3) > *(v16 + 16))
        {
          *&v132[12] = *(v16 + 12);
          *v132 = *v16;
          v27 = *v9;
          *(v16 + 12) = *(a2 - 1);
          *v16 = v27;
LABEL_26:
          *(a2 - 1) = *&v132[12];
          *v9 = *v132;
        }
      }

      v28 = v12 + 28 * v15;
      v29 = v28 - 28;
      v30 = *(v28 - 12);
      v31 = *(a2 - 10);
      if (v30 <= *(v12 + 44))
      {
        if (v31 > v30)
        {
          *&v140[12] = *(v28 - 16);
          *v140 = *v29;
          v33 = *v10;
          *(v28 - 16) = *(a2 - 44);
          *v29 = v33;
          *(a2 - 44) = *&v140[12];
          *v10 = *v140;
          if (*(v28 - 12) > *(v12 + 44))
          {
            *v141 = *(v12 + 28);
            *&v141[12] = *(v12 + 40);
            v34 = *v29;
            *(v12 + 40) = *(v28 - 16);
            *(v12 + 28) = v34;
            *(v28 - 16) = *&v141[12];
            *v29 = *v141;
          }
        }
      }

      else
      {
        if (v31 > v30)
        {
          *v139 = *(v12 + 28);
          *&v139[12] = *(v12 + 40);
          v32 = *v10;
          *(v12 + 40) = *(a2 - 44);
          *(v12 + 28) = v32;
          goto LABEL_38;
        }

        *v143 = *(v12 + 28);
        *&v143[12] = *(v12 + 40);
        v37 = *v29;
        *(v12 + 40) = *(v28 - 16);
        *(v12 + 28) = v37;
        *(v28 - 16) = *&v143[12];
        *v29 = *v143;
        if (*(a2 - 10) > *(v28 - 12))
        {
          *&v139[12] = *(v28 - 16);
          *v139 = *v29;
          v38 = *v10;
          *(v28 - 16) = *(a2 - 44);
          *v29 = v38;
LABEL_38:
          *(a2 - 44) = *&v139[12];
          *v10 = *v139;
        }
      }

      v39 = v12 + 28 * v15;
      v40 = (v39 + 28);
      v41 = *(v39 + 44);
      v42 = *(a2 - 17);
      if (v41 <= *(v12 + 72))
      {
        if (v42 > v41)
        {
          *&v145[12] = *(v39 + 40);
          *v145 = *v40;
          v44 = *v11;
          *(v39 + 40) = *(a2 - 72);
          *v40 = v44;
          *(a2 - 72) = *&v145[12];
          *v11 = *v145;
          if (*(v39 + 44) > *(v12 + 72))
          {
            *v146 = *(v12 + 56);
            *&v146[12] = *(v12 + 68);
            v45 = *v40;
            *(v12 + 68) = *(v39 + 40);
            *(v12 + 56) = v45;
            *(v39 + 40) = *&v146[12];
            *v40 = *v146;
          }
        }
      }

      else
      {
        if (v42 > v41)
        {
          *v144 = *(v12 + 56);
          *&v144[12] = *(v12 + 68);
          v43 = *v11;
          *(v12 + 68) = *(a2 - 72);
          *(v12 + 56) = v43;
          goto LABEL_47;
        }

        *v147 = *(v12 + 56);
        *&v147[12] = *(v12 + 68);
        v46 = *v40;
        *(v12 + 68) = *(v39 + 40);
        *(v12 + 56) = v46;
        *(v39 + 40) = *&v147[12];
        *v40 = *v147;
        if (*(a2 - 17) > *(v39 + 44))
        {
          *&v144[12] = *(v39 + 40);
          *v144 = *v40;
          v47 = *v11;
          *(v39 + 40) = *(a2 - 72);
          *v40 = v47;
LABEL_47:
          *(a2 - 72) = *&v144[12];
          *v11 = *v144;
        }
      }

      v48 = *(v16 + 16);
      v49 = *(v39 + 44);
      if (v48 <= *(v29 + 16))
      {
        if (v49 > v48)
        {
          *&v149[12] = *(v16 + 12);
          *v149 = *v16;
          *v16 = *v40;
          *(v16 + 12) = *(v39 + 40);
          *(v39 + 40) = *&v149[12];
          *v40 = *v149;
          if (*(v16 + 16) > *(v29 + 16))
          {
            *&v150[12] = *(v29 + 12);
            *v150 = *v29;
            *v29 = *v16;
            *(v29 + 12) = *(v16 + 12);
            *(v16 + 12) = *&v150[12];
            *v16 = *v150;
          }
        }
      }

      else
      {
        if (v49 > v48)
        {
          *&v148[12] = *(v29 + 12);
          *v148 = *v29;
          *v29 = *v40;
          *(v29 + 12) = *(v39 + 40);
          goto LABEL_56;
        }

        *&v151[12] = *(v29 + 12);
        *v151 = *v29;
        *v29 = *v16;
        *(v29 + 12) = *(v16 + 12);
        *(v16 + 12) = *&v151[12];
        *v16 = *v151;
        if (*(v39 + 44) > *(v16 + 16))
        {
          *&v148[12] = *(v16 + 12);
          *v148 = *v16;
          *v16 = *v40;
          *(v16 + 12) = *(v39 + 40);
LABEL_56:
          *(v39 + 40) = *&v148[12];
          *v40 = *v148;
        }
      }

      *&v152[12] = *(v12 + 12);
      *v152 = *v12;
      v50 = *v16;
      *(v12 + 12) = *(v16 + 12);
      *v12 = v50;
      result = *v152;
      *(v16 + 12) = *&v152[12];
      *v16 = *v152;
      goto LABEL_58;
    }

    v20 = *(v12 + 16);
    if (v20 <= *(v16 + 16))
    {
      if (v17 > v20)
      {
        *&v136[12] = *(v12 + 12);
        *v136 = *v12;
        v24 = *v9;
        *(v12 + 12) = *(a2 - 1);
        *v12 = v24;
        result = *v136;
        *(a2 - 1) = *&v136[12];
        *v9 = *v136;
        if (*(v12 + 16) > *(v16 + 16))
        {
          *&v137[12] = *(v16 + 12);
          *v137 = *v16;
          v25 = *v12;
          *(v16 + 12) = *(v12 + 12);
          *v16 = v25;
          result = *v137;
          *(v12 + 12) = *&v137[12];
          *v12 = *v137;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v20)
    {
      *&v133[12] = *(v16 + 12);
      *v133 = *v16;
      v21 = *v9;
      *(v16 + 12) = *(a2 - 1);
      *v16 = v21;
LABEL_35:
      result = *v133;
      *(a2 - 1) = *&v133[12];
      *v9 = *v133;
      goto LABEL_58;
    }

    *&v142[12] = *(v16 + 12);
    *v142 = *v16;
    v35 = *v12;
    *(v16 + 12) = *(v12 + 12);
    *v16 = v35;
    result = *v142;
    *(v12 + 12) = *&v142[12];
    *v12 = *v142;
    if (*(a2 - 3) > *(v12 + 16))
    {
      *&v133[12] = *(v12 + 12);
      *v133 = *v12;
      v36 = *v9;
      *(v12 + 12) = *(a2 - 1);
      *v12 = v36;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = *(v12 + 16);
LABEL_61:
      v129 = *v12;
      v51 = *(v12 + 20);
      v52 = v12;
      do
      {
        v53 = v52;
        v52 += 28;
      }

      while (*(v53 + 44) > result.n128_f32[0]);
      v54 = a2;
      if (v53 == v12)
      {
        v57 = a2;
        while (v52 < v57)
        {
          v55 = v57 - 7;
          v58 = *(v57 - 3);
          v57 -= 7;
          if (v58 > result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v55 = v57;
      }

      else
      {
        do
        {
          v55 = v54 - 7;
          v56 = *(v54 - 3);
          v54 -= 7;
        }

        while (v56 <= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v52;
      if (v52 < v55)
      {
        v59 = v55;
        do
        {
          *v153 = *v12;
          *&v153[12] = *(v12 + 12);
          v60 = *v59;
          *(v12 + 12) = *(v59 + 3);
          *v12 = v60;
          *(v59 + 3) = *&v153[12];
          *v59 = *v153;
          do
          {
            v61 = *(v12 + 44);
            v12 += 28;
          }

          while (v61 > result.n128_f32[0]);
          do
          {
            v62 = *(v59 - 3);
            v59 -= 7;
          }

          while (v62 <= result.n128_f32[0]);
        }

        while (v12 < v59);
      }

      v63 = (v12 - 28);
      if (v12 - 28 != a1)
      {
        v64 = *v63;
        *(a1 + 12) = *(v12 - 16);
        *a1 = v64;
      }

      *v63 = v129;
      *(v12 - 12) = result.n128_u32[0];
      *(v12 - 8) = v51;
      if (v52 < v55)
      {
        goto LABEL_82;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*>(a1, v12 - 28);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*>(v12, a2))
      {
        a2 = (v12 - 28);
        if (!v65)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v65)
      {
LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,false>(a1, v12 - 28, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = *(v12 + 16);
      if (*(v12 - 12) > result.n128_f32[0])
      {
        goto LABEL_61;
      }

      v130 = *v12;
      if (result.n128_f32[0] <= *(a2 - 3))
      {
        v68 = v12 + 28;
        do
        {
          v12 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v69 = *(v68 + 16);
          v68 += 28;
        }

        while (result.n128_f32[0] <= v69);
      }

      else
      {
        v66 = v12;
        do
        {
          v12 = v66 + 28;
          v67 = *(v66 + 44);
          v66 += 28;
        }

        while (result.n128_f32[0] <= v67);
      }

      v70 = a2;
      if (v12 < a2)
      {
        v71 = a2;
        do
        {
          v70 = v71 - 7;
          v72 = *(v71 - 3);
          v71 -= 7;
        }

        while (result.n128_f32[0] > v72);
      }

      v73 = *(a1 + 20);
      while (v12 < v70)
      {
        *&v154[12] = *(v12 + 12);
        *v154 = *v12;
        v74 = *v70;
        *(v12 + 12) = *(v70 + 3);
        *v12 = v74;
        *(v70 + 3) = *&v154[12];
        *v70 = *v154;
        do
        {
          v75 = *(v12 + 44);
          v12 += 28;
        }

        while (result.n128_f32[0] <= v75);
        do
        {
          v76 = *(v70 - 3);
          v70 -= 7;
        }

        while (result.n128_f32[0] > v76);
      }

      v77 = (v12 - 28);
      if (v12 - 28 != a1)
      {
        v78 = *v77;
        *(a1 + 12) = *(v12 - 16);
        *a1 = v78;
      }

      a4 = 0;
      *v77 = v130;
      *(v12 - 12) = result.n128_u32[0];
      *(v12 - 8) = v73;
    }
  }

  result.n128_u32[0] = *(v12 + 44);
  v79 = *(a2 - 3);
  if (result.n128_f32[0] <= *(v12 + 16))
  {
    if (v79 <= result.n128_f32[0])
    {
      return result;
    }

    *v160 = *(v12 + 28);
    *&v160[12] = *(v12 + 40);
    v123 = *v9;
    *(v12 + 40) = *(a2 - 1);
    *(v12 + 28) = v123;
    result = *v160;
    *(a2 - 1) = *&v160[12];
    *v9 = *v160;
    goto LABEL_188;
  }

  if (v79 > result.n128_f32[0])
  {
    goto LABEL_111;
  }

  *&v164[12] = *(v12 + 12);
  *v164 = *v12;
  *v12 = *(v12 + 28);
  *(v12 + 12) = *(v12 + 40);
  *(v12 + 28) = *v164;
  result = *&v164[12];
  *(v12 + 40) = *&v164[12];
  result.n128_u32[0] = *(a2 - 3);
  if (result.n128_f32[0] > *(v12 + 44))
  {
    *v155 = *(v12 + 28);
    *&v155[12] = *(v12 + 40);
    v127 = *v9;
    *(v12 + 40) = *(a2 - 1);
    *(v12 + 28) = v127;
    goto LABEL_112;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  if (v5 <= *(a1 + 16))
  {
    if (v6 > v5)
    {
      *v21 = *a2;
      *&v21[12] = *(a2 + 12);
      v8 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v8;
      *(a3 + 12) = *&v21[12];
      result = *v21;
      *a3 = *v21;
      if (*(a2 + 16) > *(a1 + 16))
      {
        *v22 = *a1;
        *&v22[12] = *(a1 + 12);
        v10 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v10;
        *(a2 + 12) = *&v22[12];
        result = *v22;
        *a2 = *v22;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      *v20 = *a1;
      *&v20[12] = *(a1 + 12);
      v7 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v7;
LABEL_9:
      *(a3 + 12) = *&v20[12];
      result = *v20;
      *a3 = *v20;
      goto LABEL_10;
    }

    *v23 = *a1;
    *&v23[12] = *(a1 + 12);
    v11 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v11;
    *(a2 + 12) = *&v23[12];
    result = *v23;
    *a2 = *v23;
    if (*(a3 + 16) > *(a2 + 16))
    {
      *v20 = *a2;
      *&v20[12] = *(a2 + 12);
      v12 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 16) > *(a3 + 16))
  {
    *v24 = *a3;
    *&v24[12] = *(a3 + 12);
    v13 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v13;
    *(a4 + 12) = *&v24[12];
    result = *v24;
    *a4 = *v24;
    if (*(a3 + 16) > *(a2 + 16))
    {
      *v25 = *a2;
      *&v25[12] = *(a2 + 12);
      v14 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v14;
      *(a3 + 12) = *&v25[12];
      result = *v25;
      *a3 = *v25;
      if (*(a2 + 16) > *(a1 + 16))
      {
        *v26 = *a1;
        *&v26[12] = *(a1 + 12);
        v15 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v15;
        *(a2 + 12) = *&v26[12];
        result = *v26;
        *a2 = *v26;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 16);
  if (result.n128_f32[0] > *(a4 + 16))
  {
    *v27 = *a4;
    *&v27[12] = *(a4 + 12);
    v16 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v16;
    *(a5 + 12) = *&v27[12];
    result = *v27;
    *a5 = *v27;
    result.n128_u32[0] = *(a4 + 16);
    if (result.n128_f32[0] > *(a3 + 16))
    {
      *v28 = *a3;
      *&v28[12] = *(a3 + 12);
      v17 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v17;
      *(a4 + 12) = *&v28[12];
      result = *v28;
      *a4 = *v28;
      result.n128_u32[0] = *(a3 + 16);
      if (result.n128_f32[0] > *(a2 + 16))
      {
        *v29 = *a2;
        *&v29[12] = *(a2 + 12);
        v18 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v18;
        *(a3 + 12) = *&v29[12];
        result = *v29;
        *a3 = *v29;
        result.n128_u32[0] = *(a2 + 16);
        if (result.n128_f32[0] > *(a1 + 16))
        {
          *v30 = *a1;
          *&v30[12] = *(a1 + 12);
          v19 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v19;
          *(a2 + 12) = *&v30[12];
          result = *v30;
          *a2 = *v30;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*>(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = (a2 - 28);
      v5 = *(a1 + 44);
      v6 = *(a2 - 12);
      if (v5 > *(a1 + 16))
      {
        if (v6 <= v5)
        {
          *v37 = *a1;
          *&v37[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v37;
          *(a1 + 40) = *&v37[12];
          if (*(a2 - 12) <= *(a1 + 44))
          {
            return 1;
          }

          *v29 = *(a1 + 28);
          *&v29[12] = *(a1 + 40);
          v16 = *(a2 - 16);
          *(a1 + 28) = *v4;
          *(a1 + 40) = v16;
        }

        else
        {
          *v29 = *a1;
          *&v29[12] = *(a1 + 12);
          v7 = *(a2 - 16);
          *a1 = *v4;
          *(a1 + 12) = v7;
        }

        *(a2 - 16) = *&v29[12];
        *v4 = *v29;
        return 1;
      }

      if (v6 <= v5)
      {
        return 1;
      }

      *v32 = *(a1 + 28);
      *&v32[12] = *(a1 + 40);
      v15 = *(a2 - 16);
      *(a1 + 28) = *v4;
      *(a1 + 40) = v15;
      *(a2 - 16) = *&v32[12];
      *v4 = *v32;
LABEL_50:
      if (*(a1 + 44) > *(a1 + 16))
      {
        *v43 = *a1;
        *&v43[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v43;
        *(a1 + 40) = *&v43[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nonMaxSuppression(std::vector<DetectedRectangle> &,float)::$_0 &,DetectedRectangle*,0>(a1, a1 + 28, a1 + 56, a1 + 84, a2 - 28);
      return 1;
    }

    v12 = *(a1 + 44);
    v13 = *(a1 + 16);
    v14 = *(a1 + 72);
    if (v12 <= v13)
    {
      if (v14 > v12)
      {
        *v35 = *(a1 + 28);
        *&v35[12] = *(a1 + 40);
        *(a1 + 28) = *(a1 + 56);
        *(a1 + 40) = *(a1 + 68);
        *(a1 + 56) = *v35;
        *(a1 + 68) = *&v35[12];
        if (*(a1 + 44) > v13)
        {
          *v36 = *a1;
          *&v36[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v36;
          *(a1 + 40) = *&v36[12];
        }
      }

      goto LABEL_47;
    }

    if (v14 <= v12)
    {
      *v40 = *a1;
      *&v40[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v40;
      *(a1 + 40) = *&v40[12];
      if (v14 <= *(a1 + 44))
      {
        goto LABEL_47;
      }

      *v31 = *(a1 + 28);
      *&v31[12] = *(a1 + 40);
      *(a1 + 28) = *(a1 + 56);
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v31 = *a1;
      *&v31[12] = *(a1 + 12);
      *a1 = *(a1 + 56);
      *(a1 + 12) = *(a1 + 68);
    }

    *(a1 + 56) = *v31;
    *(a1 + 68) = *&v31[12];
LABEL_47:
    if (*(a2 - 12) <= *(a1 + 72))
    {
      return 1;
    }

    v25 = (a2 - 28);
    *v41 = *(a1 + 56);
    *&v41[12] = *(a1 + 68);
    v26 = *(a2 - 16);
    *(a1 + 56) = *(a2 - 28);
    *(a1 + 68) = v26;
    *(v25 + 12) = *&v41[12];
    *v25 = *v41;
    if (*(a1 + 72) <= *(a1 + 44))
    {
      return 1;
    }

    *v42 = *(a1 + 28);
    *&v42[12] = *(a1 + 40);
    *(a1 + 28) = *(a1 + 56);
    *(a1 + 40) = *(a1 + 68);
    *(a1 + 56) = *v42;
    *(a1 + 68) = *&v42[12];
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 12) > *(a1 + 16))
    {
      *v28 = *a1;
      *&v28[12] = *(a1 + 12);
      v3 = *(a2 - 16);
      *a1 = *(a2 - 28);
      *(a1 + 12) = v3;
      *(a2 - 16) = *&v28[12];
      *(a2 - 28) = *v28;
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 56;
  v9 = *(a1 + 44);
  v10 = *(a1 + 16);
  v11 = *(a1 + 72);
  if (v9 <= v10)
  {
    if (v11 > v9)
    {
      *v33 = *(a1 + 28);
      *&v33[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
      *v8 = *v33;
      *(a1 + 68) = *&v33[12];
      if (*(a1 + 44) > v10)
      {
        *v34 = *a1;
        *&v34[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v34;
        *(a1 + 40) = *&v34[12];
      }
    }
  }

  else
  {
    if (v11 <= v9)
    {
      *v38 = *a1;
      *&v38[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v38;
      *(a1 + 40) = *&v38[12];
      if (v11 <= *(a1 + 44))
      {
        goto LABEL_33;
      }

      *v30 = *(a1 + 28);
      *&v30[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v30 = *a1;
      *&v30[12] = *(a1 + 12);
      *a1 = *v8;
      *(a1 + 12) = *(a1 + 68);
    }

    *v8 = *v30;
    *(a1 + 68) = *&v30[12];
  }

LABEL_33:
  v17 = a1 + 84;
  if (a1 + 84 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 16);
    if (v20 > *(v8 + 16))
    {
      v39 = *v17;
      v21 = *(v17 + 20);
      v22 = v18;
      while (1)
      {
        v23 = a1 + v22;
        *(v23 + 84) = *(a1 + v22 + 56);
        *(v23 + 96) = *(a1 + v22 + 68);
        if (v22 == -56)
        {
          break;
        }

        v22 -= 28;
        if (v20 <= *(v23 + 44))
        {
          v24 = a1 + v22 + 84;
          goto LABEL_41;
        }
      }

      v24 = a1;
LABEL_41:
      *v24 = v39;
      *(v24 + 16) = v20;
      *(v24 + 20) = v21;
      if (++v19 == 8)
      {
        return v17 + 28 == a2;
      }
    }

    v8 = v17;
    v18 += 28;
    v17 += 28;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void sub_1A5F0689C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNMRCDetector;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void qd_trimImageBorders(char **a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 2);
  v4 = a1[3];
  v5 = (v2 + 1) >> 1;
  if (v5 >= (v3 + 1) >> 1)
  {
    v5 = (v3 + 1) >> 1;
  }

  if (v5 >= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v4;
  if (v5 >= 1)
  {
    v8 = *a1;
    v9 = v6;
    do
    {
      bzero(v8, v4);
      v8 += v4;
      --v9;
    }

    while (v9);
    v10 = &(*a1)[(v3 - v6) * v4];
    v11 = v6;
    do
    {
      bzero(v10, v4);
      v10 += v4;
      --v11;
    }

    while (v11);
  }

  v12 = v3 - 2 * v6;
  if (v12 >= 1)
  {
    v13 = v4 / v2;
    v14 = v6 * v4;
    v15 = &(*a1)[v14];
    v16 = v6 * v13;
    v17 = v12;
    do
    {
      bzero(v15, v16);
      v15 += v7;
      --v17;
    }

    while (v17);
    v18 = &(*a1)[v14 + (v2 - v6) * v13];
    do
    {
      bzero(v18, v16);
      v18 += v7;
      --v12;
    }

    while (v12);
  }
}

void sub_1A5F07B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned char const*,unsigned long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A5F09434(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24731(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t *std::unique_ptr<cvml::util::model_file_cache>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::mutex::~mutex((v2 + 40));
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,0>((v3 + 2));
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_1A5F09FFC(_Unwind_Exception *a1)
{
  v2 = v1;
  std::mutex::unlock((v2 + 40));
  _Unwind_Resume(a1);
}

void sub_1A5F0A0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock((v16 + 40));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F0A92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,void *>>>>::~unique_ptr[abi:ne200100](&a21);
  if (*(&a13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a13 + 1));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  std::mutex::unlock((v22 + 40));
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void cvml::util::mapped_model_file::ptrFile(cvml::util::mapped_model_file *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void cvml::util::mapped_model_file::base_address(cvml::util::mapped_model_file *this)
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void cvml::util::mapped_model_file::~mapped_model_file(cvml::util::mapped_model_file *this)
{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
}

uint64_t cvml::util::mapped_model_file_open::reset(uint64_t this)
{
  *(this + 16) = -1;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t cvml::util::mapped_model_file_open::cleanup(cvml::util::mapped_model_file_open *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 1);
    if (v3)
    {
      munmap(v2, v3);
      *(this + 3) = 0;
    }
  }

  v4 = *(this + 4);
  if (v4 != -1)
  {
    close(v4);
    *(this + 4) = -1;
  }

  v5 = *(*this + 48);

  return v5(this);
}

uint64_t cvml::util::mapped_model_file_open::advise(cvml::util::mapped_model_file_open *this, int a2)
{
  result = *(this + 3);
  if (result)
  {
    result = madvise(result, *(this + 1), a2);
    if (result)
    {
      syslog(3, "Error %s when executing %s in file %s:%d\n", "::madvidse failed", "virtual void cvml::util::mapped_model_file_open::advise(int) const", "/Library/Caches/com.apple.xbs/Sources/Vision/VisionKitFramework/VN/algorithm_util/mapped_model_file.h", 155);
      __assert_rtn("syslog_assert_failed", "common_defines.h", 24, "false");
    }
  }

  return result;
}

void cvml::util::mapped_model_file_open::~mapped_model_file_open(cvml::util::mapped_model_file_open *this)
{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
}

void std::__shared_ptr_emplace<cvml::util::mapped_model_file_open>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t cvml::util::mapped_model_file_fopen::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t cvml::util::mapped_model_file_fopen::cleanup(cvml::util::mapped_model_file_fopen *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    fclose(v2);
    *(this + 2) = 0;
  }

  v3 = *(*this + 48);

  return v3(this);
}

void cvml::util::mapped_model_file_fopen::~mapped_model_file_fopen(cvml::util::mapped_model_file_fopen *this)
{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1974438;
  *(this + 1) = 0;
}

void std::__shared_ptr_emplace<cvml::util::mapped_model_file_fopen>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F0AF6C(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::autotrace::actionF(uint64_t a1, __int32 a2, int8x8_t a3, int8x8_t a4)
{
  result = apple::vision::libraries::autotrace::EPolygonList::newPolygon((a1 + 16), 50, 1);
  if (result)
  {
    v9 = result;
    v10 = *(a1 + 24);
    result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(result);
    if (result)
    {
      v11 = result;
      result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v9);
      if (result)
      {
        v18.i32[0] = 0;
        v19.i32[0] = a2;
        v20 = vbsl_s8(vdup_lane_s32(vceq_s32(v19, v18), 0), a3, a4);
        *v11 = v20;
        if (*(a1 + 40) == 1)
        {
          VNValidatedLog(4, @"%s: attempt to leave an open left end when a left end is already open", v12, v13, v14, v15, v16, v17, "actionF");
          return 0;
        }

        else
        {
          v20.i32[0] = 0;
          v21 = -858993459 * ((v9 - v10) >> 3);
          v19.i32[0] = a2;
          *(a1 + 40) = 1;
          *(a1 + 44) = v21;
          *(a1 + 48) = a2 == 0;
          *result = vbsl_s8(vdup_lane_s32(vceq_s32(v19, v20), 0), a4, a3);
          v22 = a2 == 1;
          v24 = *(a1 + 88);
          v23 = *(a1 + 96);
          if (v24 >= v23)
          {
            v26 = *(a1 + 80);
            v27 = v24 - v26;
            v28 = (v24 - v26) >> 3;
            v29 = v28 + 1;
            if ((v28 + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v30 = v23 - v26;
            if (v30 >> 2 > v29)
            {
              v29 = v30 >> 2;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFF8)
            {
              v31 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::EOpenEnd>>(v31);
            }

            v32 = 8 * v28;
            *v32 = v21;
            *(v32 + 4) = v22;
            v25 = 8 * v28 + 8;
            memcpy(0, v26, v27);
            v33 = *(a1 + 80);
            *(a1 + 80) = 0;
            *(a1 + 88) = v25;
            *(a1 + 96) = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v24 = v21;
            *(v24 + 4) = v22;
            v25 = v24 + 8;
          }

          *(a1 + 88) = v25;
          return 1;
        }
      }
    }
  }

  return result;
}

char *apple::vision::libraries::autotrace::actionD(uint64_t a1, float32x2_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    VNValidatedLog(4, @"%s: attempt to connect to a left end when there is no left end open", a5, a6, a7, a8, a9, a10, "actionD");
    return 0;
  }

  v12 = *(a1 + 44);
  v13 = *(a1 + 48);
  v14 = *(a1 + 24) + 40 * v12;
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if (v13 != 1)
  {
    v19 = vmvn_s8(vceq_f32(*(v15 + 8 * (*v14 + v16) - 8), a2));
    if (((v19.i32[0] | v19.i32[1]) & 1) == 0)
    {
      result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v14);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v17 = vmvn_s8(vceq_f32(*(v15 + 8 * v16), a2));
  if ((v17.i32[0] | v17.i32[1]))
  {
LABEL_8:
    VNValidatedLog(4, @"%s: left end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionD");
    return 0;
  }

  result = apple::vision::libraries::autotrace::EPolygon::addPointAtStart(v14);
  if (!result)
  {
    return result;
  }

LABEL_12:
  *result = a3;
  *(a1 + 40) = 0;
  v21 = *(a1 + 88);
  v20 = *(a1 + 96);
  if (v21 >= v20)
  {
    v23 = *(a1 + 80);
    v24 = v21 - v23;
    v25 = (v21 - v23) >> 3;
    v26 = v25 + 1;
    if ((v25 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v27 = v20 - v23;
    if (v27 >> 2 > v26)
    {
      v26 = v27 >> 2;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::EOpenEnd>>(v28);
    }

    v29 = 8 * v25;
    *v29 = v12;
    *(v29 + 4) = v13;
    v22 = 8 * v25 + 8;
    memcpy(0, v23, v24);
    v30 = *(a1 + 80);
    *(a1 + 80) = 0;
    *(a1 + 88) = v22;
    *(a1 + 96) = 0;
    if (v30)
    {
      operator delete(v30);
    }
  }

  else
  {
    *v21 = v12;
    *(v21 + 4) = v13;
    v22 = v21 + 8;
  }

  *(a1 + 88) = v22;
  return 1;
}

uint64_t apple::vision::libraries::autotrace::actionE(uint64_t a1, float32x2_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    VNValidatedLog(4, @"%s: attempt to connect to a left end when there is no left end open", a5, a6, a7, a8, a9, a10, "actionE");
    return 0;
  }

  v12 = *(a1 + 44);
  v13 = *(a1 + 48);
  v14 = *(a1 + 24) + 40 * v12;
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if (v13 == 1)
  {
    v17 = vmvn_s8(vceq_f32(*(v15 + 8 * v16), a2));
    if (((v17.i32[0] | v17.i32[1]) & 1) == 0)
    {
      result = apple::vision::libraries::autotrace::EPolygon::addPointAtStart(v14);
      if (!result)
      {
        return result;
      }

LABEL_12:
      *result = a3;
      result = 1;
      *(a1 + 40) = 1;
      *(a1 + 44) = v12;
      *(a1 + 48) = v13;
      return result;
    }

    goto LABEL_8;
  }

  v19 = vmvn_s8(vceq_f32(*(v15 + 8 * (*v14 + v16) - 8), a2));
  if ((v19.i32[0] | v19.i32[1]))
  {
LABEL_8:
    VNValidatedLog(4, @"%s: left end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionE");
    return 0;
  }

  result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v14);
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t apple::vision::libraries::autotrace::actionB(uint64_t a1, float32x2_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 40) == 1)
  {
    VNValidatedLog(4, @"%s: no connection to open left end", a5, a6, a7, a8, a9, a10, "actionB");
    return 0;
  }

  v12 = *(a1 + 52);
  v13 = (*(a1 + 56) + 8 * v12);
  *(a1 + 52) = v12 + 1;
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = *(a1 + 24) + 40 * *v13;
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  if (v15 == 1)
  {
    v19 = vmvn_s8(vceq_f32(*(v17 + 8 * v18), a2));
    if (((v19.i32[0] | v19.i32[1]) & 1) == 0)
    {
      result = apple::vision::libraries::autotrace::EPolygon::addPointAtStart(v16);
      if (!result)
      {
        return result;
      }

LABEL_12:
      *result = a3;
      result = 1;
      *(a1 + 40) = 1;
      *(a1 + 44) = v14;
      *(a1 + 48) = v15;
      return result;
    }

LABEL_8:
    VNValidatedLog(4, @"%s: top open end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionB");
    return 0;
  }

  v21 = vmvn_s8(vceq_f32(*(v17 + 8 * (*v16 + v18) - 8), a2));
  if ((v21.i32[0] | v21.i32[1]))
  {
    goto LABEL_8;
  }

  result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v16);
  if (result)
  {
    goto LABEL_12;
  }

  return result;
}

char *apple::vision::libraries::autotrace::actionC(uint64_t a1, float32x2_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 40) == 1)
  {
    VNValidatedLog(4, @"%s: no connection to open left end", a5, a6, a7, a8, a9, a10, "actionC");
    return 0;
  }

  v12 = *(a1 + 52);
  v13 = (*(a1 + 56) + 8 * v12);
  *(a1 + 52) = v12 + 1;
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = *(a1 + 24) + 40 * *v13;
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  if (v15 != 1)
  {
    v21 = vmvn_s8(vceq_f32(*(v17 + 8 * (*v16 + v18) - 8), a2));
    if (((v21.i32[0] | v21.i32[1]) & 1) == 0)
    {
      result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v16);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_8:
    VNValidatedLog(4, @"%s: top open end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionC");
    return 0;
  }

  v19 = vmvn_s8(vceq_f32(*(v17 + 8 * v18), a2));
  if ((v19.i32[0] | v19.i32[1]))
  {
    goto LABEL_8;
  }

  result = apple::vision::libraries::autotrace::EPolygon::addPointAtStart(v16);
  if (!result)
  {
    return result;
  }

LABEL_12:
  *result = a3;
  *(a1 + 40) = 0;
  v23 = *(a1 + 88);
  v22 = *(a1 + 96);
  if (v23 >= v22)
  {
    v25 = *(a1 + 80);
    v26 = v23 - v25;
    v27 = (v23 - v25) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v29 = v22 - v25;
    if (v29 >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::EOpenEnd>>(v30);
    }

    v31 = 8 * v27;
    *v31 = v14;
    *(v31 + 4) = v15;
    v24 = 8 * v27 + 8;
    memcpy(0, v25, v26);
    v32 = *(a1 + 80);
    *(a1 + 80) = 0;
    *(a1 + 88) = v24;
    *(a1 + 96) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v23 = v14;
    *(v23 + 4) = v15;
    v24 = v23 + 8;
  }

  *(a1 + 88) = v24;
  return 1;
}

char *apple::vision::libraries::autotrace::actionA(uint64_t a1, float32x2_t a2, float32x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    VNValidatedLog(4, @"%s: attempt to connect to a left end when there is no left end open", a5, a6, a7, a8, a9, a10, "actionA");
    return 0;
  }

  v12 = *(a1 + 52);
  v13 = (*(a1 + 56) + 8 * v12);
  *(a1 + 52) = v12 + 1;
  v14 = *v13;
  v15 = *(v13 + 4);
  v16 = (*(a1 + 24) + 40 * *v13);
  v17 = *(v16 + 1);
  v18 = v16[4];
  if (v15 == 1)
  {
    v19 = &v17[8 * v18];
  }

  else
  {
    v19 = &v17[8 * *v16 - 8 + 8 * v18];
  }

  v20 = vmvn_s8(vceq_f32(*v19, a2));
  if ((v20.i32[0] | v20.i32[1]))
  {
    VNValidatedLog(4, @"%s: top open end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionA");
    return 0;
  }

  if (*(a1 + 48) == v15)
  {
    VNValidatedLog(4, @"%s: polygon front/back ends should be opposite on closure", a5, a6, a7, a8, a9, a10, "actionA");
    return 0;
  }

  if (*(a1 + 44) == v14)
  {
    if (*(a1 + 48))
    {
      v22 = &v17[8 * v18];
    }

    else
    {
      v22 = &v17[8 * *v16 - 8 + 8 * v18];
    }

    v30 = vmvn_s8(vceq_f32(*v22, a3));
    if ((v30.i32[0] | v30.i32[1]))
    {
      VNValidatedLog(4, @"%s: left end point does not match connected point", a5, a6, a7, a8, a9, a10, "actionA");
      return 0;
    }

    v31 = *v16;
    v32 = malloc_type_malloc(8 * v31, 0x100004000313F17uLL);
    if (!v32)
    {
      VNValidatedLog(4, @"%s: could not trim extract polygons point list", v33, v34, v35, v36, v37, v38, "closePolygon");
      return 0;
    }

    v39 = v32;
    memmove(v32, &v17[8 * v16[4]], 8 * v31);
    v16[4] = 0;
    v16[1] = v31;
    free(v17);
    *(v16 + 1) = v39;
    *(v16 + 20) = 1;
    v40 = *v16;
    v41 = *(a1 + 8) * *(a1 + 8);
    if (v40 >= 1)
    {
      v42 = 0;
      v43 = 0;
      while (v42)
      {
        v44 = vsub_f32(v39[v42], v39[v42 - 1]);
        if ((COERCE_FLOAT(vmul_f32(v44, v44).i32[1]) + (v44.f32[0] * v44.f32[0])) > v41)
        {
          if (v42 != v43)
          {
            v45 = v39[v42];
            goto LABEL_33;
          }

          goto LABEL_34;
        }

LABEL_35:
        if (v40 == ++v42)
        {
          goto LABEL_68;
        }
      }

      if (v43)
      {
        v45 = *v39;
LABEL_33:
        v39[v43] = v45;
      }

LABEL_34:
      ++v43;
      goto LABEL_35;
    }

    v43 = 0;
LABEL_68:
    v79 = vsub_f32(*v39, v39[v40 - 1]);
    v80 = vmul_f32(v79, v79);
    v81 = v43 - ((*&v80.i32[1] + (v79.f32[0] * v79.f32[0])) <= v41);
    *v16 = v81;
    if (v81 > 2)
    {
      if (*a1 == 1)
      {
        v82 = 0;
        v80.i32[0] = *(a1 + 4);
        v83 = (*v80.i32 * 2.0) + -2.0;
        v84 = (*v80.i32 * -3.0) + 3.0;
        v85 = *(v16 + 1);
        v86 = vdup_lane_s32(v80, 0);
        do
        {
          v87 = *(v85 + 8 * v82);
          v88 = vrndm_f32(v87);
          v89 = vsub_f32(v87, v88);
          *(v85 + 8 * v82++) = vadd_f32(v88, vmla_f32(vmla_f32(vmul_f32(v89, vmul_n_f32(v89, v84)), v89, vmul_f32(v89, vmul_n_f32(v89, v83))), v89, v86));
        }

        while (v82 < *v16);
      }

      if (*(a1 + 144) == 1)
      {
        v90 = apple::vision::libraries::autotrace::EPolygonList::containsPolygon((a1 + 16), v16);
        if (v90)
        {
          v96 = v90;
          do
          {
            v97 = v96;
            v98 = v96[7];
            if (v98 == -1)
            {
              break;
            }

            v99 = **(v16 + 1);
            v100 = *(a1 + 24);
            while (1)
            {
              v96 = (v100 + 40 * v98);
              if (apple::vision::libraries::autotrace::EPolygon::containsPoint(v96, v99))
              {
                break;
              }

              v98 = v96[6];
              if (v98 == -1)
              {
                goto LABEL_82;
              }
            }
          }

          while (v100);
LABEL_82:
          apple::vision::libraries::autotrace::EPolygonList::insertPolygon((a1 + 16), v97, v16, v91, v92, v93, v94, v95);
        }

        else
        {
          v101 = *(a1 + 16);
          if (v101 >= 1)
          {
            v102 = 0;
            v103 = *(a1 + 24);
            do
            {
              if (v103 != v16 && (*(v103 + 21) & 1) == 0 && *(v103 + 20) == 1)
              {
                v104 = **(v103 + 8);
                if (apple::vision::libraries::autotrace::EPolygon::containsPoint(v16, v104))
                {
                  v110 = v16;
                  do
                  {
                    v111 = v110;
                    v112 = v110[7];
                    if (v112 == -1)
                    {
                      break;
                    }

                    v113 = *(a1 + 24);
                    while (1)
                    {
                      v110 = (v113 + 40 * v112);
                      if (apple::vision::libraries::autotrace::EPolygon::containsPoint(v110, v104))
                      {
                        break;
                      }

                      v112 = v110[6];
                      if (v112 == -1)
                      {
                        goto LABEL_97;
                      }
                    }
                  }

                  while (v113);
LABEL_97:
                  apple::vision::libraries::autotrace::EPolygonList::insertPolygon((a1 + 16), v111, v103, v105, v106, v107, v108, v109);
                  v101 = *(a1 + 16);
                }
              }

              ++v102;
              v103 += 40;
            }

            while (v102 < v101);
          }
        }
      }
    }

    else
    {
      apple::vision::libraries::autotrace::EPolygonList::freePolygon((a1 + 16), v16);
    }

LABEL_99:
    *(a1 + 40) = 0;
    return 1;
  }

  v23 = (*(a1 + 24) + 40 * v14);
  if (*(v13 + 4))
  {
    result = apple::vision::libraries::autotrace::EPolygon::addPointAtStart(v23);
  }

  else
  {
    result = apple::vision::libraries::autotrace::EPolygon::addPointAtEnd(v23);
  }

  if (result)
  {
    *result = *&a3;
    if (*(v13 + 4) == *(a1 + 48))
    {
      VNValidatedLog(4, @"%s: join polygons occurs at wrong ends", v24, v25, v26, v27, v28, v29, "joinOpenEnds");
      return 0;
    }

    v46 = *(a1 + 24);
    v47 = *v13;
    v48 = (v46 + 40 * *v13);
    v49 = *(v48 + 1);
    v50 = v48[4];
    if (*(v13 + 4))
    {
      v51 = (v49 + 8 * v50);
    }

    else
    {
      v51 = (v49 + 8 * (*v48 + v50) - 8);
    }

    v52 = *v51;
    v53 = *(a1 + 44);
    v54 = (v46 + 40 * v53);
    v55 = *(v54 + 1);
    v56 = v54[4];
    if (*(a1 + 48))
    {
      v57 = (v55 + 8 * v56);
    }

    else
    {
      v57 = (v55 + 8 * (*v54 + v56) - 8);
    }

    v58 = vmvn_s8(vceq_f32(v52, *v57));
    if ((v58.i32[0] | v58.i32[1]))
    {
      VNValidatedLog(4, @"%s: join polygons point does not match connected point", v24, v25, v26, v27, v28, v29, "joinOpenEnds");
      return 0;
    }

    v59 = *v54 + *v48;
    v60 = v59 + 99;
    v61 = malloc_type_malloc(8 * (v59 + 99), 0x100004000313F17uLL);
    if (!v61)
    {
      VNValidatedLog(4, @"%s: could not extend extract polygons point list", v62, v63, v64, v65, v66, v67, "joinOpenEnds");
      return 0;
    }

    v68 = v61;
    v69 = v59 - 1;
    v70 = *(v13 + 4);
    if (*(v13 + 4))
    {
      v71 = v54;
    }

    else
    {
      v71 = v48;
    }

    if (v70)
    {
      v72 = v48;
    }

    else
    {
      v72 = v54;
    }

    memmove(v61 + 400, (*(v71 + 1) + 8 * v71[4]), 8 * *v71 - 8);
    memmove(&v68[8 * *v71 + 392], (*(v72 + 1) + 8 * v72[4]), 8 * *v72);
    v54[4] = 50;
    *v54 = v69;
    v54[1] = v60;
    free(*(v54 + 1));
    *(v54 + 1) = v68;
    apple::vision::libraries::autotrace::EPolygonList::freePolygon((a1 + 16), v48);
    v73 = *(a1 + 56);
    v74 = *(a1 + 64) - v73;
    if (v74)
    {
      v75 = v74 >> 3;
      if (v75 <= 1)
      {
        v75 = 1;
      }

      do
      {
        if (*v73 == v47)
        {
          *v73 = v53;
        }

        v73 += 2;
        --v75;
      }

      while (v75);
    }

    v76 = *(a1 + 80);
    v77 = *(a1 + 88) - v76;
    if (v77)
    {
      v78 = v77 >> 3;
      if (v78 <= 1)
      {
        v78 = 1;
      }

      do
      {
        if (*v76 == v47)
        {
          *v76 = v53;
        }

        v76 += 2;
        --v78;
      }

      while (v78);
    }

    if (*(a1 + 44) == v47)
    {
      *(a1 + 44) = v53;
    }

    goto LABEL_99;
  }

  return result;
}

void apple::vision::libraries::autotrace::encodePolygonData(apple::vision::libraries::autotrace *this, apple::vision::libraries::autotrace::BitmapToContourEnvironment *a2, apple::vision::libraries::autotrace::EPolygon *a3)
{
  v5 = malloc_type_malloc(4 * *a2 + 8, 0x100004077774924uLL);
  v6 = v5;
  v7 = *(a2 + 1);
  v8 = vdupq_n_s64(0x4070000000000000uLL);
  v76 = a2;
  v9 = *a2;
  v10 = vmovn_s64(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vcvtq_f64_f32(*v7), v8))));
  *v5 = v9;
  v77 = v10;
  *(v5 + 4) = v10;
  v11 = (v5 + 12);
  if (v9 >= 2)
  {
    v12 = v9 - 1;
    v13 = v7 + 1;
    v14 = v5 + 12;
    do
    {
      v15 = *v13++;
      v16 = vmovn_s64(vcvtq_s64_f64(vrndxq_f64(vmulq_f64(vcvtq_f64_f32(v15), v8))));
      v17 = vsub_s32(v16, v10);
      *v14 = v17.i16[0];
      v14[1] = v17.i16[2];
      v14 += 2;
      v10 = v16;
      --v12;
    }

    while (v12);
  }

  apple::vision::libraries::autotrace::BitString::writeBit((this + 104), 0);
  v18 = 0x80000000;
  v19 = 32;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), (v18 & v9) != 0);
    v18 >>= 1;
    --v19;
  }

  while (v19);
  v20 = 0x80000000;
  v21 = 32;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), (v20 & v77.i32[0]) != 0);
    v20 >>= 1;
    --v21;
  }

  while (v21);
  v22 = 0x80000000;
  v23 = 32;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), (v22 & v77.i32[1]) != 0);
    v22 >>= 1;
    --v23;
  }

  while (v23);
  v24 = 8;
  v25 = 4;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), v24 > 7);
    v24 >>= 1;
    --v25;
  }

  while (v25);
  v26 = *v6;
  if (*v6 >= 2)
  {
    v27 = 1;
    do
    {
      v28 = v26 - 1;
      v29 = *v11;
      if (v27 >= v26 - 1)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v30 = v11[2] + v29;
        v31 = v11[3] + v11[1];
      }

      v32 = 4294967040;
      if (v29 == -256 || (v30 & 0xFFFFFEFF) == 0xFFFFFE00 || (v32 = 256, v29 == 256) || v30 == 256 || v30 == 512)
      {
        v34 = v27;
        if (v27 < v26)
        {
          v35 = v11;
          v34 = v27;
          do
          {
            v36 = *v35;
            if (v34 >= v28)
            {
              v37 = 0;
            }

            else
            {
              v37 = v35[2] + v36;
            }

            if (v32 == v36)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
              if (v37 != v32 && v37 != 2 * v32)
              {
                break;
              }
            }

            v34 += v38;
            v35 += 2 * v38;
          }

          while (v34 < v26);
        }

        v33 = v34 - v27;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v39 = v11[1];
      v40 = 4294967040;
      if (v39 == 65280 || (v31 & 0xFFFFFEFF) == 0xFFFFFE00 || (v40 = 256, v39 == 256) || v31 == 256 || v31 == 512)
      {
        v42 = v27;
        if (v27 < v26)
        {
          v43 = v11;
          v42 = v27;
          do
          {
            v44 = v43[1];
            if (v42 >= v28)
            {
              v45 = 0;
            }

            else
            {
              v45 = v43[3] + v44;
            }

            if (v40 == v44)
            {
              v46 = 1;
            }

            else
            {
              v46 = 2;
              if (v45 != v40 && v45 != 2 * v40)
              {
                break;
              }
            }

            v42 += v46;
            v43 += 2 * v46;
          }

          while (v42 < v26);
        }

        v41 = v42 - v27;
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v47 = (this + 104);
      if (v33 | v41)
      {
        if (v33 >= v41)
        {
          apple::vision::libraries::autotrace::encodeRunStart(v47, 0, v32, v33);
          v68 = *v6;
          v69 = v27;
          if (v27 < *v6)
          {
            v70 = v11;
            v69 = v27;
            do
            {
              v62 = *v70;
              if (v69 >= v68 - 1)
              {
                v71 = 0;
              }

              else
              {
                v71 = v70[2] + v62;
              }

              if (v32 == v62)
              {
                apple::vision::libraries::autotrace::encodeRunContinuationOneSample((this + 104), v70[1]);
                v72 = 1;
              }

              else
              {
                if (v71 != v32 && v71 != 2 * v32)
                {
                  break;
                }

                apple::vision::libraries::autotrace::encodeRunContinuationTwoSamples((this + 104), v32, v62, v70[2], v70[1], v70[3], v66, v67);
                v72 = 2;
              }

              v69 += v72;
              v70 += 2 * v72;
              v68 = *v6;
            }

            while (v69 < *v6);
          }

          if (v69 - v27 != v33)
          {
            VNValidatedLog(4, @"%s: run length doesn't match up (%d vs %d) for an x run direction %d", v62, v63, v64, v65, v66, v67, "encodePolygonData");
          }
        }

        else
        {
          apple::vision::libraries::autotrace::encodeRunStart(v47, 1, v40, v41);
          v56 = *v6;
          if (v27 < *v6)
          {
            v57 = v11;
            v58 = v27;
            do
            {
              v59 = v57[1];
              if (v58 >= v56 - 1)
              {
                v60 = 0;
              }

              else
              {
                v60 = v57[3] + v59;
              }

              if (v40 == v59)
              {
                apple::vision::libraries::autotrace::encodeRunContinuationOneSample((this + 104), *v57);
                v61 = 1;
              }

              else
              {
                if (v60 != v40 && v60 != 2 * v40)
                {
                  break;
                }

                apple::vision::libraries::autotrace::encodeRunContinuationTwoSamples((this + 104), v40, v59, v57[3], *v57, v57[2], v54, v55);
                v61 = 2;
              }

              v58 += v61;
              v57 += 2 * v61;
              v56 = *v6;
            }

            while (v58 < *v6);
          }

          v33 = v41;
        }
      }

      else
      {
        apple::vision::libraries::autotrace::BitString::writeBit(v47, 0);
        v48 = v29 + 512;
        v49 = 512;
        v50 = 10;
        do
        {
          apple::vision::libraries::autotrace::BitString::writeBit((this + 104), (v49 & v48) != 0);
          v49 >>= 1;
          --v50;
        }

        while (v50);
        v51 = v39 + 512;
        v52 = 512;
        v53 = 10;
        do
        {
          apple::vision::libraries::autotrace::BitString::writeBit((this + 104), (v52 & v51) != 0);
          v52 >>= 1;
          --v53;
        }

        while (v53);
        v33 = 1;
      }

      v27 += v33;
      v11 += 2 * v33;
      v26 = *v6;
    }

    while (v27 < *v6);
  }

  if (*(v76 + 7) != -1)
  {
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), 1);
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), 0);
    for (i = *(v76 + 7); i != -1; i = *(v75 + 6))
    {
      v75 = (*(this + 3) + 40 * i);
      apple::vision::libraries::autotrace::encodePolygonData(this, v75, v73);
    }

    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), 1);
    apple::vision::libraries::autotrace::BitString::writeBit((this + 104), 1);
  }

  free(v6);
}

void apple::vision::libraries::autotrace::BitmapToContourEnvironment::~BitmapToContourEnvironment(apple::vision::libraries::autotrace::BitmapToContourEnvironment *this)
{
  apple::vision::libraries::autotrace::EPolygonList::term((this + 16));
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }
}

void apple::vision::libraries::autotrace::encodeRunStart(apple::vision::libraries::autotrace *this, apple::vision::libraries::autotrace::BitString *a2, int a3, unsigned int a4)
{
  v6 = a2;
  apple::vision::libraries::autotrace::BitString::writeBit(this, 1);
  if (v6)
  {
    if (a3 == -256)
    {
      v17 = 2;
      v18 = 2;
      do
      {
        apple::vision::libraries::autotrace::BitString::writeBit(this, v18 > 1);
        v18 >>= 1;
        --v17;
      }

      while (v17);
      goto LABEL_21;
    }

    if (a3 == 256)
    {
      v14 = 2;
      do
      {
        apple::vision::libraries::autotrace::BitString::writeBit(this, 1);
        --v14;
      }

      while (v14);
      goto LABEL_21;
    }

    v19 = @"%s: illegal direction %d in y run";
  }

  else
  {
    if (a3 == -256)
    {
      v20 = 2;
      do
      {
        apple::vision::libraries::autotrace::BitString::writeBit(this, 0);
        --v20;
      }

      while (v20);
      goto LABEL_21;
    }

    if (a3 == 256)
    {
      v15 = 2;
      v16 = 2;
      do
      {
        apple::vision::libraries::autotrace::BitString::writeBit(this, v16 & 1);
        v16 >>= 1;
        --v15;
      }

      while (v15);
      goto LABEL_21;
    }

    v19 = @"%s: illegal direction %d in x run";
  }

  VNValidatedLog(4, v19, v8, v9, v10, v11, v12, v13, "encodeRunStart");
LABEL_21:
  if (a4 >= 0x10)
  {
    v24 = 4;
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, 1);
      --v24;
    }

    while (v24);
    v25 = 0x80000000;
    v26 = 32;
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, (v25 & a4) != 0);
      v25 >>= 1;
      --v26;
    }

    while (v26);
  }

  else
  {
    v21 = a4 - 1;
    v22 = 8;
    v23 = 4;
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, (v22 & v21) != 0);
      v22 >>= 1;
      --v23;
    }

    while (v23);
  }
}

void apple::vision::libraries::autotrace::encodeRunContinuationOneSample(apple::vision::libraries::autotrace *this, apple::vision::libraries::autotrace::BitString *a2)
{
  v2 = a2;
  apple::vision::libraries::autotrace::BitString::writeBit(this, 0);
  if (v2 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = -v2;
  }

  v5 = 5;
  if (v4 >= 0x10)
  {
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, 1);
      --v5;
    }

    while (v5);
    v5 = 10;
    v6 = 512;
  }

  else
  {
    v6 = 15;
  }

  v7 = v6 + v2;
  v8 = 1 << (v5 - 1);
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit(this, (v8 & v7) != 0);
    v8 >>= 1;
    --v5;
  }

  while (v5);
}

void apple::vision::libraries::autotrace::encodeRunContinuationTwoSamples(apple::vision::libraries::autotrace *this, apple::vision::libraries::autotrace::BitString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  if (a4 + a3 == a2)
  {
    v12 = 2;
    v13 = 2;
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, v13 > 1);
      v13 >>= 1;
      --v12;
    }

    while (v12);
  }

  else if (a4 + a3 == 2 * a2)
  {
    v14 = 2;
    do
    {
      apple::vision::libraries::autotrace::BitString::writeBit(this, 1);
      --v14;
    }

    while (v14);
  }

  else
  {
    VNValidatedLog(4, @"%s: illegal two sample direction sum along run", a3, a4, a5, a6, a7, a8, "encodeRunContinuationTwoSamples");
  }

  v15 = v10 + 512;
  v16 = 512;
  v17 = 10;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit(this, (v16 & v15) != 0);
    v16 >>= 1;
    --v17;
  }

  while (v17);
  v18 = v9 + 512;
  v19 = 512;
  v20 = 10;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit(this, (v19 & v18) != 0);
    v19 >>= 1;
    --v20;
  }

  while (v20);
  v21 = v8 + 512;
  v22 = 512;
  v23 = 10;
  do
  {
    apple::vision::libraries::autotrace::BitString::writeBit(this, (v22 & v21) != 0);
    v22 >>= 1;
    --v23;
  }

  while (v23);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::EOpenEnd>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1A5F0CD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0D60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5F0D708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0DD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0DE0C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0DF08(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0E1D8(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0EA04(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F0EB1C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void ___ZL29_asyncProcessingDispatchQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.VNSession", v2);
  v1 = _asyncProcessingDispatchQueue(void)::ourProcessingDispatchQueue;
  _asyncProcessingDispatchQueue(void)::ourProcessingDispatchQueue = v0;
}

void sub_1A5F0F43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VNSession;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5F0FB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CGPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vision::mod::DescriptorItemSideInfo>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5F109D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CGPoint *>,std::__wrap_iter<CGPoint *>,std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a2 - a1) >> 4;
  if (v4 >= 2)
  {
    v5 = a1;
    v6 = a2 - 16;
    if (a2 - 16 > a1)
    {
      v8 = v4 - 1;
      v9 = a1;
      do
      {
        v13[0] = 0;
        v13[1] = v8;
        v10 = std::uniform_int_distribution<long>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(a3, v13);
        if (v10)
        {
          v11 = *v9;
          *v9 = *(v5 + 16 * v10);
          *(v5 + 16 * v10) = v11;
        }

        ++v9;
        --v8;
        v5 += 16;
      }

      while (v9 < v6);
    }
  }

  return a2;
}

void sub_1A5F10C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F11164(_Unwind_Exception *a1)
{
  MEMORY[0x1AC556B00](v3, 0x10B1C40765A9CC9);

  _Unwind_Resume(a1);
}

void sub_1A5F120D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1A5F14F9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id _sequenceKeyComponentForArray(NSArray *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v1];
    v3 = [v2 allObjects];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A5F17ADC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 6);
  objc_exception_rethrow();
}

void sub_1A5F17D68(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 6);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F18448(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + 24));
  dispatch_semaphore_signal(*(v1 + 16));
  objc_exception_rethrow();
}

void sub_1A5F18464(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F18CC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5F1A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39_26555(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5F1ABFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1A5F1DD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x1A5F1DC6CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F205F0(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1A5F2071C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::tuple<objc_class * {__strong},unsigned long>,CSUSceneNetV5ConfigurationRevision>,std::__map_value_compare<std::tuple<objc_class * {__strong},unsigned long>,std::__value_type<std::tuple<objc_class * {__strong},unsigned long>,CSUSceneNetV5ConfigurationRevision>,std::less<std::tuple<objc_class * {__strong},unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<objc_class * {__strong},unsigned long>,CSUSceneNetV5ConfigurationRevision>>>::__emplace_unique_key_args<std::tuple<objc_class * {__strong},unsigned long>,std::piecewise_construct_t const&,std::tuple<std::tuple<objc_class * {__strong},unsigned long>&&>,std::tuple<>>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      v6 = v4[5];
      v7 = v6 > a3;
      if (v5 != a2)
      {
        v7 = v5 > a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 < a3;
    v9 = v5 == a2;
    v10 = v5 < a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

void sub_1A5F2401C(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5F24938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  _Block_object_dispose((v29 - 136), 8);
  v31 = *(v29 - 88);
  if (v31)
  {
    *(v29 - 80) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__26815(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__26816(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1A5F24B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose((v22 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ImageProcessing_smoothGaussian_createKernelForPlanarF(float **a1, int *a2, float a3, float a4)
{
  if (a1)
  {
    v5 = 0;
    v6 = 4220;
    if (a3 <= 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      if (a4 > 0.0)
      {
        LODWORD(v6) = vcvtps_s32_f32(a3 * a4);
        *a2 = (2 * v6) | 1;
        v7 = malloc_type_malloc(4 * v6 + 4, 0x100004052888210uLL);
        v10 = malloc_type_malloc(4 * *a2, 0x100004052888210uLL);
        v5 = v10;
        if (v7)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v6 = 4219;
        }

        else
        {
          v7[v6] = 1.0;
          if (v6 <= 0)
          {
            v10[v6] = 1.0;
          }

          else
          {
            v12 = -v6;
            v13 = v7;
            v14 = v6;
            v15 = 1.0;
            do
            {
              v16 = expf((v12 / a3) * ((v12 / a3) * -0.5));
              *v13++ = v16;
              v15 = v15 + (v16 * 2.0);
              v12 = v12 + 1.0;
              --v14;
            }

            while (v14);
            v5[v6] = v7[v6] / v15;
            v17 = *a2 - 1;
            v18 = v7;
            v19 = v5;
            do
            {
              v20 = *v18++;
              *v19++ = v20 / v15;
              v5[v17--] = v20 / v15;
              --v6;
            }

            while (v6);
          }

          *a1 = v5;
          v6 = 4224;
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v6 = 4221;
  }

  free(v7);
  free(v5);
  return v6;
}

void apple::vision::libraries::autotrace::ContourToPath::ContourToPath(apple::vision::libraries::autotrace::ContourToPath *this, float a2)
{
  *this = 0x40A000003DA3D70ALL;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  operator new();
}

void sub_1A5F25374(_Unwind_Exception *exception_object)
{
  v4 = v1[18];
  if (v4)
  {
    v1[19] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[16] = v5;
    operator delete(v5);
  }

  v6 = v1[12];
  if (v6)
  {
    v1[13] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::autoTrace(apple::vision::libraries::autotrace::ContourToPath *this, const apple::vision::libraries::autotrace::EPolygonList *a2, float32x2_t **a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *a3;
  if (v11 < 1)
  {
    v15 = 0.0;
  }

  else
  {
    v12 = a3[1];
    v13 = *v12;
    v14 = vsub_f32(v12[v11 - 1], *v12);
    v15 = 0.0;
    v16 = *a3;
    do
    {
      v17 = *v12++;
      v18 = vsub_f32(v17, v13);
      v15 = v15 + vmul_lane_f32(vsub_f32(v18, v14), vadd_f32(v18, v14), 1).f32[0] * 0.5;
      v14 = v18;
      --v16;
    }

    while (v16);
  }

  if (v11 <= *(this + 10))
  {
    *(this + 3) = a3;
    *(this + 4) = a2;
  }

  else
  {
    apple::vision::libraries::autotrace::ContourToPath::freeAutoTraceStructures(this);
    *(this + 3) = v8;
    *(this + 4) = a2;
    v19 = *v8;
    *(this + 6) = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    *(this + 10) = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    *(this + 11) = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    *(this + 7) = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    *(this + 8) = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL);
    *(this + 9) = v20;
    if (!*(this + 6) || !*(this + 10) || !*(this + 11) || !*(this + 7) || !*(this + 8) || !v20)
    {
      VNValidatedLog(4, @"%s: could not allocate auto trace structures", a3, a4, a5, a6, a7, a8, "installAutoTraceStructures");
      apple::vision::libraries::autotrace::ContourToPath::freeAutoTraceStructures(this);
      return 0;
    }

    *(this + 10) = v19;
  }

  if (fabsf(v15) < 3.0)
  {
    CGPathMoveToPoint(*(this + 2), 0, COERCE_FLOAT(**(v8 + 1)), COERCE_FLOAT(HIDWORD(**(v8 + 1))));
    LODWORD(v21) = *v8;
    if (*v8 >= 1)
    {
      v22 = 0;
      v23 = 1;
      do
      {
        LODWORD(v24) = ++v22;
        if (v23 >= v21)
        {
          v24 = v23 - v21;
          if (v24 >= v21)
          {
            v24 %= v21;
          }
        }

        CGPathAddLineToPoint(*(this + 2), 0, COERCE_FLOAT(*(*(v8 + 1) + 8 * v24)), COERCE_FLOAT(HIDWORD(*(*(v8 + 1) + 8 * v24))));
        v21 = *v8;
        v184 = v23++ < v21;
      }

      while (v184);
    }

    CGPathCloseSubpath(*(this + 2));
    return 1;
  }

  v26 = *(this + 3);
  v27 = *v26;
  if (v27)
  {
    v28 = *(this + 6);
    if (v27 < 1)
    {
      goto LABEL_35;
    }

    v29 = 0;
    v30 = *(v26 + 1);
    do
    {
      v31 = v29 + 1;
      if (v29 + 1 >= v27)
      {
        v32 = v27;
      }

      else
      {
        v32 = 0;
      }

      v33 = vsub_f32(*(v30 - 8 * v32 + 8 * v29 + 8), *(v30 + 8 * v29));
      v34 = atan2f(v33.f32[1], v33.f32[0]) * 0.15915;
      if (v34 < 0.0)
      {
        v34 = v34 + 1.0;
      }

      v28[v29++] = v34;
    }

    while (v27 != v31);
    if (v27 > 23)
    {
      if (v27 > 0x37)
      {
        apple::vision::libraries::autotrace::ContourToPath::filterAngleBuffer(v28, *(this + 10), v27, 3, *this);
        v37 = *(this + 10);
        v36 = *this;
        if (v27 > 0x77)
        {
          apple::vision::libraries::autotrace::ContourToPath::filterAngleBuffer(v37, *(this + 11), v27, 7, v36);
          v37 = *(this + 11);
          v35 = *(this + 7);
          v36 = *this;
          v38 = v27;
          v39 = 15;
        }

        else
        {
          v35 = *(this + 7);
          v38 = v27;
          v39 = 7;
        }
      }

      else
      {
        v35 = *(this + 7);
        v36 = *this;
        v37 = v28;
        v38 = v27;
        v39 = 3;
      }

      apple::vision::libraries::autotrace::ContourToPath::filterAngleBuffer(v37, v35, v38, v39, v36);
    }

    else
    {
LABEL_35:
      memmove(*(this + 7), v28, 4 * v27);
    }
  }

  v40 = *(this + 3);
  v41 = *(v40 + 1);
  v42 = *v40;
  LOBYTE(v448[0]) = 0;
  __p = 0;
  v446 = 0;
  v447 = 0;
  if (v42 >= 1)
  {
    v43 = 0;
    a3 = 0;
    a5 = 0;
    v44 = -1;
    v45 = vdup_n_s32(0x3A83126Fu);
    do
    {
      v46 = v43 + 1;
      if (v43 + 1 >= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = 0;
      }

      v48 = vcgt_f32(v45, vabd_f32(*(v41 - 8 * v47 + 8 * v43 + 8), *(v41 + 8 * v43)));
      if (v48.i8[0])
      {
        v49 = 1;
      }

      else
      {
        v49 = -1;
      }

      if (v48.i8[4])
      {
        v50 = 0;
      }

      else
      {
        v50 = v49;
      }

      if (v50 == v44)
      {
        a5 = (a5 + 1);
      }

      else
      {
        a4 = &v46[-v47];
        if (v44 == 1)
        {
          apple::vision::libraries::autotrace::ContourToPath::addVerticalLine(**(this + 3), *(*(this + 3) + 8), a3, v46 - v47, a5, &__p, v448);
        }

        else if (!v44)
        {
          apple::vision::libraries::autotrace::ContourToPath::addHorizontalLine(**(this + 3), *(*(this + 3) + 8), a3, v46 - v47, a5, &__p, v448);
        }

        if (LOBYTE(v448[0]))
        {
          goto LABEL_67;
        }

        a5 = 1;
        a3 = v43;
        v44 = v50;
      }

      v43 = (v43 + 1);
    }

    while (v42 != v46);
    if (v44 == 1)
    {
      apple::vision::libraries::autotrace::ContourToPath::addVerticalLine(**(this + 3), *(*(this + 3) + 8), a3, 0, a5, &__p, v448);
    }

    else if (!v44)
    {
      apple::vision::libraries::autotrace::ContourToPath::addHorizontalLine(**(this + 3), *(*(this + 3) + 8), a3, 0, a5, &__p, v448);
    }
  }

  if (LOBYTE(v448[0]))
  {
LABEL_67:
    v51 = 0;
  }

  else
  {
    v52 = __p;
    if (v446 == __p)
    {
      v51 = 1;
      if (!__p)
      {
        goto LABEL_75;
      }

      goto LABEL_74;
    }

    v53 = 0;
    v54 = 0;
    do
    {
      apple::vision::libraries::autotrace::ContourToPath::insertPairIntoInterestingPoints(this, &v52[v53], *&v52[v53 + 8], *&v52[v53 + 12], this + 15, v448);
      if (LOBYTE(v448[0]))
      {
        break;
      }

      v54 += 2;
      v52 = __p;
      v53 += 16;
    }

    while (v54 < (v446 - __p) >> 3);
    v51 = LOBYTE(v448[0]) ^ 1;
  }

  v52 = __p;
  if (__p)
  {
LABEL_74:
    operator delete(v52);
  }

LABEL_75:
  if ((v51 & 1) == 0)
  {
    VNValidatedLog(4, @"%s: failing findOrthogonalLines", a3, a4, a5, a6, a7, a8, "autoTrace");
    return 0;
  }

  v55 = **(this + 3);
  if (v55 >= 1)
  {
    v56 = 0;
    v57 = *(this + 6);
    v58 = *(this + 10);
    do
    {
      if (v56)
      {
        v59 = 0;
      }

      else
      {
        v59 = v55;
      }

      v60 = v56 + v59 - 1;
      v61 = v56 + 1;
      if (v56 + 1 >= v55)
      {
        v62 = v55;
      }

      else
      {
        v62 = 0;
      }

      v63 = v61 - v62;
      if (v60 <= 0)
      {
        v64 = v55;
      }

      else
      {
        v64 = 0;
      }

      v65 = *(v57 + 4 * (v60 + v64 - 1));
      v66 = -2.0;
      v67 = -1.0;
      v68 = 0.0;
      v69 = 0.0;
      while (1)
      {
        v70 = v65;
        v65 = *(v57 + 4 * v60);
        v71 = v65 - v70;
        v72 = rintf(v65 - v70);
        v73 = (v65 - v70) - v72;
        v74 = vabds_f32(v71, v72);
        if (v74 <= v67)
        {
          v75 = v68;
          if (v74 <= v66)
          {
            v73 = v69;
            v76 = v67;
            v74 = v66;
          }

          else
          {
            v76 = v67;
          }
        }

        else
        {
          v75 = v73;
          v73 = v68;
          v76 = v74;
          v74 = v67;
        }

        if (v60 == v63)
        {
          break;
        }

        v77 = v60 + 1;
        if (v77 >= v55)
        {
          v78 = v55;
        }

        else
        {
          v78 = 0;
        }

        v60 = v77 - v78;
        v68 = v75;
        v69 = v73;
        v67 = v76;
        v66 = v74;
      }

      *(v58 + 4 * v56++) = v75 + v73;
    }

    while (v61 != v55);
    v79 = 0;
    v437 = vdup_n_s32(v55 >> 1);
    v440 = vdup_n_s32(-(v55 >> 1));
    v435 = vdup_n_s32(v55);
    v80 = &unk_1A6038000;
    do
    {
      LODWORD(__p) = 0;
      v448[0] = 0.0;
      v443 = 0.0;
      v81 = *(this + 3);
      v82 = *v81;
      v83 = v79 - 2;
      v84 = v79 - 2 - v82;
      if ((v79 - 2) >= v82)
      {
        if (v84 >= v82)
        {
          v84 %= v82;
        }
      }

      else if (v79 > 1)
      {
        LODWORD(v84) = v79 - 2;
      }

      else
      {
        LODWORD(v84) = v83 + v82;
        if ((v83 + v82) < 0)
        {
          LODWORD(v84) = v79 - 2;
          if (v82)
          {
            v84 = (v83 + v82) % v82 + v82;
          }
        }
      }

      if (v79)
      {
        v85 = 0;
      }

      else
      {
        v85 = *v81;
      }

      v86 = v79 + v85 - 1;
      v87 = v79 + 1;
      if ((v79 + 1) >= v82)
      {
        v88 = *v81;
      }

      else
      {
        v88 = 0;
      }

      v89 = v87 - v88;
      v90 = v79 + 2 - v82;
      if (v90 >= v82)
      {
        LODWORD(v90) = v90 % v82;
      }

      if ((v79 + 2) < v82)
      {
        LODWORD(v90) = v79 + 2;
      }

      v91 = *(this + 10);
      v92 = fabsf(*(v91 + 4 * v84));
      v93 = fabsf(*(v91 + 4 * v86));
      v94 = fabsf(*(v91 + 4 * v79));
      v95 = fabsf(*(v91 + 4 * v89));
      if (v93 == v94 && v92 < v94 && v95 < v94)
      {
        v116 = v94 * 0.75;
        if (v92 <= v116)
        {
          v117 = v86;
        }

        else
        {
          v117 = v84;
        }

        if (v95 <= v116)
        {
          v118 = v79;
        }

        else
        {
          v118 = v87 - v88;
        }

        v99 = *(this + 6);
      }

      else
      {
        if (v93 >= v94 || v95 >= v94)
        {
          goto LABEL_328;
        }

        v99 = *(this + 6);
        v100 = *(v99 + 4 * v86);
        v101 = *(v99 + 4 * v84);
        v102 = v100 - v101;
        v103 = rintf(v100 - v101);
        v104 = vabds_f32(v100 - v101, v103);
        v105 = *(v99 + 4 * v79);
        v106 = v105 - v100;
        v107 = rintf(v105 - v100);
        v108 = vabds_f32(v105 - v100, v107);
        v109 = *(v99 + 4 * v89);
        v110 = v109 - v105;
        v111 = rintf(v110);
        v112 = vabds_f32(v110, v111);
        if (v112 > v108 || (v113 = v79, v104 > v108))
        {
          if (v104 <= v112)
          {
            v113 = v89;
          }

          else
          {
            v113 = v86;
          }
        }

        v114 = v79 - 3;
        v115 = v79 - 3 - v82;
        if ((v79 - 3) >= v82)
        {
          if (v115 >= v82)
          {
            LODWORD(v115) = v115 % v82;
          }
        }

        else
        {
          LODWORD(v115) = v79 - 3;
          if (v79 <= 2)
          {
            v115 = v114 + v82;
            if ((v114 + v82) < 0)
            {
              v115 = v115 % v82 + v82;
            }
          }
        }

        v180 = v102 - v103;
        v181 = v106 - v107;
        if (v113 == v86)
        {
          v182 = v101 - *(v99 + 4 * v115);
          v183 = v93 * 0.75;
          v184 = (v180 * (v182 - rintf(v182))) <= 0.0 || v92 <= v183;
          if (v184)
          {
            v117 = v86;
          }

          else
          {
            v117 = v84;
          }

          if ((v180 * v181) <= 0.0 || v94 <= v183)
          {
            v118 = v86;
          }

          else
          {
            v118 = v79;
          }
        }

        else
        {
          v186 = v110 - v111;
          if (v79 == v113)
          {
            v187 = v94 * 0.75;
            if ((v180 * v181) <= 0.0 || v93 <= v187)
            {
              v117 = v79;
            }

            else
            {
              v117 = v86;
            }

            if ((v181 * v186) <= 0.0 || v95 <= v187)
            {
              v118 = v79;
            }

            else
            {
              v118 = v89;
            }
          }

          else
          {
            if (v113 != v89)
            {
              goto LABEL_328;
            }

            v190 = fabsf(*(v91 + 4 * v90));
            v191 = *(v99 + 4 * v90) - v109;
            v192 = v191 - rintf(v191);
            v193 = v95 * 0.75;
            if ((v181 * v186) <= 0.0 || v94 <= v193)
            {
              v117 = v89;
            }

            else
            {
              v117 = v79;
            }

            if ((v186 * v192) <= 0.0 || v190 <= v193)
            {
              v118 = v89;
            }

            else
            {
              v118 = v90;
            }
          }
        }
      }

      if (v117 <= 0)
      {
        v119 = *v81;
      }

      else
      {
        v119 = 0;
      }

      v120 = *(v99 + 4 * v117);
      v121 = v120 - *(v99 + 4 * (v117 + v119 - 1));
      v122 = (v121 - rintf(v121)) + 0.0;
      for (i = v117; i != v118; v120 = *(v99 + 4 * i))
      {
        v124 = i + 1;
        if (v124 >= v82)
        {
          v125 = *v81;
        }

        else
        {
          v125 = 0;
        }

        i = v124 - v125;
        v126 = *(v99 + 4 * i) - v120;
        v122 = v122 + (v126 - rintf(v126));
      }

      v127 = v118;
      v128 = v118 + 1;
      v129 = v117 + v82;
      v131 = 0.0;
      v132 = 5;
      v133 = 0.0;
      v134 = 0.0;
      v135 = 0.0;
      do
      {
        v136 = v133;
        v137 = v131;
        v138 = v117 + v132 - 6;
        if (v138 >= v82)
        {
          v130 = v117 - v82;
          v140 = v130 + v132 - 6;
          if (v140 >= v82)
          {
            v138 = v140 % v82;
          }

          else
          {
            LODWORD(v138) = v130 + v132 - 6;
          }
        }

        else if (v138 < 0)
        {
          v139 = v129 + v132 - 6;
          if (v139 >= 0)
          {
            LODWORD(v138) = v129 + v132 - 6;
          }

          if (v139 < 0)
          {
            v138 = v139 % v82 + v82;
          }
        }

        if (v138 <= 0)
        {
          v141 = *v81;
        }

        else
        {
          v141 = 0;
        }

        v142 = *(v99 + 4 * v138);
        v143 = *(v99 + 4 * (v138 + v141 - 1));
        if (v128 >= v82)
        {
          if (v128 - v82 >= v82)
          {
            LODWORD(v144) = v128;
          }

          else
          {
            LODWORD(v144) = v128 - v82;
          }

          if (v128 - v82 >= v82)
          {
            v144 = (v128 - v82) % v82;
          }
        }

        else
        {
          LODWORD(v144) = v128;
          if (v128 < 0)
          {
            v145 = v82 + v128;
            LODWORD(v144) = v82 + v128 < 0 ? v128 : v82 + v128;
            if (v145 < 0)
            {
              v144 = v145 % v82 + v82;
            }
          }
        }

        v135 = v135 + ((v142 - v143) - rintf(v142 - v143));
        if (v144 <= 0)
        {
          v146 = *v81;
        }

        else
        {
          v146 = 0;
        }

        v147 = *(v99 + 4 * v144) - *(v99 + 4 * (v144 + v146 - 1));
        v134 = v134 + (v147 - rintf(v147));
        if (v132 == 3)
        {
          v133 = v135;
        }

        else
        {
          v133 = v136;
        }

        if (v132 == 3)
        {
          v131 = v134;
        }

        else
        {
          v131 = v137;
        }

        ++v128;
        --v132;
      }

      while (v132);
      v148 = v117 - 4;
      v149 = v117 - 4;
      if (v117 - 4 >= v82)
      {
        v151 = v148 - v82;
        if (v149 - v82 >= v82)
        {
          v149 = v151 % v82;
        }

        else
        {
          v149 -= v82;
        }
      }

      else if (v117 <= 3)
      {
        v150 = v148 + v82;
        if (v149 + v82 < 0 == __OFADD__(v149, v82))
        {
          v149 += v82;
        }

        if (v150 < 0)
        {
          v149 = v150 % v82 + v82;
        }
      }

      v152 = apple::vision::libraries::autotrace::ContourToPath::LRLine(v81, v149, &__p, &v443, a5, a6);
      if (v152)
      {
        v158 = *&__p;
        v161 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v152, *&__p, v153, v154, v155, a5, a6, v156, v157);
        if (v118 >= v82)
        {
          v127 = v118 - v82 >= v82 ? (v118 - v82) % v82 : v118 - v82;
        }

        else if (v118 < 0)
        {
          v162 = v118 + v82;
          if (v162 < 0 == __OFADD__(v118, v82))
          {
            v127 = v118 + v82;
          }

          if (v162 < 0)
          {
            v127 = v162 % v82 + v82;
          }
        }

        v163 = v443;
        v164 = apple::vision::libraries::autotrace::ContourToPath::LRLine(*(this + 3), v127, v448, &v443, v159, v160);
        if (v164)
        {
          v172 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v164, v158, v165, v166, v167, a5, a6, v168, v169);
          if (vabds_f32(v158 - v448[0], rintf(v158 - v448[0])) >= 0.0625)
          {
            v173 = fabsf(v122);
            if (v173 >= 0.0625 && (v163 < v161 || fabsf(v135) < (v173 * 0.3) || (v122 * v135) < 0.0) && (v443 < v172 || fabsf(v134) < (v173 * 0.3) || (v122 * v134) < 0.0))
            {
              v174 = v173 * v80[535];
              if (fabsf(v136) <= v174 && fabsf(v137) <= v174)
              {
                v176 = *(this + 12);
                v175 = *(this + 13);
                v177 = v175 - v176;
                if (v175 == v176 || *(v175 - 2) <= v117 || *(v175 - 3) >= v117)
                {
                  v178 = *(this + 14);
                  if (v175 >= v178)
                  {
                    v196 = 0xAAAAAAAAAAAAAAABLL * (v177 >> 2) + 1;
                    if (v196 > 0x1555555555555555)
                    {
                      std::vector<float>::__throw_length_error[abi:ne200100]();
                    }

                    v197 = v80;
                    v198 = 0xAAAAAAAAAAAAAAABLL * ((v178 - v176) >> 2);
                    if (2 * v198 > v196)
                    {
                      v196 = 2 * v198;
                    }

                    if (v198 >= 0xAAAAAAAAAAAAAAALL)
                    {
                      v199 = 0x1555555555555555;
                    }

                    else
                    {
                      v199 = v196;
                    }

                    if (v199)
                    {
                      if (v199 <= 0x1555555555555555)
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v200 = (4 * (v177 >> 2));
                    *v200 = v117;
                    v200[1] = v118;
                    v200[2] = -100;
                    v179 = (v200 + 3);
                    v201 = v200 - v177;
                    memcpy(v200 - v177, v176, v177);
                    *(this + 12) = v201;
                    *(this + 13) = v179;
                    *(this + 14) = 0;
                    if (v176)
                    {
                      operator delete(v176);
                      v176 = *(this + 12);
                    }

                    else
                    {
                      v176 = v201;
                    }

                    v80 = v197;
                  }

                  else
                  {
                    *v175 = v117;
                    *(v175 + 1) = v118;
                    v179 = (v175 + 12);
                    *(v175 + 2) = -100;
                  }

                  *(this + 13) = v179;
                  if (!apple::vision::libraries::autotrace::CornerList::findCorner(v176, v179, **(this + 3), v79, 0, a6, v170, v171))
                  {
                    v202 = vsub_s32(*(v179 - 12), vdup_n_s32(v79));
                    v203 = vabs_s32(vadd_s32(vbsl_s8(vcgt_s32(v440, v202), v435, vneg_s32(vand_s8(v435, vcgt_s32(v202, v437)))), v202));
                    if (vcgt_u32(vdup_lane_s32(v203, 1), v203).u8[0])
                    {
                      LODWORD(v79) = *(v179 - 12);
                    }

                    else
                    {
                      LODWORD(v79) = HIDWORD(*(v179 - 12));
                    }
                  }

                  *(v179 - 1) = v79;
                  v204 = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v79, 1, this + 15);
                  if (!v204)
                  {
                    goto LABEL_435;
                  }

                  v209 = v204;
                  if (*(v204 + 4) == 1)
                  {
                    v210 = *(this + 15);
                    v211 = *(this + 16);
                    v212 = (v209 - v210) >> 3;
                    v213 = v212 - 1;
                    v214 = (v211 - v210) >> 3;
                    if (v212 <= v214)
                    {
                      if (v212 <= 0)
                      {
                        LODWORD(v215) = v214 + v213;
                        if (v214 + v213 < 0)
                        {
                          LODWORD(v215) = v212 - 1;
                          if (v211 != v210)
                          {
                            v215 = (v214 + v213) % v214 + v214;
                          }
                        }
                      }

                      else
                      {
                        LODWORD(v215) = v212 - 1;
                      }
                    }

                    else
                    {
                      LODWORD(v215) = v213 - v214;
                      if (v213 - v214 >= v214)
                      {
                        LODWORD(v215) = v212 - 1;
                        if (v211 != v210)
                        {
                          v215 = (v213 - v214) % v214;
                        }
                      }
                    }

                    v216 = v212 + 1;
                    v217 = v212 + 1 - v214;
                    if (v212 + 1 >= v214)
                    {
                      LODWORD(v212) = v212 + 1 - v214;
                      if (v217 >= v214)
                      {
                        LODWORD(v212) = v216;
                        if (v211 != v210)
                        {
                          v212 = v217 % v214;
                        }
                      }
                    }

                    else if (v212 > -2)
                    {
                      LODWORD(v212) = v212 + 1;
                    }

                    else
                    {
                      LODWORD(v212) = v214 + v216;
                      if (v214 + v216 < 0)
                      {
                        LODWORD(v212) = v216;
                        if (v211 != v210)
                        {
                          v212 = (v214 + v216) % v214 + v214;
                        }
                      }
                    }

                    v218 = &v210[8 * v215];
                    if ((v218[4] & 2) != 0)
                    {
                      v219 = &v210[8 * v212];
                      if ((v219[4] & 4) != 0)
                      {
                        *(v209 + 1) = 0;
                        if (((v55 & ((*v209 - *v218) >> 31)) + *v209 - *v218) >= ((v55 & ((*v219 - *v209) >> 31)) + *v219 - *v209))
                        {
                          v221 = *(v219 + 1);
                          if (v212)
                          {
                            *(v219 + 1) = v221 | 1;
                            *v219 = *(v179 - 3);
                          }

                          else
                          {
                            *(v209 + 1) = v221;
                            *(v219 + 1) = 0;
                          }
                        }

                        else
                        {
                          v220 = *(v218 + 1);
                          if (v209 == v210)
                          {
                            *(v209 + 1) = v220;
                            *(v218 + 1) = 0;
                          }

                          else
                          {
                            *(v218 + 1) = v220 | 1;
                            *v218 = *(v179 - 2);
                          }
                        }
                      }
                    }

                    if (v210 == v211)
                    {
                      v211 = v210;
                      v222 = v210;
                    }

                    else
                    {
                      v222 = v210;
                      while (*(v222 + 1))
                      {
                        v222 += 8;
                        if (v222 == v211)
                        {
                          v222 = v211;
                          goto LABEL_325;
                        }
                      }

                      if (v222 != v211)
                      {
                        v223 = v222 + 8;
                        if (v222 + 8 != v211)
                        {
                          do
                          {
                            if (*(v223 + 1))
                            {
                              *v222 = *v223;
                              v222 += 8;
                            }

                            v223 += 8;
                          }

                          while (v223 != v211);
                          v210 = *(this + 15);
                          v211 = *(this + 16);
                        }
                      }
                    }

LABEL_325:
                    v224 = v222 - v210;
                    v225 = &v210[v224];
                    v226 = &v210[v224 + 8];
                    v227 = v211 - v226;
                    if (v211 != v226)
                    {
                      memmove(&v210[v224], v226, v211 - v226);
                      v210 = *(this + 15);
                    }

                    *(this + 16) = &v225[v227];
                    qsort(v210, (&v225[v227] - v210) >> 3, 8uLL, apple::vision::libraries::autotrace::ContourToPath::ipCompare);
                  }
                }
              }
            }
          }
        }
      }

LABEL_328:
      v79 = v87;
    }

    while (v87 != v55);
  }

  qsort(*(this + 12), 0xAAAAAAAAAAAAAAABLL * ((*(this + 13) - *(this + 12)) >> 2), 0xCuLL, apple::vision::libraries::autotrace::ContourToPath::cornerCompare);
  v229 = *(this + 12);
  v228 = *(this + 13);
  v230 = 0xAAAAAAAAAAAAAAABLL * ((v228 - v229) >> 2);
  if (v230 >= 2 && v228 != v229)
  {
    v232 = 0;
    v233 = v55 >> 1;
    do
    {
      v234 = v232++;
      LODWORD(v235) = v232;
      if (v232 >= v230)
      {
        v236 = v232 - v230;
        LODWORD(v235) = v232 - v230;
        if (v236 >= v230)
        {
          LODWORD(v235) = v232;
          if (v230 << 32)
          {
            v235 = v236 % v230;
          }
        }
      }

      v237 = (v229 + 12 * v234);
      v238 = (v229 + 12 * v235);
      v240 = *v237;
      v239 = v237[1];
      v241 = v240 - v233;
      v242 = v240 + v233;
      if (v240 + v233 >= v239)
      {
        v243 = 0;
      }

      else
      {
        v243 = v55;
      }

      v244 = v239 - v243;
      if (v241 > v239)
      {
        v245 = v239 + v55;
      }

      else
      {
        v245 = v244;
      }

      v246 = *v238;
      v247 = v238[1];
      if (v242 >= *v238)
      {
        v248 = 0;
      }

      else
      {
        v248 = v55;
      }

      v249 = v246 - v248;
      if (v241 > v246)
      {
        v250 = v246 + v55;
      }

      else
      {
        v250 = v249;
      }

      if (v242 >= v247)
      {
        v251 = 0;
      }

      else
      {
        v251 = v55;
      }

      v252 = v247 - v251;
      if (v241 > v247)
      {
        v253 = v247 + v55;
      }

      else
      {
        v253 = v252;
      }

      if (v250 <= v245 && v253 >= v240)
      {
        v255 = v238[2];
        v256 = v229 + 12 * v235;
        v257 = v228 - (v256 + 12);
        if (v228 != v256 + 12)
        {
          memmove((v229 + 12 * v235), (v256 + 12), v228 - (v256 + 12));
        }

        v228 = v256 + v257;
        *(this + 13) = v256 + v257;
        v258 = *(this + 15);
        v259 = *(this + 16) - v258;
        if (v259)
        {
          v260 = v259 >> 3;
          if (v260 <= 1)
          {
            v260 = 1;
          }

          v261 = (v258 + 4);
          do
          {
            if (*(v261 - 1) == v255)
            {
              *v261 &= ~1u;
            }

            v261 += 2;
            --v260;
          }

          while (v260);
        }
      }

      v229 = *(this + 12);
      v230 = 0xAAAAAAAAAAAAAAABLL * ((v228 - v229) >> 2);
    }

    while (v230 > v232);
  }

  v263 = *(this + 15);
  v262 = *(this + 16);
  if (v263 == v262)
  {
    v262 = *(this + 15);
    v264 = v262;
  }

  else
  {
    v264 = *(this + 15);
    while (*(v264 + 1))
    {
      v264 += 8;
      if (v264 == v262)
      {
        v264 = *(this + 16);
        goto LABEL_383;
      }
    }

    if (v264 != v262)
    {
      v265 = v264 + 8;
      if (v264 + 8 != v262)
      {
        do
        {
          if (*(v265 + 1))
          {
            *v264 = *v265;
            v264 += 8;
          }

          v265 += 8;
        }

        while (v265 != v262);
        v263 = *(this + 15);
        v262 = *(this + 16);
      }
    }
  }

LABEL_383:
  v266 = v264 + 8;
  v267 = v262 - (v264 + 8);
  if (v262 != v264 + 8)
  {
    memmove(v264, v266, v262 - (v264 + 8));
    v263 = *(this + 15);
  }

  *(this + 16) = &v264[v267];
  if (&v264[v267] == v263 && !apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(0, 64, this + 15))
  {
LABEL_435:
    VNValidatedLog(4, @"%s: failing findCorners", v205, v206, a5, a6, v207, v208, "autoTrace");
    return 0;
  }

  v448[0] = 0.0;
  v443 = 0.0;
  v268 = **(this + 3);
  if (v268 >= 1)
  {
    v269 = 0;
    v270 = *(this + 8);
    v271 = *(this + 7) - 4;
    v272 = v271;
    do
    {
      v273 = *(v272 + 4);
      v272 += 4;
      v274 = v273;
      if (v269)
      {
        v275 = 0;
      }

      else
      {
        v275 = v268;
      }

      *v270++ = (*(v271 + 4 * v275) - v274) - rintf(*(v271 + 4 * v275) - v274);
      --v269;
      v271 = v272;
    }

    while (-v268 != v269);
  }

  v444 = 0;
  __p = 0;
  v446 = 0;
  v447 = 0;
  v276 = *(this + 15);
  v277 = *(this + 16) - v276;
  v436 = (this + 120);
  if (!v277)
  {
    v301 = 1;
    goto LABEL_437;
  }

  v278 = 0;
  v279 = 0;
  v280 = v277 >> 3;
  v441 = v268;
  v438 = v268 >> 1;
  v281 = 1;
  do
  {
    ++v279;
    LODWORD(v282) = v281;
    if (v280 <= v281)
    {
      if (v281 - v280 >= v280)
      {
        v282 = (v281 - v280) % v280;
      }

      else
      {
        LODWORD(v282) = v279 - v280;
      }
    }

    if (*(v276 + v278 + 4))
    {
      v283 = (v276 + 8 * v282);
      if (v283[1])
      {
        v284 = *(v276 + v278);
        v285 = *v283;
        Corner = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), v284, 1, a6, v207, v208);
        if (!Corner)
        {
          goto LABEL_436;
        }

        v287 = *(Corner + 1);
        if (v283[1])
        {
          v289 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v283, 1, a6, v207, v208);
          if (!v289)
          {
LABEL_436:
            v301 = 0;
            goto LABEL_437;
          }

          v288 = *v289;
        }

        else
        {
          v288 = v285;
        }

        if (v285 > v284)
        {
          goto LABEL_413;
        }

        v290 = v287 - *(v276 + v278);
        if (v290 < 0)
        {
          v290 = *(v276 + v278) - v287;
        }

        if (v290 > v438)
        {
          goto LABEL_413;
        }

        v291 = v288 - *v283;
        if (v291 < 0)
        {
          v291 = *v283 - v288;
        }

        if (v291 <= v438)
        {
          if (v288 <= v287 - v441)
          {
            goto LABEL_426;
          }
        }

        else
        {
LABEL_413:
          if (v288 <= v287)
          {
            goto LABEL_426;
          }
        }

        v292 = v288 - v287;
        if (v288 <= v287)
        {
          v293 = v441;
        }

        else
        {
          v293 = 0;
        }

        v294 = v293 + v292;
        if (v293 + v292 >= 1)
        {
          apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(this, v287, v288, v448, &v443);
          *&v295 = fabsf(v448[0]);
          if (v294 > 0xF || *&v295 >= 0.000027778 || v443 >= 0.000027778)
          {
            if (v294 >= 0x15)
            {
              *(&v295 + 1) = v443 / fmaxf(*&v295, 0.01);
              v296 = vdupq_lane_s64(v295, 0);
              v297.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1A6038DF0, v296)).u32[0];
              v297.i32[1] = vmovn_s32(vcgtq_f32(v296, xmmword_1A6038DF0)).i32[1];
              if ((~vaddvq_s32(vandq_s8(vmovl_s16(v297), xmmword_1A60279D0)) & 0xF) == 0)
              {
                apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v287, 8, &__p);
                apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v288, 16, &__p);
              }
            }
          }

          else
          {
            apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v287, 2, &__p);
            apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v288, 4, &__p);
          }
        }
      }
    }

LABEL_426:
    v276 = *(this + 15);
    v280 = (*(this + 16) - v276) >> 3;
    v278 += 8;
    v184 = v280 > v281++;
  }

  while (v184);
  v298 = __p;
  if (v446 == __p)
  {
    v301 = 1;
    if (__p)
    {
      goto LABEL_438;
    }
  }

  else
  {
    v299 = 0;
    v300 = 0;
    do
    {
      apple::vision::libraries::autotrace::ContourToPath::insertPairIntoInterestingPoints(this, &v298[v299], *&v298[v299 + 8], *&v298[v299 + 12], v436, &v444);
      if (v444 == 1)
      {
        break;
      }

      v300 += 2;
      v298 = __p;
      v299 += 16;
    }

    while (v300 < (v446 - __p) >> 3);
    v301 = v444 ^ 1;
LABEL_437:
    v298 = __p;
    if (__p)
    {
LABEL_438:
      operator delete(v298);
    }
  }

  if ((v301 & 1) == 0)
  {
    VNValidatedLog(4, @"%s: failing findShortLinesAndShallowCurves", v205, v206, a5, a6, v207, v208, "autoTrace");
    return 0;
  }

  LOBYTE(v443) = 0;
  v448[0] = 0.0;
  v302 = **(this + 3);
  __p = 0;
  v446 = 0;
  v447 = 0;
  v303 = *(this + 15);
  v304 = *(this + 16) - v303;
  if (!v304)
  {
LABEL_640:
    v383 = 1;
    goto LABEL_641;
  }

  v305 = 0;
  v442 = 0;
  v306 = 0;
  v307 = v304 >> 3;
  v439 = v302 >> 1;
  v308 = 0.0;
  v309 = 0.0;
  while (2)
  {
    v310 = v306;
    v311 = v305++;
    LODWORD(v306) = v305;
    v312 = v305 - v307;
    if (v305 >= v307)
    {
      LODWORD(v306) = v305 - v307;
      if (v312 >= v307)
      {
        v306 = v312 % v307;
      }
    }

    v313 = (v303 + 8 * v311);
    v314 = (v303 + 8 * v306);
    v315 = *v313;
    v316 = *v314;
    if (v313[1])
    {
      v318 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v313, 1, a6, v207, v208);
      if (!v318)
      {
        goto LABEL_629;
      }

      v317 = *(v318 + 1);
    }

    else
    {
      v317 = *v313;
    }

    v319 = v316;
    if (v314[1])
    {
      v320 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v314, 1, a6, v207, v208);
      if (!v320)
      {
        goto LABEL_629;
      }

      v319 = *v320;
    }

    if (v316 > v315)
    {
      goto LABEL_459;
    }

    v321 = v317 - *v313;
    if (v321 < 0)
    {
      v321 = *v313 - v317;
    }

    if (v321 > v439)
    {
      goto LABEL_459;
    }

    v322 = v319 - *v314;
    if (v322 < 0)
    {
      v322 = *v314 - v319;
    }

    if (v322 > v439)
    {
LABEL_459:
      if (v319 > v317)
      {
        goto LABEL_460;
      }

      goto LABEL_610;
    }

    if (v319 <= v317 - v302)
    {
      goto LABEL_610;
    }

LABEL_460:
    v323 = v319 - v317;
    if (v319 == v317)
    {
      if (*(this + 16) - *(this + 15) >= 9uLL)
      {
        VNValidatedLog(4, @"%s: zero length curve in findNonOrthogonalLines at point index %d", v205, v206, a5, a6, v207, v208, "findNonOrthogonalLines");
        goto LABEL_640;
      }
    }

    else if (v323 >= 0xFFFFFFFE && v302 >= 101 && *(this + 16) - *(this + 15) >= 0x11uLL)
    {
      VNValidatedLog(4, @"%s: findNonOrthogonalLines with reversed point indexes %d and %d", v205, v206, a5, a6, v207, v208, "findNonOrthogonalLines");
      goto LABEL_640;
    }

    if (v323 <= 0)
    {
      v324 = v302;
    }

    else
    {
      v324 = 0;
    }

    if ((v313[1] & 0xA) != 0)
    {
LABEL_610:
      v306 = v310;
    }

    else
    {
      v306 = v310;
      if (v324 + v323 >= 21)
      {
        v325 = v317 + 10;
        v326 = v317 + 10;
        if (v317 + 10 >= v302)
        {
          v328 = v325 - v302;
          if (v326 - v302 >= v302)
          {
            if (v302)
            {
              v326 = v328 % v302;
            }
          }

          else
          {
            v326 -= v302;
          }
        }

        else if (v317 <= -11)
        {
          v327 = v325 + v302;
          if (v326 + v302 < 0 == __OFADD__(v326, v302))
          {
            v326 += v302;
          }

          if (v327 < 0 && v302)
          {
            v326 = v327 % v302 + v302;
          }
        }

        v329 = v319 - 11;
        LODWORD(v330) = v319 - 11;
        if (v319 - 11 >= v302)
        {
          if (v329 - v302 >= v302)
          {
            if (v302)
            {
              v330 = (v329 - v302) % v302;
            }
          }

          else
          {
            LODWORD(v330) = v329 - v302;
          }
        }

        else if (v319 <= 10)
        {
          v331 = v329 + v302;
          if (v331 < 0 == __OFADD__(v329, v302))
          {
            LODWORD(v330) = v329 + v302;
          }

          if (v331 < 0 && v302)
          {
            v330 = v331 % v302 + v302;
          }
        }

        if (v326 != v330)
        {
          v332 = 0;
          v333 = -1;
          v334 = v326;
          do
          {
            v335 = *(this + 6);
            v336 = v334 - 10;
            v337 = 0.0;
            v338 = 21;
            v339 = *(v335 + 4 * v334);
            v340 = v339;
            do
            {
              if (v336 >= v302)
              {
                if (v336 - v302 >= v302)
                {
                  LODWORD(v341) = v336;
                }

                else
                {
                  LODWORD(v341) = v336 - v302;
                }

                if (v336 - v302 >= v302 && v302)
                {
                  v341 = (v336 - v302) % v302;
                }
              }

              else
              {
                LODWORD(v341) = v336;
                if (v336 < 0)
                {
                  v342 = v302 + v336;
                  LODWORD(v341) = v302 + v336 < 0 ? v336 : v302 + v336;
                  if (v342 < 0 && v302)
                  {
                    v341 = v342 % v302 + v302;
                  }
                }
              }

              v343 = *(v335 + 4 * v341) - rintf(*(v335 + 4 * v341) - *(v335 + 4 * v334));
              if (v343 > v339)
              {
                v344 = v343;
              }

              else
              {
                v344 = v339;
              }

              if (v343 >= v340)
              {
                v339 = v344;
              }

              else
              {
                v340 = v343;
              }

              v337 = v337 + v343;
              ++v336;
              --v338;
            }

            while (v338);
            v345 = v337 / 21.0;
            v346 = (v337 / 21.0) - (floorf((v337 / 21.0) * 4.0) * 0.25);
            if (v346 > 0.125)
            {
              v346 = 0.25 - v346;
            }

            v347 = v346 * 360.0;
            v348 = -2;
            v349 = &dword_1A604FA90;
            do
            {
              v348 += 2;
              if (v348 == 20)
              {
                VNValidatedLog(4, @"%s: angle %.3f not found in straightLineAngleDeltaToleranceAtAngle", v205, v206, a5, a6, v207, v208, "straightLineAngleDeltaToleranceAtAngle");
                v356 = 12.235;
                goto LABEL_531;
              }

              v350 = *(v349 - 2);
              v351 = *v349;
              v349 += 2;
              v352 = v351;
            }

            while (v350 > v347 || v347 > v352);
            v354 = (v347 - v350) / (v352 - v350);
            v355 = apple::vision::libraries::autotrace::SLADT[(v348 & 0xFFFFFFFE) + 1];
            v356 = v355 + (v354 * (apple::vision::libraries::autotrace::SLADT[((v348 + 2) & 0xFFFFFFFELL) + 1] - v355));
            if (v356 < 3.1)
            {
              v356 = 3.1;
            }

LABEL_531:
            v357 = v339 - v345;
            if ((v345 - v340) > (v339 - v345))
            {
              v357 = v345 - v340;
            }

            if (v357 <= v356)
            {
              if (v332)
              {
                if (v333 + 1 >= v302)
                {
                  v358 = v302;
                }

                else
                {
                  v358 = 0;
                }

                v359 = v345;
                v360 = v308;
                if (v345 >= v309)
                {
                  v359 = v309;
                  v360 = v308;
                  if (v345 > v308)
                  {
                    v359 = v309;
                    v360 = v345;
                  }
                }

                v361 = v333 + 1 - v358;
                v362 = -2;
                v363 = &dword_1A604FAE8;
                while (1)
                {
                  v362 += 2;
                  if (v362 == 6)
                  {
                    break;
                  }

                  v364 = *(v363 - 2);
                  v365 = *v363;
                  v363 += 2;
                  v366 = v365;
                  if (v364 <= v347 && v347 <= v366)
                  {
                    v368 = (v347 - v364) / (v366 - v364);
                    v369 = apple::vision::libraries::autotrace::SLGADT[(v362 & 0xFFFFFFFE) + 1];
                    v370 = v369 + (v368 * (apple::vision::libraries::autotrace::SLGADT[((v362 + 2) & 0xFFFFFFFELL) + 1] - v369));
                    goto LABEL_550;
                  }
                }

                v370 = 1.0;
                VNValidatedLog(4, @"%s: angle %.3f not found in straightLineGatheredAngleDeltaToleranceAtAngle", v205, v206, a5, a6, v207, v208, "straightLineGatheredAngleDeltaToleranceAtAngle");
LABEL_550:
                if (v334 == v361 && (v360 - v359) <= v370)
                {
                  ++v442;
                  v332 = 1;
                  v333 = v334;
                  v309 = v359;
                  v308 = v360;
                }

                else
                {
                  v371 = v310 - 10;
                  v372 = v310 - 10;
                  if (v310 - 10 >= v302)
                  {
                    v374 = v371 - v302;
                    if (v372 - v302 >= v302)
                    {
                      if (v302)
                      {
                        v372 = v374 % v302;
                      }
                    }

                    else
                    {
                      LODWORD(v372) = v372 - v302;
                    }
                  }

                  else if (v310 <= 9)
                  {
                    v373 = v371 + v302;
                    if (v372 + v302 < 0 == __OFADD__(v372, v302))
                    {
                      LODWORD(v372) = v372 + v302;
                    }

                    if (v373 < 0 && v302)
                    {
                      v372 = v373 % v302 + v302;
                    }
                  }

                  v375 = v442 + 20 + v372;
                  v376 = v375;
                  if (v375 >= v302)
                  {
                    v378 = v375 - v302;
                    if (v376 - v302 >= v302)
                    {
                      if (v302)
                      {
                        v376 = v378 % v302;
                      }
                    }

                    else
                    {
                      LODWORD(v376) = v376 - v302;
                    }
                  }

                  else if (v375 < 0)
                  {
                    v377 = v375 + v302;
                    if (v376 + v302 < 0 == __OFADD__(v376, v302))
                    {
                      LODWORD(v376) = v376 + v302;
                    }

                    if (v377 < 0 && v302)
                    {
                      v376 = v377 % v302 + v302;
                    }
                  }

                  LODWORD(v448[0]) = v376;
                  if (apple::vision::libraries::autotrace::ContourToPath::outputLineAtIndex(this, v372, v442 + 20, &__p, v448, &v443))
                  {
                    v379 = v330 - LODWORD(v448[0]);
                    if (v330 - LODWORD(v448[0]) >= v302 / 2)
                    {
                      v380 = v302;
                    }

                    else
                    {
                      v380 = 0;
                    }

                    if (v379 >= v302 / -2)
                    {
                      v381 = -v380;
                    }

                    else
                    {
                      v381 = v302;
                    }

                    if (v379 + v381 < 9)
                    {
                      goto LABEL_610;
                    }

                    v334 = SLODWORD(v448[0]) + 9;
                    if (LODWORD(v448[0]) + 9 >= v302)
                    {
                      if (v334 - v302 >= v302)
                      {
                        if (v302)
                        {
                          v334 = (v334 - v302) % v302;
                        }
                      }

                      else
                      {
                        LODWORD(v334) = v334 - v302;
                      }
                    }

                    else if (SLODWORD(v448[0]) <= -10)
                    {
                      v382 = v334 + v302;
                      if (v334 + v302 < 0 == __OFADD__(v334, v302))
                      {
                        LODWORD(v334) = v334 + v302;
                      }

                      if (v382 < 0 && v302)
                      {
                        v334 = v382 % v302 + v302;
                      }
                    }
                  }

                  v332 = 0;
                  v383 = 0;
                  if (LOBYTE(v443))
                  {
                    goto LABEL_641;
                  }
                }
              }

              else
              {
                v442 = 1;
                v333 = v334;
                v310 = v334;
                v309 = v345;
                v308 = v345;
                v332 = 1;
              }
            }

            if (v334 + 1 >= v302)
            {
              v384 = v302;
            }

            else
            {
              v384 = 0;
            }

            if (v334 == v330)
            {
              v334 = v334;
            }

            else
            {
              v334 = (v334 + 1 - v384);
            }
          }

          while (v334 != v330);
          if ((v332 & 1) == 0)
          {
            goto LABEL_610;
          }

          v385 = v310 - 10;
          v386 = v310 - 10;
          if (v310 - 10 >= v302)
          {
            v388 = v385 - v302;
            if (v386 - v302 >= v302)
            {
              if (v302)
              {
                v386 = v388 % v302;
              }
            }

            else
            {
              LODWORD(v386) = v386 - v302;
            }
          }

          else if (v310 <= 9)
          {
            v387 = v385 + v302;
            if (v386 + v302 < 0 == __OFADD__(v386, v302))
            {
              LODWORD(v386) = v386 + v302;
            }

            if (v387 < 0 && v302)
            {
              v386 = v387 % v302 + v302;
            }
          }

          v389 = v442 + 19 + v386;
          v390 = v389;
          if (v389 >= v302)
          {
            v392 = v389 - v302;
            if (v390 - v302 >= v302)
            {
              if (v302)
              {
                v390 = v392 % v302;
              }
            }

            else
            {
              LODWORD(v390) = v390 - v302;
            }
          }

          else if (v389 < 0)
          {
            v391 = v389 + v302;
            if (v390 + v302 < 0 == __OFADD__(v390, v302))
            {
              LODWORD(v390) = v390 + v302;
            }

            if (v391 < 0 && v302)
            {
              v390 = v391 % v302 + v302;
            }
          }

          LODWORD(v448[0]) = v390;
          apple::vision::libraries::autotrace::ContourToPath::outputLineAtIndex(this, v386, v442 + 19, &__p, v448, &v443);
          v306 = v310;
          if (LOBYTE(v443))
          {
LABEL_629:
            v383 = 0;
            goto LABEL_641;
          }
        }
      }
    }

    v303 = *(this + 15);
    v307 = (*(this + 16) - v303) >> 3;
    if (v307 > v305)
    {
      continue;
    }

    break;
  }

  v393 = __p;
  if (v446 == __p)
  {
    v383 = 1;
    goto LABEL_642;
  }

  v394 = 0;
  v395 = 0;
  do
  {
    apple::vision::libraries::autotrace::ContourToPath::insertPairIntoInterestingPoints(this, &v393[v394], *&v393[v394 + 8], *&v393[v394 + 12], v436, &v443);
    if (LOBYTE(v443) == 1)
    {
      break;
    }

    v395 += 2;
    v393 = __p;
    v394 += 16;
  }

  while (v395 < (v446 - __p) >> 3);
  v383 = LOBYTE(v443) ^ 1;
LABEL_641:
  v393 = __p;
LABEL_642:
  if (v393)
  {
    operator delete(v393);
  }

  if (v383)
  {
    if (apple::vision::libraries::autotrace::ContourToPath::findInflectionPoints(this, v266, v205, v206, a5, a6, v207, v208))
    {
      if (apple::vision::libraries::autotrace::ContourToPath::cutUpCurves(this, v396, v397, v398, v399, v400, v401, v402))
      {
        if (apple::vision::libraries::autotrace::ContourToPath::coalesceStraightLines(this, v403, v404, v405, v406, v407, v408, v409))
        {
          apple::vision::libraries::autotrace::ContourToPath::extractCurveRecords(this, v410, v411, v412, v413, v414, v415, v416);
          apple::vision::libraries::autotrace::ContourToPath::computeCurveTangents(this, v417, v418, v419, v420, v421, v422, v423);
          apple::vision::libraries::autotrace::ContourToPath::computePoints(this, v424, v425, v426, v427, v428, v429, v430);
          apple::vision::libraries::autotrace::ContourToPath::findSubdividedCurves(this, v431, v432, v433, v434);
          apple::vision::libraries::autotrace::ContourToPath::convertToPaths(this);
          return 1;
        }

        VNValidatedLog(4, @"%s: failing coalesceStraightLines", v411, v412, v413, v414, v415, v416, "autoTrace");
      }

      else
      {
        VNValidatedLog(4, @"%s: failing cutUpCurves", v404, v405, v406, v407, v408, v409, "autoTrace");
      }
    }

    else
    {
      VNValidatedLog(4, @"%s: failing findInflectionPoints", v397, v398, v399, v400, v401, v402, "autoTrace");
    }
  }

  else
  {
    VNValidatedLog(4, @"%s: failing findNonOrthogonalLines", v205, v206, a5, a6, v207, v208, "autoTrace");
  }

  return 0;
}

void sub_1A5F272D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::autotrace::ContourToPath::~ContourToPath(CGPathRef *this)
{
  CGPathRelease(this[2]);
  apple::vision::libraries::autotrace::ContourToPath::freeAutoTraceStructures(this);
  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  v3 = this[15];
  if (v3)
  {
    this[16] = v3;
    operator delete(v3);
  }

  v4 = this[12];
  if (v4)
  {
    this[13] = v4;
    operator delete(v4);
  }
}

void apple::vision::libraries::autotrace::ContourToPath::freeAutoTraceStructures(apple::vision::libraries::autotrace::ContourToPath *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 10);
  if (v3)
  {
    free(v3);
    *(this + 10) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {
    free(v4);
    *(this + 11) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    free(v5);
    *(this + 7) = 0;
  }

  v6 = *(this + 8);
  if (v6)
  {
    free(v6);
    *(this + 8) = 0;
  }

  v7 = *(this + 9);
  if (v7)
  {
    free(v7);
    *(this + 9) = 0;
  }

  *(this + 10) = 0;
}

BOOL apple::vision::libraries::autotrace::ContourToPath::findInflectionPoints(apple::vision::libraries::autotrace::ContourToPath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = **(this + 3);
  __p = 0;
  v73 = 0;
  v74 = 0;
  v9 = *(this + 15);
  v10 = *(this + 16) - v9;
  if (!v10)
  {
    v59 = 1;
    goto LABEL_102;
  }

  v11 = this;
  v68 = (this + 120);
  v12 = 0;
  v13 = 0;
  v14 = v10 >> 3;
  do
  {
    v15 = v13 + 1;
    v16 = v15 - v14;
    if (v15 >= v14)
    {
      if (v16 >= v14)
      {
        v16 %= v14;
      }
    }

    else
    {
      LODWORD(v16) = v13 + 1;
      if (v13 <= -2)
      {
        v16 = v14 + v15;
        if (v14 + v15 < 0)
        {
          v16 = v16 % v14 + v14;
        }
      }
    }

    v17 = (v9 + 8 * v12);
    v18 = v17[1];
    if ((v18 & 0xA) == 0)
    {
      v19 = (v9 + 8 * v16);
      v20 = *v17;
      v21 = *v19;
      v22 = *v19 - *v17;
      if (*v19 <= *v17)
      {
        v23 = v8;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23 + v22;
      if (v18)
      {
        v26 = v23 + v22;
        v27 = v11;
        v28 = v19;
        Corner = apple::vision::libraries::autotrace::CornerList::findCorner(*(v27 + 12), *(v27 + 13), **(v27 + 3), *v17, 1, a6, a7, a8);
        if (!Corner)
        {
          goto LABEL_92;
        }

        v25 = *(Corner + 1);
        v30 = v20;
        v24 = v26;
        v19 = v28;
        v11 = this;
        while (v30 != v25)
        {
          v31 = v30 + 1;
          if (v31 >= v8)
          {
            v32 = v8;
          }

          else
          {
            v32 = 0;
          }

          v30 = v31 - v32;
          --v26;
          if (v30 == v21)
          {
            v25 = v21;
            break;
          }
        }
      }

      else
      {
        v25 = *v17;
        v26 = v23 + v22;
      }

      v33 = 8 * v16;
      if (v25 == v21 && !v26)
      {
        v34 = v17[1];
        if ((v34 & 1) == 0)
        {
          goto LABEL_10;
        }

        if ((v34 & 0xA) != 0)
        {
          goto LABEL_10;
        }

        v37 = v19[1];
        if ((v37 & 1) == 0)
        {
          goto LABEL_10;
        }

        if (v24 >= 3)
        {
          v38 = v34 | 8;
LABEL_57:
          v17[1] = v38;
          v19[1] |= 0x10u;
          goto LABEL_10;
        }

        if ((v34 & 0x10) != 0)
        {
          v37 |= 0x10u;
          v19[1] = v37;
          v34 = v17[1];
        }

        if ((v34 & 4) != 0)
        {
          v40 = v37 | 4;
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (v19[1])
      {
        v69 = v24;
        v70 = 8 * v16;
        v35 = v19;
        v36 = apple::vision::libraries::autotrace::CornerList::findCorner(*(v11 + 12), *(v11 + 13), **(v11 + 3), *v19, 1, a6, a7, a8);
        if (!v36)
        {
          goto LABEL_92;
        }

        if (v21 == v20)
        {
          v21 = v20;
          v19 = v35;
          v33 = v70;
          v11 = this;
          v24 = v69;
        }

        else
        {
          v19 = v35;
          v33 = v70;
          v11 = this;
          v24 = v69;
          while (v21 != *v36)
          {
            if (v21 <= 0)
            {
              v39 = v8;
            }

            else
            {
              v39 = 0;
            }

            v21 = v21 + v39 - 1;
            --v26;
            if (v21 == v20)
            {
              v21 = v20;
              goto LABEL_49;
            }
          }

          v21 = *v36;
        }
      }

LABEL_49:
      if (v26 <= 3)
      {
        v41 = v17[1];
        if ((v41 & 1) == 0)
        {
          goto LABEL_10;
        }

        v42 = v19[1];
        if ((v41 & 0xA) != 0 || (v19[1] & 1) == 0)
        {
          goto LABEL_10;
        }

        if (v24 >= 3)
        {
          v38 = v41 | 8;
          goto LABEL_57;
        }

        if ((v41 & 0x10) != 0)
        {
          v42 |= 0x10u;
          v19[1] = v42;
          v41 = v17[1];
        }

        if ((v41 & 4) != 0)
        {
          v40 = v42 | 4;
LABEL_84:
          v19[1] = v40;
        }

LABEL_85:
        v55 = *(v11 + 15);
        v54 = *(v11 + 16);
        if (((v54 - v55) >> 3) - 1 == v12)
        {
          v56 = v54 - 8;
        }

        else
        {
          v57 = v55 + v33 - 8;
          v58 = v54 - (v55 + v33);
          if (v54 != v55 + v33)
          {
            memmove((v55 + v33 - 8), (v55 + v33), v54 - (v55 + v33));
          }

          v56 = v57 + v58;
        }

        *(v11 + 16) = v56;
        --v13;
        goto LABEL_10;
      }

      if (!apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v25, 8, &__p))
      {
        goto LABEL_92;
      }

      LOBYTE(v44) = *(*(this + 8) + 4 * v25) > 0.0;
      v45 = v25;
      do
      {
        v46 = *(this + 8);
        v47 = *(v46 + 4 * v45);
        v48 = v44 & 1;
        if (v48 == v47 <= 0.0)
        {
          if (v45 <= 0)
          {
            v50 = v8;
          }

          else
          {
            v50 = 0;
          }

          v51 = *(v46 + 4 * (v45 + v50 - 1));
          v49 = v45 + 1;
          if (v45 + 1 >= v8)
          {
            v52 = v8;
          }

          else
          {
            v52 = 0;
          }

          v44 = (((v47 + v51) + *(v46 + 4 * (v49 - v52))) * 0.33333) > 0.0;
          if (v48 != v44 && (v8 & ((v45 - v25) >> 31)) + v45 - v25 >= 6 && (v8 & ((v21 - v45) >> 31)) + v21 - v45 >= 6 && (!apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v45, 16, &__p) || !apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v45, 32, &__p) || !apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v45, 8, &__p)))
          {
            goto LABEL_92;
          }
        }

        else
        {
          v49 = v45 + 1;
        }

        if (v49 >= v8)
        {
          v53 = v8;
        }

        else
        {
          v53 = 0;
        }

        v45 = v49 - v53;
      }

      while (v49 - v53 != v21);
      v11 = this;
      if (!apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v21, 16, &__p))
      {
LABEL_92:
        v59 = 0;
        goto LABEL_102;
      }
    }

LABEL_10:
    v12 = ++v13;
    v9 = *(v11 + 15);
    v14 = (*(v11 + 16) - v9) >> 3;
  }

  while (v14 > v13);
  v60 = __p;
  if (v73 == __p)
  {
    v59 = 1;
    if (__p)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v61 = (v73 - __p) >> 3;
    if (v61 <= 1)
    {
      v61 = 1;
    }

    v62 = v61 - 1;
    v63 = (__p + 4);
    do
    {
      v64 = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(*(v63 - 1), *v63, v68);
      v59 = v64 != 0;
      v66 = v62-- != 0;
      if (!v64)
      {
        break;
      }

      v63 += 2;
    }

    while (v66);
LABEL_102:
    v60 = __p;
    if (__p)
    {
LABEL_103:
      operator delete(v60);
    }
  }

  return v59;
}

void sub_1A5F278D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::cutUpCurves(apple::vision::libraries::autotrace::ContourToPath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = this + 120;
  v8 = *(this + 15);
  v10 = **(this + 3);
  v11 = *(this + 16);
  if (v11 - v8 == 8)
  {
    v12 = *(v8 + 1) != 64 || v10 < 1;
    if (!v12)
    {
      v13 = 0;
      v14 = *(this + 7);
      while (1)
      {
        v15 = v13 + 1;
        v16 = v10 - 1 == v13 ? 0 : v13 + 1;
        v17 = *(v14 + 4 * v13);
        if (v17 <= 0.5 && *(v14 + 4 * v16) >= 0.5)
        {
          break;
        }

        if (v17 >= 0.5 && *(v14 + 4 * v16) <= 0.5)
        {
          break;
        }

        ++v13;
        if (v10 == v15)
        {
          goto LABEL_17;
        }
      }

      *v8 = v13;
      *(v8 + 1) = 24;
    }
  }

LABEL_17:
  if (v11 == v8)
  {
    __p = 0;
    v85 = 0;
    v77 = 1;
    v86 = 0;
    return v77;
  }

  v18 = 0;
  v19 = v10;
  v20 = (v11 - v8) >> 3;
  do
  {
    v21 = v18++;
    LODWORD(v22) = v18;
    v23 = v18 - v20;
    if (v18 >= v20)
    {
      LODWORD(v22) = v18 - v20;
      if (v23 >= v20)
      {
        v22 = v23 % v20;
      }
    }

    v24 = &v8[8 * v21];
    if ((v24[4] & 8) != 0)
    {
      v25 = *v24;
      v26 = *&v8[8 * v22];
      v27 = __OFSUB__(v26, v25);
      v28 = v26 - v25;
      v29 = (v28 < 0) ^ v27 | (v28 == 0) ? v10 : 0;
      v30 = (v29 + v28);
      if (v30 >= 1)
      {
        v31 = 0;
        v32 = *(this + 8);
        v33 = *(this + 9);
        do
        {
          v34 = v25;
          v35 = *(v32 + 4 * v25);
          if (v10 == v30)
          {
            v36 = -1;
            a6 = 1 - v10;
            a7 = v10 + 1;
            a8 = ~v10;
            v37 = v10 - 1;
            v38 = 1;
            do
            {
              v39 = v38 + v34;
              LODWORD(v40) = v38 + v34 - v10;
              if (v38 + v34 >= v10)
              {
                if (v34 + a6 >= v10)
                {
                  v40 = (v34 + a6) % v10;
                }
              }

              else
              {
                LODWORD(v40) = v38 + v34;
                if (v39 < 0)
                {
                  if ((v34 + a7) < 0)
                  {
                    v40 = (v34 + a7) % v10 + v10;
                  }

                  else
                  {
                    LODWORD(v40) = v39 + v10;
                  }
                }
              }

              v41 = v34 - v38;
              v42 = v34 + v36;
              if (v34 + v36 >= v10)
              {
                if (v34 + a8 >= v10)
                {
                  v42 = (v34 + a8) % v10;
                }

                else
                {
                  LODWORD(v42) = v41 - v10;
                }
              }

              else if (v42 < 0)
              {
                if (v34 + v37 < 0)
                {
                  v42 = (v34 + v37) % v10 + v10;
                }

                else
                {
                  LODWORD(v42) = v41 + v10;
                }
              }

              ++v38;
              --v36;
              --v37;
              v35 = (v35 + *(v32 + 4 * v40)) + *(v32 + 4 * v42);
              --a8;
              ++a7;
              ++a6;
            }

            while (v36 != -5);
            v43 = 9.0;
          }

          else
          {
            v44 = v10 + v25;
            a6 = v34 - v10;
            a7 = 1;
            a8 = -1;
            v45 = 1;
            do
            {
              if (v31 + a7 < v30)
              {
                v46 = v34 + a7;
                if ((v34 + a7) >= v10)
                {
                  if ((a6 + a7) >= v10)
                  {
                    if (v10)
                    {
                      v46 = (a6 + a7) % v10;
                    }
                  }

                  else
                  {
                    LODWORD(v46) = a6 + a7;
                  }
                }

                else if (v46 < 0)
                {
                  v47 = v44 + a7;
                  if ((v44 + a7) >= 0)
                  {
                    LODWORD(v46) = v44 + a7;
                  }

                  if (v47 < 0 && v10)
                  {
                    v46 = v47 % v10 + v10;
                  }
                }

                v35 = v35 + *(v32 + 4 * v46);
                ++v45;
              }

              if (v31 >= a7)
              {
                v48 = v34 + a8;
                if (v34 + a8 >= v10)
                {
                  if (a6 + a8 >= v10)
                  {
                    if (v10)
                    {
                      v48 = (a6 + a8) % v10;
                    }
                  }

                  else
                  {
                    LODWORD(v48) = a6 + a8;
                  }
                }

                else if (v48 < 0)
                {
                  v49 = v44 + a8;
                  if (v44 + a8 >= 0)
                  {
                    LODWORD(v48) = v44 + a8;
                  }

                  if (v49 < 0 && v10)
                  {
                    v48 = v49 % v10 + v10;
                  }
                }

                v35 = v35 + *(v32 + 4 * v48);
                ++v45;
              }

              ++a7;
              --a8;
            }

            while (a7 != 5);
            v43 = v45;
          }

          *(v33 + 4 * v34) = v35 / v43;
          v50 = v34 + 1;
          if (v50 >= v10)
          {
            v51 = v10;
          }

          else
          {
            v51 = 0;
          }

          v25 = v50 - v51;
          ++v31;
        }

        while (v31 != v30);
      }
    }
  }

  while (v18 < v20);
  __p = 0;
  v85 = 0;
  v86 = 0;
  if (v11 == v8)
  {
    return 1;
  }

  v79 = v9;
  v52 = 0;
  v53 = 0;
  v80 = v10 >> 1;
  v54 = 1;
  while (1)
  {
    v81 = v53 + 1;
    LODWORD(v55) = v53 + 1;
    if (v20 <= v54)
    {
      v55 = v54 - v20;
      if (v54 - v20 >= v20)
      {
        v55 %= v20;
      }
    }

    v56 = &v8[8 * v55];
    v57 = *&v8[v52];
    v58 = *v56;
    if (v8[v52 + 4])
    {
      Corner = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *&v8[v52], 1, a6, a7, a8);
      if (!Corner)
      {
        goto LABEL_129;
      }

      v60 = *(Corner + 1);
      v59 = v60 == v57;
    }

    else
    {
      v59 = 1;
      v60 = *&v8[v52];
    }

    if (v56[4])
    {
      v64 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v56, 1, a6, a7, a8);
      if (!v64)
      {
        goto LABEL_129;
      }

      v63 = *v64;
      v62 = v63 == v58;
    }

    else
    {
      v62 = 1;
      v63 = v58;
    }

    if (v58 <= v57)
    {
      v65 = v60 - *&v8[v52];
      if (v65 < 0)
      {
        v65 = *&v8[v52] - v60;
      }

      if (v65 <= v80)
      {
        v66 = v63 - *v56;
        if (v66 < 0)
        {
          v66 = *v56 - v63;
        }

        if (v66 <= v80)
        {
          break;
        }
      }
    }

    if (v63 > v60)
    {
      goto LABEL_102;
    }

LABEL_110:
    v53 = v81;
    v8 = *(this + 15);
    v20 = (*(this + 16) - v8) >> 3;
    v52 += 8;
    v12 = v20 > v54++;
    if (!v12)
    {
      v68 = __p;
      if (v85 == __p)
      {
        v77 = 1;
        if (__p)
        {
          goto LABEL_131;
        }

        return v77;
      }

      v69 = 0;
      v70 = 0;
      while (1)
      {
        v83 = 0;
        v72 = *&v68[v69];
        v71 = *&v68[v69 + 4];
        v73 = apple::vision::libraries::autotrace::ContourToPath::indexOfNewInterestingPointAtPointIndex(v72, *(this + 15), *(this + 16), &v83);
        if (v83 != 1 || (v71 & 0x18) != 24)
        {
          goto LABEL_125;
        }

        v75 = *(*v79 + 8 * v73 + 4);
        if ((v75 & 0x18) != 8 && (v75 & 0x18) != 16)
        {
          break;
        }

LABEL_126:
        ++v70;
        v68 = __p;
        v69 += 8;
        if (v70 >= (v85 - __p) >> 3)
        {
          v77 = 1;
          goto LABEL_130;
        }
      }

      if ((v75 & 4) != 0)
      {
        v71 = 8;
      }

      else
      {
        v71 = v71;
      }

LABEL_125:
      if (!apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v72, v71, v79))
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }
  }

  if (v63 <= v60 - v19)
  {
    goto LABEL_110;
  }

LABEL_102:
  v67 = v60 == v63 && (!v59 || !v62);
  if (v67 || (v8[v52 + 4] & 8) == 0 || apple::vision::libraries::autotrace::ContourToPath::cutUpCurve(this, v60, v59, v63, v62, &__p, a7, a8))
  {
    goto LABEL_110;
  }

LABEL_129:
  v77 = 0;
LABEL_130:
  v68 = __p;
  if (__p)
  {
LABEL_131:
    v85 = v68;
    operator delete(v68);
  }

  return v77;
}

void sub_1A5F27EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::coalesceStraightLines(const EPolygon **this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  v151 = *MEMORY[0x1E69E9840];
  v149 = 0;
  v148 = 0.0;
  v146 = 0;
  v147 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0.0;
  v9 = this[3];
  v134 = *(v9 + 1);
  v140 = *v9;
  v11 = this[15];
  v10 = this[16];
  v12 = (v10 - v11) >> 3;
  if (v10 != v11)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = 1;
    v18 = 12;
    while (1)
    {
      v19 = v15;
      v20 = &v11[8 * v15++];
      if ((v20[4] & 2) == 0)
      {
        goto LABEL_53;
      }

      LODWORD(v21) = v15;
      if (v12 > v15)
      {
        v22 = &v11[v18];
        v21 = v17;
        while (1)
        {
          v23 = *v22;
          v22 += 8;
          if ((v23 & 7) != 6)
          {
            break;
          }

          if (v12 == ++v21)
          {
            LODWORD(v21) = v12;
            break;
          }
        }
      }

      if (v21 == v15 || v19 >= v21)
      {
        goto LABEL_53;
      }

      v135 = v15;
      v24 = 0;
      v136 = v14;
      v25 = (v14 + v21);
      v137 = v13;
      v138 = v19;
      v26 = v19;
      do
      {
        ++v26;
        v27 = this[15];
        v28 = this[16];
        v29 = (v28 - v27) >> 3;
        LODWORD(v30) = v26;
        if (v29 <= (v17 + v24))
        {
          v31 = v17 + v24 - v29;
          LODWORD(v30) = v17 + v24 - v29;
          if (v31 >= v29)
          {
            LODWORD(v30) = v26;
            if (v28 != v27)
            {
              v30 = v31 % v29;
            }
          }
        }

        v32 = *(v27 + v13);
        v33 = *(v27 + 2 * v30) - v32;
        v34 = v140 & (v33 >> 31);
        apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v142, this[3], v32, v34 + v33);
        apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v142, &v149, &v146, &v145 + 1);
        if (v24 <= 0x12B)
        {
          apple::vision::libraries::autotrace::ATRAngleOfLine(*this[3], *(this[3] + 1), v32, v34 + v33, v149, *(&v145 + 1), v35);
          v150[v24] = v36;
        }

        ++v24;
        v13 += 8;
      }

      while (v25 != v24);
      if (v25 >= 0x12C)
      {
        break;
      }

      v39 = v150[0];
      v13 = v137;
      v14 = v136;
      if (v25 >= 2)
      {
        v38 = v150[0];
        v8 = this;
        v37 = v138;
LABEL_23:
        v40 = (v14 + v21);
        v41 = 1;
        v42 = v38;
        v43 = 1;
        v44 = v38;
        while (1)
        {
          v45 = v42 - rintf(v42 - v38);
          v42 = v150[v41];
          v46 = v42 - rintf(v42 - v38);
          v47 = v46 > v44 ? v46 : v44;
          if (v46 >= v39)
          {
            v44 = v47;
          }

          else
          {
            v39 = v46;
          }

          v48 = (v46 - v45) >= 0.0 ? 1.0 : -1.0;
          if (v41 == 1)
          {
            v16 = v48;
          }

          else if (v16 != v48)
          {
            v43 = 0;
          }

          if (vabds_f32(v46, v45) > 0.0097222)
          {
            goto LABEL_41;
          }

          if (v40 == ++v41)
          {
            goto LABEL_42;
          }
        }
      }

      LODWORD(v41) = 1;
      v44 = v150[0];
      v43 = 1;
      v8 = this;
      v37 = v138;
LABEL_41:
      if (v41 == v25)
      {
LABEL_42:
        v11 = *(v8 + 15);
        v10 = *(v8 + 16);
        v49 = 8 * v25 - 8;
        if (8 * v25 != 8)
        {
          v50 = &v11[8 * v25];
          v51 = v10 - &v50[v49];
          if (v10 != &v50[v49])
          {
            memmove(v50, &v50[v49], v10 - &v50[v49]);
            v11 = *(v8 + 15);
          }

          v10 = &v50[v51];
          *(v8 + 16) = &v50[v51];
        }

        v15 = v135;
        if ((((v44 - v39) > 0.00055556) & v43) == 1)
        {
          *&v11[8 * v37 + 4] = *&v11[8 * v37 + 4] & 0xFFFFFFF5 | 8;
          LODWORD(v52) = v135;
          if (v135 >= (v10 - v11) >> 3)
          {
            v53 = (v10 - v11) >> 3;
            LODWORD(v52) = v135 - v53;
            if (v135 - v53 >= v53)
            {
              LODWORD(v52) = v135;
              if (v10 != v11)
              {
                v52 = (v135 - v53) % v53;
              }
            }
          }

          *&v11[8 * v52 + 4] = *&v11[8 * v52 + 4] & 0xFFFFFFEB | 0x10;
        }
      }

      else
      {
        v11 = *(v8 + 15);
        v10 = *(v8 + 16);
        v15 = v135;
      }

LABEL_53:
      v12 = (v10 - v11) >> 3;
      ++v17;
      --v14;
      v18 += 8;
      v13 += 8;
      if (v12 <= v15)
      {
        goto LABEL_54;
      }
    }

    VNValidatedLog(4, @"%s: too many straight lines in a row", a3, a4, a5, a6, a7, a8, "coalesceStraightLines");
    v8 = this;
    v13 = v137;
    v37 = v138;
    v14 = v136;
    v38 = v150[0];
    v39 = v150[0];
    goto LABEL_23;
  }

LABEL_54:
  if (v10 == v11)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  v56 = -1;
  do
  {
    v57 = v55++;
    v58 = v55;
    if (v12 <= v56 + 2)
    {
      v58 = v56 - v12 + 2;
      if (v58 >= v12)
      {
        v58 %= v12;
      }
    }

    v59 = v58 << 32;
    v60 = &v11[8 * v58];
    v61 = *&v11[v54];
    v62 = *&v11[v54 + 4];
    v63 = (~v62 & 0x12) == 0 && (v140 & ((*v60 - v61) >> 31)) + *v60 - v61 <= 3;
    if (v63)
    {
      v64 = v60[1];
      if ((v64 & 8) != 0 && ((v64 | v62) & 1) == 0)
      {
        v65 = v56 + 1;
        v66 = v57 - 1;
        if (v12 >= v56 + 1)
        {
          LODWORD(v67) = v56;
          if (v56 == -1)
          {
            if (v12 - 1 < 0)
            {
              v67 = (v12 - 1) % v12 + v12;
            }

            else
            {
              LODWORD(v67) = v12 + v66;
            }
          }
        }

        else if (v56 - v12 >= v12)
        {
          v67 = (v56 - v12) % v12;
        }

        else
        {
          LODWORD(v67) = v66 - v12;
        }

        a3 = *&v11[8 * v67];
        if ((v140 & ((v61 - a3) >> 31)) + v61 - a3 >= 3)
        {
          v68 = v140;
          if (v61 > 0)
          {
            v68 = 0;
          }

          apple::vision::libraries::autotrace::ContourToPath::findTangentBackwardsFrom(v8, v61 + v68 - 1, a3, &v148, &v147 + 1, &v149, &v146, &v145 + 1);
          v69 = (v59 + 0x100000000) >> 32;
          v70 = *(v8 + 15);
          v71 = *(v8 + 16);
          v72 = (v71 - v70) >> 3;
          if (v69 >= v72)
          {
            LODWORD(v73) = v69 - v72;
            if (v69 - v72 >= v72)
            {
              v73 = (v59 + 0x100000000) >> 32;
              if (v71 != v70)
              {
                v73 = (v69 - v72) % v72;
              }
            }
          }

          else if (v69 < 0)
          {
            LODWORD(v73) = v72 + v69;
            if (v72 + v69 < 0)
            {
              v73 = (v59 + 0x100000000) >> 32;
              if (v71 != v70)
              {
                v73 = (v72 + v69) % v72 + v72;
              }
            }
          }

          else
          {
            v73 = (v59 + 0x100000000) >> 32;
          }

          a3 = *(v70 + 8 * v73);
          v74 = *v60;
          if ((v140 & ((a3 - v74) >> 31)) + a3 - v74 >= 3)
          {
            apple::vision::libraries::autotrace::ContourToPath::findTangentForwardsFrom(v8, v74, a3, &v147, &v146 + 1, &v149, &v146, &v145 + 1);
            v75 = atan2f(*(&v147 + 1), v148) * 0.15915;
            v76 = atan2f(*(&v146 + 1), *&v147);
            v77 = (v76 * 0.15915) - rintf((v76 * 0.15915) - v75);
            if (vabds_f32(v75, v77) <= 0.0083333)
            {
              v78 = v140;
              if (*v60 > 0)
              {
                v78 = 0;
              }

              v139 = vsub_f32(*(v134 + 8 * (*v60 + v78 - 1)), *(v134 + 8 * *&v11[v54]));
              v79 = atan2f(v139.f32[1], v139.f32[0]);
              if ((sqrtf(vmuls_lane_f32(v139.f32[1], v139, 1) + (v139.f32[0] * v139.f32[0])) * sinf(fabsf(((v79 * 0.15915) - rintf((v79 * 0.15915) - v75)) + ((v75 + v77) * -0.5)) * 6.2832)) < 0.33333)
              {
                if (v65 >= v58)
                {
                  if (v58 || (v82 = *(v8 + 15), v87 = *(v8 + 16), v65 != ((v87 - v82) >> 3) - 1))
                  {
                    VNValidatedLog(4, @"%s: our assumptions have failed", a3, a4, a5, a6, a7, a8, "coalesceStraightLines");
                    v82 = *(v8 + 15);
                    v87 = *(v8 + 16);
                  }

                  v83 = v82 + 16;
                  v84 = v87 - (v82 + 16);
                  if (v87 == v82 + 16)
                  {
                    goto LABEL_94;
                  }
                }

                else
                {
                  v80 = *(v8 + 16);
                  v81 = *(v8 + 15) + 8 * v58;
                  v82 = (v81 - 8);
                  v83 = (v81 + 8);
                  v84 = v80 - (v81 + 8);
                  if (v80 == v81 + 8)
                  {
LABEL_94:
                    *(v8 + 16) = &v82[v84];
                    goto LABEL_95;
                  }
                }

                memmove(v82, v83, v84);
                goto LABEL_94;
              }
            }
          }
        }
      }
    }

LABEL_95:
    v11 = *(v8 + 15);
    v85 = *(v8 + 16);
    v12 = (v85 - v11) >> 3;
    v86 = v56 + 2;
    ++v56;
    v54 += 8;
  }

  while (v12 > v86);
  if (v85 != v11)
  {
    v88 = 0;
    v89 = 0;
    while (1)
    {
      v90 = v89 + 1;
      v91 = v90 - v12;
      if (v90 >= v12)
      {
        if (v91 >= v12)
        {
          v91 %= v12;
        }
      }

      else
      {
        v91 = v89 + 1;
        if (v89 <= -2)
        {
          v91 = v12 + v90;
          if (v12 + v90 < 0)
          {
            v91 = v91 % v12 + v12;
          }
        }
      }

      v92 = &v11[8 * v88];
      v93 = v92[1];
      if ((v93 & 8) != 0)
      {
        v95 = &v11[8 * v91];
        a3 = *v95;
        v96 = *v92;
        v97 = (v140 & ((a3 - v96) >> 31)) + a3 - v96;
        if (v97 <= 34)
        {
          v98 = v95[1];
          if ((v98 & 0x10) == 0)
          {
LABEL_180:
            VNValidatedLog(4, @"%s: curve (starting at %d) not balanced", a3, a4, a5, a6, a7, a8, "coalesceStraightLines");
            return 0;
          }

          if (v95[1] & 8 | v92[1] & 0x10)
          {
            if (((v98 | v93) & 1) == 0)
            {
              apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(this, v96, a3, &v145, &v144 + 1);
              v99 = 1.0 / v97;
              if (fabsf(v99 * *&v145) <= 0.00027778 && (v99 * *(&v144 + 1)) <= 0.00027778)
              {
                if ((v92[1] & 0x10) != 0)
                {
                  v94 = v91 << 32;
                  v104 = ((v91 << 32) + 0x100000000) >> 32;
                  v105 = (v85 - v11) >> 3;
                  if (v104 >= v105)
                  {
                    LODWORD(v106) = v104 - v105;
                    if (v104 - v105 >= v105)
                    {
                      v106 = (v94 + 0x100000000) >> 32;
                      if (v85 != v11)
                      {
                        v106 = (v104 - v105) % v105;
                      }
                    }
                  }

                  else if (v104 < 0)
                  {
                    LODWORD(v106) = v105 + v104;
                    if (v105 + v104 < 0)
                    {
                      v106 = (v94 + 0x100000000) >> 32;
                      if (v85 != v11)
                      {
                        v106 = (v105 + v104) % v105 + v105;
                      }
                    }
                  }

                  else
                  {
                    v106 = (v94 + 0x100000000) >> 32;
                  }

                  v107 = *&v11[8 * v106];
                  v108 = (v140 & ((v107 - *v95) >> 31)) + v107 - *v95;
                  apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(this, *v95, v107, &v144, &v143);
                  v109 = 1.0 / v108;
                  if (fabsf(*&v144 * v109) <= 0.00027778 && (v109 * v143) <= 0.00027778)
                  {
                    v100 = this;
                    if (v91)
                    {
                      v110 = v85 - v95;
                      if (v110)
                      {
                        memmove(v95 - 2, &v11[8 * v91], v110);
                      }

                      v85 = (v95 + v110 - 8);
                    }

                    else
                    {
                      v85 -= 2;
                    }

                    this[16] = v85;
                    --v89;
                    goto LABEL_118;
                  }
                }

                else
                {
                  v100 = this;
                  if ((v95[1] & 8) == 0)
                  {
                    goto LABEL_118;
                  }

                  v101 = v89 - 1;
                  v102 = (v85 - v11) >> 3;
                  if (v89 - 1 >= v102)
                  {
                    LODWORD(v103) = v101 - v102;
                    if (v101 - v102 >= v102)
                    {
                      LODWORD(v103) = v89 - 1;
                      if (v85 != v11)
                      {
                        v103 = (v101 - v102) % v102;
                      }
                    }
                  }

                  else if (v89 <= 0)
                  {
                    LODWORD(v103) = v102 + v101;
                    if (v102 + v101 < 0)
                    {
                      LODWORD(v103) = v89 - 1;
                      if (v85 != v11)
                      {
                        v103 = (v102 + v101) % v102 + v102;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v103) = v89 - 1;
                  }

                  v111 = *&v11[8 * v103];
                  v112 = (v140 & ((*v92 - v111) >> 31)) + *v92 - v111;
                  apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(this, v111, *v92, &v144, &v143);
                  v113 = 1.0 / v112;
                  if (fabsf(*&v144 * v113) <= 0.00027778 && (v113 * v143) <= 0.00027778)
                  {
                    v114 = v92[1];
                    *v95 = *v92;
                    v115 = v95[1];
                    if ((v114 & 4) != 0)
                    {
                      v115 |= 4u;
                      v95[1] = v115;
                      v114 = v92[1];
                    }

                    v100 = this;
                    v95[1] = v115 & 0xFFFFFFEF | (16 * ((v114 >> 4) & 1));
                    v116 = v85 - (v92 + 2);
                    if (v85 != v92 + 2)
                    {
                      memmove(v92, v92 + 2, v85 - (v92 + 2));
                    }

                    v85 -= 2;
                    this[16] = (v92 + v116);
                    --v89;
                    goto LABEL_118;
                  }
                }
              }
            }
          }
        }
      }

      v100 = this;
LABEL_118:
      v88 = ++v89;
      v11 = *(v100 + 15);
      v12 = (v85 - v11) >> 3;
      if (v12 <= v89)
      {
        if (v85 != v11)
        {
          v117 = 0;
          v118 = 0;
          v119 = -8;
          v120 = 1;
          while (1)
          {
            LODWORD(v121) = ++v118;
            if (v12 <= v120)
            {
              v121 = v120 - v12;
              if (v120 - v12 >= v12)
              {
                v121 %= v12;
              }
            }

            v122 = &v11[v117];
            v123 = *&v11[v117 + 4];
            if ((v123 & 8) == 0)
            {
              goto LABEL_178;
            }

            v124 = &v11[8 * v121];
            v125 = *v122;
            v126 = (v140 & ((*v124 - v125) >> 31)) + *v124 - v125;
            if (v126 > 5)
            {
              goto LABEL_178;
            }

            v127 = *(v124 + 1);
            if ((v127 & 0x10) == 0)
            {
              goto LABEL_180;
            }

            if (!(*(v124 + 1) & 8 | *&v11[v117 + 4] & 0x10) || ((v127 | v123) & 1) != 0 || v126 > 2)
            {
              goto LABEL_178;
            }

            if ((v123 & 0x10) != 0)
            {
              break;
            }

            if ((v127 & 8) != 0)
            {
              *v124 = v125;
              if ((v123 & 4) != 0)
              {
                v127 |= 4u;
                *(v124 + 1) = v127;
                v128 = *(v122 + 1) & 0x10;
              }

              else
              {
                v128 = 0;
              }

              v129 = v127 & 0xFFFFFFEF | v128;
LABEL_174:
              *(v124 + 1) = v129;
              goto LABEL_175;
            }

LABEL_178:
            v12 = (v85 - v11) >> 3;
            v117 += 8;
            v119 -= 8;
            v63 = v12 > v120++;
            if (!v63)
            {
              return 1;
            }
          }

          if ((v123 & 4) != 0)
          {
            v129 = v127 & 0xFFFFFFEB | 4;
            goto LABEL_174;
          }

LABEL_175:
          v130 = &v11[v117];
          v131 = &v11[v117 + 8];
          v132 = v119 + v85 - v11;
          if (v131 != v85)
          {
            memmove(&v11[v117], v131, v119 + v85 - v11);
          }

          v85 = &v130[v132];
          *(v100 + 16) = &v130[v132];
          v11 = *(v100 + 15);
          goto LABEL_178;
        }

        return 1;
      }
    }
  }

  return 1;
}

void apple::vision::libraries::autotrace::ContourToPath::extractCurveRecords(apple::vision::libraries::autotrace::ContourToPath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = **(this + 3);
  v10 = *(this + 15);
  v9 = *(this + 16);
  v11 = (v9 - v10) >> 3;
  if (v9 != v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      LODWORD(v15) = ++v13;
      if (v11 <= v14)
      {
        v15 = v14 - v11;
        if (v14 - v11 >= v11)
        {
          v15 %= v11;
        }
      }

      v16 = (v10 + v12);
      v17 = *(v10 + v12 + 4);
      if ((v17 & 0xA) == 0)
      {
        goto LABEL_21;
      }

      if (v17)
      {
        Corner = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v16, 0, a6, a7, a8);
        v18 = (Corner + 4);
        if (!Corner)
        {
          v18 = (v10 + v12);
        }
      }

      else
      {
        v18 = (v10 + v12);
      }

      v20 = (v10 + 8 * v15);
      v21 = *v18;
      v22 = v20;
      if (*(v20 + 4))
      {
        v23 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v20, 0, a6, a7, a8);
        if (v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = v20;
        }
      }

      if (*v22 != v21)
      {
        goto LABEL_21;
      }

      v24 = v16[1];
      if ((v24 & 8) != 0)
      {
        break;
      }

      if ((v24 & 2) != 0)
      {
        v25 = -5;
        v26 = -11;
LABEL_20:
        v16[1] = v24 & v26;
        *(v20 + 1) &= v25;
      }

LABEL_21:
      v10 = *(this + 15);
      v9 = *(this + 16);
      v11 = (v9 - v10) >> 3;
      v12 += 8;
      v27 = v11 > v14++;
      if (!v27)
      {
        goto LABEL_22;
      }
    }

    v25 = -17;
    v26 = -9;
    goto LABEL_20;
  }

LABEL_22:
  v28 = (v11 - 1);
  if (v28 >= 0)
  {
    v29 = v28 + 1;
    v30 = 8 * v28;
    v31 = v30 ^ 0xFFFFFFFFFFFFFFF8;
    do
    {
      v32 = *(this + 15);
      v33 = v32 + v30;
      if (!*(v32 + v30 + 4))
      {
        v34 = v31 + v9 - v32;
        if (v33 + 8 != v9)
        {
          memmove((v32 + v30), (v32 + 8 * v29), v31 + v9 - v32);
        }

        v9 = v33 + v34;
        *(this + 16) = v33 + v34;
      }

      v30 -= 8;
      v31 += 8;
      v27 = v29-- <= 1;
    }

    while (!v27);
    v10 = *(this + 15);
  }

  v35 = v9 - v10;
  if (v35)
  {
    v36 = 0;
    v37 = 0;
    v38 = v35 >> 3;
    while (1)
    {
      v39 = v37++;
      LODWORD(v40) = v37;
      if (v38 <= v37)
      {
        v40 = v39 - v38 + 1;
        if (v40 >= v38)
        {
          v40 %= v38;
        }
      }

      v41 = (v10 + v36);
      v42 = *(v10 + v36 + 4);
      if ((v42 & 0xA) == 0)
      {
        goto LABEL_64;
      }

      if (v42)
      {
        v44 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v41, 0, a6, a7, a8);
        v43 = (v44 + 4);
        if (!v44)
        {
          v43 = (v10 + v36);
        }
      }

      else
      {
        v43 = (v10 + v36);
      }

      v45 = (v10 + 8 * v40);
      v46 = *v43;
      if (*(v45 + 4))
      {
        v47 = apple::vision::libraries::autotrace::CornerList::findCorner(*(this + 12), *(this + 13), **(this + 3), *v45, 0, a6, a7, a8);
        if (v47)
        {
          v45 = v47;
        }
      }

      v48 = *v45;
      v49 = *v45 - v46;
      if (*v45 == v46)
      {
        goto LABEL_64;
      }

      v50 = *(this + 19);
      v51 = *(this + 20);
      if (v50 >= v51)
      {
        v53 = *(this + 18);
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v53) >> 5);
        v55 = v54 + 1;
        if (v54 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v65 = v49;
        v56 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v53) >> 5);
        if (2 * v56 > v55)
        {
          v55 = 2 * v56;
        }

        if (v56 >= 0x155555555555555)
        {
          v57 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v57 = v55;
        }

        if (v57)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::Curve>>(v57);
        }

        v58 = 96 * v54;
        *(v58 + 64) = 0u;
        *(v58 + 80) = 0u;
        *(v58 + 32) = 0u;
        *(v58 + 48) = 0u;
        *v58 = 0u;
        *(v58 + 16) = 0u;
        v52 = 96 * v54 + 96;
        v59 = *(this + 18);
        v60 = *(this + 19) - v59;
        v61 = 96 * v54 - v60;
        memcpy((v58 - v60), v59, v60);
        v62 = *(this + 18);
        *(this + 18) = v61;
        *(this + 19) = v52;
        *(this + 20) = 0;
        if (v62)
        {
          operator delete(v62);
        }

        v49 = v65;
      }

      else
      {
        v50[4] = 0u;
        v50[5] = 0u;
        v50[2] = 0u;
        v50[3] = 0u;
        v52 = (v50 + 6);
        *v50 = 0u;
        v50[1] = 0u;
      }

      *(this + 19) = v52;
      v63 = v41[1];
      if ((v63 & 8) != 0)
      {
        break;
      }

      if ((v63 & 2) != 0)
      {
        v64 = 0;
LABEL_62:
        *(v52 - 96) = v64;
      }

      *(v52 - 92) = v39;
      *(v52 - 88) = v46;
      *(v52 - 44) = v40;
      *(v52 - 40) = v48;
      *(v52 - 4) = (v66 & (v49 >> 31)) + v49;
LABEL_64:
      v10 = *(this + 15);
      v38 = (*(this + 16) - v10) >> 3;
      v36 += 8;
      if (v38 <= v37)
      {
        return;
      }
    }

    v64 = 1;
    goto LABEL_62;
  }
}

void apple::vision::libraries::autotrace::ContourToPath::computeCurveTangents(apple::vision::libraries::autotrace::ContourToPath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v131 = 0;
  v129 = 0.0;
  v130 = 0.0;
  v8 = *(this + 18);
  v9 = *(this + 19) - v8;
  if (v9)
  {
    v11 = 0;
    v12 = *(this + 3);
    v13 = *v12;
    v127 = *(v12 + 1);
    v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 5);
    v15 = v13 / 8;
    if (v13 / 8 <= 1)
    {
      v15 = 1;
    }

    if (v13 >= 48)
    {
      v15 = 6;
    }

    v115 = v15;
    do
    {
      v16 = v11++;
      LODWORD(v17) = v11;
      v18 = v11 - v14;
      if (v11 >= v14)
      {
        LODWORD(v17) = v11 - v14;
        if (v18 >= v14)
        {
          v17 = v18 % v14;
        }
      }

      v19 = (v8 + 96 * v16);
      v20 = (v8 + 96 * v17);
      v21 = *(this + 15);
      v22 = v19[6].i32[1];
      v23 = v21 + 8 * v22;
      v24 = v20->i32[1];
      if (v22 == v24)
      {
        if ((*(v23 + 4) & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v25 = v22 + 1;
        v26 = *(this + 16);
        v27 = (v26 - v21) >> 3;
        if (v22 + 1 >= v27)
        {
          LODWORD(v28) = v25 - v27;
          if (v25 - v27 >= v27)
          {
            LODWORD(v28) = v22 + 1;
            if (v26 != v21)
            {
              v28 = (v25 - v27) % v27;
            }
          }
        }

        else
        {
          LODWORD(v28) = v22 + 1;
          if (v22 <= -2)
          {
            LODWORD(v28) = v27 + v25;
            if (v27 + v25 < 0)
            {
              LODWORD(v28) = v22 + 1;
              if (v26 != v21)
              {
                v28 = (v27 + v25) % v27 + v27;
              }
            }
          }
        }

        if (v24 == v28)
        {
          if (*(v23 + 4))
          {
            goto LABEL_87;
          }

          v29 = v21 + 8 * v24;
        }

        else
        {
          v30 = v22 + 2;
          v31 = v22 + 2 - v27;
          if (v22 + 2 >= v27)
          {
            LODWORD(v32) = v22 + 2 - v27;
            if (v31 >= v27)
            {
              LODWORD(v32) = v22 + 2;
              if (v26 != v21)
              {
                v32 = v31 % v27;
              }
            }
          }

          else if (v22 > -3)
          {
            LODWORD(v32) = v22 + 2;
          }

          else
          {
            LODWORD(v32) = v27 + v30;
            if (v27 + v30 < 0)
            {
              LODWORD(v32) = v22 + 2;
              if (v26 != v21)
              {
                v32 = (v27 + v30) % v27 + v27;
              }
            }
          }

          if (v24 != v32)
          {
            VNValidatedLog(4, @"%s: too many interesting points in between curves/lines", a3, a4, a5, a6, a7, a8, "computeCurveTangents");
            return;
          }

          v33 = v25 - v27;
          if (v25 >= v27)
          {
            LODWORD(v22) = v25 - v27;
            if (v33 >= v27)
            {
              LODWORD(v22) = v25;
              if (v26 != v21)
              {
                v22 = v33 % v27;
              }
            }
          }

          else if (v22 > -2)
          {
            LODWORD(v22) = v22 + 1;
          }

          else
          {
            LODWORD(v22) = v27 + v25;
            if (v27 + v25 < 0)
            {
              LODWORD(v22) = v25;
              if (v26 != v21)
              {
                v22 = (v27 + v25) % v27 + v27;
              }
            }
          }

          v29 = v21 + 8 * v22;
        }

        if ((*(v29 + 4) & 1) == 0)
        {
LABEL_45:
          if (v19->i32[0])
          {
            if (v20->i32[0])
            {
              v34 = v115;
              do
              {
                if (v19[11].i32[1] >= v34)
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v19[11].i32[1];
                }

                v36 = v19[7].i32[0] - v35;
                if (v36 >= v13)
                {
                  v38 = v36 - v13;
                  if (v36 - v13 >= v13)
                  {
                    v39 = v13 == 0;
                  }

                  else
                  {
                    LODWORD(v36) = v36 - v13;
                    v39 = 1;
                  }

                  if (!v39)
                  {
                    v36 = v38 % v13;
                  }
                }

                else if ((v36 & 0x80000000) != 0)
                {
                  v37 = v36 + v13;
                  if (v36 + v13 < 0 == __OFADD__(v36, v13))
                  {
                    LODWORD(v36) = v36 + v13;
                  }

                  if (v37 < 0 && v13)
                  {
                    v36 = v37 % v13 + v13;
                  }
                }

                if (v20[11].i32[1] > v34)
                {
                  v40 = v34 + 1;
                }

                else
                {
                  v40 = v20[11].i32[1];
                }

                v41 = v20[1].i32[0] + v40;
                if (v41 >= v13)
                {
                  if (v41 - v13 >= v13)
                  {
                    if (v13)
                    {
                      v41 = (v41 - v13) % v13;
                    }
                  }

                  else
                  {
                    LODWORD(v41) = v41 - v13;
                  }
                }

                else if ((v41 & 0x80000000) != 0)
                {
                  v42 = v41 + v13;
                  if (v41 + v13 < 0 == __OFADD__(v41, v13))
                  {
                    LODWORD(v41) = v41 + v13;
                  }

                  if (v42 < 0 && v13)
                  {
                    v41 = v42 % v13 + v13;
                  }
                }

                v43 = v34 + 1;
                if (v43 - 1 < 3)
                {
                  break;
                }

                v44 = *(*(this + 7) + 4 * v41) - *(*(this + 7) + 4 * v36);
                v34 = v43 - 2;
              }

              while (vabds_f32(v44, rintf(v44)) >= 0.055556);
              if (v41 <= v36)
              {
                v45 = v13;
              }

              else
              {
                v45 = 0;
              }

              if (v45 + v41 - v36 <= 2)
              {
                v46 = 2;
              }

              else
              {
                v46 = v45 + v41 - v36;
              }

              apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v128, *(this + 3), v36, v46);
              if (apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v128, &v131, &v130, &v129))
              {
                v48 = v131;
                v49 = v129;
                apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v36, v46, v131, v129, v47);
                v51 = v50 * 6.2832;
                v52 = v130;
              }

              else
              {
                if (v36 + 1 >= v13)
                {
                  v79 = v13;
                }

                else
                {
                  v79 = 0;
                }

                v80 = vsub_f32(*(v127 + 8 * (v36 + 1 - v79)), *(v127 + 8 * v36));
                v117 = v80.f32[0];
                LODWORD(v122) = *(v127 + 8 * v36);
                LODWORD(v81) = HIDWORD(*(v127 + 8 * v36));
                v82 = v80.f32[1];
                v51 = atan2f(v80.f32[1], v80.f32[0]);
                if (v51 < 0.0)
                {
                  v83 = v51 + 6.28318531;
                  v51 = v83;
                }

                if (fabsf(v117) <= fabsf(v82))
                {
                  v48 = 0;
                  v131 = 0;
                  v49 = v117 / v82;
                  v52 = v122 - (v49 * v81);
                }

                else
                {
                  v48 = 1;
                  v131 = 1;
                  v49 = v82 / v117;
                  v52 = v81 - (v49 * v122);
                }

                v129 = v49;
                v130 = v52;
              }

              v111 = __sincosf_stret(v51);
              v20[3] = __PAIR64__(LODWORD(v111.__sinval), LODWORD(v111.__cosval));
              v20[5].i8[0] = v48;
              v20[5].f32[1] = v52;
              v20[6].f32[0] = v49;
              v19[8] = __PAIR64__(LODWORD(v111.__sinval), LODWORD(v111.__cosval));
              v19[10].i8[0] = v48;
            }

            else
            {
              if (v20[11].i32[1] <= 2)
              {
                v74 = 2;
              }

              else
              {
                v74 = v20[11].i32[1];
              }

              apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v128, *(this + 3), v20[1].i32[0], v74);
              if (apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v128, &v131, &v130, &v129))
              {
                v76 = v131;
                v49 = v129;
                apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v20[1].i32[0], v74, v131, v129, v75);
                v78 = v77 * 6.2832;
                v52 = v130;
              }

              else
              {
                v105 = v20[1].i32[0];
                if (v105 + 1 >= v13)
                {
                  v106 = v13;
                }

                else
                {
                  v106 = 0;
                }

                v107 = vsub_f32(*(v127 + 8 * (v105 + 1 - v106)), *(v127 + 8 * v105));
                v120 = v107.f32[0];
                LODWORD(v125) = *(v127 + 8 * v105);
                LODWORD(v108) = HIDWORD(*(v127 + 8 * v105));
                v109 = v107.f32[1];
                v78 = atan2f(v107.f32[1], v107.f32[0]);
                if (v78 < 0.0)
                {
                  v110 = v78 + 6.28318531;
                  v78 = v110;
                }

                if (fabsf(v120) <= fabsf(v109))
                {
                  v76 = 0;
                  v131 = 0;
                  v49 = v120 / v109;
                  v52 = v125 - (v49 * v108);
                }

                else
                {
                  v76 = 1;
                  v131 = 1;
                  v49 = v109 / v120;
                  v52 = v108 - (v49 * v125);
                }

                v129 = v49;
                v130 = v52;
              }

              v114 = __sincosf_stret(v78);
              v20[3] = __PAIR64__(LODWORD(v114.__sinval), LODWORD(v114.__cosval));
              v20[5].i8[0] = v76;
              v20[5].f32[1] = v52;
              v20[6].f32[0] = v49;
              v19[8] = __PAIR64__(LODWORD(v114.__sinval), LODWORD(v114.__cosval));
              v19[10].i8[0] = v76;
            }

            v19[10].f32[1] = v52;
            v19[11].f32[0] = v49;
          }

          else
          {
            if (v19[11].i32[1] <= 2)
            {
              v61 = 2;
            }

            else
            {
              v61 = v19[11].i32[1];
            }

            apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v128, *(this + 3), v19[1].i32[0], v61);
            if (apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v128, &v131, &v130, &v129))
            {
              v63 = v131;
              v64 = v129;
              apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v19[1].i32[0], v61, v131, v129, v62);
              v66 = v65 * 6.2832;
              v67 = v130;
            }

            else
            {
              v84 = v19[1].i32[0];
              if (v84 + 1 >= v13)
              {
                v85 = v13;
              }

              else
              {
                v85 = 0;
              }

              v86 = vsub_f32(*(v127 + 8 * (v84 + 1 - v85)), *(v127 + 8 * v84));
              v118 = v86.f32[0];
              LODWORD(v123) = *(v127 + 8 * v84);
              LODWORD(v87) = HIDWORD(*(v127 + 8 * v84));
              v88 = v86.f32[1];
              v66 = atan2f(v86.f32[1], v86.f32[0]);
              if (v66 < 0.0)
              {
                v89 = v66 + 6.28318531;
                v66 = v89;
              }

              if (fabsf(v118) <= fabsf(v88))
              {
                v63 = 0;
                v131 = 0;
                v64 = v118 / v88;
                v67 = v123 - (v64 * v87);
              }

              else
              {
                v63 = 1;
                v131 = 1;
                v64 = v88 / v118;
                v67 = v87 - (v64 * v123);
              }

              v129 = v64;
              v130 = v67;
            }

            v112 = __sincosf_stret(v66);
            v19[8] = __PAIR64__(LODWORD(v112.__sinval), LODWORD(v112.__cosval));
            v19[10].i8[0] = v63;
            v19[10].f32[1] = v67;
            v19[11].f32[0] = v64;
            apple::vision::libraries::autotrace::ContourToPath::computeCurveStartTangentAtCorner(this, v20);
            v126 = v19[8];
            if ((fabsf(acosf(COERCE_FLOAT(vmul_f32(v20[24], v126).i32[1]) + (COERCE_FLOAT(*&v20[3]) * v126.f32[0]))) * 0.15915) >= 0.013889)
            {
              if (v19[7].i32[0] != v20[1].i32[0] && v19[6].i32[1] != -1)
              {
                *(v23 + 4) |= 1u;
              }
            }

            else
            {
              v20[3] = v126;
              v20[5].i8[0] = v131;
              v113 = v129;
              v20[5].f32[1] = v130;
              v20[6].f32[0] = v113;
            }
          }

          goto LABEL_166;
        }
      }

LABEL_87:
      if (v19->i32[0])
      {
        v134 = 0;
        v128[0].i32[0] = 0;
        v133 = 0;
        v132 = 0;
        apple::vision::libraries::autotrace::ContourToPath::findTangentBackwardsFrom(this, v19[7].i32[0], v19[1].i32[0], &v133, &v132, &v134, v128, &v133 + 1);
        v53 = HIDWORD(v133);
        v19[8] = __PAIR64__(v132, v133);
        v19[10].i8[0] = v134;
        v19[10].i32[1] = v128[0].i32[0];
        v19[11].i32[0] = v53;
      }

      else
      {
        if (v19[11].i32[1] <= 2)
        {
          v54 = 2;
        }

        else
        {
          v54 = v19[11].i32[1];
        }

        apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v128, *(this + 3), v19[1].i32[0], v54);
        if (apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v128, &v131, &v130, &v129))
        {
          v56 = v131;
          v57 = v129;
          apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v19[1].i32[0], v54, v131, v129, v55);
          v59 = v58 * 6.2832;
          v60 = v130;
        }

        else
        {
          v68 = v19[1].i32[0];
          if (v68 + 1 >= v13)
          {
            v69 = v13;
          }

          else
          {
            v69 = 0;
          }

          v70 = vsub_f32(*(v127 + 8 * (v68 + 1 - v69)), *(v127 + 8 * v68));
          v116 = v70.f32[0];
          LODWORD(v121) = *(v127 + 8 * v68);
          LODWORD(v71) = HIDWORD(*(v127 + 8 * v68));
          v72 = v70.f32[1];
          v59 = atan2f(v70.f32[1], v70.f32[0]);
          if (v59 < 0.0)
          {
            v73 = v59 + 6.28318531;
            v59 = v73;
          }

          if (fabsf(v116) <= fabsf(v72))
          {
            v56 = 0;
            v131 = 0;
            v57 = v116 / v72;
            v60 = v121 - (v57 * v71);
          }

          else
          {
            v56 = 1;
            v131 = 1;
            v57 = v72 / v116;
            v60 = v71 - (v57 * v121);
          }

          v129 = v57;
          v130 = v60;
        }

        v90 = __sincosf_stret(v59);
        v19[8] = __PAIR64__(LODWORD(v90.__sinval), LODWORD(v90.__cosval));
        v19[10].i8[0] = v56;
        v19[10].f32[1] = v60;
        v19[11].f32[0] = v57;
      }

      if (v20->i32[0])
      {
        apple::vision::libraries::autotrace::ContourToPath::computeCurveStartTangentAtCorner(this, v20);
      }

      else
      {
        if (v20[11].i32[1] <= 2)
        {
          v91 = 2;
        }

        else
        {
          v91 = v20[11].i32[1];
        }

        apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v128, *(this + 3), v20[1].i32[0], v91);
        if (apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v128, &v131, &v130, &v129))
        {
          v93 = v131;
          v94 = v129;
          apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v20[1].i32[0], v91, v131, v129, v92);
          v96 = v95 * 6.2832;
          v97 = v130;
        }

        else
        {
          v98 = v20[1].i32[0];
          if (v98 + 1 >= v13)
          {
            v99 = v13;
          }

          else
          {
            v99 = 0;
          }

          v100 = vsub_f32(*(v127 + 8 * (v98 + 1 - v99)), *(v127 + 8 * v98));
          v119 = v100.f32[0];
          LODWORD(v124) = *(v127 + 8 * v98);
          LODWORD(v101) = HIDWORD(*(v127 + 8 * v98));
          v102 = v100.f32[1];
          v96 = atan2f(v100.f32[1], v100.f32[0]);
          if (v96 < 0.0)
          {
            v103 = v96 + 6.28318531;
            v96 = v103;
          }

          if (fabsf(v119) <= fabsf(v102))
          {
            v93 = 0;
            v131 = 0;
            v94 = v119 / v102;
            v97 = v124 - (v94 * v101);
          }

          else
          {
            v93 = 1;
            v131 = 1;
            v94 = v102 / v119;
            v97 = v101 - (v94 * v124);
          }

          v129 = v94;
          v130 = v97;
        }

        v104 = __sincosf_stret(v96);
        v20[3] = __PAIR64__(LODWORD(v104.__sinval), LODWORD(v104.__cosval));
        v20[5].i8[0] = v93;
        v20[5].f32[1] = v97;
        v20[6].f32[0] = v94;
      }

LABEL_166:
      v8 = *(this + 18);
      v14 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v8) >> 5);
    }

    while (v14 > v11);
  }
}

void apple::vision::libraries::autotrace::ContourToPath::computePoints(apple::vision::libraries::autotrace::ContourToPath *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 18);
  v8 = *(this + 19);
  v10 = v8 - v9;
  if (v8 != v9)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(*(this + 3) + 8);
    v14 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 5);
    v15 = 1;
    do
    {
      LODWORD(v16) = ++v12;
      if (v14 <= v15)
      {
        v16 = v15 - v14;
        if (v15 - v14 >= v14)
        {
          v16 %= v14;
        }
      }

      v17 = v9 + 96 * v16;
      v18 = *(this + 15);
      v19 = *(v9 + v11 + 52);
      v20 = v18 + 8 * v19;
      v21 = *(v17 + 4);
      if (v19 != v21)
      {
        v22 = v19 + 1;
        a3 = *(this + 16);
        v23 = (a3 - v18) >> 3;
        if (v19 + 1 >= v23)
        {
          a8 = v22 - v23;
          a7 = v22 - v23;
          if (v22 - v23 >= v23)
          {
            a7 = v19 + 1;
            if (a3 != v18)
            {
              a7 = a8 % v23;
            }
          }
        }

        else
        {
          a7 = v19 + 1;
          if (v19 <= -2)
          {
            a7 = v23 + v22;
            if (v23 + v22 < 0)
            {
              a8 = a7 / v23;
              a7 = a7 % v23 + v23;
              if (a3 == v18)
              {
                a7 = v19 + 1;
              }
            }
          }
        }

        if (v21 == a7)
        {
          if (*(v20 + 4))
          {
            goto LABEL_47;
          }

          v20 = v18 + 8 * v21;
        }

        else
        {
          v24 = v19 + 2;
          a8 = v19 + 2 - v23;
          if (v19 + 2 >= v23)
          {
            a7 = v19 + 2 - v23;
            if (a8 >= v23)
            {
              a7 = v19 + 2;
              if (a3 != v18)
              {
                a7 = a8 % v23;
              }
            }
          }

          else if (v19 > -3)
          {
            a7 = v19 + 2;
          }

          else
          {
            a8 = v23 + v24;
            a7 = v23 + v24;
            if (v23 + v24 < 0)
            {
              a7 = v19 + 2;
              if (a3 != v18)
              {
                a7 = a8 % v23 + v23;
              }
            }
          }

          if (v21 != a7)
          {
            return;
          }

          v21 = v22 - v23;
          if (v22 >= v23)
          {
            v19 = v22 - v23;
            if (v21 >= v23)
            {
              v19 = v22;
              if (a3 != v18)
              {
                v19 = v21 % v23;
              }
            }
          }

          else if (v19 > -2)
          {
            ++v19;
          }

          else
          {
            v21 = v23 + v22;
            v19 = v23 + v22;
            if (v23 + v22 < 0)
            {
              v19 = v22;
              if (a3 != v18)
              {
                v19 = v21 % v23 + v23;
              }
            }
          }

          v20 = v18 + 8 * v19;
        }
      }

      if ((*(v20 + 4) & 1) == 0)
      {
        v25 = *(v17 + 48);
        if (*(v17 + 40))
        {
          v26 = *(v17 + 48);
        }

        else
        {
          v26 = -1.0;
        }

        if (*(v17 + 40))
        {
          v25 = -1.0;
        }

        v27 = sqrtf((v25 * v25) + (v26 * v26));
        if (v27 == 0.0)
        {
          goto LABEL_65;
        }

        v28 = *(v13 + 8 * *(v17 + 8));
        v29 = 1.0 / v27;
        v30 = v26 * v29;
        v31 = v25 * v29;
        v32 = (vmuls_lane_f32(v31, v28, 1) + (v30 * v28.f32[0])) + (v29 * *(v17 + 44));
        *&v33 = v28.f32[0] - (v32 * v30);
        *(&v33 + 1) = v28.f32[1] - (v32 * v31);
LABEL_62:
        *(v17 + 16) = v33;
        goto LABEL_63;
      }

LABEL_47:
      v34 = v9 + v11;
      v35 = *(v34 + 88);
      if (*(v34 + 80))
      {
        v36 = *(v34 + 88);
      }

      else
      {
        v36 = -1.0;
      }

      if (*(v34 + 80))
      {
        v35 = -1.0;
      }

      v37 = sqrtf((v35 * v35) + (v36 * v36));
      if (v37 == 0.0)
      {
        goto LABEL_65;
      }

      v38 = *(v17 + 48);
      if (*(v17 + 40))
      {
        v39 = *(v17 + 48);
      }

      else
      {
        v39 = -1.0;
      }

      if (*(v17 + 40))
      {
        v38 = -1.0;
      }

      v40 = sqrtf((v38 * v38) + (v39 * v39));
      if (v40 == 0.0)
      {
LABEL_65:
        VNValidatedLog(4, @"%s: degenerate line", a3, v19, v21, v20, a7, a8, "computePoints");
        return;
      }

      v41 = *v20;
      v42 = 1.0 / v37;
      v43 = v36 * (1.0 / v37);
      v44 = v35 * (1.0 / v37);
      v45 = 1.0 / v40;
      v46 = v39 * v45;
      v47 = v38 * v45;
      v48 = (v43 * (v38 * v45)) - (v44 * v46);
      if (fabsf(v48) >= 0.08)
      {
        v49 = v42 * *(v34 + 84);
        v50 = *(v17 + 44) * v45;
        v51 = 1.0 / v48;
        *&v52 = ((v44 * v50) - (v49 * v47)) * v51;
        *&v53 = ((v49 * v46) - (v43 * v50)) * v51;
        *(v17 + 16) = __PAIR64__(v53, v52);
        *(v17 + 8) = v41;
        v33 = *(v13 + 8 * v41);
        if ((((*(&v33 + 1) - *&v53) * (*(&v33 + 1) - *&v53)) + ((*&v33 - *&v52) * (*&v33 - *&v52))) > 16.0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *(v17 + 16) = *(v13 + 8 * v41);
        *(v17 + 8) = v41;
      }

LABEL_63:
      v9 = *(this + 18);
      v14 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v9) >> 5);
      v11 += 96;
    }

    while (v14 > v15++);
  }
}

void apple::vision::libraries::autotrace::ContourToPath::findSubdividedCurves(apple::vision::libraries::autotrace::ContourToPath *this, __n128 a2, double a3, double a4, __n128 a5)
{
  v7 = *(this + 18);
  v6 = *(this + 19);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
    do
    {
      if (*(v7 + 96 * v8))
      {
        apple::vision::libraries::autotrace::ContourToPath::makeCurve(this, v9, 0, a2, a3, a4, a5);
        v11 = v9 - v10;
        v7 = *(this + 18);
        v6 = *(this + 19);
        v12 = (v6 - v7) >> 5;
        v10 = 0xAAAAAAAAAAAAAAABLL * v12;
        v9 = v11 - 1431655765 * v12;
      }

      else
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5);
      }

      v8 = ++v9;
    }

    while (v10 > v9);
  }

  if (v6 != v7)
  {
    v13 = 0;
    do
    {
      v14 = v7 + 96 * v13;
      if (*v14)
      {
        v15 = v13 + 1;
      }

      else
      {
        *(v14 + 32) = *(v14 + 16);
        v15 = v13 + 1;
        v16 = *(this + 18);
        v17 = *(this + 19);
        v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 5);
        LODWORD(v19) = v13 + 1;
        v20 = v13 + 1 - v18;
        if ((v13 + 1) >= v18)
        {
          LODWORD(v19) = v13 + 1 - v18;
          if (v20 >= v18)
          {
            LODWORD(v19) = v13 + 1;
            if (v17 != v16)
            {
              v19 = v20 % v18;
            }
          }
        }

        *(v16 + 96 * v13 + 72) = *(v16 + 96 * v19 + 16);
        v7 = *(this + 18);
        v6 = *(this + 19);
      }

      v13 = v15;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 5) > v15);
  }
}

void apple::vision::libraries::autotrace::ContourToPath::convertToPaths(apple::vision::libraries::autotrace::ContourToPath *this)
{
  v3 = *(this + 18);
  if (*(this + 19) != v3)
  {
    v18 = v1;
    v19 = v2;
    v5 = *(MEMORY[0x1E695EFD0] + 32);
    *&v17.c = *(MEMORY[0x1E695EFD0] + 16);
    *&v17.tx = v5;
    *&v17.a = *MEMORY[0x1E695EFD0];
    CGPathMoveToPoint(*(this + 2), &v17, COERCE_FLOAT(*(v3 + 16)), COERCE_FLOAT(HIDWORD(*(v3 + 16))));
    v6 = *(this + 18);
    v7 = *(this + 19) - v6;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v11 = 1;
      do
      {
        LODWORD(v12) = ++v9;
        if (v10 <= v11)
        {
          v12 = v11 - v10;
          if (v11 - v10 >= v10)
          {
            v12 %= v10;
          }
        }

        v13 = v6 + 96 * v12;
        v14 = *(v6 + v8);
        if (v14 == 1)
        {
          CGPathAddCurveToPoint(*(this + 2), &v17, COERCE_FLOAT(*(v6 + v8 + 32)), COERCE_FLOAT(HIDWORD(*(v6 + v8 + 32))), COERCE_FLOAT(*(v6 + v8 + 72)), COERCE_FLOAT(HIDWORD(*(v6 + v8 + 72))), COERCE_FLOAT(*(v13 + 16)), COERCE_FLOAT(HIDWORD(*(v13 + 16))));
        }

        else if (!v14)
        {
          CGPathAddLineToPoint(*(this + 2), &v17, COERCE_FLOAT(*(v13 + 16)), COERCE_FLOAT(HIDWORD(*(v13 + 16))));
        }

        v6 = *(this + 18);
        v10 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 19) - v6) >> 5);
        v8 += 96;
        v15 = v10 >= v11;
        v16 = v10 == v11++;
      }

      while (!v16 && v15);
    }

    CGPathCloseSubpath(*(this + 2));
  }
}

void apple::vision::libraries::autotrace::ContourToPath::makeCurve(apple::vision::libraries::autotrace::ContourToPath *this, int a2, int a3, __n128 a4, double a5, double a6, __n128 a7)
{
  v7 = a3;
  v8 = a2;
  v10 = *(this + 18);
  v11 = *(this + 19);
  v12 = (v10 + 96 * a2);
  v13 = a2 + 1;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 5);
  v15 = v13 - v14;
  if (v13 >= v14)
  {
    _ZF = v11 == v10;
    v16 = v15 % v14;
    if (_ZF)
    {
      LODWORD(v16) = a2 + 1;
    }

    if (v15 >= v14)
    {
      LODWORD(v15) = v16;
    }
  }

  else
  {
    LODWORD(v15) = a2 + 1;
    if (a2 <= -2)
    {
      v15 = v14 + v13;
      if (v14 + v13 < 0)
      {
        v15 = v15 % (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 5)) - 0x5555555555555555 * ((v11 - v10) >> 5);
        if (v11 == v10)
        {
          LODWORD(v15) = a2 + 1;
        }
      }
    }
  }

  v17 = v12[3];
  v18 = v12[8];
  v19 = v17.f32[1];
  v20 = v18.f32[1];
  v21 = (-v17.f32[1] * v18.f32[0]) + (v17.f32[0] * v18.f32[1]);
  if (v21 == 0.0)
  {
    v12->i32[0] = 0;
    return;
  }

  v22 = *(this + 3);
  v23 = *(v22 + 1);
  v171 = a2 + 1;
  v172 = v22;
  v24 = *v22;
  v25 = (v10 + 96 * v15);
  v26 = v12[1].i32[0];
  v27 = v12[7].i32[0];
  if (v26 + 1 >= v24)
  {
    v28 = *v22;
  }

  else
  {
    v28 = 0;
  }

  v29 = v26 + 1 - v28;
  v30 = 0.0;
  if (v29 != v27)
  {
    v31 = *(this + 6);
    v32 = *(v31 + 4 * v26);
    do
    {
      v33 = *(v31 + 4 * v29);
      v30 = v30 + ((v33 - v32) - rintf(v33 - v32));
      v34 = v29 + 1;
      if (v34 >= v24)
      {
        v35 = v24;
      }

      else
      {
        v35 = 0;
      }

      v29 = v34 - v35;
      v32 = v33;
    }

    while (v29 != v27);
  }

  v36 = v12[2];
  v37 = v25[2];
  v199 = 0;
  v38 = v12[11].i32[1];
  if (fabsf(v30) > 0.25 && a3 <= 19 && v38 >= 2)
  {
    goto LABEL_102;
  }

  v41 = vsub_f32(v37, v36);
  v42 = v37.f32[1] - v36.f32[1];
  v43 = v38 / 4;
  if (v38 / 4 <= 1)
  {
    v43 = 1;
  }

  v44 = 3 * v38 / 4;
  if (v44 >= v38)
  {
    v44 = v38 - 1;
  }

  v45 = v44 - v43;
  if (v44 <= v43)
  {
    v187 = vneg_f32(v18);
    goto LABEL_74;
  }

  v166 = v37.f32[1] - v36.f32[1];
  v173 = v12[11].i32[1];
  a7.n128_u64[0] = vadd_f32(v36, v37);
  v179 = (v36.f32[1] + v37.f32[1]) * 0.5;
  v180 = 0.5 * a7.n128_f32[0];
  v187 = vneg_f32(v18);
  __asm { FMOV            V14.2S, #0.25 }

  v175 = vmla_f32(v36, _D14, v41);
  __asm { FMOV            V10.2S, #0.75 }

  v167 = v41;
  v176 = vmla_f32(v36, _D10, v41);
  v50 = v26 + v43;
  v51 = -1;
  v178 = 0.0;
  v191 = 1000000.0;
  __asm
  {
    FMOV            V15.2S, #-3.0
    FMOV            V13.2S, #3.0
  }

  v54 = 1.0 / v21;
  v177 = 0.0;
  v183 = v18.i32[0];
  v184 = v17;
  v181 = v18.f32[1];
  v182 = v17.f32[1];
  v188 = v36;
  v185 = v37;
  do
  {
    v55 = v50;
    if (v50 >= v24)
    {
      v58 = v50 - v24;
      if (v55 - v24 >= v24)
      {
        LODWORD(v56) = v55;
      }

      else
      {
        LODWORD(v56) = v55 - v24;
      }

      _ZF = v55 - v24 < v24 || v24 == 0;
      if (!_ZF)
      {
        v56 = v58 % v24;
      }
    }

    else
    {
      LODWORD(v56) = v50;
      if (v50 < 0)
      {
        v57 = v50 + v24;
        LODWORD(v56) = v55 + v24 < 0 != __OFADD__(v55, v24) ? v55 : v55 + v24;
        if (v57 < 0 && v24)
        {
          v56 = v57 % v24 + v24;
        }
      }
    }

    v60 = (COERCE_FLOAT(*(v23 + 8 * v56)) - v180) * 2.6667;
    v61 = (COERCE_FLOAT(HIDWORD(*(v23 + 8 * v56))) - v179) * -2.6667;
    a7.n128_f32[0] = v54 * ((v17.f32[0] * v61) + (v60 * v19));
    v192 = a7;
    v193 = v54 * ((v18.f32[0] * v61) + (v60 * v20));
    v62 = vmla_n_f32(v36, v17, v193);
    v63 = vmla_n_f32(v37, v187, a7.n128_f32[0]);
    v64 = vceq_f32(v36, v62);
    if (((v64.i8[0] & 1) == 0 || (v65 = vceq_f32(v63, v37), (vand_s8(vdup_lane_s32(v64, 1), v65).u8[0] & 1) == 0) || (v66 = v65.i8[4], v67 = v175, (v66 & 1) == 0)) && (v67 = vmla_f32(v36, _D14, vmla_f32(vmul_f32(vmla_f32(vmul_f32(vsub_f32(vmla_f32(v37, _D15, vsub_f32(v63, v62)), v36), _D14), _D13, vadd_f32(vmla_f32(v36, 0xC0000000C0000000, v62), v63)), _D14), _D13, vsub_f32(v62, v36))), (v64.i8[0] & 1) == 0) || (v68 = vceq_f32(v63, v37), (vand_s8(vdup_lane_s32(v64, 1), v68).u8[0] & 1) == 0) || (v69 = v176, (v68.i8[4] & 1) == 0))
    {
      v69 = vmla_f32(v36, _D10, vmla_f32(vmul_f32(vmla_f32(vmul_f32(vsub_f32(vmla_f32(v37, _D15, vsub_f32(v63, v62)), v36), _D10), _D13, vadd_f32(vmla_f32(v36, 0xC0000000C0000000, v62), v63)), _D10), _D13, vsub_f32(v62, v36)));
    }

    v70 = apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(v24, v23, v26, v56, v67);
    a4.n128_f32[0] = v70 + apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(v24, v23, v56, v27, v69);
    if (a4.n128_f32[0] >= v191)
    {
      v36 = v188;
      v17 = v184;
      v37 = v185;
      v18.i32[0] = v183;
LABEL_66:
      v20 = v181;
      v19 = v182;
      goto LABEL_67;
    }

    v18.i32[0] = v183;
    v17 = v184;
    if (v193 < 0.0)
    {
      v36 = v188;
      v37 = v185;
      goto LABEL_66;
    }

    a7 = v192;
    v36 = v188;
    v37 = v185;
    v20 = v181;
    v19 = v182;
    if (v192.n128_f32[0] >= 0.0)
    {
      v51 = v56;
      v191 = a4.n128_f32[0];
      v177 = v193;
      v178 = v192.n128_f32[0];
    }

LABEL_67:
    v50 = v55 + 1;
    --v45;
  }

  while (v45);
  if (v51 == -1)
  {
    v8 = a2;
    v7 = a3;
    v38 = v173;
    v41 = v167;
    v42 = v166;
    goto LABEL_74;
  }

  v7 = a3;
  v38 = v173;
  v41 = v167;
  v42 = v166;
  if (v30 >= 3.0)
  {
    v8 = a2;
    v72 = v177;
    v71 = v178;
  }

  else
  {
    v8 = a2;
    v72 = v177;
    v71 = v178;
    if (v173 > 19)
    {
      goto LABEL_75;
    }

LABEL_74:
    v72 = sqrtf((v42 * v42) + (v41.f32[0] * v41.f32[0])) / 3.0;
    v71 = v72;
  }

LABEL_75:
  if (v7 > 19 || (v73 = sqrtf((v42 * v42) + (v41.f32[0] * v41.f32[0])), v74 = 1.0 / fmaxf(v73, 0.001), ((((v20 * (v42 * v74)) + (v18.f32[0] * (v41.f32[0] * v74))) * v71) + (v72 * ((v19 * (v42 * v74)) + (v17.f32[0] * (v41.f32[0] * v74))))) <= v73))
  {
    v198 = 0;
    a4.n128_u64[0] = 0;
    v189 = vmla_n_f32(v36, v17, v72);
    v186 = vmla_n_f32(v37, v187, v71);
    apple::vision::libraries::autotrace::ContourToPath::goodnessOfFit(v172, v26, v38, &v198 + 1, &v198, a4, 0.0, v189, v186);
    if (*(&v198 + 1) > *(this + 1) && v7 <= 19 && *&v198 > *(this + 2))
    {
      v38 = v12[11].i32[1];
      v26 = v12[1].i32[0];
      goto LABEL_102;
    }

    v12[4] = v189;
    v85 = v186;
    goto LABEL_116;
  }

  if (v38 > 29)
  {
    goto LABEL_102;
  }

  v75 = v73 / 3.0;
  v76 = vmla_n_f32(v36, v17, v75);
  v77 = vmla_n_f32(v37, v187, v75);
  v78 = vceq_f32(v36, v76);
  __asm
  {
    FMOV            V3.2S, #-3.0
    FMOV            V17.2S, #3.0
    FMOV            V1.2S, #0.75
    FMOV            V5.2S, #0.25
  }

  if ((v78.i8[0] & 1) == 0 || (v83 = vceq_f32(v77, v37), (vand_s8(vdup_lane_s32(v78, 1), v83).u8[0] & 1) == 0) || (v83.i8[4] & 1) == 0)
  {
    v84 = vmla_f32(v36, _D5, vmla_f32(vmul_f32(vmla_f32(vmul_f32(vsub_f32(vmla_f32(v37, _D3, vsub_f32(v77, v76)), v36), _D5), _D17, vadd_f32(vmla_f32(v36, 0xC0000000C0000000, v76), v77)), _D5), _D17, vsub_f32(v76, v36)));
    if (v78.i8[0])
    {
      goto LABEL_88;
    }

    goto LABEL_91;
  }

  v84 = vmla_f32(v36, _D5, v41);
LABEL_88:
  v86 = vceq_f32(v77, v37);
  if ((vand_s8(vdup_lane_s32(v78, 1), v86).u8[0] & 1) == 0 || (v86.i8[4] & 1) == 0)
  {
LABEL_91:
    v87 = vmla_f32(v36, 0x3F0000003F000000, vmla_f32(vmul_f32(vmla_f32(vmul_f32(vsub_f32(vmla_f32(v37, _D3, vsub_f32(v77, v76)), v36), 0x3F0000003F000000), _D17, vadd_f32(vmla_f32(v36, 0xC0000000C0000000, v76), v77)), 0x3F0000003F000000), _D17, vsub_f32(v76, v36)));
    if (v78.i8[0])
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v87 = vmla_f32(v36, 0x3F0000003F000000, v41);
LABEL_92:
  v88 = vceq_f32(v77, v37);
  if ((vand_s8(vdup_lane_s32(v78, 1), v88).u8[0] & 1) == 0 || (v88.i8[4] & 1) == 0)
  {
LABEL_94:
    v41 = vmla_f32(vmul_f32(vmla_f32(vmul_f32(vsub_f32(vmla_f32(v37, _D3, vsub_f32(v77, v76)), v36), _D1), _D17, vadd_f32(vmla_f32(v36, 0xC0000000C0000000, v76), v77)), _D1), _D17, vsub_f32(v76, v36));
  }

  v194 = v77;
  v190 = vmla_f32(v36, _D1, v41);
  v89 = apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(v24, v23, v26, v27, v84);
  v90 = apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(v24, v23, v26, v27, v87);
  v91 = apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(v24, v23, v26, v27, v190);
  v92 = *(this + 2) * *(this + 2);
  if (v89 < v92 && v90 < v92 && v91 < v92)
  {
    v12[4] = v76;
    v85 = v194;
LABEL_116:
    v12[9] = v85;
    return;
  }

LABEL_102:
  v95 = v38 + (v38 >> 31);
  v96 = v26 + v38 / 2;
  v97 = v96;
  v174 = v38;
  if (v96 >= v24)
  {
    v99 = v96 - v24;
    LODWORD(v98) = v97 - v24;
    if (v97 - v24 >= v24)
    {
      LODWORD(v98) = v97;
      if (v24)
      {
        v98 = v99 % v24;
      }
    }
  }

  else if (v96 < 0)
  {
    v100 = v96 + v24;
    LODWORD(v98) = v97 + v24;
    if (v97 + v24 < 0)
    {
      LODWORD(v98) = v97;
      if (v24)
      {
        v98 = v100 % v24 + v24;
      }
    }
  }

  else
  {
    LODWORD(v98) = v26 + v38 / 2;
  }

  if (v26 != v98 && v12[7].i32[0] != v98)
  {
    v101 = *(this + 19);
    v102 = *(this + 20);
    if (v101 < v102)
    {
      v101[4] = 0u;
      v101[5] = 0u;
      v101[2] = 0u;
      v101[3] = 0u;
      *v101 = 0u;
      v101[1] = 0u;
      v103 = (v101 + 6);
      goto LABEL_129;
    }

    v104 = *(this + 18);
    v105 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v104) >> 5);
    v106 = v105 + 1;
    if (v105 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_174;
    }

    v107 = 0xAAAAAAAAAAAAAAABLL * ((v102 - v104) >> 5);
    if (2 * v107 > v106)
    {
      v106 = 2 * v107;
    }

    if (v107 >= 0x155555555555555)
    {
      v108 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v108 = v106;
    }

    if (v108)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::Curve>>(v108);
    }

    v109 = v7;
    v110 = 96 * v105;
    *(v110 + 64) = 0u;
    *(v110 + 80) = 0u;
    *(v110 + 32) = 0u;
    *(v110 + 48) = 0u;
    *v110 = 0u;
    *(v110 + 16) = 0u;
    v103 = (96 * v105 + 96);
    v111 = *(this + 18);
    v112 = *(this + 19) - v111;
    v113 = (96 * v105 - v112);
    memcpy(v113, v111, v112);
    v114 = *(this + 18);
    *(this + 18) = v113;
    *(this + 19) = v103;
    *(this + 20) = 0;
    if (v114)
    {
      operator delete(v114);
    }

    v7 = v109;
LABEL_129:
    *(this + 19) = v103;
    v115 = *(this + 18);
    v116 = (v115 + 96 * v8);
    v117 = *(this + 20);
    if (v103 < v117)
    {
      if (v116 == v103)
      {
        v134 = *(v116 + 1);
        *v103 = *v116;
        *(v103 + 1) = v134;
        v135 = *(v116 + 2);
        v136 = *(v116 + 3);
        v137 = *(v116 + 5);
        *(v103 + 4) = *(v116 + 4);
        *(v103 + 5) = v137;
        *(v103 + 2) = v135;
        *(v103 + 3) = v136;
        *(this + 19) = v103 + 96;
      }

      else
      {
        v118 = v116 + 96;
        v119 = v103;
        if (v103 >= 0x60)
        {
          v119 = v103 + 96;
          v120 = *(v103 - 5);
          *v103 = *(v103 - 6);
          *(v103 + 1) = v120;
          v121 = *(v103 - 4);
          v122 = *(v103 - 3);
          v123 = *(v103 - 1);
          *(v103 + 4) = *(v103 - 2);
          *(v103 + 5) = v123;
          *(v103 + 2) = v121;
          *(v103 + 3) = v122;
        }

        *(this + 19) = v119;
        if (v103 != v118)
        {
          memmove(v116 + 96, v116, v103 - v118);
          v119 = *(this + 19);
        }

        v124 = 96;
        if (v119 <= v116)
        {
          v124 = 0;
        }

        v125 = &v116[v124];
        v126 = *(v125 + 1);
        *v116 = *v125;
        *(v116 + 1) = v126;
        v127 = *(v125 + 2);
        v128 = *(v125 + 3);
        v129 = *(v125 + 5);
        *(v116 + 4) = *(v125 + 4);
        *(v116 + 5) = v129;
        *(v116 + 2) = v127;
        *(v116 + 3) = v128;
      }

      goto LABEL_151;
    }

    v130 = 0xAAAAAAAAAAAAAAABLL * (&v103[-v115] >> 5) + 1;
    if (v130 > 0x2AAAAAAAAAAAAAALL)
    {
LABEL_174:
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v170 = v7;
    v131 = 0xAAAAAAAAAAAAAAABLL * ((v117 - v115) >> 5);
    v132 = 2 * v131;
    if (2 * v131 <= v130)
    {
      v132 = v130;
    }

    if (v131 >= 0x155555555555555)
    {
      v133 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v133 = v132;
    }

    if (v133)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::Curve>>(v133);
    }

    v138 = 96 * v8;
    if (!v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::Curve>>(1uLL);
    }

    v139 = *(v116 + 1);
    *v138 = *v116;
    *(96 * v8 + 0x10) = v139;
    v140 = *(v116 + 2);
    v141 = *(v116 + 3);
    v142 = *(v116 + 5);
    *(96 * v8 + 0x40) = *(v116 + 4);
    *(96 * v8 + 0x50) = v142;
    *(96 * v8 + 0x20) = v140;
    *(96 * v8 + 0x30) = v141;
    memcpy((v138 + 96), v116, *(this + 19) - v116);
    v143 = *(this + 18);
    v195 = (v138 + 96 + *(this + 19) - v116);
    *(this + 19) = v116;
    v144 = (v138 - (v116 - v143));
    memcpy(v144, v143, v116 - v143);
    v145 = *(this + 18);
    *(this + 18) = v144;
    *(this + 152) = v195;
    v7 = v170;
    if (v145)
    {
      operator delete(v145);
    }

LABEL_151:
    v146 = v95 >> 1;
    v147 = v174 - (v95 >> 1);
    v148 = *(this + 18) + 96 * v8;
    *(v148 + 52) = -1;
    *(v148 + 56) = v98;
    *(v148 + 92) = v95 >> 1;
    *(v148 + 100) = -1;
    *(v148 + 104) = v98;
    *(v148 + 112) = *(v23 + 8 * v98);
    *(v148 + 188) = v147;
    if (v95 >> 1 >= 6)
    {
      v146 = 6;
    }

    v149 = v98 - v146;
    v150 = v98 - v146;
    v151 = v7;
    if (v149 >= v24)
    {
      v153 = v149 - v24;
      LODWORD(v152) = v150 - v24;
      if (v150 - v24 >= v24)
      {
        LODWORD(v152) = v150;
        if (v24)
        {
          v152 = v153 % v24;
        }
      }
    }

    else if ((v150 & 0x80000000) != 0)
    {
      v154 = v149 + v24;
      LODWORD(v152) = v150 + v24;
      if (v150 + v24 < 0)
      {
        LODWORD(v152) = v150;
        if (v24)
        {
          v152 = v154 % v24 + v24;
        }
      }
    }

    else
    {
      LODWORD(v152) = v149;
    }

    if (v147 >= 7)
    {
      v147 = 7;
    }

    LODWORD(v155) = v147 + v98;
    v156 = v155;
    if (v155 >= v24)
    {
      LODWORD(v155) = v155 - v24;
      if (v156 - v24 >= v24)
      {
        LODWORD(v155) = v156;
        if (v24)
        {
          v155 = (v156 - v24) % v24;
        }
      }
    }

    else if ((v155 & 0x80000000) != 0)
    {
      LODWORD(v155) = v155 + v24;
      if (v156 + v24 < 0)
      {
        LODWORD(v155) = v156;
        if (v24)
        {
          v155 = (v156 + v24) % v24 + v24;
        }
      }
    }

    v197 = 0;
    v157 = v155 - v152;
    v158 = v24 & ((v155 - v152) >> 31);
    v159 = apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v196, *(this + 3), v152, v158 + v155 - v152);
    apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v159, &v199, &v197 + 1, &v197);
    v160 = v199;
    v161 = v197;
    apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v152, v158 + v157, v199, *&v197, v162);
    v164 = __sincosf_stret(v163 * 6.2832);
    *(v148 + 120) = __PAIR64__(LODWORD(v164.__sinval), LODWORD(v164.__cosval));
    *(v148 + 136) = v160;
    v165 = HIDWORD(v197);
    *(v148 + 140) = HIDWORD(v197);
    *(v148 + 144) = v161;
    *(v148 + 64) = __PAIR64__(LODWORD(v164.__sinval), LODWORD(v164.__cosval));
    *(v148 + 80) = v160;
    *(v148 + 84) = v165;
    *(v148 + 88) = v161;
    apple::vision::libraries::autotrace::ContourToPath::makeCurve(this, v171, v151 + 1);
    apple::vision::libraries::autotrace::ContourToPath::makeCurve(this, v8, v151 + 1);
  }
}

void sub_1A5F2AD44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::autotrace::Curve>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float apple::vision::libraries::autotrace::ContourToPath::squaredDistanceFromCurve(int a1, uint64_t a2, int a3, int a4, float32x2_t a5)
{
  v5 = a3 + 1;
  v6 = vsub_f32(a5, *(a2 + 8 * a3));
  v7 = COERCE_FLOAT(vmul_f32(v6, v6).i32[1]) + (v6.f32[0] * v6.f32[0]);
  while (1)
  {
    v8 = v5 >= a1 ? a1 : 0;
    v9 = v5 - v8;
    if (v9 == a4)
    {
      break;
    }

    v10 = vsub_f32(a5, *(a2 + 8 * v9));
    v11 = COERCE_FLOAT(vmul_f32(v10, v10).i32[1]) + (v10.f32[0] * v10.f32[0]);
    if (v11 < v7)
    {
      v7 = v11;
    }

    v5 = v9 + 1;
  }

  return v7;
}

void apple::vision::libraries::autotrace::ContourToPath::goodnessOfFit(int *a1, int a2, int a3, float *a4, float *a5, __n128 a6, float a7, float32x2_t a8, float32x2_t a9)
{
  v14 = *(a1 + 1);
  v15 = *a1;
  LODWORD(v16) = a3 + a2;
  v17 = a3 + a2;
  if (a3 + a2 >= v15)
  {
    v18 = v16 - v15;
    LODWORD(v16) = v16 - v15;
    if (v17 - v15 >= v15)
    {
      LODWORD(v16) = a3 + a2;
      if (v15)
      {
        v16 = v18 % v15;
      }
    }
  }

  else if ((v17 & 0x80000000) != 0)
  {
    v19 = v15 + v16;
    LODWORD(v16) = v15 + v16;
    if (v15 + v17 < 0)
    {
      LODWORD(v16) = a3 + a2;
      if (v15)
      {
        v16 = v19 % v15 + v15;
      }
    }
  }

  v20 = *(v14 + 8 * a2);
  v21 = *(v14 + 8 * v16);
  if (a3 < 3)
  {
    goto LABEL_25;
  }

  v22 = vsub_f32(a8, v20);
  v23 = vsub_f32(v21, a9);
  __asm { FMOV            V6.2S, #3.0 }

  v29 = vmul_f32(vadd_f32(vmla_f32(v20, _D6, vadd_f32(a8, a9)), v21), 0x3E0000003E000000);
  v30 = vsub_f32(vadd_f32(v23, a8), v20);
  __asm { FMOV            V4.2S, #0.25 }

  v32 = a2 + 1 >= v15 ? *a1 : 0;
  v33 = a2 + 1 - v32;
  v34 = *(v14 + 8 * v33);
  v35 = vmul_f32(v30, _D4);
  v36 = a3 - 2;
  v37 = -1;
  v38 = 1.0e12;
  do
  {
    if (v33 + 1 >= v15)
    {
      v39 = *a1;
    }

    else
    {
      v39 = 0;
    }

    v40 = v33 + 1 - v39;
    v41 = *(v14 + 8 * v40);
    v42 = v41.f32[1];
    v43 = vsub_f32(v41, v34).f32[0];
    v44 = ((v42 - v34.f32[1]) * (v42 - v34.f32[1])) + (v43 * v43);
    v45 = fabsf(((((v42 - v34.f32[1]) * v29.f32[0]) - (v43 * v29.f32[1])) + (v41.f32[0] * v34.f32[1])) - (v34.f32[0] * v42)) / sqrtf(v44);
    v34.f32[0] = vsub_f32(v29, v34).f32[0];
    v34.f32[0] = sqrtf(((v29.f32[1] - v34.f32[1]) * (v29.f32[1] - v34.f32[1])) + (v34.f32[0] * v34.f32[0]));
    if (v44 != 0.0)
    {
      v34.f32[0] = v45;
    }

    if (v34.f32[0] < v38)
    {
      v37 = v33;
      v38 = v34.f32[0];
    }

    v34 = *(v14 + 8 * v40);
    v33 = v33 + 1 - v39;
    --v36;
  }

  while (v36);
  if (v37 == -1)
  {
LABEL_25:
    v50 = vsub_f32(v21, v20);
    v48 = sqrtf(COERCE_FLOAT(vmul_f32(v50, v50).i32[1]) + (v50.f32[0] * v50.f32[0]));
    v49 = fmaxf(a6.n128_f32[0], a7);
  }

  else
  {
    v51 = COERCE_DOUBLE(vmla_f32(v29, 0x3F0000003F000000, v35));
    v46 = COERCE_DOUBLE(vmla_f32(v21, 0xBF000000BF000000, v23));
    v47 = apple::vision::libraries::autotrace::ContourToPath::goodnessOfFit(a1, a6, v38, COERCE_DOUBLE(vmla_f32(v20, 0x3F0000003F000000, v22)), COERCE_DOUBLE(vmla_f32(v29, 0xBF000000BF000000, v35)));
    v47.n128_f32[0] = v38;
    apple::vision::libraries::autotrace::ContourToPath::goodnessOfFit(a1, v47, a7, v51, v46);
    v48 = 0.0 + 0.0;
    v49 = fmaxf(0.0, 0.0);
  }

  *a4 = v48;
  *a5 = v49;
}

float apple::vision::libraries::autotrace::ContourToPath::computeCurveStartTangentAtCorner(apple::vision::libraries::autotrace::ContourToPath *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0.0;
  v6 = 0;
  v5 = 0;
  apple::vision::libraries::autotrace::ContourToPath::findTangentForwardsFrom(a1, *(a2 + 8), *(a2 + 56), &v6, &v5, &v8, &v7, &v6 + 1);
  v3 = HIDWORD(v6);
  *(a2 + 24) = __PAIR64__(v5, v6);
  *(a2 + 40) = v8;
  result = v7;
  *(a2 + 44) = v7;
  *(a2 + 48) = v3;
  return result;
}

void apple::vision::libraries::autotrace::ContourToPath::findTangentForwardsFrom(apple::vision::libraries::autotrace::ContourToPath *this, int a2, int a3, float *a4, float *a5, BOOL *a6, float *a7, float *a8)
{
  v8 = a7;
  v126[0] = 0;
  v125 = 0;
  v14 = *(this + 3);
  v15 = *(v14 + 1);
  v16 = *v14;
  v17 = a2 + 1;
  if (v17 >= v16)
  {
    v18 = *v14;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 - v18;
  v20 = *(v15 + 8 * a2);
  v21 = vsub_f32(*(v15 + 8 * v19), v20);
  v22 = fabsf(*v21.i32);
  v23 = *&v21.i32[1];
  v24 = fabsf(*&v21.i32[1]);
  if (v22 <= (v24 * 4.0))
  {
    if (v24 <= (v22 * 4.0))
    {
      v119 = a5;
      v37 = a6;
    }

    else
    {
      v29 = *v21.i32;
      v25 = a3;
      if (*v21.i32 >= 0.0)
      {
        if (v19 != a3)
        {
          v25 = v19;
          do
          {
            v38 = v25 + 1;
            if (v38 >= v16)
            {
              v39 = *v14;
            }

            else
            {
              v39 = 0;
            }

            v25 = v38 - v39;
            v29 = COERCE_FLOAT(*(v15 + 8 * v25)) - v20.f32[0];
          }

          while (v29 <= 1.0 && v25 != a3);
        }

        if (v29 > 1.0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v19 != a3)
        {
          v25 = v19;
          do
          {
            v30 = v25 + 1;
            if (v30 >= v16)
            {
              v31 = *v14;
            }

            else
            {
              v31 = 0;
            }

            v25 = v30 - v31;
            v29 = COERCE_FLOAT(*(v15 + 8 * v25)) - v20.f32[0];
          }

          while (v29 >= -1.0 && v25 != a3);
        }

        if (v29 < -1.0)
        {
          goto LABEL_56;
        }
      }

      v119 = a5;
      v37 = a6;
      *v21.i32 = v29;
    }
  }

  else
  {
    if (*&v21.i32[1] >= 0.0)
    {
      v33 = a3;
      if (v19 != a3)
      {
        v33 = v19;
        do
        {
          v34 = v33 + 1;
          if (v34 >= v16)
          {
            v35 = *v14;
          }

          else
          {
            v35 = 0;
          }

          v33 = v34 - v35;
          v23 = *(v15 + 4 + 8 * v33) - v20.f32[1];
        }

        while (v23 <= 1.0 && v33 != a3);
      }

      v25 = v33;
      if (v23 > 1.0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v25 = a3;
      if (v19 != a3)
      {
        v25 = v19;
        do
        {
          v26 = v25 + 1;
          if (v26 >= v16)
          {
            v27 = *v14;
          }

          else
          {
            v27 = 0;
          }

          v25 = v26 - v27;
          v23 = *(v15 + 4 + 8 * v25) - v20.f32[1];
        }

        while (v23 >= -1.0 && v25 != a3);
      }

      if (v23 < -1.0)
      {
LABEL_56:
        v41 = v25 - a2;
        if (v41 >= -1)
        {
          v42 = 0;
        }

        else
        {
          v42 = *v14;
        }

        v43 = v41 + v42;
        v44 = a4;
        v45 = a8;
        apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v123, v14, a2, v41 + v42 + 1);
        apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v123, v126, &v125 + 1, &v125);
        v46 = v126[0];
        v47 = v125;
        apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), a2, v43 + 1, v126[0], *&v125, v48);
        v50 = __sincosf_stret(v49 * 6.2832);
        *v44 = v50.__cosval;
        *a5 = v50.__sinval;
        *a6 = v46;
        *v8 = *(&v125 + 1);
        *v45 = v47;
        return;
      }
    }

    v119 = a5;
    v37 = a6;
    *&v21.i32[1] = v23;
  }

  v51 = (v16 & ((a3 - a2) >> 31)) + a3 - a2;
  if (v51 > 10)
  {
    v115 = v21;
    v116 = a4;
    v118 = a8;
    apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v123, v14, a2, 10);
    apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v123, v126, &v125 + 1, &v125);
    v52 = v126[0];
    v53 = HIDWORD(v125);
    v54 = *&v125;
    v55 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(v123, v126[0], *(&v125 + 1), *&v125);
    apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), a2, 10, v52, v54, v56);
    v58 = v57;
    if (v55 < apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v59, v57, v60, v61, v62, v63, v64, v65, v66))
    {
      if (v51 < 0x15 || (apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v121, *(this + 3), a2, 20), v123[2] = v121[2], v123[3] = v121[3], v124 = v122, v123[0] = v121[0], v123[1] = v121[1], apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v123, v126, &v125 + 1, &v125), v52 = v126[0], v53 = HIDWORD(v125), v54 = *&v125, v67 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(v123, v126[0], *(&v125 + 1), *&v125), apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), a2, 20, v52, v54, v68), v58 = v69, v67 < apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v70, v69, v71, v72, v73, v74, v75, v76, v77)))
      {
        v78 = __sincosf_stret(v58 * 6.2832);
        *v116 = v78.__cosval;
        *v119 = v78.__sinval;
        *v37 = v52;
        *a7 = v53;
        *v118 = v54;
        return;
      }
    }

    v8 = a7;
    a8 = v118;
    a4 = v116;
    v21 = v115;
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  do
  {
    v82 = v79 + a2;
    v83 = v82 - v16;
    if (v82 >= v16)
    {
      if (v83 >= v16)
      {
        v85 = v16 == 0;
      }

      else
      {
        LODWORD(v82) = v79 + a2 - v16;
        v85 = 1;
      }

      if (!v85)
      {
        v82 = v83 % v16;
      }
    }

    else if (v82 < 0)
    {
      v84 = v82 + v16;
      if (v82 + v16 < 0 == __OFADD__(v82, v16))
      {
        LODWORD(v82) = v82 + v16;
      }

      if (v84 < 0 && v16)
      {
        v82 = v84 % v16 + v16;
      }
    }

    if (v82 == a3)
    {
      v86 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 8 * v82;
      v89 = v82;
      while (1)
      {
        v90 = v89 + 1;
        v91 = v89 + 1 >= v16 ? v16 : 0;
        v89 = v90 - v91;
        v86 = v87 + 1;
        v21 = vsub_f32(*(v15 + 8 * v89), *(v15 + 8 * v82));
        v92 = fabsf(*v21.i32);
        v93 = fabsf(*&v21.i32[1]);
        if (v92 == 2.0 || v93 == 2.0)
        {
          break;
        }

        v96 = v93 != 1.0 && v92 != 1.0;
        v97 = v96 | v80;
        v80 |= v97 ^ 1;
        if (v97)
        {
          v98 = -1;
        }

        else
        {
          v98 = 0;
        }

        v81 = vbsl_s8(vdup_n_s32(v98), v81, v21);
        v87 = v86;
        if (v89 == a3)
        {
          goto LABEL_106;
        }
      }

      if (v89 != a3 && v87 < 4)
      {
        v102 = 1;
        goto LABEL_110;
      }
    }

LABEL_106:
    ++v79;
  }

  while (v79 != 3);
  if ((v80 & 1) == 0)
  {
    v100 = *(v15 + 8 * a2);
    v101 = vsub_f32(*(v15 + 8 * v19), v100);
    LODWORD(v82) = a2;
    goto LABEL_111;
  }

  v102 = 0;
  v88 = 8 * v82;
LABEL_110:
  v101 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v102), 0x1FuLL)), v21, v81);
  v100 = *(v15 + v88);
LABEL_111:
  v103 = 1.0 / fmaxf(sqrtf(vmuls_lane_f32(v101.f32[1], v101, 1) + (v101.f32[0] * v101.f32[0])), 0.001);
  v104 = v103 * v101.f32[0];
  v105 = vmuls_lane_f32(v103, v101, 1);
  if (v86 == 2)
  {
    v106 = v82 + 1;
    if (v106 >= v16)
    {
      v107 = v16;
    }

    else
    {
      v107 = 0;
    }

    v100 = vmul_f32(vadd_f32(v100, *(v15 + 8 * (v106 - v107))), 0x3F0000003F000000);
  }

  v108 = fabsf(v104) <= fabsf(v105);
  v109 = v104 / v105;
  v110 = 1;
  v111 = !v108;
  if (v108)
  {
    v112 = 0;
  }

  else
  {
    v110 = 0;
    v109 = v105 / v104;
    v112 = 1;
  }

  v120 = v100;
  v113 = *(&v120 | (4 * v111));
  v114 = *(&v120 | (4 * v110));
  *a4 = v104;
  *v119 = v105;
  *v37 = v112;
  *v8 = v113 - (v109 * v114);
  *a8 = v109;
}

float apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(apple::vision::libraries::autotrace *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a2 - (floorf(a2 * 4.0) * 0.25);
  if (v9 > 0.125)
  {
    v9 = 0.25 - v9;
  }

  v10 = v9 * 360.0;
  v11 = -2;
  for (i = &dword_1A604FA50; ; i += 2)
  {
    v11 += 2;
    if (v11 == 14)
    {
      break;
    }

    v13 = *(i - 2);
    v14 = *i;
    v15 = v14;
    if (v13 <= v10 && v10 <= v15)
    {
      v17 = (v10 - v13) / (v15 - v13);
      v18 = apple::vision::libraries::autotrace::SLDDT[(v11 & 0xFFFFFFFE) + 1];
      return v18 + (v17 * (apple::vision::libraries::autotrace::SLDDT[((v11 + 2) & 0xFFFFFFFELL) + 1] - v18));
    }
  }

  VNValidatedLog(4, @"%s: angle %.3f not found in straightLineDistanceDeltaToleranceAtAngle", a4, a5, a6, a7, a8, a9, "straightLineDistanceDeltaToleranceAtAngle");
  return 0.099;
}

void apple::vision::libraries::autotrace::ContourToPath::findTangentBackwardsFrom(apple::vision::libraries::autotrace::ContourToPath *this, int a2, int a3, float *a4, float *a5, BOOL *a6, float *a7, float *a8)
{
  v8 = a8;
  v127[0] = 0;
  v126 = 0;
  v13 = *(this + 3);
  v14 = *(v13 + 1);
  v15 = *v13;
  if (a2 <= 0)
  {
    v16 = *v13;
  }

  else
  {
    v16 = 0;
  }

  v17 = a2 + v16 - 1;
  v18 = *(v14 + 8 * a2);
  v19 = vsub_f32(*(v14 + 8 * v17), v18);
  v20 = fabsf(*v19.i32);
  v21 = *&v19.i32[1];
  v22 = fabsf(*&v19.i32[1]);
  if (v20 <= (v22 * 4.0))
  {
    if (v22 <= (v20 * 4.0))
    {
      v120 = a7;
      goto LABEL_37;
    }

    v27 = *v19.i32;
    v23 = a3;
    if (v17 != a3)
    {
      v23 = a2 + v16 - 1;
      do
      {
        if (v23 <= 0)
        {
          v28 = *v13;
        }

        else
        {
          v28 = 0;
        }

        v23 = v23 + v28 - 1;
        v29 = *(v14 + 8 * v23);
        v20 = vabds_f32(*&v29, v18.f32[0]);
      }

      while (v20 <= 1.0 && v23 != a3);
      v27 = *&v29 - v18.f32[0];
    }

    if (v20 <= 1.0)
    {
      v120 = a7;
      *v19.i32 = v27;
      goto LABEL_37;
    }

LABEL_31:
    v31 = a2 - v23;
    if (a2 - v23 >= -1)
    {
      v32 = 0;
    }

    else
    {
      v32 = *v13;
    }

    v33 = v31 + v32;
    v34 = a4;
    v35 = a6;
    v36 = a5;
    apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v124, v13, v23, v31 + v32 + 1);
    apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v124, v127, &v126 + 1, &v126);
    v37 = v127[0];
    v38 = v126;
    apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v23, v33 + 1, v127[0], *&v126, v39);
    v41 = __sincosf_stret(v40 * 6.2832);
    *v34 = v41.__cosval;
    *v36 = v41.__sinval;
    *v35 = v37;
    *a7 = *(&v126 + 1);
    *v8 = v38;
    return;
  }

  v23 = a3;
  if (v17 != a3)
  {
    v23 = a2 + v16 - 1;
    do
    {
      if (v23 <= 0)
      {
        v24 = *v13;
      }

      else
      {
        v24 = 0;
      }

      v23 = v23 + v24 - 1;
      v25 = *(v14 + 4 + 8 * v23);
      v22 = vabds_f32(v25, v18.f32[1]);
    }

    while (v22 <= 1.0 && v23 != a3);
    v21 = v25 - v18.f32[1];
  }

  if (v22 > 1.0)
  {
    goto LABEL_31;
  }

  v120 = a7;
  *&v19.i32[1] = v21;
LABEL_37:
  v42 = (v15 & ((a2 - a3) >> 31)) + a2 - a3;
  if (v42 > 10)
  {
    v43 = a2 - 10;
    v44 = a2 - 10;
    v118 = a6;
    v116 = a4;
    v117 = a5;
    v115 = v19;
    if (a2 - 10 >= v15)
    {
      v47 = v43 - v15;
      LODWORD(v46) = v44 - v15;
      if (v44 - v15 >= v15)
      {
        LODWORD(v46) = a2 - 10;
        if (v15)
        {
          v46 = v47 % v15;
        }
      }
    }

    else if (a2 > 9)
    {
      LODWORD(v46) = a2 - 10;
    }

    else
    {
      v45 = v15 + v43;
      LODWORD(v46) = v15 + v44;
      if (v15 + v44 < 0)
      {
        LODWORD(v46) = a2 - 10;
        if (v15)
        {
          v46 = v45 % v15 + v15;
        }
      }
    }

    apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v124, v13, v46, 10);
    apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v124, v127, &v126 + 1, &v126);
    v48 = v127[0];
    v49 = HIDWORD(v126);
    v50 = *&v126;
    v51 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(v124, v127[0], *(&v126 + 1), *&v126);
    apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v46, 10, v48, v50, v52);
    v54 = v53;
    if (v51 < apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v55, v53, v56, v57, v58, v59, v60, v61, v62))
    {
      v100 = v42 >= 0x15;
      v63 = a8;
      if (!v100)
      {
        goto LABEL_61;
      }

      v64 = a2 - 20;
      v65 = a2 - 20;
      if (a2 - 20 >= v15)
      {
        v68 = v64 - v15;
        LODWORD(v67) = v65 - v15;
        if (v65 - v15 >= v15)
        {
          LODWORD(v67) = a2 - 20;
          if (v15)
          {
            v67 = v68 % v15;
          }
        }
      }

      else if (a2 > 19)
      {
        LODWORD(v67) = a2 - 20;
      }

      else
      {
        v66 = v15 + v64;
        LODWORD(v67) = v15 + v65;
        if (v15 + v65 < 0)
        {
          LODWORD(v67) = a2 - 20;
          if (v15)
          {
            v67 = v66 % v15 + v15;
          }
        }
      }

      apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v122, *(this + 3), v67, 20);
      v124[2] = v122[2];
      v124[3] = v122[3];
      v125 = v123;
      v124[0] = v122[0];
      v124[1] = v122[1];
      apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v124, v127, &v126 + 1, &v126);
      v48 = v127[0];
      v49 = HIDWORD(v126);
      v50 = *&v126;
      v69 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(v124, v127[0], *(&v126 + 1), *&v126);
      apple::vision::libraries::autotrace::ATRAngleOfLine(**(this + 3), *(*(this + 3) + 8), v67, 20, v48, v50, v70);
      v54 = v71;
      if (v69 < apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v72, v71, v73, v74, v75, v76, v77, v78, v79))
      {
        v63 = a8;
LABEL_61:
        v80 = __sincosf_stret(v54 * 6.2832);
        *v116 = v80.__cosval;
        *v117 = v80.__sinval;
        *v118 = v48;
        *v120 = v49;
        *v63 = v50;
        return;
      }
    }

    a6 = v118;
    v8 = a8;
    a4 = v116;
    a5 = v117;
    v19 = v115;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  do
  {
    v84 = a2 - v81;
    v85 = v84 - v15;
    if (v84 >= v15)
    {
      if (v85 >= v15)
      {
        v87 = v15 == 0;
      }

      else
      {
        LODWORD(v84) = a2 - v81 - v15;
        v87 = 1;
      }

      if (!v87)
      {
        v84 = v85 % v15;
      }
    }

    else if (v84 < 0)
    {
      v86 = v84 + v15;
      if (v84 + v15 < 0 == __OFADD__(v84, v15))
      {
        LODWORD(v84) = v84 + v15;
      }

      if (v86 < 0 && v15)
      {
        v84 = v86 % v15 + v15;
      }
    }

    if (v84 == a3)
    {
      v88 = 0;
    }

    else
    {
      v89 = 0;
      v90 = 8 * v84;
      v91 = v84;
      while (1)
      {
        v92 = v91 <= 0 ? v15 : 0;
        v91 = v91 + v92 - 1;
        v88 = v89 + 1;
        v19 = vsub_f32(*(v14 + 8 * v84), *(v14 + 8 * v91));
        v93 = fabsf(*v19.i32);
        v94 = fabsf(*&v19.i32[1]);
        if (v93 == 2.0 || v94 == 2.0)
        {
          break;
        }

        v97 = v94 != 1.0 && v93 != 1.0;
        v98 = v97 | v82;
        v82 |= v98 ^ 1;
        if (v98)
        {
          v99 = -1;
        }

        else
        {
          v99 = 0;
        }

        v83 = vbsl_s8(vdup_n_s32(v99), v83, v19);
        v89 = v88;
        if (v91 == a3)
        {
          goto LABEL_102;
        }
      }

      v100 = v91 == a3 || v89 >= 4;
      if (!v100)
      {
        v103 = 1;
        goto LABEL_106;
      }
    }

LABEL_102:
    ++v81;
  }

  while (v81 != 3);
  if ((v82 & 1) == 0)
  {
    v101 = *(v14 + 8 * a2);
    v102 = vsub_f32(v101, *(v14 + 8 * v17));
    LODWORD(v84) = a2;
    goto LABEL_107;
  }

  v103 = 0;
  v90 = 8 * v84;
LABEL_106:
  v102 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v103), 0x1FuLL)), v19, v83);
  v101 = *(v14 + v90);
LABEL_107:
  v104 = vmul_n_f32(v102, 1.0 / fmaxf(sqrtf(COERCE_FLOAT(vmul_f32(v102, v102).i32[1]) + (v102.f32[0] * v102.f32[0])), 0.001));
  if (v88 == 2)
  {
    if (v84 <= 0)
    {
      v105 = v15;
    }

    else
    {
      v105 = 0;
    }

    v101 = vmul_f32(vadd_f32(v101, *(v14 + 8 * (v84 + v105 - 1))), 0x3F0000003F000000);
  }

  v106 = vabs_f32(v104);
  v107 = vcgt_f32(v106, vdup_lane_s32(v106, 1)).u8[0];
  v108 = vdup_lane_s32(v104, 1);
  if (v107)
  {
    v109 = 0;
    LODWORD(v110) = vdiv_f32(v108, v104).u32[0];
    v111 = 1;
    v112 = 1;
  }

  else
  {
    v111 = 0;
    v112 = 0;
    LODWORD(v110) = vdiv_f32(v104, v108).u32[0];
    v109 = 1;
  }

  v121 = v101;
  v113 = *(&v121 | (4 * v111));
  v114 = *(&v121 | (4 * v109));
  *a4 = v104.f32[0];
  *a5 = v104.f32[1];
  *a6 = v112;
  *v120 = v113 - (v114 * v110);
  *v8 = v110;
}

apple::vision::libraries::autotrace::CornerList *apple::vision::libraries::autotrace::CornerList::findCorner(apple::vision::libraries::autotrace::CornerList *this, apple::vision::libraries::autotrace::CornerList *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*this <= *(this + 1))
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  v9 = *this - v8;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - this) >> 2);
  v11 = *(a2 - 2);
  if (v11 < *(a2 - 3) && v10 > 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (a4 + a3 <= v13 + v11)
  {
    v14 = a4 + a3;
  }

  else
  {
    v14 = a4;
  }

  if (a4 - a3 >= v9)
  {
    v14 = a4 - a3;
  }

  if (v10 >= 1)
  {
    v15 = 0;
    v16 = a3 >> 1;
    do
    {
      v17 = (v10 + v15) >> 1;
      v18 = (this + 12 * v17);
      if ((v10 + v15) > 1)
      {
        v22 = *v18;
        v23 = v18[1];
        if (*v18 + v16 >= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        a4 = (v23 - v24);
        a6 = (v23 + a3);
        if (*v18 - v16 > v23)
        {
          v20 = v23 + a3;
        }

        else
        {
          v20 = a4;
        }
      }

      else
      {
        v19 = *v18;
        v20 = v18[1];
        if (v20 + v16 >= *v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = a3;
        }

        a4 = (v19 - v21);
        a6 = (v19 + a3);
        if (v20 - v16 > v19)
        {
          v22 = v19 + a3;
        }

        else
        {
          v22 = a4;
        }
      }

      if (v20 >= v14)
      {
        LODWORD(v10) = (v10 + v15) >> 1;
        if (v22 <= v14)
        {
          return v18;
        }
      }

      else
      {
        v15 = v17 + 1;
      }
    }

    while (v15 < v10);
  }

  while (this != a2)
  {
    if (*(this + 2) == v14)
    {
      return this;
    }

    this = (this + 12);
  }

  if (a5)
  {
    VNValidatedLog(4, @"%s: find corner could not find index", a3, a4, a5, a6, a7, a8, "findCorner");
  }

  return 0;
}

float apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(apple::vision::libraries::autotrace::ContourToPath *this, int a2, int a3, float *a4, float *a5)
{
  v5 = *(this + 7);
  v6 = *(v5 + 4 * a2);
  v7 = 0.0;
  v8 = v6;
  v9 = v6;
  do
  {
    v10 = *(v5 + 4 * a2) - rintf(*(v5 + 4 * a2) - v6);
    if (v10 >= v8)
    {
      if (v10 > v9)
      {
        v9 = v10;
      }
    }

    else
    {
      v8 = v10;
    }

    v7 = v7 + *(*(this + 8) + 4 * a2);
    v11 = a2 + 1;
    if (a2 + 1 >= **(this + 3))
    {
      v12 = **(this + 3);
    }

    else
    {
      v12 = 0;
    }

    a2 = v11 - v12;
  }

  while (v11 - v12 != a3);
  *a4 = v7;
  result = v9 - v8;
  *a5 = v9 - v8;
  return result;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::cutUpCurve(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v14 = **(a1 + 24);
  v15 = a4 - a2;
  if (a4 == a2)
  {
    if (*(a1 + 128) - *(a1 + 120) >= 9uLL)
    {
      VNValidatedLog(4, @"%s: zero length curve in cutUpCurve at point index %d", a3, a4, a5, a6, a7, a8, "cutUpCurve");
      return 1;
    }
  }

  else if (v15 >= 0xFFFFFFFE && v14 >= 101 && *(a1 + 128) - *(a1 + 120) >= 0x11uLL)
  {
    VNValidatedLog(4, @"%s: cutUpCurve with reversed point indexes %d and %d", a3, a4, a5, a6, a7, a8, "cutUpCurve");
    return 1;
  }

  v47 = 0.0;
  if (v15 <= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  apple::vision::libraries::autotrace::ContourToPath::computeAngleSumAndRange(a1, a2, a4, &v47, &v46);
  if (fabsf(v47) <= 0.16667)
  {
    return 1;
  }

  v17 = v16 + v15;
  v18 = *(a1 + 72);
  v19 = fabsf(*(v18 + 4 * a2));
  v20 = a2;
  LODWORD(v21) = a2;
  v22 = v19;
  do
  {
    v23 = fabsf(*(v18 + 4 * v20));
    v19 = v19 + v23;
    if (v23 <= v22)
    {
      v21 = v21;
    }

    else
    {
      v21 = v20;
    }

    if (v23 > v22)
    {
      v22 = v23;
    }

    v24 = v20 + 1;
    if (v24 >= v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    v20 = v24 - v25;
  }

  while (v20 != a4);
  v26 = v22 / (v19 / v17);
  v27 = v26 < 2.2 || v21 == a2;
  if (v27 || v26 <= 1.9)
  {
    goto LABEL_27;
  }

  LODWORD(v43) = v21 - a2;
  v44 = v21 - a2;
  if (v21 - a2 >= v14)
  {
    LODWORD(v43) = v43 - v14;
    if (v44 - v14 >= v14)
    {
      LODWORD(v43) = v21 - a2;
      if (v14)
      {
        v43 = (v44 - v14) % v14;
      }
    }
  }

  else if ((v44 & 0x80000000) != 0)
  {
    LODWORD(v43) = v43 + v14;
    if (v44 + v14 < 0)
    {
      LODWORD(v43) = v21 - a2;
      if (v14)
      {
        v43 = (v44 + v14) % v14 + v14;
      }
    }
  }

  if (v17 / 5 >= v43 || 4 * v17 / 5 <= v43)
  {
LABEL_27:
    if (a2 + 1 >= v14)
    {
      v28 = v14;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 + 1 - v28;
    if (v29 == a4)
    {
      return 1;
    }

    v30 = a2;
    while (1)
    {
      v31 = v30;
      v30 = v29;
      v32 = *(a1 + 56);
      v33 = *(v32 + 4 * v31);
      v34 = *(v32 + 4 * v30) - rintf(*(v32 + 4 * v30) - v33);
      v35 = ((v31 == a2) & a3) != 0 ? 8 : 24;
      if (v33 <= 0.0 && v34 >= 0.0 || v33 >= 0.0 && v34 <= 0.0 || (v33 <= 0.25 ? (v36 = v34 < 0.25) : (v36 = 1), !v36 || (v33 >= 0.25 ? (v37 = v34 > 0.25) : (v37 = 1), !v37 || (v33 <= 0.5 ? (v38 = v34 < 0.5) : (v38 = 1), !v38 || (v33 >= 0.5 ? (v39 = v34 > 0.5) : (v39 = 1), !v39 || (v33 <= 0.75 ? (v40 = v34 < 0.75) : (v40 = 1), !v40 || v33 >= 0.75 && v34 <= 0.75 || v33 <= 1.0 && v34 >= 1.0 || v33 >= 1.0 && v34 <= 1.0))))))
      {
        result = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v31, v35, a6);
        if (!result)
        {
          break;
        }
      }

      if (v30 + 1 >= v14)
      {
        v42 = v14;
      }

      else
      {
        v42 = 0;
      }

      v29 = v30 + 1 - v42;
      if (v29 == a4)
      {
        return 1;
      }
    }
  }

  else
  {
    result = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v21, 16, a6);
    if (result)
    {
      result = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v21, 8, a6);
      if (result)
      {
        v45 = v21 == a4 ? a5 : 0;
        result = apple::vision::libraries::autotrace::ContourToPath::cutUpCurve(a1, a2, a3, v21, v45, a6);
        if (result)
        {
          return (apple::vision::libraries::autotrace::ContourToPath::cutUpCurve(a1, v21, 0, a4, a5, a6) & 1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::indexOfNewInterestingPointAtPointIndex(int a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v5 = (a3 - a2) >> 3;
  if (v5 < 1)
  {
    result = 0;
  }

  else
  {
    LODWORD(result) = 0;
    v7 = (a3 - a2) >> 3;
    do
    {
      v8 = (v7 + result) >> 1;
      v9 = *(a2 + 8 * v8);
      if (v9 < a1)
      {
        result = v8 + 1;
      }

      else
      {
        result = result;
      }

      if (v9 >= a1)
      {
        LODWORD(v7) = v8;
      }
    }

    while (result < v7);
  }

  if (v5 > result && *(a2 + 8 * result) == a1)
  {
    *a4 = 1;
  }

  else if (v5 == result)
  {
    return 0;
  }

  else
  {
    return result;
  }

  return result;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(signed int a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = &v5[-*a3] >> 3;
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    LODWORD(v8) = 0;
    v9 = &v5[-*a3] >> 3;
    do
    {
      v10 = (v9 + v8) >> 1;
      v11 = *&v6[8 * v10];
      if (v11 < a1)
      {
        v8 = v10 + 1;
      }

      else
      {
        v8 = v8;
      }

      if (v11 >= a1)
      {
        LODWORD(v9) = v10;
      }
    }

    while (v8 < v9);
  }

  v12 = &v6[8 * v8];
  if (v7 > v8 && *v12 == a1)
  {
    *(v12 + 1) |= a2;
  }

  else
  {
    v13 = a3[2];
    if (v5 >= v13)
    {
      v16 = v7 + 1;
      if ((v7 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v17 = v13 - v6;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v18);
      }

      v19 = (8 * v8);
      if (!v8)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
      }

      *v19 = a1;
      *(8 * v8 + 4) = a2;
      memcpy(v19 + 2, v12, a3[1] - v12);
      v20 = *a3;
      v25 = v19 + a3[1] - v12 + 8;
      a3[1] = v12;
      v21 = v19 - (v12 - v20);
      memcpy(v21, v20, v12 - v20);
      v22 = *a3;
      *a3 = v21;
      *(a3 + 1) = v25;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else if (v12 == v5)
    {
      *v5 = a1;
      *(v5 + 1) = a2;
      a3[1] = v5 + 8;
    }

    else
    {
      v14 = v12 + 8;
      if (v5 < 8)
      {
        v15 = a3[1];
      }

      else
      {
        *v5 = *(v5 - 1);
        v15 = v5 + 8;
      }

      v23 = a1 | (a2 << 32);
      a3[1] = v15;
      if (v5 != v14)
      {
        memmove(v12 + 8, v12, v5 - v14);
      }

      *v12 = v23;
    }

    return *a3 + 8 * v8;
  }

  return v12;
}

void sub_1A5F2C6AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL apple::vision::libraries::autotrace::ContourToPath::outputLineAtIndex(uint64_t a1, int a2, int a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  v9 = a3;
  v12 = *(a1 + 24);
  v13 = *v12;
  v132 = a2;
  v14 = a3 + a2;
  v15 = a3 + a2;
  if (v14 >= v13)
  {
    v17 = v14 - v13;
    if (v13)
    {
      v15 = (v15 - v13) % v13;
    }

    if (v17 >= v13)
    {
      LODWORD(v16) = v15;
    }

    else
    {
      LODWORD(v16) = v17;
    }
  }

  else
  {
    LODWORD(v16) = v14;
    if (v14 < 0)
    {
      v16 = v13 + v14;
      if (v16 < 0)
      {
        if (v13)
        {
          v16 = v16 % v13 + v13;
        }

        else
        {
          LODWORD(v16) = v14;
        }
      }
    }
  }

  v147 = 0;
  v148 = 0;
  apple::vision::libraries::autotrace::ATRRecord::ATRRecord(&v138, v12, v132, a3);
  apple::vision::libraries::autotrace::ATRRecord::LinearRegression(&v138, &v148, &v147 + 1, &v147);
  v18 = v148;
  v19 = *&v147;
  v20 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(&v138, v148, *(&v147 + 1), *&v147);
  apple::vision::libraries::autotrace::ATRAngleOfLine(**(a1 + 24), *(*(a1 + 24) + 8), v132, v9, v18, v19, v21);
  v31 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v22, v30, v23, v24, v25, v26, v27, v28, v29);
  v32 = v31;
  if (v9 < 51 || v20 <= v31)
  {
    v87 = v132;
    goto LABEL_93;
  }

  v134 = v13;
  v131 = a5;
  v137 = 0;
  v135 = 0.0;
  v136 = 0.0;
  v33 = v9 - 1;
  v34 = v132;
  v133 = v16;
  v35 = v16;
  do
  {
    v36 = v9;
    v37 = v33;
    v38 = *(v138 + 1);
    v39 = *v138;
    v40 = v140;
    _Q3 = vcvtq_f64_f32(v38[v139]);
    v42 = vsubq_f64(v141, _Q3);
    v43 = vmlsq_f64(v142, _Q3, _Q3);
    v141 = v42;
    v142 = v43;
    _D4 = _Q3.f64[1];
    __asm { FMLS            D1, D4, V3.D[0] }

    v143 = _D1;
    if (v139 + 1 >= v39)
    {
      v50 = v39;
    }

    else
    {
      v50 = 0;
    }

    v51 = v139 + 1 - v50;
    v52 = v140 - 1;
    v139 = v51;
    --v140;
    v53 = &v38[v51];
    _VF = __OFSUB__(v40, 2);
    v54 = v40 - 2;
    if (v54 < 0 == _VF)
    {
      v55 = 0;
      v56 = &v38[v51];
      v57 = v51;
      do
      {
        v58 = *v56;
        if (v55)
        {
          v59 = &v144;
          if (*&v58 < v144 || (v59 = &v146, *&v58 > *&v146))
          {
            *v59 = v58;
          }

          LODWORD(v58) = HIDWORD(v58);
          if (*(&v58 + 1) >= v145)
          {
            v60 = &v146 + 1;
            if (*(&v58 + 1) <= *(&v146 + 1))
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v144) = *v56;
          v146 = v58;
          LODWORD(v58) = HIDWORD(v58);
        }

        v60 = &v145;
LABEL_29:
        *v60 = v58;
LABEL_30:
        v61 = v57 + 1;
        ++v56;
        if (v57 + 1 < v39)
        {
          ++v57;
        }

        else
        {
          v57 = 0;
        }

        if (v61 >= v39)
        {
          v56 = v38;
        }

        ++v55;
      }

      while (v52 != v55);
    }

    if (v34 + 1 >= v134)
    {
      v62 = v134;
    }

    else
    {
      v62 = 0;
    }

    if (v54 + v51 >= v39)
    {
      v63 = v39;
    }

    else
    {
      v63 = 0;
    }

    _Q3 = vcvtq_f64_f32(v38[v54 + v51 - v63]);
    v141 = vsubq_f64(v42, _Q3);
    v142 = vmlsq_f64(v43, _Q3, _Q3);
    _D0 = _Q3.f64[1];
    __asm { FMLS            D1, D0, V3.D[0] }

    v143 = _D1;
    v140 = v54;
    if (v52 >= 2)
    {
      for (i = 0; v54 != i; ++i)
      {
        v68 = *v53;
        if (i)
        {
          v69 = &v144;
          if (*&v68 < v144 || (v69 = &v146, *&v68 > *&v146))
          {
            *v69 = v68;
          }

          LODWORD(v68) = HIDWORD(v68);
          if (*(&v68 + 1) >= v145)
          {
            v70 = &v146 + 1;
            if (*(&v68 + 1) <= *(&v146 + 1))
            {
              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

        else
        {
          LODWORD(v144) = *v53;
          v146 = v68;
          LODWORD(v68) = HIDWORD(v68);
        }

        v70 = &v145;
LABEL_53:
        *v70 = v68;
LABEL_54:
        v71 = v51 + 1;
        ++v53;
        if (v51 + 1 < v39)
        {
          ++v51;
        }

        else
        {
          v51 = 0;
        }

        if (v71 >= v39)
        {
          v53 = v38;
        }
      }
    }

    v34 = v34 + 1 - v62;
    if (v35 <= 0)
    {
      v72 = v134;
    }

    else
    {
      v72 = 0;
    }

    v35 = v35 + v72 - 1;
    v9 -= 2;
    apple::vision::libraries::autotrace::ATRRecord::LinearRegression(&v138, &v137, &v136, &v135);
    v73 = v137;
    v74 = v135;
    v75 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(&v138, v137, v136, v135);
    apple::vision::libraries::autotrace::ATRAngleOfLine(**(a1 + 24), *(*(a1 + 24) + 8), v34, v36 - 2, v73, v74, v76);
    v86 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v77, v85, v78, v79, v80, v81, v82, v83, v84);
    if (v75 <= v86)
    {
      break;
    }

    v33 = v37 - 2;
  }

  while (v36 > 0x34);
  _CF = v36 >= 0x35;
  v87 = v132;
  if (_CF)
  {
    do
    {
      v88 = v35;
      v89 = v86;
      v90 = v75;
      v91 = v140++;
      v92 = *v138;
      v93 = v139 + v91;
      if (v93 < *v138)
      {
        v92 = 0;
      }

      v94 = *(*(v138 + 1) + 8 * (v93 - v92));
      v95 = vcvtq_f64_f32(v94);
      v141 = vaddq_f64(v141, v95);
      v142 = vmlaq_f64(v142, v95, v95);
      v143 = v143 + v95.f64[0] * v95.f64[1];
      v96 = &v144;
      if (v94.f32[0] < v144 || (v96 = &v146, v94.f32[0] > *&v146))
      {
        *v96 = v94.f32[0];
      }

      v97 = &v145;
      if (v94.f32[1] < v145 || (v97 = &v146 + 1, v94.f32[1] > *(&v146 + 1)))
      {
        *v97 = v94.f32[1];
      }

      if (v35 + 1 >= v134)
      {
        v98 = v134;
      }

      else
      {
        v98 = 0;
      }

      v35 = v35 + 1 - v98;
      apple::vision::libraries::autotrace::ATRRecord::LinearRegression(&v138, &v137, &v136, &v135);
      v99 = v137;
      v100 = v135;
      v75 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(&v138, v137, v136, v135);
      apple::vision::libraries::autotrace::ATRAngleOfLine(**(a1 + 24), *(*(a1 + 24) + 8), v34, v37, v99, v100, v101);
      v86 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v102, v110, v103, v104, v105, v106, v107, v108, v109);
      ++v37;
    }

    while (v75 <= v86);
    do
    {
      v111 = *v138;
      if (v139 > 0)
      {
        v111 = 0;
      }

      v87 = v34;
      v32 = v89;
      v20 = v90;
      v133 = v88;
      v112 = *(v138 + 1);
      v139 = v139 + v111 - 1;
      ++v140;
      v113 = *(v112 + 8 * v139);
      v114 = vcvtq_f64_f32(v113);
      v141 = vaddq_f64(v141, v114);
      v142 = vmlaq_f64(v142, v114, v114);
      v143 = v143 + v114.f64[0] * v114.f64[1];
      v115 = &v144;
      if (v113.f32[0] < v144 || (v115 = &v146, v113.f32[0] > *&v146))
      {
        *v115 = v113.f32[0];
      }

      v116 = &v145;
      if (v113.f32[1] < v145 || (v116 = &v146 + 1, v113.f32[1] > *(&v146 + 1)))
      {
        *v116 = v113.f32[1];
      }

      if (v34 <= 0)
      {
        v117 = v134;
      }

      else
      {
        v117 = 0;
      }

      v34 = v34 + v117 - 1;
      apple::vision::libraries::autotrace::ATRRecord::LinearRegression(&v138, &v137, &v136, &v135);
      v118 = v137;
      v119 = v135;
      v90 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(&v138, v137, v136, v135);
      apple::vision::libraries::autotrace::ATRAngleOfLine(**(a1 + 24), *(*(a1 + 24) + 8), v34, v37, v118, v119, v120);
      v89 = apple::vision::libraries::autotrace::straightLineDistanceDeltaToleranceAtAngle(v121, v129, v122, v123, v124, v125, v126, v127, v128);
      ++v37;
      v88 = v35;
    }

    while (v90 <= v89);
  }

  a5 = v131;
  LODWORD(v16) = v133;
LABEL_93:
  if (v20 <= v32)
  {
    apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v87, 2, a4);
    apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v16, 4, a4);
    *a5 = v16;
  }

  result = v20 <= v32;
  *a6 = 0;
  return result;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::insertPairIntoInterestingPoints(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, _BYTE *a6)
{
  *a6 = 0;
  v7 = *a2;
  v6 = *(a2 + 4);
  v8 = (a4 & 4) == 0 || (*(a2 + 4) & 2) == 0;
  if (v7 == a3)
  {
    return result;
  }

  v9 = a6;
  v11 = a4;
  v12 = a3;
  v14 = result;
  v15 = **(result + 24);
  v68 = 0;
  v16 = a5[1];
  if (v16 == *a5)
  {
    goto LABEL_123;
  }

  v64 = v15;
  v65 = v6;
  v66 = a4;
  v17 = apple::vision::libraries::autotrace::ContourToPath::indexOfNewInterestingPointAtPointIndex(v7, *a5, v16, &v68 + 1);
  result = apple::vision::libraries::autotrace::ContourToPath::indexOfNewInterestingPointAtPointIndex(v12, *a5, a5[1], &v68);
  v21 = v17 + 1;
  v23 = *a5;
  v22 = a5[1];
  v24 = (v22 - *a5) >> 3;
  if (v21 >= v24)
  {
    LODWORD(v25) = v21 - v24;
    if (v21 - v24 >= v24)
    {
      LODWORD(v25) = v17 + 1;
      if (v22 != v23)
      {
        v25 = (v21 - v24) % v24;
      }
    }
  }

  else
  {
    LODWORD(v25) = v17 + 1;
  }

  v26 = (v17 - 1);
  v27 = v26 - v24;
  if (v26 >= v24)
  {
    LODWORD(v28) = v26 - v24;
    if (v27 >= v24)
    {
      LODWORD(v28) = v17 - 1;
      if (v22 != v23)
      {
        v28 = v27 % v24;
      }
    }
  }

  else if (v17)
  {
    LODWORD(v28) = v17 - 1;
  }

  else
  {
    LODWORD(v28) = v24 + v26;
    if (v24 + v26 < 0)
    {
      LODWORD(v28) = -1;
      if (v22 != v23)
      {
        v28 = ~(-1 / v24 * v24) + v24;
      }
    }
  }

  v29 = v23 + 8 * v28;
  v30 = (v23 + 8 * v17);
  if (v17 == result)
  {
    if ((v68 & 0x100) != 0)
    {
      v9 = a6;
      v11 = v66;
      if (*(v14 + 128) - *(v14 + 120) == 8)
      {
        v6 = v65;
        if (v30[1] == 64)
        {
          *(a2 + 4) &= ~0x40u;
        }

        goto LABEL_123;
      }

      goto LABEL_122;
    }

    v32 = (*(v29 + 4) & 0xA) == 0;
    v9 = a6;
    v11 = v66;
LABEL_113:
    v6 = v65;
    if (!v32)
    {
      goto LABEL_126;
    }

LABEL_123:
    result = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v7, v6, a5);
    if (!result || (result = apple::vision::libraries::autotrace::ContourToPath::addInterestingPointAtIndex(v12, v11, a5)) == 0)
    {
      *v9 = 1;
      return result;
    }

    v23 = *a5;
    v22 = a5[1];
    goto LABEL_126;
  }

  if (result == v25)
  {
    v31 = v30[1];
    v9 = a6;
    v11 = v66;
    if (HIBYTE(v68) == 1)
    {
      if ((v68 & 1) == 0)
      {
        goto LABEL_112;
      }

      if (v8)
      {
        if ((v31 & 8) != 0)
        {
          goto LABEL_126;
        }

LABEL_112:
        v32 = (v30[1] & 0xA) == 0;
        goto LABEL_113;
      }

      if ((v31 & 2) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_126;
    }

    if (v68)
    {
      if ((v31 & 2) == 0)
      {
        if (v31 != 1)
        {
          goto LABEL_126;
        }

LABEL_43:
        v36 = v30;
        Corner = apple::vision::libraries::autotrace::CornerList::findCorner(*(v14 + 96), *(v14 + 104), **(v14 + 24), *v30, 1, v18, v19, v20);
        v38 = *v36 - v7;
        if (v38 >= v64 / -2)
        {
          v39 = 0;
        }

        else
        {
          v39 = v64;
        }

        v40 = v39 + v38;
        if (v40 < 0)
        {
          v40 = -v40;
        }

        v41 = v12 - *v36;
        if (v41 >= v64 / -2)
        {
          v42 = 0;
        }

        else
        {
          v42 = v64;
        }

        v43 = v42 + v41;
        if (v43 < 0)
        {
          v43 = -v43;
        }

        if (v40 >= v43)
        {
          v6 = v65;
          if (Corner)
          {
            v12 = *(Corner + 2);
          }

          else
          {
            *v36 = v12;
          }
        }

        else
        {
          v6 = v65;
          if (Corner)
          {
            v7 = *(Corner + 2);
          }

          else
          {
            *v36 = v7;
          }
        }

        goto LABEL_123;
      }

      *v30 = v7;
    }

    else
    {
      if (v31 == 1)
      {
        goto LABEL_43;
      }

      if ((v31 & 4) == 0 || (*(v29 + 4) & 2) == 0)
      {
        v6 = v65;
        if ((v31 & 2) != 0)
        {
          goto LABEL_126;
        }

        goto LABEL_123;
      }

      v7 = *v29;
      *v30 = v12;
    }

LABEL_122:
    v6 = v65;
    goto LABEL_123;
  }

  v33 = result - 1;
  v34 = v33 - v24;
  if (v33 >= v24)
  {
    LODWORD(v35) = v33 - v24;
    if (v34 >= v24)
    {
      LODWORD(v35) = result - 1;
      if (v22 != v23)
      {
        v35 = v34 % v24;
      }
    }
  }

  else if (result)
  {
    LODWORD(v35) = result - 1;
  }

  else
  {
    LODWORD(v35) = v24 + v33;
    if (v24 + v33 < 0)
    {
      LODWORD(v35) = -1;
      if (v22 != v23)
      {
        v35 = ~(-1 / v24 * v24) + v24;
      }
    }
  }

  v44 = v23 + 8 * v35;
  v45 = v23 + 8 * result;
  if ((v68 & 0x100) != 0)
  {
    if (((v68 | v8) & 1) == 0 && (v30[1] & 2) != 0)
    {
      *v44 = v12;
    }

    else
    {
      if (v8 || (v68 & 1) == 0 || (v30[1] & 2) == 0 || (*(v45 + 4) & 4) == 0)
      {
        goto LABEL_126;
      }

      v46 = result;
      LODWORD(v47) = apple::vision::libraries::autotrace::wrapIndex(v7 + 1, (v22 - *a5) >> 3);
      while (v46 != v47)
      {
        v48 = v23 + 8 * v47;
        v50 = *(v48 + 4);
        v49 = (v48 + 4);
        if ((v50 & 0xFFFFFFF9) == 0)
        {
          *v49 = 0;
        }

        v51 = v47 + 1;
        v52 = v51 - v24;
        if (v51 >= v24)
        {
          if (v52 >= v24)
          {
            LODWORD(v47) = v47 + 1;
          }

          else
          {
            LODWORD(v47) = v51 - v24;
          }

          if (v52 >= v24 && v22 != v23)
          {
            v47 = v52 % v24;
          }
        }

        else
        {
          v53 = v47 <= -2;
          LODWORD(v47) = v47 + 1;
          if (v53)
          {
            v54 = v24 + v51;
            LODWORD(v47) = v24 + v51 < 0 != __OFADD__(v24, v51) ? v51 : v24 + v51;
            if (v54 < 0 && v22 != v23)
            {
              v47 = v54 % v24 + v24;
            }
          }
        }
      }
    }

    goto LABEL_121;
  }

  if (((v68 | v8) & 1) == 0 && (v30[1] & 2) != 0 && (*(v44 + 4) & 4) != 0)
  {
    *v30 = v7;
    *v44 = v12;
    goto LABEL_126;
  }

  if (!v8 && (v68 & 1) != 0)
  {
    if ((*(v45 + 4) & 4) != 0 && (v30[1] & 2) != 0)
    {
      *v30 = v7;
      v55 = result;
      LODWORD(v56) = apple::vision::libraries::autotrace::wrapIndex(v7 + 1, v24);
      while (v55 != v56)
      {
        v57 = v23 + 8 * v56;
        v59 = *(v57 + 4);
        v58 = (v57 + 4);
        if ((v59 & 0xFFFFFFF9) == 0)
        {
          *v58 = 0;
        }

        v60 = v56 + 1;
        v61 = v60 - v24;
        if (v60 >= v24)
        {
          if (v61 >= v24)
          {
            LODWORD(v56) = v56 + 1;
          }

          else
          {
            LODWORD(v56) = v60 - v24;
          }

          if (v61 >= v24 && v22 != v23)
          {
            v56 = v61 % v24;
          }
        }

        else
        {
          v53 = v56 <= -2;
          LODWORD(v56) = v56 + 1;
          if (v53)
          {
            v62 = v24 + v60;
            LODWORD(v56) = v24 + v60 < 0 != __OFADD__(v24, v60) ? v60 : v24 + v60;
            if (v62 < 0 && v22 != v23)
            {
              v56 = v62 % v24 + v24;
            }
          }
        }
      }
    }

LABEL_121:
    v9 = a6;
    v11 = v66;
    goto LABEL_122;
  }

LABEL_126:
  if (v23 == v22)
  {
    v23 = v22;
  }

  else
  {
    while (*(v23 + 4))
    {
      v23 += 8;
      if (v23 == v22)
      {
        v23 = v22;
        break;
      }
    }

    if (v22 != v23)
    {
      v63 = v23 + 8;
      if (v23 + 8 != v22)
      {
        do
        {
          if (*(v63 + 4))
          {
            *v23 = *v63;
            v23 += 8;
          }

          v63 += 8;
        }

        while (v63 != v22);
        v22 = a5[1];
      }
    }
  }

  if (v22 != v23 + 8)
  {
    result = memmove(v23, (v23 + 8), v22 - (v23 + 8));
  }

  a5[1] = v22 - 8;
  return result;
}

uint64_t apple::vision::libraries::autotrace::wrapIndex(uint64_t this, uint64_t a2)
{
  v2 = this;
  v3 = this - a2;
  if (this >= a2)
  {
    this -= a2;
    if (v3 >= a2)
    {
      this = v2;
      if (a2)
      {
        return v3 % a2;
      }
    }
  }

  else if (this < 0)
  {
    v4 = a2 + this;
    this += a2;
    if (a2 + v2 < 0)
    {
      this = v2;
      if (a2)
      {
        return v4 % a2 + a2;
      }
    }
  }

  return this;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(int a1, int a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v6 = *(a3 + 16);
  if (v7 >= v6)
  {
    v9 = *a3;
    v10 = v7 - *a3;
    v11 = v10 >> 3;
    v12 = (v10 >> 3) + 1;
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = v6 - v9;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v14);
    }

    v15 = (8 * v11);
    *v15 = a1;
    v15[1] = a2;
    v8 = 8 * v11 + 8;
    memcpy(0, v9, v10);
    v16 = *a3;
    *a3 = 0;
    *(a3 + 8) = v8;
    *(a3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a1;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(a3 + 8) = v8;
  return v8 - 8;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::LRLine(EPolygon *this, const EPolygon *a2, _DWORD *a3, float *a4, float *a5, float *a6)
{
  v8 = a2;
  v18 = 0;
  v17 = 0;
  apple::vision::libraries::autotrace::ATRRecord::ATRRecord(v16, this, a2, 5);
  v10 = apple::vision::libraries::autotrace::ATRRecord::LinearRegression(v16, &v18, &v17 + 1, &v17);
  if (v10)
  {
    v11 = v18;
    v12 = *&v17;
    *a4 = apple::vision::libraries::autotrace::ATRRecord::MaxDistanceFromLine(v16, v18, *(&v17 + 1), *&v17);
    apple::vision::libraries::autotrace::ATRAngleOfLine(*this, *(this + 1), v8, 5, v11, v12, v13);
    *a3 = v14;
  }

  return v10;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::addHorizontalLine(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 0;
  if (a5 >= 10)
  {
    v7 = a4;
    v8 = a4 <= 0 ? result : 0;
    if (vabds_f32(*(a2 + 8 * a3 + 4), *(a2 + 8 * (a4 + v8 - 1) + 4)) < 0.001)
    {
      if (a3 >= a4)
      {
        v15 = NAN;
      }

      else
      {
        v10 = 0;
        v11 = 0.0;
        v12 = a3;
        do
        {
          v11 = v11 + *(a2 + 4 + 8 * v12);
          ++v10;
          v13 = v12 + 1;
          if (v13 >= result)
          {
            v14 = result;
          }

          else
          {
            v14 = 0;
          }

          v12 = v13 - v14;
        }

        while (v12 < a4);
        v15 = v11 / v10;
      }

      v16 = v15 + -0.023;
      v17 = v15 + 0.023;
      v18 = a2 + 4;
      do
      {
        if (a3 <= 0)
        {
          v19 = result;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19 + a3;
        a3 = v20 - 1;
        v21 = *(v18 + 8 * (v20 - 1));
      }

      while (v21 >= v16 && v21 <= v17);
      if (v20 >= result)
      {
        v23 = result;
      }

      else
      {
        v23 = 0;
      }

      v24 = v20 - v23;
      for (i = *(a2 + 8 * a4 + 4); i >= v16 && i <= v17; i = *(v18 + 8 * v7))
      {
        if (v7 + 1 >= result)
        {
          v27 = result;
        }

        else
        {
          v27 = 0;
        }

        v7 = v7 + 1 - v27;
      }

      apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v24, 2, a6);

      return apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v7, 4, a6);
    }
  }

  return result;
}

uint64_t apple::vision::libraries::autotrace::ContourToPath::addVerticalLine(uint64_t result, uint64_t a2, int a3, int a4, int a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 0;
  if (a5 >= 10)
  {
    v7 = a4;
    v8 = a4 <= 0 ? result : 0;
    if (vabds_f32(COERCE_FLOAT(*(a2 + 8 * a3)), COERCE_FLOAT(*(a2 + 8 * (a4 + v8 - 1)))) < 0.001)
    {
      if (a3 >= a4)
      {
        v15 = NAN;
      }

      else
      {
        v10 = 0;
        v11 = 0.0;
        v12 = a3;
        do
        {
          v11 = v11 + COERCE_FLOAT(*(a2 + 8 * v12));
          ++v10;
          v13 = v12 + 1;
          if (v13 >= result)
          {
            v14 = result;
          }

          else
          {
            v14 = 0;
          }

          v12 = v13 - v14;
        }

        while (v12 < a4);
        v15 = v11 / v10;
      }

      v16 = v15 + -0.023;
      v17 = v15 + 0.023;
      do
      {
        if (a3 <= 0)
        {
          v18 = result;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 + a3;
        a3 = v19 - 1;
        v20 = *(a2 + 8 * (v19 - 1));
      }

      while (*&v20 >= v16 && *&v20 <= v17);
      if (v19 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = 0;
      }

      v23 = v19 - v22;
      while (1)
      {
        v24 = *(a2 + 8 * v7);
        if (*&v24 < v16 || *&v24 > v17)
        {
          break;
        }

        if (v7 + 1 >= result)
        {
          v26 = result;
        }

        else
        {
          v26 = 0;
        }

        v7 = v7 + 1 - v26;
      }

      apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v23, 2, a6);

      return apple::vision::libraries::autotrace::ContourToPath::appendInterestingPointAtIndex(v7, 4, a6);
    }
  }

  return result;
}

float *apple::vision::libraries::autotrace::ContourToPath::filterAngleBuffer(float *this, float *a2, float *a3, int a4, float a5)
{
  v5 = 0;
  v6 = this;
  do
  {
    v7 = *v6;
    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    v9 = v5 + v8;
    ++v5;
    v10 = v9 - 1;
    if (v5 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    v12 = v5 - v11;
    v13 = 1;
    v14 = a4;
    v15 = *v6;
    do
    {
      v16 = this[v12] - rintf(this[v12] - v7);
      v17 = vabds_f32(v16, v7);
      v18 = v15 + v16;
      if (v17 < a5)
      {
        ++v13;
        v15 = v18;
      }

      v19 = this[v10] - rintf(this[v10] - v7);
      v20 = vabds_f32(v19, v7);
      v21 = v19 + v15;
      if (v20 < a5)
      {
        ++v13;
        v15 = v21;
      }

      v22 = v12 + 1;
      if (v22 >= a3)
      {
        v23 = a3;
      }

      else
      {
        v23 = 0;
      }

      v12 = v22 - v23;
      if (v10 <= 0)
      {
        v24 = a3;
      }

      else
      {
        v24 = 0;
      }

      v10 = v10 + v24 - 1;
      --v14;
    }

    while (v14);
    *a2++ = (v15 / v13) - floorf(v15 / v13);
    ++v6;
  }

  while (v5 != a3);
  return this;
}

uint64_t cvml::util::anonymous namespace::fileExistsAtPath(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  objc_autoreleasePoolPop(v2);
  return v6;
}

void cvml::util::anonymous namespace::generateTemporaryFilePath(cvml::util::_anonymous_namespace_ *this)
{
  v2 = objc_autoreleasePoolPush();
  v3 = NSTemporaryDirectory();
  v19 = [MEMORY[0x1E696AC08] defaultManager];
  if (!v3)
  {
    *(this + 23) = 11;
    strcpy(this, "##INVALID##");

    objc_autoreleasePoolPop(v2);
    return;
  }

  v4 = 5;
  do
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];

    if (!v7)
    {
      v21 = 11;
      v10 = 11;
      v8 = "##INVALID##";
LABEL_10:
      memmove(__dst, v8, v10);
      goto LABEL_11;
    }

    v8 = [v7 UTF8String];
    v9 = strlen(v8);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v21 = v9;
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    *(__dst + v10) = 0;

    objc_autoreleasePoolPop(v5);
    v11 = __dst[1];
    if (v21 < 0)
    {
      v12 = __dst[0];
    }

    else
    {
      v11 = v21;
      v12 = __dst;
    }

    if (v11 == 11 && *v12 == 0x494C41564E492323 && *(v12 + 3) == 0x232344494C41564ELL)
    {
      v15 = 4;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_33;
      }

LABEL_32:
      operator delete(__dst[0]);
      goto LABEL_33;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", v3, v12];
    if (v14 && ([v19 fileExistsAtPath:v14] & 1) == 0)
    {
      v16 = [v14 UTF8String];
      v17 = strlen(v16);
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      *(this + 23) = v17;
      if (v17)
      {
        memmove(this, v16, v17);
      }

      *(this + v18) = 0;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    if (v21 < 0)
    {
      goto LABEL_32;
    }

LABEL_33:
    if ((v15 | 4) != 4)
    {
      goto LABEL_36;
    }

    --v4;
  }

  while (v4);
  v15 = 0;
LABEL_36:

  objc_autoreleasePoolPop(v2);
  if (!v15)
  {
    *(this + 23) = 11;
    strcpy(this, "##INVALID##");
  }
}

uint64_t cvml::util::anonymous namespace::moveFile(uint64_t *a1, uint64_t *a2)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v10 fileExistsAtPath:v7];
  if (v11)
  {
    v2 = [v10 moveItemAtPath:v7 toPath:v9 error:0];
  }

  objc_autoreleasePoolPop(v5);
  return v11 & v2;
}

uint64_t cvml::util::anonymous namespace::removeFile(uint64_t *a1)
{
  v3 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];
  if (v7)
  {
    v1 = [v6 removeItemAtPath:v5 error:0];
  }

  objc_autoreleasePoolPop(v3);
  return v7 & v1;
}

uint64_t cvml::util::MMapFileBackingStore::MMapFileBackingStore(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *a2 = -1;
  *(a2 + 8) = -1;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  return a1;
}

void cvml::util::MMapFileBackingStore::create(cvml::util::MMapFileBackingStore *this)
{
  v8 = v39;
  if ((v39 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v8 = __p[1];
    v9 = __p[0];
  }

  if (v8 == 11 && (*v9 == 0x494C41564E492323 ? (v10 = *(v9 + 3) == 0x232344494C41564ELL) : (v10 = 0), v10))
  {
    VNValidatedLog(4, @"MMapFileBackingStore::create -- Could not generate a valid path for temporary file", v2, v3, v4, v5, v6, v7, v35);
  }

  else
  {
    v11 = open(v9, 1538, 438);
    if (v11 != -1)
    {
      v18 = v11;
      if (lseek(v11, this - 1, 0) == -1)
      {
        v31 = @"MMapFileBackingStore::create -- Unable to grow file to desired capacity -- seek";
      }

      else
      {
        __buf = 32;
        if (write(v18, &__buf, 1uLL) != 1)
        {
          VNValidatedLog(4, @"MMapFileBackingStore::create -- Unable to grow file to desired capacity -- write", v25, v26, v27, v28, v29, v30, v36);
          exception = __cxa_allocate_exception(8uLL);
          *exception = MEMORY[0x1E69E55E8] + 16;
          __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
        }

        if (mmap(0, this, 3, 1, v18, 0) != -1)
        {
          operator new();
        }

        v31 = @"MMapFileBackingStore::create -- Memory mapping failed for temporary file";
      }

      VNValidatedLog(4, v31, v19, v20, v21, v22, v23, v24, v36);
      v33 = __cxa_allocate_exception(8uLL);
      *v33 = MEMORY[0x1E69E55E8] + 16;
      __cxa_throw(v33, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
    }

    VNValidatedLog(4, @"MMapFileBackingStore::create -- Could not open temporary file for mmaping", v12, v13, v14, v15, v16, v17, v36);
  }

  v34 = __cxa_allocate_exception(8uLL);
  *v34 = MEMORY[0x1E69E55E8] + 16;
  __cxa_throw(v34, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
}

void cvml::util::MMapFileBackingStore::createByMappingDirectlyFromFile(const char *a1, int a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = open(a1, 2, 438);
  v10 = v3;
  if (v3 != -1)
  {
    v17 = lseek(v3, 0, 2);
    if (v17 == -1)
    {
      v20 = @"MMapFileBackingStore::createByMappingDirectlyFromFile -- error seeking in provided file";
    }

    else
    {
      if (a2)
      {
        v18 = 3;
      }

      else
      {
        v18 = 1;
      }

      if (mmap(0, v17, v18, 1, v10, 0) != -1)
      {
        operator new();
      }

      v20 = @"MMapFileBackedBuffer::createByMappingDirectlyFromFile -- Memory mapping failed for temporary file";
    }

    VNValidatedLog(4, v20, v11, v12, v13, v14, v15, v16, v22);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  VNValidatedLog(4, @"MMapFileBackingStore::createByMappingDirectlyFromFile -- Could not open temporary file for mmaping", v4, v5, v6, v7, v8, v9, v22);
  v19 = __cxa_allocate_exception(8uLL);
  *v19 = MEMORY[0x1E69E55E8] + 16;
  __cxa_throw(v19, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
}

uint64_t cvml::util::anonymous namespace::writeBackingStoreToFile<cvml::util::MMapFileBackingStore>(uint64_t a1, void *a2)
{
  v2 = a2[5];
  if (!v2)
  {
    return 0;
  }

  HIBYTE(v68) = 11;
  strcpy(__p, "##INVALID##");
  if (v66 >= 0)
  {
    v6 = v65;
  }

  else
  {
    v6 = v65[0];
  }

  v13 = open(v6, 1538, 438);
  if (v13 == -1)
  {
    if (*(a1 + 23) >= 0)
    {
      v55 = a1;
    }

    else
    {
      v55 = *a1;
    }

    VNValidatedLog(4, @"writeBackingStoreToFile-- Could not create file: '%s'", v7, v8, v9, v10, v11, v12, v55);
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(exception, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

  for (i = 0; i < v2; i += v16)
  {
    if (v2 - i >= 0x4000)
    {
      v15 = 0x4000;
    }

    else
    {
      v15 = v2 - i;
    }

    v16 = write(v13, (*a2 + i), v15);
    if (v16 <= 0)
    {
      VNValidatedLog(4, @"writeBackingStoreToFile-- error writing out data", v17, v18, v19, v20, v21, v22, v62);
      v54 = __cxa_allocate_exception(8uLL);
      *v54 = MEMORY[0x1E69E55E8] + 16;
      __cxa_throw(v54, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
    }
  }

  if (close(v13) == -1)
  {
    v57 = @"writeBackingStoreToFile-- error closing file, file could be corrupt";
LABEL_44:
    VNValidatedLog(4, v57, v23, v24, v25, v26, v27, v28, v62);
    goto LABEL_45;
  }

  if (v5)
  {
    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p[0]);
    }

    v68 = v64;
    *__p = v63;
    v35 = HIBYTE(v64);
    if (v64 < 0)
    {
      v35 = *(&v63 + 1);
    }

    if (v35 != 11)
    {
      goto LABEL_25;
    }

    v36 = __p;
    if (v64 < 0)
    {
      v36 = __p[0];
    }

    v37 = *v36;
    v38 = *(v36 + 3);
    if (v37 == 0x494C41564E492323 && v38 == 0x232344494C41564ELL)
    {
      if (*(a1 + 23) >= 0)
      {
        v61 = a1;
      }

      else
      {
        v61 = *a1;
      }

      VNValidatedLog(4, @"writeBackingStoreToFile -- File exists at output path '%s', and we cannot safely overwrite this file", v29, v30, v31, v32, v33, v34, v61);
    }

    else
    {
LABEL_25:
      {
        goto LABEL_26;
      }

      if (*(a1 + 23) >= 0)
      {
        v59 = a1;
      }

      else
      {
        v59 = *a1;
      }

      VNValidatedLog(4, @"writeBackingStoreToFile-- File exists at output path '%s', and could not copy file to temporary directory", v40, v41, v42, v43, v44, v45, v59);
      if (SHIBYTE(v68) < 0)
      {
        __p[1] = 11;
        v60 = __p[0];
      }

      else
      {
        HIBYTE(v68) = 11;
        v60 = __p;
      }

      strcpy(v60, "##INVALID##");
    }

LABEL_45:
    v58 = __cxa_allocate_exception(8uLL);
    *v58 = MEMORY[0x1E69E55E8] + 16;
    __cxa_throw(v58, MEMORY[0x1E69E5438], MEMORY[0x1E69E5390]);
  }

LABEL_26:
  {
    v57 = @"writeBackingStoreToFile-- Could not move file from temporary directory";
    goto LABEL_44;
  }

  {
    VNValidatedLog(4, @"writeBackingStoreToFile -- Non critical error -- Could not remove original file after rename", v46, v47, v48, v49, v50, v51, v62);
  }

  v52 = 1;
  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p[0]);
  }

  return v52;
}

void cvml::util::MMapFileBackingStore::~MMapFileBackingStore(cvml::util::MMapFileBackingStore *this)
{
  v2 = *this;
  if (v2 != -1 && munmap(v2, *(this + 5)))
  {
    VNValidatedLog(4, @"MMapFileBackingStore::destructor -- could not unmap file", v3, v4, v5, v6, v7, v8, v23);
  }

  v9 = *(this + 2);
  if (v9 != -1 && close(v9) == -1)
  {
    VNValidatedLog(4, @"MMapFileBackingStore::destructor -- error closing file", v10, v11, v12, v13, v14, v15, v23);
  }

  if (*(this + 48) == 1)
  {
    v16 = (this + 16);
    {
      {
        if (*(this + 39) < 0)
        {
          v16 = *v16;
        }

        VNValidatedLog(4, @"MMapFileBackingStore::destructor -- Could not remove temporary file '%s'", v17, v18, v19, v20, v21, v22, v16);
      }
    }
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t cvml::util::MMapFileBackingStore::growStorage(cvml::util::MMapFileBackingStore *this, cvml::util::MMapFileBackingStore *a2)
{
  if (a2 && *(this + 5) < a2)
  {
    cvml::util::MMapFileBackingStore::create(a2);
  }

  return 0;
}

uint64_t cvml::util::MMapFileBackingStore::writeToFile(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 24);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = a2) : (v8 = *a2), v7 >= 0 ? (v9 = (a1 + 16)) : (v9 = *(a1 + 16)), result = memcmp(v8, v9, v5), result))
  {
  }

  return result;
}

void std::default_delete<vision::mod::ImageAnalyzer_PCA>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F2F990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

id _knownIdentifiersForCustomClassifier(vision::mod::ImageAnalyzer_CustomClassifier *a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v11, a1, a2, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * (v12 - v11)];
  v5 = v11;
  for (i = v12; v5 != i; v5 += 3)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = v5;
    if (*(v5 + 23) < 0)
    {
      v8 = *v5;
    }

    v9 = [v7 initWithUTF8String:v8];
    if (_isAcceptableClassificationIdentifier(v9, 0))
    {
      [v4 addObject:v9];
    }
  }

  objc_autoreleasePoolPop(v2);
  v14 = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);

  return v4;
}

void sub_1A5F2FBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t _isAcceptableClassificationIdentifier(NSString *a1, VNDisallowedList *a2)
{
  v3 = a1;
  v4 = a2;
  if ([(NSString *)v3 hasPrefix:@"CVML_UNKNOWN_"])
  {
    v5 = 0;
  }

  else
  {
    v5 = [(VNDisallowedList *)v4 containsIdentifier:v3]^ 1;
  }

  return v5;
}

void sub_1A5F31228(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    if (SLOBYTE(STACK[0x257]) < 0)
    {
      operator delete(STACK[0x240]);
    }

    if (SLOBYTE(STACK[0x297]) < 0)
    {
      JUMPOUT(0x1A5F31294);
    }

    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F3129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, vision::mod::ImageAnalyzer_CustomClassifier *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  std::unique_ptr<vision::mod::ImageAnalyzer_CustomClassifier>::~unique_ptr[abi:ne200100](&a25);
  vision::mod::ImageAnalyzer_CustomClassifierOptions::~ImageAnalyzer_CustomClassifierOptions(&a47);
  JUMPOUT(0x1A5F312B4);
}

void sub_1A5F31300(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1A5F31308);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<vision::mod::ImageAnalyzer_CustomClassifier  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN6vision3mod30ImageAnalyzer_CustomClassifierEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

vision::mod::ImageAnalyzer_CustomClassifier *std::__shared_ptr_pointer<vision::mod::ImageAnalyzer_CustomClassifier  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    vision::mod::ImageAnalyzer_CustomClassifier::~ImageAnalyzer_CustomClassifier(result);

    JUMPOUT(0x1AC556B00);
  }

  return result;
}

void std::__shared_ptr_pointer<vision::mod::ImageAnalyzer_CustomClassifier  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F3144C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F315EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F31A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1A5F31D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F31F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<vision::mod::ImageAnalyzer_CustomClassifier>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<vision::mod::ImageAnalyzer_CustomClassifier>>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<std::vector<std::shared_ptr<vision::mod::ImageAnalyzer_CustomClassifier>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974930;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F326B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a13);

  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27407(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5F36790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35)
{
  free(a33);
  free(a35);

  _Unwind_Resume(a1);
}

void sub_1A5F37BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, char a29)
{
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(&a29);

  _Unwind_Resume(a1);
}

void sub_1A5F380AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  std::unique_ptr<std::vector<std::pair<std::string,float>>>::~unique_ptr[abi:ne200100](va);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(va1);
  v10 = *(v8 - 112);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F383CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  std::unique_ptr<std::vector<std::pair<std::string,float>>>::~unique_ptr[abi:ne200100](va);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(va1);
  v10 = *(v8 - 112);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F386F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  std::unique_ptr<std::vector<std::pair<std::string,float>>>::~unique_ptr[abi:ne200100](va);
  vision::mod::ImageAnalyzer_Tensor1D<float>::~ImageAnalyzer_Tensor1D(va1);
  v10 = *(v8 - 112);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1A5F38E2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::tuple<float,_Geometry2D_rect2D_>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1A5F39200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5F39164);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F39F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F3A294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a10);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(&a15);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_72c74_ZTSNSt3__110shared_ptrIN6vision3mod33ImageClassifier_HierarchicalModelEEE(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_72c74_ZTSNSt3__110shared_ptrIN6vision3mod33ImageClassifier_HierarchicalModelEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1A5F3A790(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char *a25)
{
  a25 = &a11;
  std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](&a25);
  objc_begin_catch(a1);
  os_unfair_lock_unlock(a10 + 66);
  objc_exception_rethrow();
}

void std::__shared_ptr_emplace<std::vector<std::tuple<std::string,float,BOOL>> const,std::allocator<std::vector<std::tuple<std::string,float,BOOL>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F3ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1A5F3C474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27, uint64_t a28, void *a29, uint64_t a30, void *a31, void *a32, void *a33, void *a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, void *a42)
{
  objc_destroyWeak(&STACK[0x3D8]);

  objc_destroyWeak(&STACK[0x468]);
  _Block_object_dispose(&STACK[0x4A0], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);

  _Block_object_dispose(&STACK[0x4F0], 8);
  objc_destroyWeak(&STACK[0x520]);
  _Block_object_dispose(&STACK[0x528], 8);
  _Block_object_dispose(&STACK[0x560], 8);

  _Unwind_Resume(a1);
}

void sub_1A5F3CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20)
{
  objc_end_catch();

  JUMPOUT(0x1A5F3CE90);
}

void sub_1A5F3D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25)
{
  objc_end_catch();

  JUMPOUT(0x1A5F3D46CLL);
}

void _recordBestClassificationObservations(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v3 objectForKeyedSubscript:v9];
        if (!v10 || ([v8 confidence], v12 = v11, objc_msgSend(v10, "confidence"), v12 > v13))
        {
          [v3 setObject:v8 forKeyedSubscript:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

void sub_1A5F3EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, void *a23, void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32)
{
  vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options(&a32);

  _Unwind_Resume(a1);
}

void _configureImageAnalyzerOptionsForSceneNetV3ObjDetNet(vision::mod::ImageAnalyzer_Options *a1)
{
  v19[12] = *MEMORY[0x1E69E9840];
  *(a1 + 113) = 1065353216;
  *(a1 + 461) = 0;
  *(a1 + 424) = xmmword_1A6038E00;
  v18 = 0x3DA05BC03E1B3D08;
  memset(v1, 0, sizeof(v1));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v1, &v18, v19, 2uLL);
  v17 = vdup_n_s32(0x3DD70A3Du);
  memset(v2, 0, sizeof(v2));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v2, &v17, &v18, 2uLL);
  v16 = 0x3E147AE13D92A305;
  memset(__src, 0, sizeof(__src));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__src, &v16, &v17, 2uLL);
  v15 = 0x3DCAF4F13E441893;
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(__p, &v15, &v16, 2uLL);
  v14 = vdup_n_s32(0x3E07E282u);
  memset(v5, 0, sizeof(v5));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v5, &v14, &v15, 2uLL);
  v13 = 0x3E3B7E913DB9C0ECLL;
  memset(v6, 0, sizeof(v6));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v6, &v13, &v14, 2uLL);
  v12 = 0x3E004EA53E778034;
  memset(v7, 0, sizeof(v7));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v7, &v12, &v13, 2uLL);
  v11 = vdup_n_s32(0x3E2B9F56u);
  memset(v8, 0, sizeof(v8));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v8, &v11, &v12, 2uLL);
  v10 = 0x3E6CA57A3DEAE7D5;
  memset(v9, 0, 24);
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v9, &v10, &v11, 2uLL);
  memset(v19, 0, 24);
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float> const*,std::vector<float> const*>();
}

void sub_1A5F405E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v38 + 544) = v40;
  v42 = -96;
  v43 = v39;
  do
  {
    a12 = v43;
    std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a12);
    v43 -= 24;
    v42 += 24;
  }

  while (v42);
  v44 = &STACK[0x238];
  v45 = -216;
  while (1)
  {
    v46 = *(v44 - 1);
    if (v46)
    {
      *v44 = v46;
      operator delete(v46);
    }

    v44 -= 3;
    v45 += 24;
    if (!v45)
    {
      v47 = &STACK[0x358];
      v48 = -216;
      while (1)
      {
        v49 = *(v47 - 1);
        if (v49)
        {
          *v47 = v49;
          operator delete(v49);
        }

        v47 -= 3;
        v48 += 24;
        if (!v48)
        {
          v50 = &STACK[0x478];
          v51 = -216;
          while (1)
          {
            v52 = *(v50 - 1);
            if (v52)
            {
              *v50 = v52;
              operator delete(v52);
            }

            v50 -= 3;
            v51 += 24;
            if (!v51)
            {
              v53 = &a38;
              v54 = -216;
              while (1)
              {
                v55 = *(v53 - 1);
                if (v55)
                {
                  *v53 = v55;
                  operator delete(v55);
                }

                v53 -= 3;
                v54 += 24;
                if (!v54)
                {
                  _Unwind_Resume(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A5F40B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unordered_map<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>::at(void *a1, unsigned int a2)
{
  v2 = std::__hash_table<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::__unordered_map_hasher<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::__unordered_map_equal<vision::mod::ImageAnalyzer_AnalysisType,std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>,std::equal_to<vision::mod::ImageAnalyzer_AnalysisType>,std::hash<vision::mod::ImageAnalyzer_AnalysisType>,true>,std::allocator<std::__hash_value_type<vision::mod::ImageAnalyzer_AnalysisType,std::vector<std::string>>>>::find<vision::mod::ImageAnalyzer_AnalysisType>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void std::vector<std::string>::resize(std::vector<std::string> *this, std::vector<std::string>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v6 = __sz - v5;
  if (__sz <= v5)
  {
    if (__sz < v5)
    {
      v11 = &begin[__sz];
      while (end != v11)
      {
        v12 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
        --end;
        if (v12 < 0)
        {
          operator delete(end->__r_.__value_.__l.__data_);
        }
      }

      this->__end_ = v11;
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v6)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v14.__end_cap_.__value_ = this;
        v8 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v10);
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(this->__end_, v13);
    this->__end_ = (end + v13);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>> const*,std::vector<std::vector<float>> const*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

void sub_1A5F419B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5F41F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__510(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__511(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5F42210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  std::vector<std::pair<std::string,BOOL>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a19;
  std::vector<std::pair<std::string,std::vector<BOOL>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1A5F42E90(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5F44C64(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t computeChannelGradientForX(uint64_t result, int a2)
{
  v2 = *(result + 148);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = result + 8 * a2;
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);
    v7 = *(result + 144);
    do
    {
      v8 = v6 + 1;
      *v5 = v6[1] - *v6;
      v9 = v5 + 1;
      if (v7 >= 3)
      {
        v10 = v7 - 2;
        do
        {
          v11 = v8[1];
          *v9++ = v11 - *(++v8 - 2);
          --v10;
        }

        while (v10);
        v5 = v9 - 1;
      }

      v5 += 2;
      *v9 = *v8 - *(v8 - 1);
      v6 = v8 + 1;
      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t computeChannelGradientForY(uint64_t result, int a2)
{
  v2 = result + 8 * a2;
  v3 = *(v2 + 16);
  v4 = *(result + 144);
  v5 = *(v2 + 64);
  if (v4 < 1)
  {
    v8 = v3;
  }

  else
  {
    v6 = *(result + 144);
    v7 = v3;
    do
    {
      v8 = v7 + 1;
      *v5++ = v7[v4] - *v7;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v9 = *(result + 148);
  if (v9 >= 3)
  {
    v10 = v9 - 2;
    v11 = 1;
    do
    {
      if (v4 < 1)
      {
        v8 = v3;
      }

      else
      {
        v12 = v4;
        v13 = v3;
        do
        {
          result = v13[2 * v4];
          v8 = v13 + 1;
          *v5++ = result - *v13++;
          --v12;
        }

        while (v12);
      }

      v3 += v4;
    }

    while (v11++ != v10);
  }

  if (v4 >= 1)
  {
    v15 = &v3[v4];
    do
    {
      v17 = *v15++;
      v16 = v17;
      v18 = *v8++;
      *v5++ = v16 - v18;
      --v4;
    }

    while (v4);
  }

  return result;
}

void cannyEdgeWithGradientOutput(_BYTE *a1, void *a2, char *a3, char *a4, float a5, float a6)
{
  v211[5] = *MEMORY[0x1E69E9840];
  v210 = 0x10000000100;
  v12 = malloc_type_calloc(0x1C0000uLL, 1uLL, 0x8C54EF56uLL);
  v196[0] = v12;
  if (!v12)
  {
    __assert_rtn("initializeCannyEdgeContext", "cannyEdge.c", 261, "context->blockAddress");
  }

  v16 = v12 + 786432;
  v196[1] = v12;
  v196[2] = v12 + 786432;
  v17 = v12 + 917504;
  v18 = v12 + 0x100000;
  v196[3] = v12 + 917504;
  v196[4] = v12 + 0x100000;
  v203 = v12 + 1179648;
  v204 = v12 + 1310720;
  v197 = v12;
  v198 = v12 + 0x20000;
  v199 = v12 + 0x40000;
  v200 = v12 + 393216;
  v201 = v12 + 0x80000;
  v202 = v12 + 655360;
  v205 = v12 + 1441792;
  v206 = v12 + 786432;
  v207 = v12 + 1572864;
  v208 = v12;
  if (a3)
  {
    v203 = a3;
  }

  if (a4)
  {
    v204 = a4;
  }

  v19 = 0;
  v20 = vdup_n_s32(0x3F7FEA90u);
  v21 = v12;
  v209 = 0;
  do
  {
    LOBYTE(v13) = *a1;
    LOBYTE(v14) = a1[4];
    v22 = (LODWORD(v14) * 0.21868) + (LODWORD(v13) * 0.53192);
    v23 = a1 + 8;
    *&v24 = a1[8];
    *&v25 = (v22 + (*&v24 * 0.015195)) / 0.7658;
    *v21 = *&v25;
    LOBYTE(v25) = a1[1];
    LOBYTE(v24) = a1[5];
    *&v26 = v24 * 0.21868;
    v27 = *&v26 + (v25 * 0.53192);
    LOBYTE(v26) = a1[9];
    *&v28 = v26;
    v21[1] = (v27 + (*&v28 * 0.015195)) / 0.7658;
    v29 = a1 + 2;
    LOBYTE(v28) = a1[6];
    *&v30 = v28 * 0.21868;
    v31 = *&v30 + (a1[2] * 0.53192);
    LOBYTE(v30) = a1[10];
    *&v32 = v30;
    *&v33 = (v31 + (*&v32 * 0.015195)) / 0.7658;
    v21[2] = *&v33;
    LOBYTE(v33) = *a1;
    LOBYTE(v32) = a1[4];
    *&v34 = v32 * 0.53192;
    v35 = *&v34 + (v33 * 0.21868);
    LOBYTE(v34) = a1[8];
    *&v36 = v34;
    v37 = v35 + (*&v36 * 0.21868);
    LOBYTE(v36) = a1[12];
    *&v38 = v36;
    *&v39 = (v37 + (*&v38 * 0.015195)) / 0.98448;
    v21[3] = *&v39;
    LOBYTE(v39) = a1[1];
    LOBYTE(v38) = a1[5];
    *&v40 = v38 * 0.53192;
    v41 = *&v40 + (v39 * 0.21868);
    LOBYTE(v40) = a1[9];
    *&v42 = v40;
    v43 = v41 + (*&v42 * 0.21868);
    LOBYTE(v42) = a1[13];
    *&v44 = v42;
    *&v45 = (v43 + (*&v44 * 0.015195)) / 0.98448;
    v21[4] = *&v45;
    LOBYTE(v45) = a1[2];
    LOBYTE(v44) = a1[6];
    *&v46 = v44 * 0.53192;
    v47 = *&v46 + (v45 * 0.21868);
    LOBYTE(v46) = a1[10];
    *&v48 = v46;
    v49 = v47 + (*&v48 * 0.21868);
    LOBYTE(v48) = a1[14];
    v21[5] = (v49 + (v48 * 0.015195)) / 0.98448;
    v50 = v21 + 6;
    v51 = 2;
    do
    {
      v52 = 0;
      v53 = v23;
      v54 = v50;
      *v50 = 0;
      v50[2] = 0.0;
      v55.i32[0] = 0;
      v56 = v29;
      v57 = 0.0;
      v58 = 0.0;
      do
      {
        v59 = gaussianKernel[v52];
        LOBYTE(v15) = *(v56 - 2);
        *&v60 = LODWORD(v15);
        v55.f32[0] = v55.f32[0] + (v59 * *&v60);
        *v50 = v55.f32[0];
        LOBYTE(v60) = *(v56 - 1);
        *&v61 = v60;
        v57 = v57 + (v59 * *&v61);
        v50[1] = v57;
        LOBYTE(v61) = *v56;
        v15 = v61;
        v58 = v58 + (v59 * v15);
        v50[2] = v58;
        ++v52;
        v56 += 4;
      }

      while (v52 != 5);
      v55.f32[1] = v57;
      *v50 = vdiv_f32(v55, v20);
      v62 = v58 / 0.99967;
      v50[2] = v58 / 0.99967;
      v50 += 3;
      v23 = v53 + 4;
      v29 += 4;
    }

    while (v51++ != 253);
    LOBYTE(v62) = *(v53 - 4);
    LOBYTE(v58) = *v53;
    *&v64 = LODWORD(v58) * 0.21868;
    v65 = *&v64 + (LODWORD(v62) * 0.015195);
    LOBYTE(v64) = v53[4];
    *&v66 = v64;
    v67 = v65 + (*&v66 * 0.53192);
    LOBYTE(v66) = v53[8];
    *&v68 = v66;
    *&v69 = (v67 + (*&v68 * 0.21868)) / 0.98448;
    v54[3] = *&v69;
    LOBYTE(v69) = *(v53 - 3);
    LOBYTE(v68) = v53[1];
    *&v70 = v68 * 0.21868;
    v71 = *&v70 + (v69 * 0.015195);
    LOBYTE(v70) = v53[5];
    *&v72 = v70;
    v73 = v71 + (*&v72 * 0.53192);
    LOBYTE(v72) = v53[9];
    *&v74 = v72;
    *&v75 = (v73 + (*&v74 * 0.21868)) / 0.98448;
    v54[4] = *&v75;
    LOBYTE(v75) = *(v53 - 2);
    LOBYTE(v74) = v53[2];
    *&v76 = v74 * 0.21868;
    v77 = *&v76 + (v75 * 0.015195);
    LOBYTE(v76) = v53[6];
    *&v78 = v76;
    v79 = v77 + (*&v78 * 0.53192);
    LOBYTE(v78) = v53[10];
    *&v80 = v78;
    *&v81 = (v79 + (*&v80 * 0.21868)) / 0.98448;
    v54[5] = *&v81;
    LOBYTE(v81) = *v53;
    LOBYTE(v80) = v53[4];
    *&v82 = v80 * 0.21868;
    v83 = *&v82 + (v81 * 0.015195);
    LOBYTE(v82) = v53[8];
    *&v84 = v82;
    *&v85 = (v83 + (*&v84 * 0.53192)) / 0.7658;
    v54[6] = *&v85;
    LOBYTE(v85) = v53[1];
    LOBYTE(v84) = v53[5];
    *&v86 = v84 * 0.21868;
    v87 = *&v86 + (v85 * 0.015195);
    LOBYTE(v86) = v53[9];
    *&v88 = v86;
    *&v89 = (v87 + (*&v88 * 0.53192)) / 0.7658;
    v54[7] = *&v89;
    LOBYTE(v89) = v53[2];
    LOBYTE(v88) = v53[6];
    *&v90 = v88 * 0.21868;
    v91 = *&v90 + (v89 * 0.015195);
    LOBYTE(v90) = v53[10];
    v14 = v90;
    v13 = (v91 + (v14 * 0.53192)) / 0.7658;
    v54[8] = v13;
    v21 = v54 + 9;
    a1 = v53 + 12;
    ++v19;
  }

  while (v19 != 256);
  v92 = 0;
  v93 = vdupq_n_s64(0x4056800000000000uLL);
  v94 = 2;
  do
  {
    v95 = 0;
    v96 = v12;
    v211[0] = v12 - 6144;
    v211[1] = v12 - 3072;
    v97 = v12 + 6144;
    v12 += 3072;
    v211[2] = v96;
    v211[3] = v12;
    v211[4] = v97;
    v98 = 257 - v92;
    if (v92 < 0xFE)
    {
      v98 = 4;
    }

    v99 = v18;
    v100 = v17;
    v101 = v16;
    do
    {
      if (((2 - v92) & ~((2 - v92) >> 31)) >= v98)
      {
        v109 = 0uLL;
        v110 = 0.0;
        v108 = 0.0;
      }

      else
      {
        v102 = 0;
        v103 = 0.0;
        v104 = v94 & ~(v94 >> 31);
        v105 = 0.0;
        do
        {
          v106 = v211[v104];
          v107 = gaussianKernel[v104];
          v102 = vmla_n_f32(v102, *v106, v107);
          v105 = v105 + (v107 * v106[1].f32[0]);
          v103 = v103 + v107;
          v211[v104++] = v106 + 12;
        }

        while (v104 < v98);
        v108 = v103;
        v109 = vmulq_f64(vcvtq_f64_f32(v102), v93);
        v110 = v105 * 90.0;
      }

      *v101++ = (v109.f64[0] / v108 + 0.5);
      *v100++ = (v109.f64[1] / v108 + 0.5);
      *v99++ = (v110 / v108 + 0.5);
      ++v95;
    }

    while (v95 != 256);
    ++v92;
    v16 += 256;
    v17 += 256;
    v18 += 256;
    --v94;
  }

  while (v92 != 256);
  computeChannelGradientForX(v196, 0);
  computeChannelGradientForX(v196, 1);
  computeChannelGradientForX(v196, 2);
  computeChannelGradientForY(v196, 0);
  computeChannelGradientForY(v196, 1);
  computeChannelGradientForY(v196, 2);
  v112 = v210;
  v111 = HIDWORD(v210);
  if (SHIDWORD(v210) >= 1)
  {
    v113 = 0;
    v115 = v204;
    v114 = v205;
    v117 = v202;
    v116 = v203;
    v119 = v200;
    v118 = v201;
    v121 = v198;
    v120 = v199;
    v122 = v197;
    do
    {
      if (v112 >= 1)
      {
        v123 = 0;
        v124 = v112;
        do
        {
          v125 = *&v122[v123];
          v126 = *&v121[v123];
          v127 = *&v120[v123];
          v128 = *&v118[v123];
          v129 = *&v117[v123];
          v130 = v125 * v125 + *&v119[v123] * *&v119[v123];
          if (v130 > v126 * v126 + v128 * v128)
          {
            v131 = *&v119[v123];
          }

          else
          {
            v130 = v126 * v126 + v128 * v128;
            LOWORD(v125) = *&v121[v123];
            v131 = *&v118[v123];
          }

          if (v130 > v127 * v127 + v129 * v129)
          {
            v132 = v130;
          }

          else
          {
            LOWORD(v125) = *&v120[v123];
            v131 = *&v117[v123];
            v132 = v127 * v127 + v129 * v129;
          }

          *&v116[v123] = v125;
          *&v115[v123] = v131;
          *&v114[v123] = sqrtf(v132 + 0.5);
          v123 += 2;
          --v124;
        }

        while (v124);
        v122 += v123;
        v121 += v123;
        v120 += v123;
        v119 += v123;
        v118 += v123;
        v117 += v123;
        v116 += v123;
        v115 += v123;
        v114 += v123;
      }

      ++v113;
    }

    while (v113 != v111);
  }

  v133 = v206;
  if (v112 >= 1)
  {
    v134 = 0;
    do
    {
      *v133++ = 0;
      ++v134;
      v112 = v210;
    }

    while (v134 < v210);
    v111 = HIDWORD(v210);
  }

  v135 = 0.0;
  if (v111 >= 3)
  {
    v136 = 0;
    v137 = &v205[2 * v112 + 2];
    v138 = &v204[2 * v112 + 2];
    v139 = &v203[2 * v112 + 2];
    v140 = 1;
    while (1)
    {
      *v133 = 0;
      v141 = v133 + 1;
      v142 = v210;
      if (v210 < 3)
      {
        goto LABEL_66;
      }

      v143 = 0;
      do
      {
        v144 = (v137 + 2 * v143);
        v145 = *(v139 + 2 * v143);
        v146 = (v145 >> 31) | 1;
        v147 = *(v138 + 2 * v143);
        v148 = (v147 >> 31) | 1;
        if (v147 >= 0)
        {
          v149 = *(v138 + 2 * v143);
        }

        else
        {
          v149 = -v147;
        }

        if (v145 >= 0)
        {
          v150 = *(v139 + 2 * v143);
        }

        else
        {
          v150 = -v145;
        }

        v151 = v148 * v142;
        if (v145 >= 0)
        {
          v152 = 1;
        }

        else
        {
          v152 = -1;
        }

        v153 = 2 * v152 + 2 * v151;
        v154 = *(v144 - v153);
        v155 = v151 - v146;
        if (v150 >= v149)
        {
          v155 = 0;
        }

        v156 = 2 * v155 + 2 * v152;
        v157 = *(v144 + v153);
        v158 = *(v144 - v156);
        v159 = *(v144 + v156);
        v160 = *v144;
        v161 = v158 - v160;
        LOWORD(v144) = v159 - v160;
        v162 = v154 - v158;
        v163 = v157 - v159;
        v164 = v145;
        v165 = v147;
        v166 = v146;
        v167 = v148 * v146;
        if (v150 >= v149)
        {
          if ((((v165 * (v167 * v162)) + (v161 * v164)) * v166) >= 0.0)
          {
            goto LABEL_62;
          }

          v168 = v144;
          LODWORD(v144) = v163;
        }

        else
        {
          if ((((v165 * (v167 * v161)) + (v162 * v164)) * v166) >= 0.0)
          {
            goto LABEL_62;
          }

          v168 = v163;
          LODWORD(v144) = v144;
        }

        if ((((v165 * (v167 * v144)) + (v168 * v164)) * v166) > 0.0)
        {
LABEL_62:
          v169 = 0;
          goto LABEL_64;
        }

        ++v136;
        ++*&v207[4 * v160];
        v169 = 0x80;
LABEL_64:
        v133[v143 + 1] = v169;
        v142 = v210;
        ++v143;
      }

      while (v143 + 1 < v210 - 1);
      v133 += v143;
      v141 = v133 + 1;
LABEL_66:
      *v141 = 0;
      v112 = v210;
      v139 += 2 * v210;
      v133 += 2;
      ++v140;
      v138 += 2 * v210;
      v137 += 2 * v210;
      if (v140 >= HIDWORD(v210) - 1)
      {
        v135 = v136;
        break;
      }
    }
  }

  if (v112 >= 1)
  {
    v170 = 0;
    do
    {
      v133[v170] = 0;
      v112 = v210;
      ++v170;
    }

    while (v170 < v210);
  }

  v171 = 0xFFFF;
  do
  {
    v172 = v171 - 1;
    if (v171 < 2)
    {
      break;
    }
  }

  while (!*&v207[4 * v171--]);
  v174 = 1;
  if (v172 >= 2)
  {
    v175 = ((v135 * a6) + 0.5);
    v176 = *(v207 + 1);
    if (v176 < v175)
    {
      v177 = 2;
      do
      {
        v174 = v177;
        if (v177 >= v172)
        {
          break;
        }

        v176 += *&v207[4 * v177++];
      }

      while (v176 < v175);
    }
  }

  WORD2(v209) = v174;
  HIWORD(v209) = ((v174 * a5) + 0.5);
  LODWORD(v209) = 0;
  v178 = HIDWORD(v210);
  bzero(a2, v112 * HIDWORD(v210));
  if (v178 < 3)
  {
    v184 = 0;
  }

  else
  {
    v179 = 1;
    do
    {
      if (v112 >= 3)
      {
        v180 = 1;
        do
        {
          v181 = v180 + v179 * v112;
          v182 = *&v205[2 * v181];
          if (v182 <= SHIWORD(v209))
          {
            v206[v181] = 0;
          }

          else if (v206[v181] == 128 && v182 >= SWORD2(v209))
          {
            v206[v181] = -1;
            *(a2 + v181) = -1;
            *&v208[4 * v209] = v181;
            LODWORD(v209) = v209 + 1;
          }

          ++v180;
          v112 = v210;
        }

        while (v180 < v210 - 1);
        v178 = HIDWORD(v210);
      }

      ++v179;
    }

    while (v179 < v178 - 1);
    v184 = v209;
  }

  while (v184)
  {
    LODWORD(v209) = --v184;
    v185 = v206;
    v186 = *&v208[4 * v184];
    v187 = v186 - 1;
    if (v206[v186 - 1] == 128)
    {
      v206[v187] = -1;
      *(a2 + v187) = -1;
      v185 = v206;
      *&v208[4 * v209] = v187;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v188 = v187 - v112;
    if (v185[v187 - v112] == 128)
    {
      v185[v188] = -1;
      *(a2 + v188) = -1;
      v185 = v206;
      *&v208[4 * v209] = v188;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v189 = v112 + v187;
    if (v185[v189] == 128)
    {
      v185[v189] = -1;
      *(a2 + v189) = -1;
      v185 = v206;
      *&v208[4 * v209] = v189;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v190 = v186 + 1;
    if (v185[v186 + 1] == 128)
    {
      v185[v190] = -1;
      *(a2 + v190) = -1;
      v185 = v206;
      *&v208[4 * v209] = v190;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v112 = v210;
    v191 = v190 - v210;
    if (v185[v190 - v210] == 128)
    {
      v185[v191] = -1;
      *(a2 + v191) = -1;
      v185 = v206;
      *&v208[4 * v209] = v191;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v192 = v112 + v190;
    if (v185[v192] == 128)
    {
      v185[v192] = -1;
      *(a2 + v192) = -1;
      v185 = v206;
      *&v208[4 * v209] = v192;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v193 = v112 + v186;
    if (v185[v112 + v186] == 128)
    {
      v185[v193] = -1;
      *(a2 + v193) = -1;
      v185 = v206;
      *&v208[4 * v209] = v193;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    v194 = v186 - v112;
    if (v185[v194] == 128)
    {
      v185[v194] = -1;
      *(a2 + v194) = -1;
      *&v208[4 * v209] = v194;
      v112 = v210;
      v184 = v209 + 1;
      LODWORD(v209) = v209 + 1;
    }

    if (v184 > HIDWORD(v210) * v112)
    {
      __assert_rtn("thresholdAndConnectCandidateEdges", "cannyEdge.c", 725, "context->edgeStackSize <= context->width*context->height");
    }
  }

  v195 = v196[0];

  free(v195);
}

uint64_t BresenhamCoords(int a1, int a2, uint64_t a3)
{
  v3 = a1;
  v4 = a2 - a1;
  v5 = a2 >> 16;
  v6 = a1 >> 16;
  v7 = (a2 >> 16) - (a1 >> 16);
  if ((v4 & 0x80000000) != 0)
  {
    v15 = a1 - a2;
    if ((v7 & 0x80000000) != 0)
    {
      v34 = v4 - v7;
      if (v4 > v7)
      {
        v35 = -2 * v4;
        v36 = 2 * (v7 - v4);
        v37 = v7 + 2 * v15;
        v38 = 1 - v7;
        v39 = (a3 + 2);
        do
        {
          *(v39 - 1) = v3;
          if (v37 <= 0)
          {
            v40 = v35;
          }

          else
          {
            v40 = v36;
          }

          LOWORD(v3) = v3 - (v37 > 0);
          *v39 = v6;
          v39 += 2;
          v37 += v40;
          --v6;
          --v38;
        }

        while (v38);
        v4 = (a1 >> 16) - (a2 >> 16);
        return v4 + 1;
      }

      v52 = -2 * v7;
      v53 = 2 * v34;
      v54 = v4 + 2 * ((a1 >> 16) - (a2 >> 16));
      v55 = 1 - v4;
      v56 = (a3 + 2);
      do
      {
        *v56 = v6;
        if (v54 <= 0)
        {
          v57 = v52;
        }

        else
        {
          v57 = v53;
        }

        LOWORD(v6) = v6 - (v54 > 0);
        *(v56 - 1) = v3;
        v54 += v57;
        --v3;
        v56 += 2;
        --v55;
      }

      while (v55);
    }

    else
    {
      if (v15 < v7)
      {
        v16 = -2 * v4;
        v17 = 2 * (v15 - v7);
        v18 = v16 - v7;
        v19 = (v5 - v6 + 1);
        v20 = (a3 + 2);
        do
        {
          *(v20 - 1) = v3;
          if (v18 <= 0)
          {
            v21 = v16;
          }

          else
          {
            v21 = v17;
          }

          LOWORD(v3) = v3 - (v18 > 0);
          *v20 = v6;
          v20 += 2;
          v18 += v21;
          ++v6;
          --v19;
        }

        while (v19);
        goto LABEL_19;
      }

      v41 = 2 * v7;
      v42 = 2 * (v4 + v7);
      v43 = v4 + 2 * v7;
      v44 = 1 - v4;
      v45 = (a3 + 2);
      do
      {
        *v45 = v6;
        if (v43 <= 0)
        {
          v46 = v41;
        }

        else
        {
          v46 = v42;
        }

        if (v43 > 0)
        {
          LOWORD(v6) = v6 + 1;
        }

        *(v45 - 1) = v3;
        v43 += v46;
        --v3;
        v45 += 2;
        --v44;
      }

      while (v44);
    }

LABEL_63:
    v4 = v15;
    return v4 + 1;
  }

  if ((v7 & 0x80000000) != 0)
  {
    v15 = (a1 >> 16) - (a2 >> 16);
    if (v15 <= v4)
    {
      v47 = -2 * v7;
      v48 = v47 - v4;
      v49 = (a2 - a1 + 1);
      v50 = (a3 + 2);
      do
      {
        *v50 = v6;
        if (v48 <= 0)
        {
          v51 = v47;
        }

        else
        {
          v51 = 2 * ((a1 >> 16) - (a2 >> 16) - v4);
        }

        LOWORD(v6) = v6 - (v48 > 0);
        *(v50 - 1) = v3;
        v48 += v51;
        ++v3;
        v50 += 2;
        --v49;
      }

      while (v49);
      return v4 + 1;
    }

    v22 = 2 * v4;
    v23 = 2 * (v4 + v7);
    v24 = v7 + 2 * v4;
    v25 = 1 - v7;
    v26 = (a3 + 2);
    do
    {
      *(v26 - 1) = v3;
      if (v24 <= 0)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      if (v24 > 0)
      {
        LOWORD(v3) = v3 + 1;
      }

      *v26 = v6;
      v26 += 2;
      v24 += v27;
      --v6;
      --v25;
    }

    while (v25);
    goto LABEL_63;
  }

  v8 = v7 - v4;
  if (v7 > v4)
  {
    v9 = 2 * v4;
    v10 = 2 * (v4 - v7);
    v11 = v9 - v7;
    v12 = (v5 - v6 + 1);
    v13 = (a3 + 2);
    do
    {
      *(v13 - 1) = v3;
      if (v11 <= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v11 > 0)
      {
        LOWORD(v3) = v3 + 1;
      }

      *v13 = v6;
      v13 += 2;
      v11 += v14;
      ++v6;
      --v12;
    }

    while (v12);
LABEL_19:
    v4 = (a2 >> 16) - (a1 >> 16);
    return v4 + 1;
  }

  v28 = 2 * v7;
  v29 = 2 * v8;
  v30 = v28 - v4;
  v31 = (a2 - a1 + 1);
  v32 = (a3 + 2);
  do
  {
    *v32 = v6;
    if (v30 <= 0)
    {
      v33 = v28;
    }

    else
    {
      v33 = v29;
    }

    if (v30 > 0)
    {
      LOWORD(v6) = v6 + 1;
    }

    *(v32 - 1) = v3;
    v30 += v33;
    ++v3;
    v32 += 2;
    --v31;
  }

  while (v31);
  return v4 + 1;
}

void sub_1A5F46BE8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (v29)
  {
    operator delete(v29);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x1A5F46624);
}

void sub_1A5F47654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::ImageClassifierEspresso>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1976130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::ImageDescriptorProcessorHyperplaneLSH::hashFeature(const float **this, const float *__B, float *__C)
{
  if (!__B || !__C)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3709;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  vDSP_mmul(this[3], 1, __B, 1, __C, 1, *(this + 3), 1uLL, *(this + 2));
  __Ba = 0.0;
  __Ca = 1.0;
  std::vector<float>::vector[abi:ne200100](__D, *(this + 3));
  vDSP_vthrsc(__C, 1, &__Ba, &__Ca, __D[0], 1, *(this + 3));
  v6 = 1.0;
  v7 = 0.0;
  vDSP_vclip(__D[0], 1, &v7, &v6, __C, 1, *(this + 3));
  if (__D[0])
  {
    __D[1] = __D[0];
    operator delete(__D[0]);
  }
}

void sub_1A5F49428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::ImageDescriptorProcessorHyperplaneLSH::~ImageDescriptorProcessorHyperplaneLSH(void **this)
{
  *this = &unk_1F1974A60;
  free(this[3]);
  this[3] = 0;

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1974A60;
  free(this[3]);
  this[3] = 0;
}

FILE *tearDownAndSignalErr(float **a1, float **a2, float **a3, __sFILE **a4, uint64_t a5)
{
  free(*a1);
  *a1 = 0;
  free(*a2);
  *a2 = 0;
  free(*a3);
  *a3 = 0;
  result = *a4;
  if (*a4)
  {
    result = fclose(result);
    *a4 = 0;
  }

  if ((a5 & 0x80) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = a5;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return result;
}

uint64_t vision::mod::ImageDescriptorProcessorHyperplaneLSH::ImageDescriptorProcessorHyperplaneLSH(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *a1 = &unk_1F1974A60;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = fopen(v5, "rb");
  v28 = v6;
  if (!v6)
  {
    goto LABEL_29;
  }

  v7 = v6;
  v26 = 0;
  v27 = 0;
  v24 = 1;
  v25 = 0;
  v8 = BinSerializer_freadInFloat(v6, "hash_size", 1, &v27, &v24);
  if (v8 == 384)
  {
    *(a1 + 12) = *v27;
  }

  else
  {
    tearDownAndSignalErr(&v27, &v26, &v25, &v28, v8);
    v7 = v28;
  }

  *(a1 + 16) = 1;
  if (BinSerializer_freadInFloat(v7, "num_hashes", 1, &v26, &v24) == 384)
  {
    *(a1 + 16) = *v26;
    v9 = BinSerializer_freadInFloat(v7, "feat_size", 1, &v25, &v24);
    if (v9 == 384)
    {
      v10 = *v25;
      *(a1 + 8) = v10;
    }

    else
    {
      tearDownAndSignalErr(&v27, &v26, &v25, &v28, v9);
      v10 = *(a1 + 8);
      v7 = v28;
    }

    v24 = *(a1 + 12) * v10;
    v15 = BinSerializer_freadInFloat(v7, "projection_matrix", 1, v4, &v24);
    if (v15 != 384)
    {
      tearDownAndSignalErr(&v27, &v26, &v25, &v28, v15);
    }

    v16 = &v27;
    v17 = &v26;
    v18 = &v25;
    v19 = &v28;
    goto LABEL_28;
  }

  v11 = *(a2 + 23) >= 0 ? a2 : *a2;
  v12 = fopen(v11, "rb");
  v33 = v12;
  if (!v12)
  {
LABEL_29:
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3701;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v13 = v12;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v14 = BinSerializer_freadInFloat(v12, "hash_size", 1, &v32, &v29);
  if (v14 == 384)
  {
    *(a1 + 12) = *v32;
  }

  else
  {
    tearDownAndSignalErr(&v32, &v31, &v30, &v33, v14);
    v13 = v33;
  }

  v20 = BinSerializer_freadInFloat(v13, "feat_size", 1, &v30, &v29);
  if (v20 == 384)
  {
    v21 = *v30;
    *(a1 + 8) = v21;
  }

  else
  {
    tearDownAndSignalErr(&v32, &v31, &v30, &v33, v20);
    v21 = *(a1 + 8);
    v13 = v33;
  }

  v29 = *(a1 + 12) * v21;
  v15 = BinSerializer_freadInFloat(v13, "projection_matrix", 1, v4, &v29);
  if (v15 != 384)
  {
    tearDownAndSignalErr(&v32, &v31, &v30, &v33, v15);
  }

  v16 = &v32;
  v17 = &v31;
  v18 = &v30;
  v19 = &v33;
LABEL_28:
  tearDownAndSignalErr(v16, v17, v18, v19, v15);
  return a1;
}

void sub_1A5F49ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNCCCharBoxContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,__CCCharBox>,std::__map_value_compare<int,std::__value_type<int,__CCCharBox>,std::less<int>,true>,std::allocator<std::__value_type<int,__CCCharBox>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,unsigned char>,std::__map_value_compare<int,std::__value_type<int,unsigned char>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned char>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1A5F55FB4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void vision::mod::LandmarkDetectorDNN_Options::~LandmarkDetectorDNN_Options(vision::mod::LandmarkDetectorDNN_Options *this)
{
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(this + 10));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(this + 7));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

void *std::map<vision::mod::_constellationType,std::pair<std::string,BOOL>>::map[abi:ne200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v10 = v3;
              v11 = *(v3 + 32);
              if (v8 >= v11)
              {
                break;
              }

              v3 = *v10;
              v9 = v10;
              if (!*v10)
              {
                goto LABEL_12;
              }
            }

            if (v11 >= v8)
            {
              break;
            }

            v9 = v10 + 1;
            v3 = v10[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_1A5F561D8(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned char,std::string>,void *>>>::operator()[abi:ne200100](0, v1);
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::LandmarkDetectorDNN::checkConstellation(uint64_t result, int a2)
{
  if (vision::mod::constellationTypeSize[a2] != result)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 2942;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  return result;
}

uint64_t vision::mod::ImageProcessing_Preprocessor::mapCoordinatesDestinationToSource(void *a1, float *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  Geometry2D_mallocCart2D(a1, *(a3 + 4));
  v7 = a2[32];
  v6 = a2[33];
  v9 = a2[34];
  v8 = a2[35];
  v10 = (v7 * v8) - (v6 * v9);
  if (fabsf(v10) < 0.00000011921)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 1902;
LABEL_26:
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v11 = v8 / v10;
  v12 = -v6 / v10;
  v34 = v11;
  v35 = v12;
  v13 = -v9 / v10;
  v14 = v7 / v10;
  v36 = v13;
  v37 = v14;
  v15 = a2[36];
  v16 = a2[37];
  v17 = v13 * v16;
  v18 = -((v13 * v16) + (v11 * v15));
  v19 = v14 * v16;
  v38 = v18;
  v39 = -(v19 + (v12 * v15));
  if (a3 == a1)
  {
    goto LABEL_24;
  }

  v20 = *a3;
  if (!*a3)
  {
    goto LABEL_24;
  }

  v21 = a3[1];
  if (!v21)
  {
    goto LABEL_24;
  }

  result = 1916;
  if (!a1)
  {
    goto LABEL_25;
  }

  v23 = *(a3 + 4);
  if (v23 < 1)
  {
    goto LABEL_25;
  }

  v24 = *a1;
  if (!*a1 || (v25 = a1[1]) == 0)
  {
LABEL_24:
    result = 1916;
LABEL_25:
    v32 = result;
    exception = __cxa_allocate_exception(8uLL);
    *exception = v32;
    goto LABEL_26;
  }

  v26 = *(a1 + 4);
  result = 1916;
  if (v26 < 1 || v23 != v26)
  {
    goto LABEL_25;
  }

  v27 = v17 + (v11 * v15);
  v28 = v19 + (v12 * v15);
  if (fabsf(v11 + -1.0) > 0.0001 || fabsf(v12) > 0.0001 || fabsf(v13) > 0.0001 || fabsf(v14 + -1.0) > 0.0001 || fabsf(v27) > 0.0001 || fabsf(v28) > 0.0001)
  {
    if (v23 > 7)
    {
      vDSP_vfill(&v38, v24, 1, v23);
      vDSP_vfill(&v39, a1[1], 1, *(a1 + 4));
      MEMORY[0x1AC558790](*a3, 1, &v34, *a1, 1, *a1, 1, *(a1 + 4));
      MEMORY[0x1AC558790](*a3, 1, &v35, a1[1], 1, a1[1], 1, *(a1 + 4));
      MEMORY[0x1AC558790](a3[1], 1, &v36, *a1, 1, *a1, 1, *(a1 + 4));
      return MEMORY[0x1AC558790](a3[1], 1, &v37, a1[1], 1, a1[1], 1, *(a1 + 4));
    }

    else
    {
      do
      {
        *v24++ = ((v13 * *v21) + (v11 * *v20)) - v27;
        v29 = *v20++;
        v30 = v29;
        v31 = *v21++;
        *v25++ = ((v14 * v31) + (v12 * v30)) - v28;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    result = Geometry2D_copyCart2D(a3, a1);
    if ((result & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  return result;
}

void sub_1A5F56A8C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v3 - 136));

  _Unwind_Resume(a1);
}

void sub_1A5F56EEC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v8 - 176));

  _Unwind_Resume(a1);
}

void sub_1A5F570B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a15, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__122(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__123(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5F57B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, void *a56)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(v59);

  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a50, 8);

  _Block_object_dispose((v60 - 144), 8);
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&a56);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28838(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_1F1975C88;
  *(result + 56) = *(a2 + 56);
  return result;
}

void sub_1A5F57F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a15;
  std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

void sub_1A5F582BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F58E6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, std::__shared_weak_count *a22, __int128 a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, __int128 a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F59380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_unfair_lock_s *a10)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(a10 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F59480(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1A5F59514(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1A5F597B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28963(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28992(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5F5C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29193(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _sequenceKeyComponentForArray(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v1];
    v3 = [v2 allObjects];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"[%@]", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

int *appendDequeElement(int *a1, void *__src)
{
  if (a1)
  {
    v4 = a1[3];
    v5 = a1[1];
    if (v4 == v5 - 1)
    {
      reallocDeque(a1, 2 * v5, 1, 0);
      v4 = a1[3];
    }

    v6 = v4 + 1;
    a1[3] = v6;
    memcpy((*(a1 + 2) + *a1 * v6), __src, *a1);
  }

  return a1;
}

int *reallocDeque(int *a1, int a2, int a3, int a4)
{
  v8 = malloc_type_malloc(*a1 * a2, 0x63C82868uLL);
  v9 = v8;
  v10 = a1[2];
  v11 = a1[3] - v10;
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 + ((a2 - a3 + ~v11) >> 1);
  memcpy(&v8[v13 * *a1], (*(a1 + 2) + *a1 * v10), *a1 + *a1 * v11);
  a1[2] = v13;
  a1[3] = v13 + v11;
  v14 = *(a1 + 2);
  if (v14)
  {
    free(v14);
  }

  *(a1 + 2) = v9;
  a1[1] = a2;
  return a1;
}

int *prependDequeElement(int *a1, void *__src)
{
  if (a1)
  {
    v4 = a1[2];
    if (!v4)
    {
      reallocDeque(a1, 2 * a1[1], 1, 1);
      v4 = a1[2];
    }

    v5 = v4 - 1;
    a1[2] = v5;
    memcpy((*(a1 + 2) + *a1 * v5), __src, *a1);
  }

  return a1;
}

uint64_t appendDeque(uint64_t a1, int *a2, int a3)
{
  if (a1 && a2)
  {
    v6 = a2[3] - a2[2] + 1;
    v7 = *(a1 + 12);
    v8 = v7 + v6;
    if (v7 + v6 >= *(a1 + 4))
    {
      reallocDeque(a1, 2 * (v6 + v7 - *(a1 + 8)) + 2, a2[3] - a2[2] + 1, 0);
      v7 = *(a1 + 12);
      v8 = v7 + v6;
    }

    v9 = *a1;
    v10 = (*(a1 + 16) + v9 + v9 * v7);
    *(a1 + 12) = v8;
    v11 = *(a2 + 2);
    v12 = *a2;
    if (a3)
    {
      reverseCopy(v10, (v11 + v12 * a2[3]), v9, v6);
    }

    else
    {
      memcpy(v10, (v11 + v12 * a2[2]), v12 * v6);
    }
  }

  return a1;
}

uint64_t prependDeque(uint64_t a1, int *a2, int a3)
{
  if (a1 && a2)
  {
    v6 = a2[3] - a2[2] + 1;
    v7 = *(a1 + 8);
    v8 = v7 - v6;
    if (v7 - v6 < 0)
    {
      reallocDeque(a1, 2 * (v6 + *(a1 + 12) - v7) + 2, a2[3] - a2[2] + 1, 1);
      v8 = *(a1 + 8) - v6;
    }

    *(a1 + 8) = v8;
    v9 = (*(a1 + 16) + *a1 * v8);
    v10 = *(a2 + 2);
    v11 = *a2;
    if (a3)
    {
      reverseCopy(v9, (v10 + v11 * a2[3]), *a1, v6);
    }

    else
    {
      memcpy(v9, (v10 + v11 * a2[2]), v11 * v6);
    }
  }

  return a1;
}

float Projections_computeMeanStdTable(float *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  *a3 = 0;
  *a4 = 0;
  if (a2 >= 1)
  {
    v4 = (a2 + 1) - 1;
    v5 = (a4 + 1);
    v6 = (a3 + 1);
    do
    {
      *v6 = *(v6 - 1) + *a1;
      ++v6;
      v7 = *a1++;
      result = *(v5 - 1) + (v7 * v7);
      *v5++ = result;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1A5F5EBB8(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_begin_catch(exc_buf);
  os_unfair_lock_unlock(v10 + 12);
  objc_exception_rethrow();
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5F5EF48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void RamerDouglasPeucker(uint64_t a1, uint64_t a2, float a3, double a4, double a5, double a6)
{
  v7 = *a1;
  v8 = (*(a1 + 8) - *a1) >> 3;
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v12 = v8 - 1;
    if (v8 - 1 < 2)
    {
      v21 = 0;
      v15 = 0.0;
    }

    else
    {
      v13 = 0;
      v14 = vsub_f32(v7[v12], *v7);
      *&a6 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
      v15 = 0.0;
      v16 = vbsl_s8(vdup_lane_s32(vmvn_s8(vorr_s8(vcgt_f32(0, *&a6), vcgt_f32(*&a6, 0))), 0), v14, vdiv_f32(v14, vdup_lane_s32(*&a6, 0)));
      v17 = 1;
      do
      {
        v18 = vsub_f32(v7[v17], *v7);
        v19 = vsub_f32(v18, vmul_n_f32(v16, COERCE_FLOAT(vmul_f32(v16, v18).i32[1]) + (v16.f32[0] * v18.f32[0])));
        v20 = fabsf(sqrtf(vaddv_f32(vmul_f32(v19, v19))));
        if (v20 > v15)
        {
          v13 = v17;
          v15 = v20;
        }

        ++v17;
        --v9;
      }

      while (v9);
      v21 = v13;
    }

    if (v15 <= a3)
    {
      *(a2 + 8) = *a2;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a2, v7);
      v31 = (*a1 + 8 * v12);

      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(a2, v31);
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
      memset(v56, 0, sizeof(v56));
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100INS_11__wrap_iterIPKS1_EES9_EEvT_T0_m(v56, v7, &v7[v21 + 1], (v21 * 8 + 8) >> 3);
      v22 = *(a1 + 8);
      v23 = v21 * 8 + *a1;
      memset(__p, 0, sizeof(__p));
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100INS_11__wrap_iterIPKS1_EES9_EEvT_T0_m(__p, v23, v22, (v22 - v23) >> 3);
      RamerDouglasPeucker(v56, &v60, a3);
      RamerDouglasPeucker(__p, &v57, a3);
      v24 = (v61 - 8);
      v25 = v61 - 8 - v60;
      v26 = *(a2 + 16);
      v27 = *a2;
      if (v26 - *a2 < v25)
      {
        v28 = v25 >> 3;
        if (v27)
        {
          *(a2 + 8) = v27;
          operator delete(v27);
          v26 = 0;
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = 0;
        }

        if (!(v28 >> 61))
        {
          v29 = v26 >> 2;
          if (v26 >> 2 <= v28)
          {
            v29 = v25 >> 3;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFF8)
          {
            v30 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v29;
          }

          std::vector<long long>::__vallocate[abi:ne200100](a2, v30);
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v32 = *(a2 + 8);
      v33 = v32 - v27;
      if (v32 - v27 >= v25)
      {
        if (v24 != v60)
        {
          memmove(v27, v60, v25);
        }

        v35 = &v27[v25];
      }

      else
      {
        v34 = v60 + v33;
        if (v32 != v27)
        {
          memmove(*a2, v60, v33);
          v32 = *(a2 + 8);
        }

        if (v24 != v34)
        {
          memmove(v32, v34, v24 - v34);
        }

        v35 = &v32[v24 - v34];
      }

      *(a2 + 8) = v35;
      v36 = v57;
      v37 = v58 - v57;
      v38 = (v58 - v57) >> 3;
      if (v38 >= 1)
      {
        v39 = *(a2 + 16);
        if (v39 - v35 >= v37)
        {
          if (v57 != v58)
          {
            memmove(v35, v57, v58 - v57);
          }

          *(a2 + 8) = &v35[v37];
        }

        else
        {
          v40 = *a2;
          v41 = &v35[-*a2];
          v42 = v38 + (v41 >> 3);
          if (v42 >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v43 = v39 - v40;
          v44 = (v39 - v40) >> 2;
          if (v44 > v42)
          {
            v42 = v44;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v42;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v45);
          }

          v46 = 8 * (v41 >> 3);
          v47 = (v46 + v37);
          v48 = v46;
          do
          {
            v49 = *v36++;
            *v48++ = v49;
            v37 -= 8;
          }

          while (v37);
          memcpy(v47, v35, *(a2 + 8) - v35);
          v50 = *a2;
          v51 = &v47[*(a2 + 8) - v35];
          *(a2 + 8) = v35;
          v52 = v35 - v50;
          v53 = (v46 - (v35 - v50));
          memcpy(v53, v50, v52);
          v54 = *a2;
          *a2 = v53;
          *(a2 + 8) = v51;
          *(a2 + 16) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v56[0])
      {
        operator delete(v56[0]);
      }

      if (v57)
      {
        operator delete(v57);
      }

      if (v60)
      {
        operator delete(v60);
      }
    }
  }
}

void sub_1A5F5F338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100INS_11__wrap_iterIPKS1_EES9_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A5F5F3E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_1A5F5F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VNContour;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5F5FA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::CVMLCanceller::shouldStop(vision::mod::CVMLCanceller *this, int a2)
{
  v2 = *(this + 3);
  if (v2 <= 0)
  {
    v3 = *(this + 8);
  }

  else
  {
    v3 = v2 <= a2;
  }

  return v3 & 1;
}

void std::vector<espresso_buffer_t>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v14 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 3);
    v15 = v14 + 1;
    if (v14 + 1 > 0x186186186186186)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v16 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 3);
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    if (v16 >= 0xC30C30C30C30C3)
    {
      v17 = 0x186186186186186;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<espresso_buffer_t>>(v17);
    }

    v18 = 168 * v14;
    v19 = *a2;
    v20 = a2[2];
    *(v18 + 16) = a2[1];
    *(v18 + 32) = v20;
    *v18 = v19;
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[6];
    *(v18 + 80) = a2[5];
    *(v18 + 96) = v23;
    *(v18 + 48) = v21;
    *(v18 + 64) = v22;
    v24 = a2[7];
    v25 = a2[8];
    v26 = a2[9];
    *(v18 + 160) = *(a2 + 20);
    *(v18 + 128) = v25;
    *(v18 + 144) = v26;
    *(v18 + 112) = v24;
    v13 = 168 * v14 + 168;
    v27 = *(a1 + 8) - *a1;
    v28 = v18 - v27;
    memcpy((v18 - v27), *a1, v27);
    v29 = *a1;
    *a1 = v28;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 16) = a2[1];
    *(v3 + 32) = v6;
    *v3 = v5;
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[6];
    *(v3 + 80) = a2[5];
    *(v3 + 96) = v9;
    *(v3 + 48) = v7;
    *(v3 + 64) = v8;
    v10 = a2[7];
    v11 = a2[8];
    v12 = a2[9];
    *(v3 + 160) = *(a2 + 20);
    *(v3 + 128) = v11;
    *(v3 + 144) = v12;
    *(v3 + 112) = v10;
    v13 = v3 + 168;
  }

  *(a1 + 8) = v13;
}

uint64_t vision::mod::FaceprintAndAttributes::bindFaceAttributes(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    v6 = &CVML_status_ok;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = &CVML_status_ok;
    while (!espresso_network_bind_buffer())
    {
      ++v5;
      v4 += 168;
      v3 += 24;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v5)
      {
        return (*v6 + 128) | 0x2300;
      }
    }

    v6 = &CVML_status_memoryAllocationError;
  }

  return (*v6 + 128) | 0x2300;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1A5F60014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string const*,std::string const*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::__shared_ptr_emplace<vision::mod::ConcreteFaceprintAndAttributes>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (espresso_plan_destroy())
    {
      syslog(5, "[Error] Fail to destroy the existing espresso plan");
    }

    else
    {
      *(a1 + 120) = 0;
      if (espresso_context_destroy())
      {
        syslog(5, "[Error] Fail to destroy the existing espresso context");
      }

      else
      {
        *(a1 + 112) = 0;
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(*(a1 + 6752));
  v2 = *(a1 + 6736);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 6704));
  v6 = (a1 + 6672);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 6648);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 6280);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (a1 + 6256);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(a1 + 6232);
  if (v3)
  {
    *(a1 + 6240) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 6208);
  if (v4)
  {
    *(a1 + 6216) = v4;
    operator delete(v4);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::pair<std::shared_ptr<cvml::util::mapped_model_file>,int>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<vision::mod::ConcreteFaceprintAndAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974CE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::FaceprintAndAttributes::getFaceAttributesOutput(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 6620) == 1)
  {
    v2 = *(a1 + 6672);
    v3 = (a1 + 6680);
    if (v2 == (a1 + 6680))
    {
      v5 = &CVML_status_ok;
    }

    else
    {
      v5 = &CVML_status_ok;
      do
      {
        v6 = *(v2 + 14);
        v7 = *std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::__find_equal<std::string>(a2, &v12, v2 + 4);
        if (!v7)
        {
          operator new();
        }

        *(v7 + 56) = v6;
        v8 = v2[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2[2];
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v2 = v9;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = &CVML_status_IOError;
  }

  return (*v5 + 128) | 0x2300;
}

void sub_1A5F606B4(void *a1)
{
  __cxa_begin_catch(a1);
  v1(v2);
  __cxa_rethrow();
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<float>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<float>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<float>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1A5F6081C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferAbstract>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1A5F60970(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<vision::mod::ImageDescriptorBufferFloat32>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::FaceprintAndAttributes::normalizeFacePrintData(vision::mod::FaceprintAndAttributes *this, const void *a2, int a3, float *a4, float *a5)
{
  if (a4)
  {
    if (a2 < 1)
    {
      goto LABEL_11;
    }

    v5 = a2;
    v6 = 0.0;
    v7 = a4;
    v8 = a2;
    do
    {
      v9 = *this;
      this = (this + 4);
      *v7++ = v9;
      v6 = v6 + v9;
      --v8;
    }

    while (v8);
    if (a3)
    {
      v10 = v6 / a2;
      v11 = 0.0;
      v12 = a4;
      v13 = a2;
      do
      {
        v14 = *v12 - v10;
        *v12++ = v14;
        v11 = v11 + (v14 * v14);
        --v13;
      }

      while (v13);
      v15 = &CVML_status_ok;
      v16 = sqrtf(v11);
      do
      {
        *a4 = *a4 / v16;
        ++a4;
        --v5;
      }

      while (v5);
    }

    else
    {
LABEL_11:
      v15 = &CVML_status_ok;
    }
  }

  else
  {
    v15 = &CVML_status_invalidParameter;
  }

  return (*v15 + 128) | 0x2300;
}

uint64_t std::__shared_ptr_pointer<float *,void (*)(void *),std::allocator<float>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A6052032))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<float *,void (*)(void *),std::allocator<float>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F63F14(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5F654EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1A5F671E0(_Unwind_Exception *a1)
{
  v5 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F67B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F69328(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x1A5F68A70);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F6A88C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v2 + 8));
  MEMORY[0x1AC556B00](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1A5F6A9A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  *(v2 - 56) = va;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  vision::mod::LandmarkDetectorDNN_Options::~LandmarkDetectorDNN_Options(va1);
  _Unwind_Resume(a1);
}

void sub_1A5F6AB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v4 - 64));
  vision::mod::LandmarkDetectorDNN_Options::~LandmarkDetectorDNN_Options(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::LandmarkDetectorDNN>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    espresso_plan_destroy();
    espresso_context_destroy();
  }

  v2 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v2)
  {
    vision::mod::ImageProcessing_Preprocessor::~ImageProcessing_Preprocessor(v2);
    MEMORY[0x1AC556B00]();
  }

  std::__tree<std::__value_type<std::string,float>,std::__map_value_compare<std::string,std::__value_type<std::string,float>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float>>>::destroy(*(a1 + 192));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(a1 + 168));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(a1 + 144));
  std::__tree<std::__value_type<unsigned char,std::string>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::string>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::string>>>::destroy(*(a1 + 120));
  if (*(a1 + 111) < 0)
  {
    v3 = *(a1 + 88);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<vision::mod::LandmarkDetectorDNN>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1974EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F6BF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F6C260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __VNIOSurfaceBackedPixelBufferAttributes_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E69660D8];
  values = v3;
  keys[0] = v4;
  VNIOSurfaceBackedPixelBufferAttributes::pixelBufferAttributes = CFDictionaryCreate(v0, keys, &values, 1, v1, v2);
  if (v3)
  {
    CFRelease(v3);
  }
}

CGColorSpaceRef VNColorspaceForFormat(int a1, int *a2)
{
  if (a1 > 1094862673)
  {
    if (a1 <= 1278226487)
    {
      if (a1 == 1094862674)
      {
        result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v4 = 8193;
        goto LABEL_21;
      }

      if (a1 == 1111970369)
      {
        result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v4 = 8194;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (a1 == 1278226534 || a1 == 1278226488)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a1 <= 875704421)
  {
    if (a1 == 32)
    {
      result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v4 = 2;
      goto LABEL_21;
    }

    if (a1 != 40)
    {
      goto LABEL_18;
    }

LABEL_15:
    v5 = MEMORY[0x1E695F128];
LABEL_19:
    result = CGColorSpaceCreateWithName(*v5);
    goto LABEL_20;
  }

  if (a1 != 875704422 && a1 != 875704438)
  {
LABEL_18:
    v5 = MEMORY[0x1E695F1C0];
    goto LABEL_19;
  }

  result = CGColorSpaceCreateDeviceRGB();
LABEL_20:
  v4 = 0;
LABEL_21:
  if (a2)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t VNCVPixelBufferCreateUsingIOSurface(size_t width, size_t height, OSType pixelFormatType, CFDictionaryRef theDict, CVPixelBufferRef *a5)
{
  if (!a5)
  {
    return 4294960635;
  }

  if (VNIOSurfaceBackedPixelBufferAttributes::onceToken != -1)
  {
    dispatch_once(&VNIOSurfaceBackedPixelBufferAttributes::onceToken, &__block_literal_global_30784);
  }

  v10 = VNIOSurfaceBackedPixelBufferAttributes::pixelBufferAttributes;
  v11 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v13 = CFDictionaryGetCount(v10);
    theDict = CFDictionaryCreateMutableCopy(v11, v13 + Count, theDict);
    CFDictionaryApplyFunction(v10, _mergeKeysAndValuesIntoTargetCFMutableDictionary, theDict);
  }

  pixelBufferOut = 0;
  if (theDict)
  {
    v14 = theDict;
  }

  else
  {
    v14 = v10;
  }

  v15 = CVPixelBufferCreate(v11, width, height, pixelFormatType, v14, &pixelBufferOut);
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!v15)
  {
    *a5 = pixelBufferOut;
  }

  return v15;
}

void sub_1A5F6CC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F6DBD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F6E4D0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_1A5F6EAD0(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5F71318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  a22 = &a19;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&a22);

  _Unwind_Resume(a1);
}

void sub_1A5F71A34(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_1A5F71CA8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5F71D8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5F71E3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5F73EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  _Block_object_dispose(&a53, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31156(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5F750A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, void *a33, uint64_t a34, void *a35)
{
  __cxa_guard_abort(&_ZGVZZ128__VNANFDMultiDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler__EUb_E27duplicatedObjectToBeRemoved);

  objc_destroyWeak(&STACK[0x300]);
  _Block_object_dispose(&STACK[0x308], 8);
  _Block_object_dispose((v36 - 240), 8);

  v38 = *(v36 - 192);
  if (v38)
  {
    *(v36 - 184) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t ___Z51VNRecognizedObjectObservationsOnlySortingComparatorv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
  {
    v6 = &__block_literal_global_133;
    v7 = __VNDefaultRecognizedObjectObservationsSortingComparator_block_invoke(&__block_literal_global_133, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void fftGrayMag(const DSPComplex *a1, uint64_t a2, float *a3)
{
  v4 = a2;
  v6 = (a2 + 261632);
  v7 = (a2 + 0x20000);
  v8 = a3 + 0x8000;
  v63 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  v62 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  v9 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v10 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v11 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v66 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v65 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v64 = malloc_type_malloc(0x20000uLL, 0x100004052888210uLL);
  v12 = malloc_type_malloc(0x40000uLL, 0x100004052888210uLL);
  bzero(v12, 0x40000uLL);
  v13 = 0;
  do
  {
    v14 = *(&a1->real + v13) - *(&a1[32640].real + v13);
    *(&v12->real + v13) = v14;
    *(&v12[32640].real + v13) = -v14;
    v13 += 4;
  }

  while (v13 != 1024);
  v15 = 0;
  do
  {
    v16 = &v12[v15];
    v17 = a1[v15].real - a1[v15 + 127].imag;
    *v16 = v12[v15].real + v17;
    v16[255] = v12[v15 + 127].imag - v17;
    v15 += 128;
  }

  while ((v15 * 8) != 0x40000);
  __Z.realp = v65;
  __Z.imagp = v64;
  __C.realp = v9;
  __C.imagp = v10;
  v67.realp = v11;
  v67.imagp = v66;
  vDSP_ctoz(a1, 2, &__Z, 1, 0x8000uLL);
  fftsetup = vDSP_create_fftsetup(8uLL, 0);
  vDSP_fft2d_zrop(fftsetup, &__Z, 1, 0, &__C, 1, 0, 8uLL, 8uLL, 1);
  vDSP_ctoz(v12, 2, &__Z, 1, 0x8000uLL);
  vDSP_fft2d_zrop(fftsetup, &__Z, 1, 0, &v67, 1, 0, 8uLL, 8uLL, 1);
  realp = __C.realp;
  imagp = __C.imagp;
  if (a3)
  {
    v21 = v67.realp;
    v22 = v67.imagp;
    *__C.realp = *__C.realp - (*v67.realp * *a3);
    *imagp = *imagp - (*v22 * a3[128]);
    realp[128] = realp[128] - (v21[128] * *v8);
    imagp[128] = imagp[128] - (v22[128] * v8[128]);
    for (i = 256; i != 0x8000; i += 256)
    {
      realp[i] = realp[i] - (v21[i] * a3[i]);
    }

    v24 = a3 + 384;
    v25 = imagp + 256;
    v26 = v22 + 256;
    v27 = 127;
    do
    {
      *v25 = *v25 - (*v26 * *v24);
      v24 += 256;
      v25 += 256;
      v26 += 256;
      --v27;
    }

    while (v27);
    v28 = 0;
    v29 = imagp + 1;
    v30 = v22 + 1;
    v31 = realp + 1;
    v32 = v21 + 1;
    v33 = a3 + 1;
    do
    {
      for (j = 0; j != 127; ++j)
      {
        v35 = v33[j];
        v31[j] = v31[j] - (v32[j] * v35);
        v29[j] = v29[j] - (v30[j] * v35);
      }

      ++v28;
      v29 += 128;
      v30 += 128;
      v31 += 128;
      v32 += 128;
      v33 += 256;
    }

    while (v28 != 256);
  }

  *v4 = *realp;
  v36 = v4 + 128;
  v4[128] = *imagp;
  *v7 = *(realp + 128);
  v7[128] = *(imagp + 128);
  v37 = realp + 256;
  v38 = 65280;
  v39 = 256;
  do
  {
    *&v4[v39] = sqrtf((v37[128] * v37[128]) + (*v37 * *v37));
    *&v4[v38] = sqrtf((v37[128] * v37[128]) + (*v37 * *v37));
    v38 -= 256;
    v37 += 256;
    v39 += 256;
  }

  while (v38 != 0x8000);
  v40 = imagp + 256;
  v41 = (v4 + 384);
  v42 = 127;
  do
  {
    *v41 = sqrtf((v40[128] * v40[128]) + (*v40 * *v40));
    *v6 = sqrtf((v40[128] * v40[128]) + (*v40 * *v40));
    v40 += 256;
    v41 += 256;
    v6 -= 256;
    --v42;
  }

  while (v42);
  v43 = 0;
  v44 = imagp + 1;
  v45 = realp + 1;
  v46 = v4;
  do
  {
    v47 = 0;
    v48 = 255;
    do
    {
      *&v46[v47 + 1] = sqrtf((v44[v47] * v44[v47]) + (v45[v47] * v45[v47]));
      *&v46[v48] = sqrtf((v44[v47] * v44[v47]) + (v45[v47] * v45[v47]));
      ++v47;
      --v48;
    }

    while (v47 != 127);
    ++v43;
    v46 += 256;
    v44 += 128;
    v45 += 128;
  }

  while (v43 != 256);
  v49 = 0;
  v50 = v4;
  do
  {
    v51 = 0;
    v52 = v50 + 32896;
    do
    {
      v53 = *&v50[v51];
      *&v50[v51] = *&v52[v51];
      *&v52[v51] = v53;
      v51 += 4;
    }

    while (v51 != 128);
    v50 += 256;
    ++v49;
  }

  while (v49 != 128);
  v54 = 0;
  v55 = v7;
  do
  {
    for (k = 0; k != 128; k += 4)
    {
      v57 = *&v36[k];
      *&v36[k] = *&v55[k];
      *&v55[k] = v57;
    }

    v36 += 256;
    v55 += 256;
    ++v54;
  }

  while (v54 != 128);
  v58 = 0;
  v59 = v4 + 65280;
  do
  {
    for (m = 0; m != 128; m += 4)
    {
      v61 = *&v4[m + 256];
      *&v4[m + 256] = *&v59[m];
      *&v59[m] = v61;
    }

    v59 -= 256;
    ++v58;
    v4 += 256;
  }

  while (v58 != 127);
  vDSP_destroy_fftsetup(fftsetup);
  free(v12);
  free(v65);
  free(v64);
  free(v10);
  free(v9);
  free(v66);
  free(v11);
  free(v63);
  free(v62);
  v7[128] = 0;
}

float fftProject(uint64_t a1, float *a2, float *a3, float a4)
{
  v6 = a2;
  bzero(a2, 0x1680uLL);
  v8 = malloc_type_malloc(0x1680uLL, 0x100004052888210uLL);
  bzero(v8, 0x1680uLL);
  v9 = vcvtms_s32_f32(tanf(0.0099753) * 126.0);
  if (v9 > -127)
  {
    v10 = vcvtms_s32_f32(a4 * 126.0);
    v11 = v10 * v10;
    v12 = -v9;
    do
    {
      v13 = vcvtms_s32_f32(sqrtf((15876 - v12 * v12)) + 0.5);
      if (v11 - v12 * v12 >= 0 && (v14 = -floorf(sqrtf((v11 - v12 * v12)) + 0.5), v14 < 1))
      {
        innerLoopBlock(-v13, v14 - 1, v12, v6, v8, a1);
        v15 = 1 - v14;
      }

      else
      {
        v15 = -v13;
      }

      innerLoopBlock(v15, v13, v12++, v6, v8, a1);
    }

    while (v12 != 127);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0.0;
  do
  {
    v19 = v6[v16] / *&v8[4 * v16];
    *&v8[4 * v16] = v19;
    if (v19 > v18)
    {
      v17 = v16;
      v18 = v19;
    }

    ++v16;
  }

  while (v16 != 1440);
  v20 = 5756;
  v21 = 1.0 / v18;
  do
  {
    *v6++ = v21 * *&v8[v20];
    v20 -= 4;
  }

  while (v20 != -4);
  free(v8);
  result = vcvts_n_f32_s32(1439 - v17, 3uLL);
  *a3 = result;
  return result;
}

void innerLoopBlock(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 <= a2)
  {
    v8 = a3 * a3;
    v9 = a3;
    v10 = a1;
    v11 = a2 + 1;
    v12 = a6 + 4 * ((a3 << 8) + 32896);
    while (1)
    {
      v14 = atan2f(v9, v10);
      if (v14 < 0.0)
      {
        v15 = v14 + 6.28318531;
        v14 = v15;
      }

      v20 = (v8 + v10 * v10);
      v16 = ((0.70711 / sqrtf(v20)) * 1440.0) / 3.14159265;
      v17 = v14 / 3.14159265 * 1440.0;
      v18 = v17 - v16;
      v19 = v16 + v17;
      LODWORD(v13) = vcvtms_s32_f32(v18 + 0.5);
      LODWORD(v20) = vcvtms_s32_f32(v19 + 0.5);
      if (v20 != v13)
      {
        break;
      }

      if (v13 <= 0x59F)
      {
        v21 = v19 - v18;
        *(a4 + 4 * v13) = *(a4 + 4 * v13) + (*(v12 + 4 * v10) * v21);
LABEL_26:
        *(a5 + 4 * v13) = v21 + *(a5 + 4 * v13);
      }

LABEL_27:
      if (v11 == ++v10)
      {
        return;
      }
    }

    if (v20 - v13 == 1)
    {
      if (v18 >= 0.0 && v13 <= 1439)
      {
        v22 = (v13 + 1) - v18;
        *(a4 + 4 * v13) = *(a4 + 4 * v13) + (*(v12 + 4 * v10) * v22);
        *(a5 + 4 * v13) = v22 + *(a5 + 4 * v13);
      }

      if ((v20 & 0x80000000) != 0 || v19 >= 1440.0)
      {
        goto LABEL_27;
      }

      v21 = (v20 - 1) - v19;
      v23 = *(v12 + 4 * v10);
    }

    else
    {
      v23 = *(v12 + 4 * v10);
      v24 = v13 + 1;
      if ((v13 & 0x80000000) == 0 && v18 < 1440.0)
      {
        v25 = v24 - v18;
        *(a4 + 4 * v13) = *(a4 + 4 * v13) + (v23 * v25);
        *(a5 + 4 * v13) = v25 + *(a5 + 4 * v13);
      }

      if (v24 < v20)
      {
        do
        {
          if ((v24 - 1) >= -1 && v24 <= 1439)
          {
            *(a4 + 4 * v24) = v23 + *(a4 + 4 * v24);
            *(a5 + 4 * v24) = *(a5 + 4 * v24) + 1.0;
          }

          ++v24;
        }

        while (v20 != v24);
      }

      if (v20 > 0x59F)
      {
        goto LABEL_27;
      }

      v21 = (v20 - 1) - v19;
    }

    *(a4 + 4 * v20) = *(a4 + 4 * v20) + (v23 * v21);
    v13 = v20;
    goto LABEL_26;
  }
}

void vision::mod::GreedyClusterer::deserializeStatus(vision::mod::GreedyClusterer *this, int a2, int a3)
{
  v12 = 0;
  read(a2, &v12, 8uLL);
  std::string::basic_string[abi:ne200100](__b, v12);
  if (v11 >= 0)
  {
    v6 = __b;
  }

  else
  {
    v6 = __b[0];
  }

  read(a2, v6, v12);
  createFullPath(&__p, *(this + 7), __b);
  if (a3)
  {
    cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createReadOnlyFromContentsOfFile(&__p);
    v7 = *(this + 7);
    v8 = *(v7 + 80);
    *(v7 + 72) = 0;
    *(v7 + 80) = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    std::shared_ptr<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const>::reset[abi:ne200100]<cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore> const,0>();
  }

  cvml::util::BackedBuffer<cvml::util::MMapFileBackingStore>::createFromContentsOfFile(&__p);
}

void sub_1A5F775C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F776F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL vision::mod::GreedyClusterer::serializeStatus(vision::mod::GreedyClusterer *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  VNValidatedLog(1, @"  GreedyClusterer::serializeStatus - enter", a3, a4, a5, a6, a7, a8, v46);
  if (a2 == -1)
  {
    VNValidatedLog(4, @"  GreedyClusterer: Failed to open file - skipping serialization", v10, v11, v12, v13, v14, v15, v47);
  }

  else
  {
    vision::mod::GreedyClusterer::private_t::clusters_t::newMapFilePath(&__s, *(this + 7));
    getRelativePath(&__str, *(this + 7), &__s);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    VNValidatedLog(1, @"  GreedyClusterer::serializeStatus - saving map file: %s", v16, v17, v18, v19, v20, v21, p_s);
    v23 = *(this + 7);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &__s;
    }

    else
    {
      v24 = __s.__r_.__value_.__r.__words[0];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v24);
    v31 = *(v23 + 88);
    if (v31 || (v31 = *(v23 + 72)) != 0)
    {
      v32 = cvml::util::MMapFileBackingStore::writeToFile(v31, __p);
    }

    else
    {
      v32 = 0;
    }

    if (v50 < 0)
    {
      operator delete(__p[0]);
    }

    if (!v32)
    {
      VNValidatedLog(4, @"  GreedyClusterer: failed to save the file", v25, v26, v27, v28, v29, v30, v48);
      exception = __cxa_allocate_exception(8uLL);
      *exception = 5236;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    __p[0] = size;
    write(a2, __p, 8uLL);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    write(a2, p_str, __p[0]);
    std::string::operator=((*(this + 7) + 24), &__str);
    write(a2, (*(this + 7) + 104), 4uLL);
    write(a2, (*(this + 7) + 112), 8uLL);
    __p[0] = ((*(*(this + 7) + 56) - *(*(this + 7) + 48)) >> 2);
    write(a2, __p, 8uLL);
    v41 = *(*(this + 7) + 48);
    if (((*(*(this + 7) + 56) - v41) >> 2) >= 1)
    {
      v42 = 0;
      v43 = 0;
      do
      {
        write(a2, (v41 + v42), 4uLL);
        ++v43;
        v41 = *(*(this + 7) + 48);
        v42 += 4;
      }

      while (v43 < ((*(*(this + 7) + 56) - v41) >> 2));
    }

    VNValidatedLog(1, @"  GreedyClusterer::serializeStatus - done", v35, v36, v37, v38, v39, v40, v48);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  return a2 != -1;
}

void sub_1A5F7798C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::GreedyClusterer::private_t::clusters_t::newMapFilePath(std::string *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  *uu = 0;
  v18 = 0;
  MEMORY[0x1AC558570](uu);
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  std::string::basic_string[abi:ne200100]<0>(&v14, out);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(&v14, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, ".cmap");
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  v11 = std::string::append(&v15, v9, v10);
  *a1 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_1A5F77B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::GreedyClusterer::~GreedyClusterer(vision::mod::GreedyClusterer *this)
{
  vision::mod::GreedyClusterer::~GreedyClusterer(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1975018;
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void non-virtual thunk tovision::mod::GreedyClustererFaces::~GreedyClustererFaces(vision::mod::GreedyClustererFaces *this)
{
  vision::mod::GreedyClustererFaces::~GreedyClustererFaces((this - 8));

  JUMPOUT(0x1AC556B00);
}

{
  vision::mod::GreedyClustererFaces::~GreedyClustererFaces((this - 8));
}

void vision::mod::GreedyClustererFaces::~GreedyClustererFaces(vision::mod::GreedyClustererFaces *this)
{
  *this = &unk_1F1975048;
  v2 = (this + 8);
  *(this + 1) = &unk_1F1975128;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 21));
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 18));
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(this + 15));
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(*(this + 12));
  vision::mod::GreedyClusterer::~GreedyClusterer(v2);
}

{
  vision::mod::GreedyClustererFaces::~GreedyClustererFaces(this);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GreedyClustererFaces::getCountForCluster(vision::mod::GreedyClustererFaces *this, uint64_t a2)
{
  if (!vision::mod::GreedyClustererFaces::isFaceIdInClustererState(this, a2))
  {
    return 0;
  }

  v4 = this + 144;
  v5 = *(this + 18);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = this + 144;
  do
  {
    if (*(v5 + 4) >= a2)
    {
      v6 = v5;
    }

    v5 = *&v5[8 * (*(v5 + 4) < a2)];
  }

  while (v5);
  if (v6 == v4 || *(v6 + 4) > a2)
  {
LABEL_9:
    v6 = this + 144;
  }

  v7 = *(this + 17);
  if (v7 == v4)
  {
    return 0;
  }

  result = 0;
  v9 = *(v6 + 5);
  do
  {
    if (*(v7 + 5) == v9)
    {
      ++result;
    }

    v10 = *(v7 + 1);
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = *(v7 + 2);
        v12 = *v11 == v7;
        v7 = v11;
      }

      while (!v12);
    }

    v7 = v11;
  }

  while (v11 != v4);
  return result;
}

uint64_t vision::mod::GreedyClustererFaces::isFaceIdInClustererState(vision::mod::GreedyClustererFaces *this, uint64_t a2)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v3 = "FaceId=%lld not present in clustering";
LABEL_9:
    syslog(5, v3, a2);
    return 0;
  }

  v3 = "FaceId=%lld not present in clustering";
  while (1)
  {
    v4 = v2[4];
    if (v4 <= a2)
    {
      break;
    }

LABEL_6:
    v2 = *v2;
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if (v4 < a2)
  {
    ++v2;
    goto LABEL_6;
  }

  v6 = *(this + 15);
  if (!v6)
  {
    syslog(5, "FaceId=%lld not present in l0 clustering");
    return 0;
  }

  v3 = "FaceId=%lld not present in l0 clustering";
  while (1)
  {
    v7 = v6[4];
    if (v7 <= a2)
    {
      break;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_17;
  }

  return 1;
}

uint64_t vision::mod::GreedyClustererFaces::removeIds(uint64_t **this, uint64_t *a2)
{
  v35 = 0;
  v36 = 0;
  v34 = &v35;
  v3 = *a2;
  if (a2[1] == *a2)
  {
LABEL_46:
    vision::mod::GreedyClustererFaces::computeDeltaAfterUpdate(this);
  }

  v5 = 0;
  while (1)
  {
    v6 = (v3 + 8 * v5);
    if ((vision::mod::GreedyClustererFaces::isFaceIdInClustererState(this, *v6) & 1) == 0)
    {
      break;
    }

    v37 = v6;
    v33 = std::__tree<std::__value_type<long long,unsigned long>,std::__map_value_compare<long long,std::__value_type<long long,unsigned long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,unsigned long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>((this + 14), *v6)[5];
    v37 = v33;
    std::__tree<long long>::__emplace_unique_key_args<long long,long long>(&v34, v33);
    v7 = *this[8][9];
    v8 = v7 + v33 * *(v7 + 16);
    --*(v8 + 32);
    v37 = &v33;
    v9 = std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((this + 11), v33);
    v10 = std::remove[abi:ne200100]<std::__list_iterator<long long,void *>,long long>(v9[6], (v9 + 5), v6);
    std::list<long long>::erase((v9 + 5), v10, v9 + 5);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 14, *v6);
    std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::__erase_unique<long long>(this + 17, *v6);
    if (!*(v8 + 32))
    {
      v11 = this[8];
      v12 = v33;
      v14 = v11[6];
      v13 = v11[7];
      v15 = v14;
      if (v14 != v13)
      {
        v15 = v11[6];
        while (*v15 != v33)
        {
          if (++v15 == v13)
          {
            goto LABEL_48;
          }
        }
      }

      if (v15 == v13 || (v16 = v11[9]) == 0)
      {
LABEL_48:
        exception = __cxa_allocate_exception(8uLL);
        *exception = 5246;
        __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
      }

      v17 = *v16;
      if (*(*v16 + 12) > v33)
      {
        v18 = v16[7];
        v19 = v33 >> 6;
        v20 = *(v18 + 8 * v19);
        if ((v20 & (1 << v33)) != 0)
        {
          *(v17 + *v17 + 4 * *(v17 + 8)) = v33;
          *(v18 + 8 * v19) = v20 & ~(1 << v12);
          ++*(v17 + 8);
        }
      }

      if (v14 != v13)
      {
        while (*v14 != v12)
        {
          if (++v14 == v13)
          {
            goto LABEL_29;
          }
        }

        if (v14 != v13)
        {
          for (i = v14 + 1; i != v13; ++i)
          {
            if (*i != v12)
            {
              *v14++ = *i;
            }
          }
        }
      }

      if (v14 != v13)
      {
        v11[7] = v14;
      }

LABEL_29:
      std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::__erase_unique<unsigned long>(this + 11, v33);
      if (v35)
      {
        v22 = &v35;
        v23 = v35;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = v23[4];
          if (v26 >= v33)
          {
            v22 = v23;
          }

          v23 = v23[v26 < v33];
        }

        while (v23);
        if (v22 != &v35)
        {
          if (v26 < v33)
          {
            v24 = v25;
          }

          if (v33 >= v24[4])
          {
            v27 = v22[1];
            v28 = v22;
            if (v27)
            {
              do
              {
                v29 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v29 = v28[2];
                v30 = *v29 == v28;
                v28 = v29;
              }

              while (!v30);
            }

            if (v34 == v22)
            {
              v34 = v29;
            }

            --v36;
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v35, v22);
            operator delete(v22);
          }
        }
      }
    }

    ++v5;
    v3 = *a2;
    if (v5 >= (a2[1] - *a2) >> 3)
    {
      goto LABEL_46;
    }
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(v35);
  return 5244;
}

uint64_t std::__tree<long long>::__emplace_unique_key_args<long long,long long>(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1A5F794E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  vision::mod::GreedyClustererWithTorso::private_t::clusters_t::~clusters_t(&__p);
  __p = &a32;
  std::vector<vision::mod::ERTTree>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v41 - 168));
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(&a39);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 16);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = (a2 - v9) >> 4;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, a2 - 2);
              case 4:
                result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4);
                v107 = v9[4];
                v108 = -1;
                if (*v8 >= v107)
                {
                  v108 = 1;
                }

                if (*v8 == v107)
                {
                  v109 = *(a2 - 1);
                  v110 = v9[5];
                  v104 = v109 >= v110;
                  v111 = v109 == v110;
                  v108 = -1;
                  if (v104)
                  {
                    v108 = 1;
                  }

                  if (v111)
                  {
                    v108 = 0;
                  }
                }

                if (v108 < 0)
                {
                  v9[4] = *v8;
                  *(a2 - 2) = v107;
                  v112 = v9[5];
                  v9[5] = *(a2 - 1);
                  *(a2 - 1) = v112;
                  v113 = v9[4];
                  v114 = v9[2];
                  v115 = -1;
                  if (v113 >= v114)
                  {
                    v115 = 1;
                  }

                  if (v113 == v114)
                  {
                    v116 = v9[5];
                    v117 = v9[3];
                    v104 = v116 >= v117;
                    v118 = v116 == v117;
                    v115 = -1;
                    if (v104)
                    {
                      v115 = 1;
                    }

                    if (v118)
                    {
                      v115 = 0;
                    }
                  }

                  if (v115 < 0)
                  {
                    v119 = v9[3];
                    v120 = v9[5];
                    v9[2] = v113;
                    v9[3] = v120;
                    v9[4] = v114;
                    v9[5] = v119;
                    v121 = *v9;
                    v122 = -1;
                    if (v113 >= *v9)
                    {
                      v122 = 1;
                    }

                    if (v113 == *v9)
                    {
                      v123 = v9[1];
                      v104 = v120 >= v123;
                      v124 = v120 == v123;
                      v122 = -1;
                      if (v104)
                      {
                        v122 = 1;
                      }

                      if (v124)
                      {
                        v122 = 0;
                      }
                    }

                    if (v122 < 0)
                    {
                      v125 = v9[1];
                      *v9 = v113;
                      v9[1] = v120;
                      v9[2] = v121;
                      v9[3] = v125;
                    }
                  }
                }

                return result;
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v100 = *v9;
              v101 = -1;
              if (*v8 >= *v9)
              {
                v101 = 1;
              }

              if (*v8 == *v9)
              {
                v102 = *(a2 - 1);
                v103 = v9[1];
                v104 = v102 >= v103;
                v105 = v102 == v103;
                v101 = -1;
                if (v104)
                {
                  v101 = 1;
                }

                if (v105)
                {
                  v101 = 0;
                }
              }

              if (v101 < 0)
              {
                *v9 = *v8;
                *(a2 - 2) = v100;
                v106 = v9[1];
                v9[1] = *(a2 - 1);
                *(a2 - 1) = v106;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v126 = (v9 + 2);
            v128 = v9 == a2 || v126 == a2;
            if (a4)
            {
              if (!v128)
              {
                v129 = 0;
                v130 = v9;
                do
                {
                  v131 = v126;
                  v132 = v130[2];
                  v133 = *v130;
                  if (v132 >= *v130)
                  {
                    v134 = 1;
                  }

                  else
                  {
                    v134 = -1;
                  }

                  if (v132 == *v130)
                  {
                    v135 = v130[3];
                    v136 = v130[1];
                    v137 = v135 == v136;
                    v134 = v135 >= v136 ? 1 : -1;
                    if (v137)
                    {
                      v134 = 0;
                    }
                  }

                  if (v134 < 0)
                  {
                    v138 = v130[3];
                    v139 = v129;
                    while (1)
                    {
                      v140 = v9 + v139;
                      v141 = *(v9 + v139 + 8);
                      *(v140 + 2) = v133;
                      *(v140 + 3) = v141;
                      if (!v139)
                      {
                        break;
                      }

                      v133 = *(v140 - 2);
                      if (v132 >= v133)
                      {
                        v142 = 1;
                      }

                      else
                      {
                        v142 = -1;
                      }

                      if (v132 == v133)
                      {
                        v143 = *(v9 + v139 - 8);
                        v144 = v138 == v143;
                        v142 = v138 >= v143 ? 1 : -1;
                        if (v144)
                        {
                          v142 = 0;
                        }
                      }

                      v139 -= 16;
                      if ((v142 & 0x80) == 0)
                      {
                        v145 = (v9 + v139 + 16);
                        goto LABEL_263;
                      }
                    }

                    v145 = v9;
LABEL_263:
                    *v145 = v132;
                    v145[1] = v138;
                  }

                  v126 = v131 + 16;
                  v129 += 16;
                  v130 = v131;
                }

                while (v131 + 16 != a2);
              }
            }

            else if (!v128)
            {
              v206 = v9 + 3;
              do
              {
                v207 = v126;
                v208 = v7[2];
                v209 = *v7;
                if (v208 >= *v7)
                {
                  v210 = 1;
                }

                else
                {
                  v210 = -1;
                }

                if (v208 == *v7)
                {
                  v211 = v7[3];
                  v212 = v7[1];
                  v213 = v211 == v212;
                  v210 = v211 >= v212 ? 1 : -1;
                  if (v213)
                  {
                    v210 = 0;
                  }
                }

                if (v210 < 0)
                {
                  v214 = v7[3];
                  v215 = v206;
                  do
                  {
                    v216 = *(v215 - 2);
                    *(v215 - 1) = v209;
                    *v215 = v216;
                    v209 = *(v215 - 5);
                    if (v208 >= v209)
                    {
                      v217 = 1;
                    }

                    else
                    {
                      v217 = -1;
                    }

                    if (v208 == v209)
                    {
                      v218 = *(v215 - 4);
                      v219 = v214 == v218;
                      v217 = v214 >= v218 ? 1 : -1;
                      if (v219)
                      {
                        v217 = 0;
                      }
                    }

                    v215 -= 2;
                  }

                  while (v217 < 0);
                  *(v215 - 1) = v208;
                  *v215 = v214;
                }

                v126 = v207 + 16;
                v206 += 2;
                v7 = v207;
              }

              while (v207 + 16 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v146 = (v10 - 2) >> 1;
              v147 = v146;
              do
              {
                v148 = v147;
                if (v146 >= v147)
                {
                  v149 = (2 * v147) | 1;
                  v150 = &v9[2 * v149];
                  if (2 * v148 + 2 < v10)
                  {
                    v151 = v150[2];
                    v152 = *v150 == v151;
                    if (*v150 >= v151)
                    {
                      v153 = 1;
                    }

                    else
                    {
                      v153 = -1;
                    }

                    if (v152)
                    {
                      v154 = v150[1];
                      v155 = v150[3];
                      v156 = v154 == v155;
                      v153 = v154 >= v155 ? 1 : -1;
                      if (v156)
                      {
                        v153 = 0;
                      }
                    }

                    if (v153 < 0)
                    {
                      v150 += 2;
                      v149 = 2 * v148 + 2;
                    }
                  }

                  v157 = &v9[2 * v148];
                  v158 = *v150;
                  v159 = *v157;
                  if (*v150 >= *v157)
                  {
                    v160 = 1;
                  }

                  else
                  {
                    v160 = -1;
                  }

                  if (*v150 == *v157)
                  {
                    v161 = v150[1];
                    v162 = v157[1];
                    v163 = v161 == v162;
                    v160 = v161 >= v162 ? 1 : -1;
                    if (v163)
                    {
                      v160 = 0;
                    }
                  }

                  if ((v160 & 0x80) == 0)
                  {
                    v164 = v157[1];
                    do
                    {
                      v165 = v157;
                      v157 = v150;
                      *v165 = v158;
                      v165[1] = v150[1];
                      if (v146 < v149)
                      {
                        break;
                      }

                      v166 = (2 * v149) | 1;
                      v150 = &v9[2 * v166];
                      v149 = 2 * v149 + 2;
                      if (v149 >= v10)
                      {
                        v149 = v166;
                      }

                      else
                      {
                        v167 = v150[2];
                        v168 = *v150 == v167;
                        if (*v150 >= v167)
                        {
                          v169 = 1;
                        }

                        else
                        {
                          v169 = -1;
                        }

                        if (v168)
                        {
                          v170 = v150[1];
                          v171 = v150[3];
                          v172 = v170 == v171;
                          v169 = v170 >= v171 ? 1 : -1;
                          if (v172)
                          {
                            v169 = 0;
                          }
                        }

                        if (v169 < 0)
                        {
                          v150 += 2;
                        }

                        else
                        {
                          v149 = v166;
                        }
                      }

                      v158 = *v150;
                      if (*v150 >= v159)
                      {
                        v173 = 1;
                      }

                      else
                      {
                        v173 = -1;
                      }

                      if (*v150 == v159)
                      {
                        v174 = v150[1];
                        v175 = v174 == v164;
                        v173 = v174 >= v164 ? 1 : -1;
                        if (v175)
                        {
                          v173 = 0;
                        }
                      }
                    }

                    while ((v173 & 0x80) == 0);
                    *v157 = v159;
                    v157[1] = v164;
                  }
                }

                v147 = v148 - 1;
              }

              while (v148);
              do
              {
                v176 = 0;
                v177 = *v9;
                v178 = v9[1];
                v179 = v9;
                do
                {
                  result = &v179[2 * v176];
                  v180 = (result + 16);
                  v181 = (2 * v176) | 1;
                  v176 = 2 * v176 + 2;
                  if (v176 >= v10)
                  {
                    v176 = v181;
                  }

                  else
                  {
                    v183 = (result + 32);
                    v182 = *(result + 32);
                    v184 = *(result + 16);
                    v185 = v184 == v182;
                    if (v184 >= v182)
                    {
                      v186 = 1;
                    }

                    else
                    {
                      v186 = -1;
                    }

                    if (v185)
                    {
                      v187 = *(result + 24);
                      v188 = *(result + 40);
                      v189 = v187 == v188;
                      if (v187 >= v188)
                      {
                        result = 1;
                      }

                      else
                      {
                        result = 255;
                      }

                      if (v189)
                      {
                        v186 = 0;
                      }

                      else
                      {
                        v186 = result;
                      }
                    }

                    if (v186 < 0)
                    {
                      v180 = v183;
                    }

                    else
                    {
                      v176 = v181;
                    }
                  }

                  *v179 = *v180;
                  v179[1] = v180[1];
                  v179 = v180;
                }

                while (v176 <= (v10 - 2) / 2);
                if (v180 == (a2 - 16))
                {
                  *v180 = v177;
                  v180[1] = v178;
                }

                else
                {
                  *v180 = *(a2 - 2);
                  v180[1] = *(a2 - 1);
                  *(a2 - 2) = v177;
                  *(a2 - 1) = v178;
                  v190 = (v180 - v9 + 16) >> 4;
                  v191 = v190 < 2;
                  v192 = v190 - 2;
                  if (!v191)
                  {
                    v193 = v192 >> 1;
                    v194 = &v9[2 * v193];
                    v195 = *v194;
                    v196 = *v180;
                    if (*v194 >= *v180)
                    {
                      v197 = 1;
                    }

                    else
                    {
                      v197 = -1;
                    }

                    if (*v194 == *v180)
                    {
                      v198 = v194[1];
                      v199 = v180[1];
                      v200 = v198 == v199;
                      v197 = v198 >= v199 ? 1 : -1;
                      if (v200)
                      {
                        v197 = 0;
                      }
                    }

                    if (v197 < 0)
                    {
                      v201 = v180[1];
                      do
                      {
                        v202 = v180;
                        v180 = v194;
                        *v202 = v195;
                        v202[1] = v194[1];
                        if (!v193)
                        {
                          break;
                        }

                        v193 = (v193 - 1) >> 1;
                        v194 = &v9[2 * v193];
                        v195 = *v194;
                        if (*v194 >= v196)
                        {
                          v203 = 1;
                        }

                        else
                        {
                          v203 = -1;
                        }

                        if (*v194 == v196)
                        {
                          v204 = v194[1];
                          v205 = v204 == v201;
                          v203 = v204 >= v201 ? 1 : -1;
                          if (v205)
                          {
                            v203 = 0;
                          }
                        }
                      }

                      while (v203 < 0);
                      *v180 = v196;
                      v180[1] = v201;
                    }
                  }
                }

                a2 -= 16;
                v191 = v10-- <= 2;
              }

              while (!v191);
            }

            return result;
          }

          v11 = v10 >> 1;
          v12 = &v9[2 * (v10 >> 1)];
          if (v10 < 0x81)
          {
            result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(&v7[2 * (v10 >> 1)], v7, a2 - 2);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v7, &v7[2 * (v10 >> 1)], a2 - 2);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v7 + 2, v12 - 2, a2 - 4);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v7 + 4, &v7[2 * v11 + 2], a2 - 6);
            result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(v12 - 2, v12, &v7[2 * v11 + 2]);
            v13 = *v7;
            *v7 = *v12;
            *v12 = v13;
          }

          --a3;
          v14 = *v7;
          if (a4)
          {
            break;
          }

          v15 = *(v7 - 2);
          v16 = v15 == v14;
          if (v15 >= v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = -1;
          }

          if (v16)
          {
            v18 = *(v7 - 1);
            v19 = v7[1];
            v20 = v18 == v19;
            v17 = v18 >= v19 ? 1 : -1;
            if (v20)
            {
              v17 = 0;
            }
          }

          if (v17 < 0)
          {
            break;
          }

          v61 = v7[1];
          if (v14 >= *v8)
          {
            v62 = 1;
          }

          else
          {
            v62 = -1;
          }

          if (v14 == *v8)
          {
            v63 = *(a2 - 1);
            v64 = v61 == v63;
            if (v61 >= v63)
            {
              v65 = 1;
            }

            else
            {
              v65 = -1;
            }

            if (v64)
            {
              v62 = 0;
            }

            else
            {
              v62 = v65;
            }
          }

          v66 = v7;
          if (v62 < 0)
          {
            do
            {
              v9 = v66 + 2;
              v71 = v66[2];
              v72 = v14 == v71;
              if (v14 >= v71)
              {
                v73 = 1;
              }

              else
              {
                v73 = -1;
              }

              if (v72)
              {
                v74 = v66[3];
                v75 = v61 == v74;
                if (v61 >= v74)
                {
                  v76 = 1;
                }

                else
                {
                  v76 = -1;
                }

                if (v75)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v76;
                }
              }

              v66 = v9;
            }

            while ((v73 & 0x80) == 0);
          }

          else
          {
            v67 = v7 + 2;
            do
            {
              v9 = v67;
              if (v67 >= a2)
              {
                break;
              }

              if (v14 >= *v67)
              {
                v68 = 1;
              }

              else
              {
                v68 = -1;
              }

              if (v14 == *v67)
              {
                v69 = v67[1];
                v70 = v61 == v69;
                v68 = v61 >= v69 ? 1 : -1;
                if (v70)
                {
                  v68 = 0;
                }
              }

              v67 += 2;
            }

            while ((v68 & 0x80) == 0);
          }

          v77 = a2;
          if (v9 < a2)
          {
            v78 = a2;
            v77 = a2;
            do
            {
              v79 = *(v77 - 2);
              v77 -= 2;
              v80 = v14 == v79;
              if (v14 >= v79)
              {
                v81 = 1;
              }

              else
              {
                v81 = -1;
              }

              if (v80)
              {
                v82 = *(v78 - 1);
                v83 = v61 == v82;
                if (v61 >= v82)
                {
                  v84 = 1;
                }

                else
                {
                  v84 = -1;
                }

                if (v83)
                {
                  v81 = 0;
                }

                else
                {
                  v81 = v84;
                }
              }

              v78 = v77;
            }

            while (v81 < 0);
          }

          if (v9 < v77)
          {
            v85 = *v9;
            v86 = *v77;
            do
            {
              *v9 = v86;
              *v77 = v85;
              v87 = v9[1];
              v9[1] = v77[1];
              v77[1] = v87;
              v88 = v9;
              do
              {
                v89 = v9[2];
                v9 += 2;
                v85 = v89;
                v90 = v14 == v89;
                if (v14 >= v89)
                {
                  v91 = 1;
                }

                else
                {
                  v91 = -1;
                }

                if (v90)
                {
                  v92 = v88[3];
                  v93 = v61 == v92;
                  v91 = v61 >= v92 ? 1 : -1;
                  if (v93)
                  {
                    v91 = 0;
                  }
                }

                v88 = v9;
              }

              while ((v91 & 0x80) == 0);
              v94 = v77;
              do
              {
                v95 = *(v77 - 2);
                v77 -= 2;
                v86 = v95;
                v96 = v14 == v95;
                if (v14 >= v95)
                {
                  v97 = 1;
                }

                else
                {
                  v97 = -1;
                }

                if (v96)
                {
                  v98 = *(v94 - 1);
                  v99 = v61 == v98;
                  v97 = v61 >= v98 ? 1 : -1;
                  if (v99)
                  {
                    v97 = 0;
                  }
                }

                v94 = v77;
              }

              while (v97 < 0);
            }

            while (v9 < v77);
          }

          if (v9 - 2 != v7)
          {
            *v7 = *(v9 - 2);
            v7[1] = *(v9 - 1);
          }

          a4 = 0;
          *(v9 - 2) = v14;
          *(v9 - 1) = v61;
        }

        v21 = v7[1];
        v22 = v7;
        v23 = v7;
        do
        {
          v25 = v23[2];
          v23 += 2;
          v24 = v25;
          v26 = v25 == v14;
          if (v25 >= v14)
          {
            v27 = 1;
          }

          else
          {
            v27 = -1;
          }

          if (v26)
          {
            v28 = v22[3];
            v29 = v28 == v21;
            v27 = v28 >= v21 ? 1 : -1;
            if (v29)
            {
              v27 = 0;
            }
          }

          v22 = v23;
        }

        while (v27 < 0);
        v30 = a2;
        if (v23 - 2 == v7)
        {
          v38 = a2;
          while (v23 < v38)
          {
            v31 = v38 - 16;
            v39 = *(v38 - 2);
            v40 = v39 == v14;
            if (v39 >= v14)
            {
              v41 = 1;
            }

            else
            {
              v41 = -1;
            }

            if (v40)
            {
              v42 = *(v38 - 1);
              v43 = v42 == v21;
              if (v42 >= v21)
              {
                v44 = 1;
              }

              else
              {
                v44 = -1;
              }

              if (v43)
              {
                v41 = 0;
              }

              else
              {
                v41 = v44;
              }
            }

            v38 = v31;
            if (v41 < 0)
            {
              goto LABEL_69;
            }
          }

          v31 = v38;
        }

        else
        {
          do
          {
            v31 = v30 - 16;
            v32 = *(v30 - 2);
            v33 = v32 == v14;
            if (v32 >= v14)
            {
              v34 = 1;
            }

            else
            {
              v34 = -1;
            }

            if (v33)
            {
              v35 = *(v30 - 1);
              v36 = v35 == v21;
              if (v35 >= v21)
              {
                v37 = 1;
              }

              else
              {
                v37 = -1;
              }

              if (v36)
              {
                v34 = 0;
              }

              else
              {
                v34 = v37;
              }
            }

            v30 = v31;
          }

          while ((v34 & 0x80) == 0);
        }

LABEL_69:
        if (v23 >= v31)
        {
          v9 = v23;
        }

        else
        {
          v45 = *v31;
          v9 = v23;
          v46 = v31;
          do
          {
            *v9 = v45;
            *v46 = v24;
            v47 = v9[1];
            v9[1] = v46[1];
            v46[1] = v47;
            v48 = v9;
            do
            {
              v49 = v9[2];
              v9 += 2;
              v24 = v49;
              v50 = v49 == v14;
              if (v49 >= v14)
              {
                v51 = 1;
              }

              else
              {
                v51 = -1;
              }

              if (v50)
              {
                v52 = v48[3];
                v53 = v52 == v21;
                v51 = v52 >= v21 ? 1 : -1;
                if (v53)
                {
                  v51 = 0;
                }
              }

              v48 = v9;
            }

            while (v51 < 0);
            v54 = v46;
            do
            {
              v55 = *(v46 - 2);
              v46 -= 2;
              v45 = v55;
              v56 = v55 == v14;
              if (v55 >= v14)
              {
                v57 = 1;
              }

              else
              {
                v57 = -1;
              }

              if (v56)
              {
                v58 = *(v54 - 1);
                v59 = v58 == v21;
                v57 = v58 >= v21 ? 1 : -1;
                if (v59)
                {
                  v57 = 0;
                }
              }

              v54 = v46;
            }

            while ((v57 & 0x80) == 0);
          }

          while (v9 < v46);
        }

        if (v9 - 2 != v7)
        {
          *v7 = *(v9 - 2);
          v7[1] = *(v9 - 1);
        }

        *(v9 - 2) = v14;
        *(v9 - 1) = v21;
        if (v23 >= v31)
        {
          break;
        }

LABEL_103:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,false>(v7, v9 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v60 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v7, v9 - 16);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v60)
      {
        goto LABEL_103;
      }
    }

    a2 = (v9 - 2);
    if (!v60)
    {
      continue;
    }

    return result;
  }
}

unint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(unint64_t *result, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (*a2 == *result)
  {
    v6 = a2[1];
    v7 = result[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v22 = a3[1];
      v23 = a2[1];
      v8 = v22 >= v23;
      v24 = v22 == v23;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v24)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *result++ = v11;
      *a3 = v4;
      v31 = (a3 + 1);
    }

    else
    {
      *result = v3;
      *a2 = v4;
      v25 = result[1];
      result[1] = a2[1];
      a2[1] = v25;
      v26 = *a2;
      v27 = -1;
      if (*a3 >= *a2)
      {
        v27 = 1;
      }

      if (*a3 == *a2)
      {
        v28 = a3[1];
        v8 = v28 >= v25;
        v29 = v28 == v25;
        v30 = -1;
        if (v8)
        {
          v30 = 1;
        }

        if (v29)
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }
      }

      if ((v27 & 0x80) == 0)
      {
        return result;
      }

      *a2 = *a3;
      *a3 = v26;
      v31 = (a3 + 1);
      result = a2 + 1;
    }

    v17 = v31;
    goto LABEL_51;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v3;
    v17 = a2 + 1;
    v18 = a2[1];
    a2[1] = a3[1];
    a3[1] = v18;
    v19 = *result;
    v20 = -1;
    if (*a2 >= *result)
    {
      v20 = 1;
    }

    if (*a2 == *result)
    {
      v21 = result[1];
      v20 = -1;
      if (*v17 >= v21)
      {
        v20 = 1;
      }

      if (*v17 == v21)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      *result++ = *a2;
      *a2 = v19;
LABEL_51:
      v32 = *result;
      *result = *v17;
      *v17 = v32;
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a2, a3);
  v11 = *a3;
  v12 = -1;
  if (*a4 >= *a3)
  {
    v12 = 1;
  }

  if (*a4 == *a3)
  {
    v13 = a4[1];
    v14 = a3[1];
    v15 = v13 >= v14;
    v16 = v13 == v14;
    v12 = -1;
    if (v15)
    {
      v12 = 1;
    }

    if (v16)
    {
      v12 = 0;
    }
  }

  if (v12 < 0)
  {
    *a3 = *a4;
    *a4 = v11;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    v18 = *a2;
    v19 = -1;
    if (*a3 >= *a2)
    {
      v19 = 1;
    }

    if (*a3 == *a2)
    {
      v20 = a3[1];
      v21 = a2[1];
      v15 = v20 >= v21;
      v22 = v20 == v21;
      v19 = -1;
      if (v15)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      *a2 = *a3;
      *a3 = v18;
      v23 = a2[1];
      a2[1] = a3[1];
      a3[1] = v23;
      v24 = *a1;
      v25 = -1;
      if (*a2 >= *a1)
      {
        v25 = 1;
      }

      if (*a2 == *a1)
      {
        v26 = a2[1];
        v27 = a1[1];
        v15 = v26 >= v27;
        v28 = v26 == v27;
        v25 = -1;
        if (v15)
        {
          v25 = 1;
        }

        if (v28)
        {
          v25 = 0;
        }
      }

      if (v25 < 0)
      {
        *a1 = *a2;
        *a2 = v24;
        v29 = a1[1];
        a1[1] = a2[1];
        a2[1] = v29;
      }
    }
  }

  v30 = *a4;
  v31 = -1;
  if (*a5 >= *a4)
  {
    v31 = 1;
  }

  if (*a5 == *a4)
  {
    v32 = a5[1];
    v33 = a4[1];
    v15 = v32 >= v33;
    v34 = v32 == v33;
    v31 = -1;
    if (v15)
    {
      v31 = 1;
    }

    if (v34)
    {
      v31 = 0;
    }
  }

  if (v31 < 0)
  {
    *a4 = *a5;
    *a5 = v30;
    v35 = a4[1];
    a4[1] = a5[1];
    a5[1] = v35;
    v36 = *a3;
    v37 = -1;
    if (*a4 >= *a3)
    {
      v37 = 1;
    }

    if (*a4 == *a3)
    {
      v38 = a4[1];
      v39 = a3[1];
      v15 = v38 >= v39;
      v40 = v38 == v39;
      v37 = -1;
      if (v15)
      {
        v37 = 1;
      }

      if (v40)
      {
        v37 = 0;
      }
    }

    if (v37 < 0)
    {
      *a3 = *a4;
      *a4 = v36;
      v41 = a3[1];
      a3[1] = a4[1];
      a4[1] = v41;
      v42 = *a2;
      v43 = -1;
      if (*a3 >= *a2)
      {
        v43 = 1;
      }

      if (*a3 == *a2)
      {
        v44 = a3[1];
        v45 = a2[1];
        v15 = v44 >= v45;
        v46 = v44 == v45;
        v43 = -1;
        if (v15)
        {
          v43 = 1;
        }

        if (v46)
        {
          v43 = 0;
        }
      }

      if (v43 < 0)
      {
        *a2 = *a3;
        *a3 = v42;
        v47 = a2[1];
        a2[1] = a3[1];
        a3[1] = v47;
        v48 = *a1;
        v49 = -1;
        if (*a2 >= *a1)
        {
          v49 = 1;
        }

        if (*a2 == *a1)
        {
          v50 = a2[1];
          v51 = a1[1];
          v15 = v50 >= v51;
          v52 = v50 == v51;
          v49 = -1;
          if (v15)
          {
            v49 = 1;
          }

          if (v52)
          {
            v49 = 0;
          }
        }

        if (v49 < 0)
        {
          *a1 = *a2;
          *a2 = v48;
          v53 = a1[1];
          a1[1] = a2[1];
          a2[1] = v53;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *>(unint64_t *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
        v31 = *(a2 - 2);
        v32 = a1[4];
        v33 = -1;
        if (v31 >= v32)
        {
          v33 = 1;
        }

        if (v31 == v32)
        {
          v34 = *(a2 - 1);
          v35 = a1[5];
          v10 = v34 >= v35;
          v36 = v34 == v35;
          v33 = -1;
          if (v10)
          {
            v33 = 1;
          }

          if (v36)
          {
            v33 = 0;
          }
        }

        if (v33 < 0)
        {
          a1[4] = v31;
          *(a2 - 2) = v32;
          v37 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = a1[4];
          v39 = a1[2];
          v40 = -1;
          if (v38 >= v39)
          {
            v40 = 1;
          }

          if (v38 == v39)
          {
            v41 = a1[5];
            v42 = a1[3];
            v10 = v41 >= v42;
            v43 = v41 == v42;
            v40 = -1;
            if (v10)
            {
              v40 = 1;
            }

            if (v43)
            {
              v40 = 0;
            }
          }

          if (v40 < 0)
          {
            v44 = a1[3];
            v45 = a1[5];
            a1[2] = v38;
            a1[3] = v45;
            a1[4] = v39;
            a1[5] = v44;
            v46 = *a1;
            v47 = -1;
            if (v38 >= *a1)
            {
              v47 = 1;
            }

            if (v38 == *a1)
            {
              v48 = a1[1];
              v10 = v45 >= v48;
              v49 = v45 == v48;
              v47 = -1;
              if (v10)
              {
                v47 = 1;
              }

              if (v49)
              {
                v47 = 0;
              }
            }

            if (v47 < 0)
            {
              v50 = a1[1];
              *a1 = v38;
              a1[1] = v45;
              a1[2] = v46;
              a1[3] = v50;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == *a1)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 4);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long,unsigned long> *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    if (*v14 >= *v13)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (*v14 == *v13)
    {
      v20 = *(v14 + 1);
      v21 = *(v13 + 1);
      v22 = v20 == v21;
      v19 = v20 >= v21 ? 1 : -1;
      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      v23 = *(v14 + 1);
      v24 = v15;
      while (1)
      {
        v25 = (a1 + v24);
        v26 = *(a1 + v24 + 40);
        v25[6] = v18;
        v25[7] = v26;
        if (v24 == -32)
        {
          break;
        }

        v18 = v25[2];
        if (v17 >= v18)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v17 == v18)
        {
          v28 = *(a1 + v24 + 24);
          v29 = v23 == v28;
          v27 = v23 >= v28 ? 1 : -1;
          if (v29)
          {
            v27 = 0;
          }
        }

        v24 -= 16;
        if ((v27 & 0x80) == 0)
        {
          v30 = (a1 + v24 + 48);
          goto LABEL_45;
        }
      }

      v30 = a1;
LABEL_45:
      *v30 = v17;
      v30[1] = v23;
      if (++v16 == 8)
      {
        return v14 + 16 == a2;
      }
    }

    v13 = v14;
    v15 += 16;
    v14 += 16;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void vision::mod::GreedyClusterer::getConnectedComponents(void *a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  if (a3 != a4)
  {
    v4 = a3[1];
    v6 = *a3;
    v5[0] = v4;
    v9[2] = &v6;
    std::__tree<std::__value_type<unsigned long,std::list<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v8, v6);
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v5[2] = 0;
  v6 = v7;
  v5[0] = v5;
  v5[1] = v5;
  operator new();
}

void sub_1A5F7ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  std::__list_imp<long long>::clear(&a13);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a17);
  std::vector<vision::mod::ERTTree>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(a20);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long,std::list<unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,BOOL>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,BOOL>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,BOOL>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t vision::mod::GreedyClusterer::computeMergePairs(uint64_t result)
{
  if (*(*(result + 56) + 56) != *(*(result + 56) + 48))
  {
    vision::mod::dist_greedy_status_t::dist_greedy_status_t();
  }

  return result;
}

void sub_1A5F7B128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(va);
  _Unwind_Resume(a1);
}

void *std::set<long long>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      if (!*std::__tree<long long>::__find_equal<long long>(a1, v3, &v11, &v10, v5[4]))
      {
        operator new();
      }

      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void *std::__tree<long long>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = a2[4], v6 > a5))
  {
    v7 = *a2;
    if (*a1 == a2)
    {
      v9 = a2;
LABEL_18:
      if (v7)
      {
        *a3 = v9;
        return v9 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    if (v9[4] < a5)
    {
      goto LABEL_18;
    }

    v14 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v16 <= a5)
          {
            break;
          }

          v14 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v16 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v14 = v15[1];
      }

      while (v14);
      goto LABEL_43;
    }

LABEL_42:
    v15 = a1 + 1;
LABEL_43:
    *a3 = v15;
    return v5;
  }

  if (v6 >= a5)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v10 = a2[1];
  if (v10)
  {
    v11 = a2[1];
    do
    {
      a4 = v11;
      v11 = *v11;
    }

    while (v11);
  }

  else
  {
    v17 = a2;
    do
    {
      a4 = v17[2];
      v13 = *a4 == v17;
      v17 = a4;
    }

    while (!v13);
  }

  if (a4 != v5 && a4[4] <= a5)
  {
    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v15 = v18;
          v19 = v18[4];
          if (v19 <= a5)
          {
            break;
          }

          v18 = *v15;
          v5 = v15;
          if (!*v15)
          {
            goto LABEL_43;
          }
        }

        if (v19 >= a5)
        {
          break;
        }

        v5 = v15 + 1;
        v18 = v15[1];
      }

      while (v18);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v10)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__shared_ptr_emplace<std::vector<std::pair<unsigned long,unsigned long>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<std::pair<unsigned long,unsigned long>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19754C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GreedyClustererFaces::getAverageDescriptorsOfClusters(vision::mod::GreedyClustererFaces *a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4 = (*(*a1 + 112))(a1, &v11);
  if (v4 == 5248)
  {
    if (*a2 == *(a2 + 8))
    {
      v4 = 5248;
    }

    else
    {
      v4 = 5243;
      v5 = **a2;
      v6 = malloc_type_malloc(4 * *(*(a1 + 8) + 104), 0x100004052888210uLL);
      if (v6)
      {
        if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, v5))
        {
          vision::mod::GreedyClustererFaces::getAverageDescriptorOfClusterContainingFace(a1, v5, &v11, v6);
          v12[2] = v5;
          v9 = 0;
          v10 = 0;
          __p = 0;
          std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
        }

        free(v6);
        v4 = 5244;
      }
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v12[0]);
  return v4;
}

uint64_t vision::mod::GreedyClustererFaces::getAverageDescriptorOfClusterContainingFace(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = 5244;
    goto LABEL_17;
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = 5245;
LABEL_17:
    *exception = v14;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  memset(a4, 48, 4 * *(a1[8] + 104));
  v8 = a1[18];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a1 + 18;
  do
  {
    if (v8[4] >= a2)
    {
      v9 = v8;
    }

    v8 = v8[v8[4] < a2];
  }

  while (v8);
  if (v9 == a1 + 18 || v9[4] > a2)
  {
LABEL_10:
    v9 = a1 + 18;
  }

  v10 = v9[5];
  v23 = v10;
  v11 = *(a3 + 8);
  if (!v11)
  {
LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v14 = 5224;
    goto LABEL_17;
  }

  while (1)
  {
    v12 = v11[4];
    if (v10 >= v12)
    {
      break;
    }

LABEL_15:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  if (v12 < v10)
  {
    ++v11;
    goto LABEL_15;
  }

  v24 = &v23;
  v15 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a3, v10);
  v17 = v15[5];
  v16 = v15[6];
  *&v24 = 1.0 / (v16 - v17);
  if (v16 != v17)
  {
    v18 = a1 + 15;
    do
    {
      v19 = *v18;
      if (!*v18)
      {
        goto LABEL_27;
      }

      v20 = *v17;
      v21 = a1 + 15;
      do
      {
        if (v19[4] >= v20)
        {
          v21 = v19;
        }

        v19 = v19[v19[4] < v20];
      }

      while (v19);
      if (v21 == v18 || v20 < v21[4])
      {
LABEL_27:
        v21 = a1 + 15;
      }

      MEMORY[0x1AC558670](**(a1[8] + 88) + *(v21 + 10) * *(**(a1[8] + 88) + 16) + 40, 1, a4, 1, a4, 1, *(a1[8] + 104));
      ++v17;
    }

    while (v17 != v16);
  }

  return MEMORY[0x1AC5587B0](a4, 1, &v24, a4, 1, *(a1[8] + 104));
}

uint64_t vision::mod::GreedyClustererFaces::descriptorLength(vision::mod::GreedyClustererFaces *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return *(v1 + 104);
  }

  else
  {
    return 0;
  }
}

void vision::mod::GreedyClustererFaces::getIdsForCluster(void *a1, uint64_t a2, void *a3, void *a4)
{
  if ((vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a2) & 1) == 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5244;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v8 = a1 + 18;
  v9 = *std::map<long long,long long>::at(a1[18], a2);
  std::vector<long long>::reserve(a3, a1[19] + 1);
  if (a4)
  {
    v10 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::__equal_range_multi<long long>(a4, v9);
    if (v10 != v11)
    {
      v12 = v10;
      v13 = v11;
      do
      {
        std::vector<long long>::push_back[abi:ne200100](a3, v12 + 3);
        v12 = *v12;
      }

      while (v12 != v13);
    }
  }

  else
  {
    v14 = a1[17];
    if (v14 != v8)
    {
      do
      {
        if (v14[5] == v9)
        {
          std::vector<long long>::push_back[abi:ne200100](a3, v14 + 4);
        }

        v15 = v14[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v14[2];
            v17 = *v16 == v14;
            v14 = v16;
          }

          while (!v17);
        }

        v14 = v16;
      }

      while (v16 != v8);
    }
  }
}

void vision::mod::GreedyClustererFaces::getAllClustersFromState(vision::mod::GreedyClustererFaces *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = *(this + 17);
  v4 = this + 144;
  if (v3 != this + 144)
  {
    do
    {
      v5 = *(v3 + 5);
      v14 = *(v3 + 4);
      v16 = v5;
      v18[2] = &v16;
      v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v17, v5);
      std::vector<long long>::push_back[abi:ne200100]((v6 + 5), &v14);
      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
    v10 = v17;
    if (v17 != v18)
    {
      do
      {
        v11 = v10[5];
        v14 = v10[4];
        memset(__p, 0, sizeof(__p));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v11, v10[6], (v10[6] - v11) >> 3);
        std::vector<std::vector<long long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v9 = *v13 == v10;
            v10 = v13;
          }

          while (!v9);
        }

        v10 = v13;
      }

      while (v13 != v18);
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v18[0]);
}

void sub_1A5F7BB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a16);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClustererFaces::getClusters(vision::mod::GreedyClustererFaces *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v3 = *(this + 17);
  v4 = this + 144;
  if (v3 != this + 144)
  {
    do
    {
      v5 = *(v3 + 5);
      v14 = *(v3 + 4);
      v16 = v5;
      v18[2] = &v16;
      v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v17, v5);
      std::vector<long long>::push_back[abi:ne200100]((v6 + 5), &v14);
      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
    v10 = v17;
    if (v17 != v18)
    {
      do
      {
        v11 = v10[5];
        v14 = v10[4];
        memset(__p, 0, sizeof(__p));
        std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(__p, v11, v10[6], (v10[6] - v11) >> 3);
        std::vector<std::vector<long long>>::push_back[abi:ne200100](a2, __p);
        if (__p[0])
        {
          operator delete(__p[0]);
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v9 = *v13 == v10;
            v10 = v13;
          }

          while (!v9);
        }

        v10 = v13;
      }

      while (v13 != v18);
    }
  }

  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(v18[0]);
}

void sub_1A5F7BCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(a16);
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

double vision::mod::GreedyClustererFaces::getClusteredIds(uint64_t a1, uint64_t a2)
{
  allKeys<long long,unsigned long>(&v5, (a1 + 112));
  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t vision::mod::GreedyClustererFaces::getMaximumFaceId(vision::mod::GreedyClustererFaces *this)
{
  v1 = *(this + 17);
  v2 = this + 144;
  if (v1 == (this + 144))
  {
    return 0;
  }

  result = 0;
  do
  {
    if (result <= v1[4])
    {
      result = v1[4];
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

uint64_t vision::mod::GreedyClustererFaces::getClusterIdForFaceId(vision::mod::GreedyClustererFaces *this, uint64_t a2)
{
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(this, a2))
  {
    return *std::map<long long,long long>::at(*(this + 18), a2);
  }

  else
  {
    return -1;
  }
}

uint64_t vision::mod::GreedyClustererFaces::computeClusterMapL1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = (a1 + 144);
  if (v2 != (a1 + 144))
  {
    do
    {
      v10 = *(v2 + 2);
      v11 = &v10 + 8;
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, *(&v10 + 1));
      std::vector<long long>::push_back[abi:ne200100]((v5 + 5), &v10);
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFaces::getDistanceBetweenLevel1ClustersContaining(vision::mod::GreedyClustererFaces *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a2))
  {
    std::vector<float>::vector[abi:ne200100](&v8, *(*(a1 + 8) + 104));
    vision::mod::GreedyClustererFaces::getAverageDescriptorOfClusterContainingFace(a1, a2, a4, v8);
    (*(*a1 + 168))(a1);
    vision::mod::dist_greedy_status_t::dist_greedy_status_t();
  }

  return 5244;
}

void sub_1A5F7C090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(&a13);
  v15 = *(v13 - 128);
  if (v15)
  {
    *(v13 - 120) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::GreedyClustererFaces::getDistanceBetweenLevel0ClustersContaining(vision::mod::GreedyClustererFaces *this, uint64_t a2, uint64_t a3, float *a4)
{
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(this, a2) && vision::mod::GreedyClustererFaces::isFaceIdInClustererState(this, a3))
  {
    std::map<long long,long long>::at(*(this + 15), a2);
    std::map<long long,long long>::at(*(this + 15), a3);
    (*(*this + 168))(this);
    vision::mod::dist_greedy_status_t::dist_greedy_status_t();
  }

  return 5244;
}

void sub_1A5F7C244(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::GreedyClustererFaces::getLevel0FacesToClusterContaining(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a2))
  {
    v6 = *(a1 + 64);
    v7 = std::map<long long,long long>::at(*(a1 + 120), a2);
    v8 = std::map<unsigned long,std::list<long long>>::at(*(a1 + 96), *(**(v6 + 88) + *v7 * *(**(v6 + 88) + 16) + 24));
    if (v8 != a3)
    {
      std::list<long long>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<long long,void *>,std::__list_const_iterator<long long,void *>>(a3, v8[1], v8);
    }

    v9 = &CVML_status_ok;
  }

  else
  {
    v9 = &CVML_status_invalidParameter;
  }

  return (*v9 + 128) | 0x1400;
}

uint64_t vision::mod::GreedyClustererFaces::computeClusterLookupMapL1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = (a1 + 144);
  if (v2 != (a1 + 144))
  {
    do
    {
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v2[4]);
      std::vector<long long>::push_back[abi:ne200100]((v5 + 5), v2 + 5);
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFaces::computeClusterMapL0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = (a1 + 96);
  if (v2 != (a1 + 96))
  {
    do
    {
      for (i = v2[6]; i != v2 + 5; i = i[1])
      {
        v11[0] = v2[4];
        v11[1] = v11;
        v6 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v11[0]);
        std::vector<long long>::push_back[abi:ne200100]((v6 + 5), i + 2);
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFaces::computeClusterLookupMapL0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v3 = (a1 + 120);
  if (v2 != (a1 + 120))
  {
    do
    {
      v5 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a2, v2[4]);
      v6 = v5;
      v7 = v2[5];
      v9 = v5[6];
      v8 = v5[7];
      if (v9 >= v8)
      {
        v11 = v5[5];
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v16);
        }

        v17 = (v9 - v11) >> 3;
        v18 = (8 * v13);
        v19 = (8 * v13 - 8 * v17);
        *v18 = v7;
        v10 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = v6[5];
        v6[5] = v19;
        v6[6] = v10;
        v6[7] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = v7;
        v10 = v9 + 8;
      }

      v6[6] = v10;
      v21 = v2[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v2[2];
          v23 = *v22 == v2;
          v2 = v22;
        }

        while (!v23);
      }

      v2 = v22;
    }

    while (v22 != v3);
  }

  return 5248;
}

uint64_t vision::mod::GreedyClustererFaces::anomalyForGroup(vision::mod::GreedyClustererFaces *a1, uint64_t **a2, uint64_t a3)
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a3))
  {
    v6 = a2[1];
    v7 = *a2;
    if (v6 != *a2)
    {
      v8 = (a1 + 144);
      if (*(a1 + 18))
      {
        while (1)
        {
          v9 = *v7;
          v10 = *(a1 + 18);
          while (1)
          {
            v11 = v10[4];
            if (v9 >= v11)
            {
              break;
            }

LABEL_8:
            v10 = *v10;
            if (!v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 < v9)
          {
            break;
          }

          if (++v7 == v6)
          {
            v20[0] = 0;
            v20[1] = 0;
            v19 = v20;
            v12 = *(a1 + 17);
            if (v12 != v8)
            {
              do
              {
                v18 = *(v12 + 2);
                v13 = std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(&v19, *(&v18 + 1));
                std::vector<long long>::push_back[abi:ne200100]((v13 + 5), &v18);
                v14 = v12[1];
                if (v14)
                {
                  do
                  {
                    v15 = v14;
                    v14 = *v14;
                  }

                  while (v14);
                }

                else
                {
                  do
                  {
                    v15 = v12[2];
                    v16 = *v15 == v12;
                    v12 = v15;
                  }

                  while (!v16);
                }

                v12 = v15;
              }

              while (v15 != v8);
            }

            v20[3] = a3;
            std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>();
          }
        }

        ++v10;
        goto LABEL_8;
      }

LABEL_19:
      syslog(5, "FaceId=%lld not present in clustering", a3);
    }
  }

  return 5244;
}

void sub_1A5F7CA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  vision::mod::ImageDescriptorBufferFloat32::~ImageDescriptorBufferFloat32(&a29);
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*(v29 - 144));
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClustererFaces::serialize(vision::mod::GreedyClustererFaces *this@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  VNValidatedLog(1, @"  GreedyClustererFaces::serialize - enter", a2, a3, a4, a5, a6, a7, v34);
  v10 = *(this + 8);
  if (!*(v10 + 72) && !*(v10 + 88))
  {
    operator new();
  }

  vision::mod::GreedyClusterer::private_t::clusters_t::newMapFilePath(&__s, v10);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  VNValidatedLog(1, @"  GreedyClustererFaces::serialize - cachefile: %s", v11, v12, v13, v14, v15, v16, p_s);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__s;
  }

  else
  {
    v18 = __s.__r_.__value_.__r.__words[0];
  }

  v25 = open(v18, 1537, 438);
  if (v25 != -1)
  {
    vision::mod::GreedyClusterer::serializeStatus((this + 8), v25, v19, v20, v21, v22, v23, v24);
    __buf[0] = *(this + 16);
    write(v25, __buf, 8uLL);
    v26 = *(this + 14);
    if (v26 != (this + 120))
    {
      do
      {
        write(v25, v26 + 32, 8uLL);
        write(v25, v26 + 40, 8uLL);
        v27 = *(v26 + 1);
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = *(v26 + 2);
            v29 = *v28 == v26;
            v26 = v28;
          }

          while (!v29);
        }

        v26 = v28;
      }

      while (v28 != (this + 120));
    }

    __buf[0] = *(this + 19);
    write(v25, __buf, 8uLL);
    v30 = *(this + 17);
    if (v30 != (this + 144))
    {
      do
      {
        write(v25, v30 + 32, 8uLL);
        write(v25, v30 + 40, 8uLL);
        v31 = *(v30 + 1);
        if (v31)
        {
          do
          {
            v32 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v32 = *(v30 + 2);
            v29 = *v32 == v30;
            v30 = v32;
          }

          while (!v29);
        }

        v30 = v32;
      }

      while (v32 != (this + 144));
    }

    close(v25);
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __s.__r_.__value_.__l.__size_;
    }

    __buf[0] = size + 53;
    std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>();
  }

  VNValidatedLog(4, @"  GreedyClustererFaces::serialize - error creating new map file for serialization", v19, v20, v21, v22, v23, v24, v35);
  *a8 = 0;
  a8[1] = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1A5F7CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F7D3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(&a24);
  _Unwind_Resume(a1);
}

float *std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *,false>(float *result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v85 = *(a2 - 2);
        v86 = v8[2];
        if (v85 < v86)
        {
          v87 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v87;
          v8[2] = v85;
          *(a2 - 2) = v86;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v93 = *(v8 + 2);
      v94 = v8[6];
      v95 = *v8;
      v96 = v8[2];
      v97 = v8[10];
      if (v94 >= v96)
      {
        if (v97 < v94)
        {
          v143 = *(v8 + 4);
          *(v8 + 2) = v143;
          *(v8 + 4) = v93;
          v8[6] = v97;
          v8[10] = v94;
          if (v97 < v96)
          {
            *v8 = v143;
            *(v8 + 2) = v95;
            v8[2] = v97;
            v8[6] = v96;
          }
        }
      }

      else
      {
        if (v97 < v94)
        {
          *v8 = *(v8 + 4);
          *(v8 + 4) = v95;
          v8[2] = v97;
          goto LABEL_186;
        }

        *v8 = v93;
        *(v8 + 2) = v95;
        v8[2] = v94;
        v8[6] = v96;
        if (v97 < v96)
        {
          *(v8 + 2) = *(v8 + 4);
          *(v8 + 4) = v95;
          v8[6] = v97;
LABEL_186:
          v8[10] = v96;
        }
      }

      v151 = *(a2 - 2);
      v152 = v8[10];
      if (v151 < v152)
      {
        v153 = *(v8 + 4);
        *(v8 + 4) = *(a2 - 2);
        *(a2 - 2) = v153;
        v8[10] = v151;
        *(a2 - 2) = v152;
        v154 = v8[10];
        v155 = v8[6];
        if (v154 < v155)
        {
          v156 = *(v8 + 2);
          v157 = *(v8 + 4);
          *(v8 + 2) = v157;
          *(v8 + 4) = v156;
          v8[6] = v154;
          v8[10] = v155;
          v158 = v8[2];
          if (v154 < v158)
          {
            v159 = *v8;
            *v8 = v157;
            *(v8 + 2) = v159;
            v8[2] = v154;
            v8[6] = v158;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *,0>(v8, v8 + 4, v8 + 8, v8 + 12, a2 - 4);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v98 = v8 + 4;
      v100 = v8 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v8;
          do
          {
            v103 = v98;
            v104 = v102[6];
            if (v104 < v102[2])
            {
              v105 = *(v102 + 2);
              v106 = v101;
              while (1)
              {
                v107 = v8 + v106;
                *(v107 + 2) = *(v8 + v106);
                *(v107 + 6) = *(v8 + v106 + 8);
                if (!v106)
                {
                  break;
                }

                v106 -= 16;
                if (v104 >= *(v107 - 2))
                {
                  v108 = v8 + v106 + 16;
                  goto LABEL_131;
                }
              }

              v108 = v8;
LABEL_131:
              *v108 = v105;
              *(v108 + 8) = v104;
            }

            v98 = v103 + 4;
            v101 += 16;
            v102 = v103;
          }

          while (v103 + 4 != a2);
        }
      }

      else if (!v100)
      {
        v144 = v8 + 2;
        do
        {
          v145 = v98;
          v146 = v7[6];
          if (v146 < v7[2])
          {
            v147 = *(v7 + 2);
            v148 = v144;
            do
            {
              *(v148 + 1) = *(v148 - 1);
              v148[4] = *v148;
              v149 = *(v148 - 4);
              v148 -= 4;
            }

            while (v146 < v149);
            *(v148 + 1) = v147;
            v148[4] = v146;
          }

          v98 = v145 + 4;
          v144 += 4;
          v7 = v145;
        }

        while (v145 + 4 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v109 = (v9 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v8[4 * v112];
            if (2 * v111 + 2 < v9 && v113[2] < v113[6])
            {
              v113 += 4;
              v112 = 2 * v111 + 2;
            }

            v114 = &v8[4 * v111];
            v115 = v114[2];
            v116 = v113[2];
            if (v116 >= v115)
            {
              v117 = *v114;
              do
              {
                v118 = v114;
                v114 = v113;
                *v118 = *v113;
                v118[2] = v116;
                if (v109 < v112)
                {
                  break;
                }

                v119 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v8[4 * v112];
                v120 = v119 + 2;
                if (v120 < v9 && v113[2] < v113[6])
                {
                  v113 += 4;
                  v112 = v120;
                }

                v116 = v113[2];
              }

              while (v116 >= v115);
              *v114 = v117;
              v114[2] = v115;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v121 = 0;
          v122 = *v8;
          v123 = *(v8 + 2);
          v124 = v8;
          do
          {
            v125 = &v124[4 * v121];
            v126 = v125 + 4;
            v127 = (2 * v121) | 1;
            v121 = 2 * v121 + 2;
            if (v121 >= v9)
            {
              v121 = v127;
            }

            else
            {
              v128 = v125[6];
              v129 = v125[10];
              v130 = v125 + 8;
              if (v128 >= v129)
              {
                v121 = v127;
              }

              else
              {
                v126 = v130;
              }
            }

            *v124 = *v126;
            v124[2] = v126[2];
            v124 = v126;
          }

          while (v121 <= ((v9 - 2) >> 1));
          if (v126 == a2 - 4)
          {
            *v126 = v122;
            *(v126 + 2) = v123;
          }

          else
          {
            *v126 = *(a2 - 2);
            v126[2] = *(a2 - 2);
            *(a2 - 2) = v122;
            *(a2 - 2) = v123;
            v131 = (v126 - v8 + 16) >> 4;
            v132 = v131 < 2;
            v133 = v131 - 2;
            if (!v132)
            {
              v134 = v133 >> 1;
              v135 = &v8[4 * (v133 >> 1)];
              v136 = v126[2];
              v137 = v135[2];
              if (v137 < v136)
              {
                v138 = *v126;
                do
                {
                  v139 = v126;
                  v126 = v135;
                  *v139 = *v135;
                  v139[2] = v137;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = &v8[4 * v134];
                  v137 = v135[2];
                }

                while (v137 < v136);
                *v126 = v138;
                v126[2] = v136;
              }
            }
          }

          a2 -= 4;
          v132 = v9-- <= 2;
        }

        while (!v132);
      }

      return result;
    }

    v10 = &v8[4 * (v9 >> 1)];
    v11 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v12 = *v10;
      v13 = v10[2];
      v14 = v8[2];
      if (v13 >= v14)
      {
        if (v11 < v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v12;
          v10[2] = v11;
          *(a2 - 2) = v13;
          v20 = v10[2];
          v21 = v8[2];
          if (v20 < v21)
          {
            v22 = *v8;
            *v8 = *v10;
            *v10 = v22;
            v8[2] = v20;
            v10[2] = v21;
          }
        }
      }

      else
      {
        v15 = *v8;
        if (v11 < v13)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v15;
          v8[2] = v11;
          goto LABEL_27;
        }

        *v8 = v12;
        *v10 = v15;
        v8[2] = v13;
        v10[2] = v14;
        v26 = *(a2 - 2);
        if (v26 < v14)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v15;
          v10[2] = v26;
LABEL_27:
          *(a2 - 2) = v14;
        }
      }

      v27 = v10 - 4;
      v28 = *(v10 - 2);
      v29 = *(v10 - 2);
      v30 = v8[6];
      v31 = *(a2 - 6);
      if (v29 >= v30)
      {
        if (v31 < v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v28;
          *(v10 - 2) = v31;
          *(a2 - 6) = v29;
          v33 = *(v10 - 2);
          v34 = v8[6];
          if (v33 < v34)
          {
            v35 = *(v8 + 2);
            *(v8 + 2) = *v27;
            *v27 = v35;
            v8[6] = v33;
            *(v10 - 2) = v34;
          }
        }
      }

      else
      {
        v32 = *(v8 + 2);
        if (v31 < v29)
        {
          *(v8 + 2) = *(a2 - 4);
          *(a2 - 4) = v32;
          v8[6] = v31;
          goto LABEL_39;
        }

        *(v8 + 2) = v28;
        *v27 = v32;
        v8[6] = v29;
        *(v10 - 2) = v30;
        v37 = *(a2 - 6);
        if (v37 < v30)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 2) = v37;
LABEL_39:
          *(a2 - 6) = v30;
        }
      }

      v38 = v10 + 4;
      v39 = *(v10 + 2);
      v40 = v10[6];
      v41 = v8[10];
      v42 = *(a2 - 10);
      if (v40 >= v41)
      {
        if (v42 < v40)
        {
          *v38 = *(a2 - 6);
          *(a2 - 6) = v39;
          v10[6] = v42;
          *(a2 - 10) = v40;
          v44 = v10[6];
          v45 = v8[10];
          if (v44 < v45)
          {
            v46 = *(v8 + 4);
            *(v8 + 4) = *v38;
            *v38 = v46;
            v8[10] = v44;
            v10[6] = v45;
          }
        }
      }

      else
      {
        v43 = *(v8 + 4);
        if (v42 < v40)
        {
          *(v8 + 4) = *(a2 - 6);
          *(a2 - 6) = v43;
          v8[10] = v42;
          goto LABEL_48;
        }

        *(v8 + 4) = v39;
        *v38 = v43;
        v8[10] = v40;
        v10[6] = v41;
        v47 = *(a2 - 10);
        if (v47 < v41)
        {
          *v38 = *(a2 - 6);
          *(a2 - 6) = v43;
          v10[6] = v47;
LABEL_48:
          *(a2 - 10) = v41;
        }
      }

      v48 = *v10;
      v49 = v10[2];
      v50 = *v27;
      v51 = *(v10 - 2);
      v52 = v49;
      v53 = v10[6];
      if (v49 >= v51)
      {
        if (v53 >= v49)
        {
LABEL_55:
          v50 = v48;
        }

        else
        {
          v54 = *v38;
          *v10 = *v38;
          *v38 = v48;
          v10[2] = v53;
          v10[6] = v49;
          v52 = v53;
          if (v53 >= v51)
          {
            v50 = v54;
          }

          else
          {
            *v27 = v54;
            *v10 = v50;
            *(v10 - 2) = v53;
            v52 = v51;
            v10[2] = v51;
          }
        }
      }

      else
      {
        if (v53 < v49)
        {
          *v27 = *v38;
          *v38 = v50;
          *(v10 - 2) = v53;
          v10[6] = v51;
          goto LABEL_55;
        }

        *v27 = v48;
        *v10 = v50;
        *(v10 - 2) = v49;
        v10[2] = v51;
        v52 = v51;
        if (v53 < v51)
        {
          v73 = *v38;
          *v10 = *v38;
          *v38 = v50;
          v10[2] = v53;
          v10[6] = v51;
          v52 = v53;
          v50 = v73;
        }
      }

      v55 = *v8;
      *v8 = v50;
      *v10 = v55;
      v56 = *(v8 + 2);
      v8[2] = v52;
      *(v10 + 2) = v56;
      goto LABEL_57;
    }

    v16 = *v8;
    v17 = v8[2];
    v18 = v10[2];
    if (v17 >= v18)
    {
      if (v11 < v17)
      {
        *v8 = *(a2 - 2);
        *(a2 - 2) = v16;
        v8[2] = v11;
        *(a2 - 2) = v17;
        v23 = v8[2];
        v24 = v10[2];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[2] = v23;
          v8[2] = v24;
        }
      }

      goto LABEL_57;
    }

    v19 = *v10;
    if (v11 < v17)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v19;
      v10[2] = v11;
LABEL_36:
      *(a2 - 2) = v18;
      goto LABEL_57;
    }

    *v10 = v16;
    *v8 = v19;
    v10[2] = v17;
    v8[2] = v18;
    v36 = *(a2 - 2);
    if (v36 < v18)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v19;
      v8[2] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v57 = *v8;
    if (a4)
    {
      v58 = v8[2];
      v59 = v58;
LABEL_60:
      v60 = v8;
      do
      {
        v61 = v60;
        v60 += 4;
      }

      while (v59 > v61[6]);
      v62 = a2;
      if (v61 == v8)
      {
        v65 = a2;
        while (v60 < v65)
        {
          v63 = v65 - 4;
          v66 = *(v65 - 2);
          v65 -= 4;
          if (v59 > v66)
          {
            goto LABEL_70;
          }
        }

        v63 = v65;
      }

      else
      {
        do
        {
          v63 = v62 - 4;
          v64 = *(v62 - 2);
          v62 -= 4;
        }

        while (v59 <= v64);
      }

LABEL_70:
      v8 = v60;
      if (v60 < v63)
      {
        v67 = v63;
        do
        {
          v68 = *v8;
          *v8 = *v67;
          *v67 = v68;
          v69 = *(v8 + 2);
          v8[2] = *(v67 + 8);
          *(v67 + 8) = v69;
          do
          {
            v70 = v8[6];
            v8 += 4;
          }

          while (v59 > v70);
          do
          {
            v71 = *(v67 - 8);
            v67 -= 16;
          }

          while (v59 <= v71);
        }

        while (v8 < v67);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      *(v8 - 2) = v57;
      *(v8 - 2) = v58;
      if (v60 < v63)
      {
        goto LABEL_81;
      }

      v72 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *>(v7, v8 - 4);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 4;
        if (!v72)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v72)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *,false>(v7, v8 - 4, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v58 = v8[2];
      v59 = v58;
      if (*(v8 - 2) < v58)
      {
        goto LABEL_60;
      }

      if (v58 >= *(a2 - 2))
      {
        v76 = v8 + 4;
        do
        {
          v8 = v76;
          if (v76 >= a2)
          {
            break;
          }

          v77 = v76[2];
          v76 += 4;
        }

        while (v58 >= v77);
      }

      else
      {
        v74 = v8;
        do
        {
          v8 = v74 + 4;
          v75 = v74[6];
          v74 += 4;
        }

        while (v58 >= v75);
      }

      v78 = a2;
      if (v8 < a2)
      {
        v79 = a2;
        do
        {
          v78 = v79 - 4;
          v80 = *(v79 - 2);
          v79 -= 4;
        }

        while (v58 < v80);
      }

      while (v8 < v78)
      {
        v81 = *v8;
        *v8 = *v78;
        *v78 = v81;
        v82 = *(v8 + 2);
        v8[2] = v78[2];
        *(v78 + 2) = v82;
        do
        {
          v83 = v8[6];
          v8 += 4;
        }

        while (v58 >= v83);
        do
        {
          v84 = *(v78 - 2);
          v78 -= 4;
        }

        while (v58 < v84);
      }

      if (v8 - 4 != v7)
      {
        *v7 = *(v8 - 2);
        v7[2] = *(v8 - 2);
      }

      a4 = 0;
      *(v8 - 2) = v57;
      *(v8 - 2) = v58;
    }
  }

  v88 = *(v8 + 2);
  v89 = v8[6];
  v90 = v8[2];
  v91 = *(a2 - 2);
  if (v89 >= v90)
  {
    if (v91 < v89)
    {
      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v88;
      v8[6] = v91;
      *(a2 - 2) = v89;
      v140 = v8[6];
      v141 = v8[2];
      if (v140 < v141)
      {
        v142 = *v8;
        *v8 = *(v8 + 2);
        *(v8 + 2) = v142;
        v8[2] = v140;
        v8[6] = v141;
      }
    }
  }

  else
  {
    v92 = *v8;
    if (v91 >= v89)
    {
      *v8 = v88;
      *(v8 + 2) = v92;
      v8[2] = v89;
      v8[6] = v90;
      v150 = *(a2 - 2);
      if (v150 >= v90)
      {
        return result;
      }

      *(v8 + 2) = *(a2 - 2);
      *(a2 - 2) = v92;
      v8[6] = v150;
    }

    else
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v92;
      v8[2] = v91;
    }

    *(a2 - 2) = v90;
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *a2;
  v6 = a2[2];
  v7 = result[2];
  v8 = a3[2];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      *a2 = *a3;
      *a3 = v5;
      a2[2] = v8;
      a3[2] = v6;
      v10 = a2[2];
      v11 = result[2];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[2] = v10;
        a2[2] = v11;
      }
    }
  }

  else
  {
    v9 = *result;
    if (v8 < v6)
    {
      *result = *a3;
      *a3 = v9;
      result[2] = v8;
LABEL_9:
      a3[2] = v7;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v9;
    result[2] = v6;
    a2[2] = v7;
    v13 = a3[2];
    if (v13 < v7)
    {
      *a2 = *a3;
      *a3 = v9;
      a2[2] = v13;
      goto LABEL_9;
    }
  }

LABEL_10:
  v14 = a4[2];
  v15 = a3[2];
  if (v14 < v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    a3[2] = v14;
    a4[2] = v15;
    v17 = a3[2];
    v18 = a2[2];
    if (v17 < v18)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      a2[2] = v17;
      a3[2] = v18;
      v20 = a2[2];
      v21 = result[2];
      if (v20 < v21)
      {
        v22 = *result;
        *result = *a2;
        *a2 = v22;
        result[2] = v20;
        a2[2] = v21;
      }
    }
  }

  v23 = a5[2];
  v24 = a4[2];
  if (v23 < v24)
  {
    v25 = *a4;
    *a4 = *a5;
    *a5 = v25;
    a4[2] = v23;
    a5[2] = v24;
    v26 = a4[2];
    v27 = a3[2];
    if (v26 < v27)
    {
      v28 = *a3;
      *a3 = *a4;
      *a4 = v28;
      a3[2] = v26;
      a4[2] = v27;
      v29 = a3[2];
      v30 = a2[2];
      if (v29 < v30)
      {
        v31 = *a2;
        *a2 = *a3;
        *a3 = v31;
        a2[2] = v29;
        a3[2] = v30;
        v32 = a2[2];
        v33 = result[2];
        if (v32 < v33)
        {
          v34 = *result;
          *result = *a2;
          *a2 = v34;
          result[2] = v32;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *>(float *a1, float *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *(a1 + 2);
      v7 = a1[6];
      v8 = a1[2];
      v9 = *(a2 - 2);
      if (v7 >= v8)
      {
        if (v9 < v7)
        {
          *(a1 + 2) = *(a2 - 2);
          *(a2 - 2) = v6;
          a1[6] = v9;
          *(a2 - 2) = v7;
          v21 = a1[6];
          v22 = a1[2];
          if (v21 < v22)
          {
            v23 = *a1;
            *a1 = *(a1 + 2);
            *(a1 + 2) = v23;
            a1[2] = v21;
            a1[6] = v22;
          }
        }

        return 1;
      }

      v10 = *a1;
      if (v9 >= v7)
      {
        *a1 = v6;
        *(a1 + 2) = v10;
        a1[2] = v7;
        a1[6] = v8;
        v26 = *(a2 - 2);
        if (v26 >= v8)
        {
          return 1;
        }

        *(a1 + 2) = *(a2 - 2);
        *(a2 - 2) = v10;
        a1[6] = v26;
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a2 - 2) = v10;
        a1[2] = v9;
      }

      *(a2 - 2) = v8;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,vision::mod::GreedyClustererFaces::getSimilarFacesToClusterContaining(long long,std::vector<std::pair<long long,float>> &,std::map<long long,std::vector<long long>> &)::$_0 &,std::pair<unsigned long,float> *,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4);
      return 1;
    }

    v16 = *(a1 + 2);
    v17 = a1[6];
    v18 = *a1;
    v19 = a1[2];
    v20 = a1[10];
    if (v17 >= v19)
    {
      if (v20 < v17)
      {
        v25 = *(a1 + 4);
        *(a1 + 2) = v25;
        *(a1 + 4) = v16;
        a1[6] = v20;
        a1[10] = v17;
        if (v20 < v19)
        {
          *a1 = v25;
          *(a1 + 2) = v18;
          a1[2] = v20;
          a1[6] = v19;
        }
      }

      goto LABEL_48;
    }

    if (v20 >= v17)
    {
      *a1 = v16;
      *(a1 + 2) = v18;
      a1[2] = v17;
      a1[6] = v19;
      if (v20 >= v19)
      {
LABEL_48:
        v36 = *(a2 - 2);
        v37 = a1[10];
        if (v36 < v37)
        {
          v38 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 2);
          *(a2 - 2) = v38;
          a1[10] = v36;
          *(a2 - 2) = v37;
          v39 = a1[10];
          v40 = a1[6];
          if (v39 < v40)
          {
            v41 = *(a1 + 2);
            v42 = *(a1 + 4);
            *(a1 + 2) = v42;
            *(a1 + 4) = v41;
            a1[6] = v39;
            a1[10] = v40;
            v43 = a1[2];
            if (v39 < v43)
            {
              v44 = *a1;
              *a1 = v42;
              *(a1 + 2) = v44;
              a1[2] = v39;
              a1[6] = v43;
            }
          }
        }

        return 1;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v18;
      a1[6] = v20;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v18;
      a1[2] = v20;
    }

    a1[10] = v19;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = a1[2];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[2] = v3;
      *(a2 - 2) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = *(a1 + 2);
  v12 = a1[6];
  v13 = *a1;
  v14 = a1[2];
  v15 = a1[10];
  if (v12 >= v14)
  {
    if (v15 < v12)
    {
      v24 = *(a1 + 4);
      *(a1 + 2) = v24;
      *(a1 + 4) = v11;
      a1[6] = v15;
      a1[10] = v12;
      if (v15 < v14)
      {
        *a1 = v24;
        *(a1 + 2) = v13;
        a1[2] = v15;
        a1[6] = v14;
      }
    }
  }

  else
  {
    if (v15 >= v12)
    {
      *a1 = v11;
      *(a1 + 2) = v13;
      a1[2] = v12;
      a1[6] = v14;
      if (v15 >= v14)
      {
        goto LABEL_34;
      }

      *(a1 + 2) = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[6] = v15;
    }

    else
    {
      *a1 = *(a1 + 4);
      *(a1 + 4) = v13;
      a1[2] = v15;
    }

    a1[10] = v14;
  }

LABEL_34:
  v27 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  v30 = a1 + 8;
  while (1)
  {
    v31 = v27[2];
    if (v31 < v30[2])
    {
      v32 = *v27;
      v33 = v28;
      while (1)
      {
        v34 = a1 + v33;
        *(v34 + 6) = *(a1 + v33 + 32);
        *(v34 + 14) = *(a1 + v33 + 40);
        if (v33 == -32)
        {
          break;
        }

        v33 -= 16;
        if (v31 >= *(v34 + 6))
        {
          v35 = a1 + v33 + 48;
          goto LABEL_42;
        }
      }

      v35 = a1;
LABEL_42:
      *v35 = v32;
      *(v35 + 8) = v31;
      if (++v29 == 8)
      {
        return v27 + 4 == a2;
      }
    }

    v30 = v27;
    v28 += 16;
    v27 += 4;
    if (v27 == a2)
    {
      return 1;
    }
  }
}

uint64_t vision::mod::GreedyClustererFaces::affinityForFace(vision::mod::GreedyClustererFaces *a1, uint64_t a2, void *a3)
{
  {
    return 5244;
  }

  {
    {
      memset(&__p, 0, sizeof(__p));
      vision::mod::descriptorBufferUnpackedScores(&v7, a3, &__p, 128);
    }

    return 5244;
  }

  return vision::mod::GreedyClustererFaces::affinityForFaceInternal(a1, a2);
}

void sub_1A5F7E894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::GreedyClustererFaces::affinityForFaceInternal(vision::mod::GreedyClustererFaces *a1, uint64_t a2)
{
  if (vision::mod::GreedyClustererFaces::isFaceIdInClustererState(a1, a2))
  {
    vision::mod::dist_greedy_status_t::dist_greedy_status_t();
  }

  return 5244;
}

void sub_1A5F7EB24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::GreedyClustererFaces::update(uint64_t a1, uint64_t *lpsrc)
{
  {
    {
      memset(&v6, 0, sizeof(v6));
      memset(&v5[2], 0, 24);
      vision::mod::GreedyClustererFaces::updateInternal(a1, lpsrc);
    }

    {
      memset(&v6, 0, sizeof(v6));
      vision::mod::descriptorBufferUnpackedScores(v5, lpsrc, &v6, 128);
    }
  }

  return 5244;
}

void sub_1A5F7EE40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::GreedyClustererFaces::updateInternal(uint64_t a1, uint64_t *lpsrc)
{
  v4 = *lpsrc;
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 5244;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (lpsrc[9] != (lpsrc[2] - lpsrc[1]) >> 3)
  {
    syslog(5, "wrong number of descriptors id in descriptor buffer");
    v4 = *lpsrc;
  }

  if (v5)
  {
    if (v5[26] == *(a1 + 28))
    {
      v9 = lpsrc[7];
      (*(v4 + 104))(lpsrc);
      if (v9)
      {
        operator new();
      }

      v7 = 5245;
LABEL_13:
      v8 = __cxa_allocate_exception(8uLL);
      *v8 = v7;
      __cxa_throw(v8, MEMORY[0x1E69E54B0], 0);
    }

    syslog(5, "For consistency, GreedyClusterer::addDescriptors must be called with a ImageDescriptorBufferFloat32 having the same distance mode as GreedyClusterer::distance_mode");
  }

  else
  {
    syslog(5, "GreedyClusterer::addDescriptors must be called with a ImageDescriptorBufferFloat32 buffer");
  }

  v7 = 5244;
  goto LABEL_13;
}

void sub_1A5F7F7A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, char a35)
{
  vision::mod::dist_greedy_status_t::~dist_greedy_status_t(&a35);
  std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  if (a2 == 1)
  {
    v37 = *__cxa_begin_catch(a1);
    __cxa_end_catch();
    if (v37 == 5248)
    {
      JUMPOUT(0x1A5F7F624);
    }

    JUMPOUT(0x1A5F7F638);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a33);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<unsigned long>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned long>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5F7FD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, vision::mod::GreedyClusterer *a9, void **a10, void **a11, void **a12, void **a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 + 231) < 0)
  {
    operator delete(*a13);
  }

  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a10);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*a11);
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*v34);
  std::__tree<std::__value_type<unsigned long,std::list<long long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::list<long long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::list<long long>>>>::destroy(*a12);
  vision::mod::GreedyClusterer::~GreedyClusterer(a9);
  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v36);
  _Unwind_Resume(a1);
}

void sub_1A5F7FF14(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void vision::mod::GreedyClusterer::GreedyClusterer(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F1975018;
  *(a1 + 8) = 0x13F000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (*a3)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(8uLL);
  *exception = 5245;
  __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
}

void sub_1A5F80108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = v15[8];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = v15[6];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = v15[4];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<vision::mod::GreedyClusterer::private_t>::__on_zero_shared(uint64_t a1)
{
  vision::mod::GreedyClustererWithTorso::private_t::clusters_t::~clusters_t((a1 + 72));
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<vision::mod::GreedyClusterer::private_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::GreedyClustererFaces>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19753D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t vision::mod::GreedyClustererFaces::pasreAndVerifyClustererState(uint64_t a1, uint64_t a2, std::string *a3, std::string *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != -1052410331)
  {
    v40 = @"  Clusterer - couldn't find sanity value\n";
LABEL_25:
    VNValidatedLog(4, v40, a3, a4, a5, a6, a7, a8, v53);
    return 5246;
  }

  if (*(a2 + 4) != 10004)
  {
    v53 = *(a2 + 4);
    v40 = CFSTR("  Clusterer - versions mismatch (serialized: %d, current: %d");
    goto LABEL_25;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, (a2 + 44));
  createFullPath(&__str, a1, __p);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v20 = verifyChecksumMD5ForFile(p_str, (a2 + 24));
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__str;
  }

  else
  {
    v21 = __str.__r_.__value_.__r.__words[0];
  }

  if (v20)
  {
    v28 = open(v21, 0);
    v29 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if (v28 != -1)
    {
      v30 = __str.__r_.__value_.__r.__words[0];
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__str;
      }

      VNValidatedLog(1, @"  GreedyClustererFaces: Opening '%s'", v22, v23, v24, v25, v26, v27, v30);
      __len = 0;
      read(v28, &__len, 8uLL);
      std::string::basic_string[abi:ne200100](__p, __len);
      if (v57 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      read(v28, v31, __len);
      createFullPath(&v54, a1, __p);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v54;
      }

      else
      {
        v32 = v54.__r_.__value_.__r.__words[0];
      }

      if (verifyChecksumMD5ForFile(v32, (a2 + 8)))
      {
        *a5 = v28;
        lseek(v28, 0, 0);
        std::string::operator=(a3, &__str);
        std::string::operator=(a4, &v54);
        v39 = &CVML_status_ok;
      }

      else
      {
        v51 = &v54;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v51 = v54.__r_.__value_.__r.__words[0];
        }

        VNValidatedLog(4, @"  Clusterer - data checksum mismatch for file: %s", v33, v34, v35, v36, v37, v38, v51);
        close(v28);
        v39 = &CVML_status_internalError;
      }

      v52 = *v39;
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      v41 = (v52 + 128) | 0x1400;
      goto LABEL_40;
    }

    v43 = __str.__r_.__value_.__r.__words[0];
    __error();
    v50 = &__str;
    if (v29 < 0)
    {
      v50 = v43;
    }

    VNValidatedLog(4, @"  GreedyClustererFaces: Failed to open '%s': errno=%d", v44, v45, v46, v47, v48, v49, v50);
  }

  else
  {
    VNValidatedLog(4, @"  Clusterer - data checksum mismatch for file: %s", v14, v15, v16, v17, v18, v19, v21);
  }

  v41 = 5246;
LABEL_40:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v41;
}

void sub_1A5F80578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F80FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

BOOL _addRelationshipsToHierarchicalModel(void **a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 count])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    [VNEspressoModelClassifier convertRelationships:v5 toStdRelationships:&v17];
    memset(&v16, 0, sizeof(v16));
    v6 = v17;
    v7 = v18;
    v8 = &CVML_status_ok;
    while (v6 != v7)
    {
      v9 = *a1;
      if (!std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(*a1, v6))
      {
        std::string::operator=(&v16, v6);
        v8 = &CVML_status_invalidParameter;
        break;
      }

      vision::mod::ImageClassfier_Graph::addParentChildRelation(v9, v6, v6[1].__r_.__value_.__r.__words);
      v6 += 2;
    }

    v10 = *v8 == 0;
    if (a3 && *v8)
    {
      v11 = MEMORY[0x1E696AEC0];
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v16;
      }

      else
      {
        v12 = v16.__r_.__value_.__r.__words[0];
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:4];
      v14 = [v11 stringWithFormat:@"The classification identifier '%@' does not exist in the hierarchy", v13];

      *a3 = [VNError errorWithCode:14 message:v14];
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    v16.__r_.__value_.__r.__words[0] = &v17;
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v16);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_1A5F81188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_1A5F81438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VNNSMutableDataStreambuf::overflow(id *this, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = a2;
  v4 = [this[8] length];
  v5 = this[10];
  if (v5 >= v4)
  {
    [this[8] setLength:(v5 & 0xFFFFFFFFFFFFFFE0) + 32];
    v6 = [this[8] mutableBytes];
    this[9] = v6;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = this[9];
    if (v6)
    {
LABEL_4:
      *(this[10] + v6) = v2;
      this[10] = this[10] + 1;
      return v2;
    }
  }

  return 0xFFFFFFFFLL;
}

void VNNSMutableDataStreambuf::~VNNSMutableDataStreambuf(std::locale *this)
{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1AC556B00);
}

{

  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

void VNNSDataStreambuf::VNNSDataStreambuf(VNNSDataStreambuf *this, NSData *a2)
{
  v3 = a2;
  *this = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC5569F0](this + 8);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *this = &unk_1F1975510;
  v4 = v3;
  *(this + 8) = v4;
  v5 = [(NSData *)v4 bytes];
  v6 = [*(this + 8) length];
  *(this + 2) = v5;
  *(this + 3) = v5;
  *(this + 4) = v5 + v6;
}

void sub_1A5F81A30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);

  _Unwind_Resume(a1);
}

void VNNSMutableDataStreambuf::VNNSMutableDataStreambuf(VNNSMutableDataStreambuf *this)
{
  *this = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1AC5569F0](this + 8);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *this = &unk_1F1975590;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:1024];
  v3 = *(this + 8);
  *(this + 8) = v2;
}

void sub_1A5F81AF8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_1A5F837A0(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1A5F83D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A5F85424(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t tplTrackerResampler_lumaDownscale8N(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a6)
  {
    return 6780;
  }

  v13 = 8 * a6;
  v14 = log2((v13 * v13));
  if (v13 > a5)
  {
    return 6784;
  }

  v16 = 0;
  v17 = 0;
  v18 = v14;
  v19 = a4 / v13;
  v20 = *a1 + a1[3] * a3 + a2;
  if (v13 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v13;
  }

  result = 6784;
  do
  {
    if (v13 <= a4)
    {
      v22 = 0;
      v23 = v20;
      do
      {
        v24 = 0;
        v25 = a1[3];
        v26 = (v23 + v16 * v25);
        v27 = 1 << v18 >> 1;
        do
        {
          v28 = v26;
          v29 = v21;
          do
          {
            v30 = *v28++;
            v27 += v30;
            --v29;
          }

          while (v29);
          ++v24;
          v26 += v25;
        }

        while (v24 != v21);
        *(a7 + v22++) = v27 >> v18;
        v23 += v13;
      }

      while (v22 < v19);
    }

    a7 += v19;
    ++v17;
    v16 += v13;
  }

  while (v17 < a5 / v13);
  return result;
}

uint64_t tplTrackerResampler_chromaDownscale8N(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return 6780;
  }

  v16 = 8 * a6;
  v17 = log2((v16 * v16));
  if (v16 > a5)
  {
    return 6784;
  }

  v19 = 0;
  v20 = 0;
  v21 = v17;
  v22 = a4 / v16;
  v23 = a1[3] * a3;
  v24 = *a1 + v23 + 2 * a2;
  v25 = v23 + 2 * a2;
  if (v16 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v16;
  }

  v27 = v25 + *a1 + 1;
  v28 = 16 * a6;
  result = 6784;
  v29 = a5 / v16;
  do
  {
    if (v16 <= a4)
    {
      v30 = 0;
      v31 = v24;
      v32 = v27;
      do
      {
        v33 = 0;
        v34 = a1[3];
        v35 = (v32 + v19 * v34);
        v36 = (v31 + v19 * v34);
        v37 = 1 << v21 >> 1;
        v38 = v37;
        do
        {
          v39 = v36;
          v40 = v35;
          v41 = v26;
          do
          {
            v42 = *v39;
            v39 += 2;
            v38 += v42;
            v43 = *v40;
            v40 += 2;
            v37 += v43;
            --v41;
          }

          while (v41);
          ++v33;
          v35 += v34;
          v36 += v34;
        }

        while (v33 != v26);
        *(a7 + v30) = v38 >> v21;
        *(a8 + v30++) = v37 >> v21;
        v32 += v28;
        v31 += v28;
      }

      while (v30 < v22);
    }

    a7 += v22;
    a8 += v22;
    ++v20;
    v19 += v16;
  }

  while (v20 < v29);
  return result;
}

uint64_t revertSegmentCoordinateSystem(uint64_t result, int a2, int a3)
{
  v3 = *(result + 40);
  if ((a3 & 0x10000) != 0 && a2 >= 1)
  {
    v4 = v3 + 1;
    v5 = a2;
    do
    {
      *v4 = -*v4;
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  if ((a3 & 0x100) != 0 && a2 >= 1)
  {
    v6 = a2;
    v7 = v3;
    do
    {
      *v7 = -*v7;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  if (a2 >= 1 && (a3 & 1) != 0)
  {
    do
    {
      HIDWORD(v8) = *v3;
      LODWORD(v8) = *v3;
      *v3++ = v8 >> 16;
      --a2;
    }

    while (a2);
  }

  v9 = *(result + 20);
  v10 = *(result + 24);
  v11 = *(result + 28);
  if ((*&a3 & 0x10000) != 0)
  {
    v11 = -v11;
    v9 = -v9;
  }

  if ((a3 & 0x100) != 0)
  {
    v11 = -v11;
    v10 = -v10;
  }

  if (a3)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (a3)
  {
    v9 = v10;
  }

  *(result + 20) = v9;
  *(result + 24) = v12;
  *(result + 28) = v11;
  return result;
}

unsigned __int16 *findDiff(unsigned __int16 *result, int a2, char a3, _WORD *a4, _WORD *a5)
{
  v5 = *result;
  v6 = result[1];
  if (a3)
  {
    if (a2 < 2)
    {
      LODWORD(v8) = 1;
    }

    else
    {
      v7 = result + 2;
      v8 = 1;
      while (1)
      {
        v9 = *v7;
        v7 += 2;
        if (v5 != v9)
        {
          break;
        }

        if (a2 == ++v8)
        {
          LODWORD(v8) = a2;
          break;
        }
      }
    }

    if (v8 == a2)
    {
      LOWORD(v8) = 0;
    }

    *a4 = v8;
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if (!a5)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (a2 < 2)
  {
    LODWORD(v11) = 1;
  }

  else
  {
    v10 = result + 3;
    v11 = 1;
    while (1)
    {
      v12 = *v10;
      v10 += 2;
      if (v6 != v12)
      {
        break;
      }

      if (a2 == ++v11)
      {
        LODWORD(v11) = a2;
        break;
      }
    }
  }

  if (v11 == a2)
  {
    LOWORD(v11) = 0;
  }

  a4[1] = v11;
  if (a5)
  {
LABEL_23:
    if (a3)
    {
      if (a2 < 2)
      {
        LODWORD(v14) = 1;
      }

      else
      {
        v13 = &result[2 * a2 - 2];
        v14 = 1;
        while (1)
        {
          v15 = *v13;
          v13 -= 2;
          if (v5 != v15)
          {
            break;
          }

          if (a2 == ++v14)
          {
            LODWORD(v14) = a2;
            break;
          }
        }
      }

      v16 = v14 - 1;
      if (v14 == a2)
      {
        v16 = 0;
      }

      *a5 = v16;
    }

    if ((a3 & 2) != 0)
    {
      if (a2 < 2)
      {
        LODWORD(v18) = 1;
      }

      else
      {
        v17 = &result[2 * a2 - 1];
        v18 = 1;
        while (1)
        {
          v19 = *v17;
          v17 -= 2;
          if (v6 != v19)
          {
            break;
          }

          if (a2 == ++v18)
          {
            LODWORD(v18) = a2;
            break;
          }
        }
      }

      v20 = v18 - 1;
      if (v18 == a2)
      {
        v20 = 0;
      }

      a5[1] = v20;
    }
  }

  return result;
}

void splitSegmentIntoStraightSegments(uint64_t *a1, uint64_t a2, unint64_t a3, int *a4, float a5)
{
  v5 = *(a1 + 3);
  if (v5 >= 6)
  {
    v8 = a3;
    v10 = a1;
    v11 = a1[5];
    v12 = HIDWORD(a3);
    if (SHIDWORD(a3) <= 1)
    {
      LODWORD(v12) = 1;
    }

    if (v12 >= v5 - 2)
    {
      v13 = v5 - 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = allocSegments(a4, 1);
    *v14 = *v10;
    *v10 = v14;
    *(v14 + 12) = v5 - v13;
    v15 = (v11 + 4 * v13);
    *(v14 + 40) = v15;
    *(v10 + 3) = v13 + 1;
    v16 = straightLineWLSQ(v10[5], v13 + 1);
    v18 = v17;
    v19 = *&v17;
    *(v10 + 5) = Lsq2Leq(a2);
    *(v10 + 6) = v20;
    *(v10 + 7) = v21;
    *(v10 + 4) = v8;
    if (v19 > a5)
    {
      splitSegmentIntoStraightSegments(v10, v16, v18, a4, a5);
      v15 = *(v14 + 40);
    }

    v22 = straightLineWLSQ(v15, *(v14 + 12));
    v24 = v23;
    v25 = *&v23;
    *(v14 + 20) = Lsq2Leq(v22);
    *(v14 + 24) = v26;
    *(v14 + 28) = v27;
    *(v14 + 16) = v24;
    if (v25 > a5)
    {
      splitSegmentIntoStraightSegments(v14, v22, v24, a4, a5);
    }

    do
    {
      v28 = v10;
      v10 = *v10;
    }

    while (v10 != v14);
    v29 = *(v28 + 3) + *(v14 + 12) - 1;
    v30 = straightLineWLSQ(v28[5], v29);
    if (v31 <= a5)
    {
      *(v28 + 3) = v29;
      *(v28 + 4) = v31;
      *(v28 + 5) = Lsq2Leq(v30);
      *(v28 + 6) = v32;
      *(v28 + 7) = v33;
      *v28 = *v14;
      *(v14 + 8) = 0;
    }
  }
}

uint64_t mergeSegments(float *a1, uint64_t a2, float a3)
{
  v4 = a2;
  v38[1] = *MEMORY[0x1E69E9840];
  v38[0] = (a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v7 = (v38 - v6);
  if (v8 < 2)
  {
    return v4;
  }

  v9 = 0;
  do
  {
    v10 = (v4 - 2);
    if (v4 < 2)
    {
      return v4;
    }

    v11 = v4 - 1;
    v12 = *(a1 + 5);
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[7];
    v16 = v7;
    v17 = (v4 - 1);
    v18 = a1;
    do
    {
      v18 = *v18;
      v19 = *v12;
      v20 = v12[1];
      v12 = *(v18 + 5);
      v21 = &v12[2 * *(v18 + 3)];
      v22 = (v14 * *(v21 - 1)) + (v13 * *(v21 - 2));
      v23 = v18[5];
      v14 = v18[6];
      v24 = v15 + v22;
      v25 = v18[7];
      v26 = fabsf(v24);
      v27 = fabsf(v25 + ((v14 * v20) + (v23 * v19)));
      if (v26 <= v27)
      {
        v26 = v27;
      }

      *v16++ = v26;
      v15 = v25;
      v13 = v23;
      --v17;
    }

    while (v17);
    v28 = 0;
    v29 = 0;
    v30 = 1;
    v31 = a1;
    while (v28 != v10)
    {
      v32 = &v7[v28];
      v33 = v32[1];
      if (*v32 > v33)
      {
        v34 = v32[1];
      }

      else
      {
        v34 = *v32;
      }

      if (v34 > a3)
      {
        v31 = *v31;
LABEL_20:
        v35 = 2;
        goto LABEL_21;
      }

      ++v29;
      if (*v32 <= v33)
      {
        mergeSegment(v31);
        goto LABEL_20;
      }

      mergeSegment(*v31);
      v31 = *v31;
      v35 = 3;
LABEL_21:
      v31 = *v31;
      v28 += v35;
LABEL_22:
      if (v28 < v11 && v30++ < v11)
      {
        continue;
      }

      goto LABEL_26;
    }

    if (v7[v10] > a3)
    {
      v31 = 0;
      v28 = v4;
      goto LABEL_22;
    }

    ++v29;
    mergeSegment(v31);
LABEL_26:
    v4 = (v4 - v29);
    if (!v29)
    {
      break;
    }

    if (v4 == 1)
    {
      break;
    }

    ++v9;
  }

  while (v9 != LODWORD(v38[0]));
  return v4;
}

void mergeSegment(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    __assert_rtn("mergeSegment", "SegmentUtilities.c", 453, "sPtr2 != NULL");
  }

  v3 = *(a1 + 3) + *(v1 + 3) - 1;
  *(a1 + 3) = v3;
  *a1 = *v1;
  *(v1 + 8) = 0;
  v4 = straightLineLSQ(a1[5], v3);
  *(a1 + 4) = v5;
  *(a1 + 5) = Lsq2Leq(v4);
  *(a1 + 6) = v6;
  *(a1 + 7) = v7;
}

void sub_1A5F87DE4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1A5F87D6CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5F884F0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1A5F88478);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1A5F8AF8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5F8D21C()
{
  if (v0)
  {
    JUMPOUT(0x1A5F8D224);
  }

  JUMPOUT(0x1A5F8D228);
}

void *lockedPixelBufferToImageBuffer<Pixel_UHVH>(void *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  result = CVPixelBufferGetBaseAddress(pixelBuffer);
  *a1 = result;
  a1[1] = Height;
  a1[2] = Width;
  a1[3] = BytesPerRow;
  return result;
}

uint64_t ___Z21convertAndResizeImageI10Pixel_UFVFS0_EvRKN5apple6vision11ImageBufferIT_S4_EERKNS3_IT0_S8_EE_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 72) * a2;
  v3 = vcvtms_s32_f32(v2);
  v4 = *(result + 32);
  if (v4 >= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = *(result + 56);
  if (v5 >= 1)
  {
    v6 = v2 - floorf(v2);
    v7 = *(result + 40);
    v8 = v7[3] >> 3;
    v9 = *v7;
    v10 = v9 + 8 * v8 * v3;
    v11 = v9 + 8 * v4 * v8;
    v12 = *(result + 64);
    v13 = (**(result + 48) + 8 * a2 * (*(*(result + 48) + 24) >> 3) + 4);
    v14 = 0.0;
    do
    {
      v15 = v14 - floorf(v14);
      v16 = vcvtms_s32_f32(v14);
      if (v12 >= v16 + 1)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = v12;
      }

      v18 = (v10 + 8 * v16);
      v19 = (v10 + 8 * v17);
      v20 = (v11 + 8 * v16);
      v21 = (v11 + 8 * v17);
      v22 = *v18 + (v15 * (*v19 - *v18));
      v23 = v20[1];
      v24 = v21[1];
      v25 = v18[1] + (v15 * (v19[1] - v18[1]));
      *(v13 - 1) = (v22 + (v6 * ((*v20 + (v15 * (*v21 - *v20))) - v22))) * *(result + 80);
      *v13 = *(result + 84) * (v25 + (v6 * ((v23 + (v15 * (v24 - v23))) - v25)));
      v13 += 2;
      v14 = v14 + *(result + 76);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ___Z21convertAndResizeImageI10Pixel_UFVF10Pixel_UHVHEvRKN5apple6vision11ImageBufferIT_S5_EERKNS4_IT0_S9_EE_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 72) * a2;
  v3 = vcvtms_s32_f32(v2);
  v4 = *(result + 32);
  if (v4 >= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = *(result + 56);
  if (v5 >= 1)
  {
    v6 = v2 - floorf(v2);
    v7 = *(result + 40);
    v8 = v7[3] >> 3;
    v9 = *v7;
    v10 = v9 + 8 * v8 * v3;
    v11 = v9 + 8 * v4 * v8;
    v12 = *(result + 64);
    v14 = *(result + 80);
    v13 = *(result + 84);
    v15 = *(result + 76);
    v16 = (**(result + 48) + 4 * a2 * (*(*(result + 48) + 24) >> 2) + 2);
    v17 = 0.0;
    do
    {
      v18 = vcvtms_s32_f32(v17);
      v19 = v17 - floorf(v17);
      if (v12 >= v18 + 1)
      {
        v20 = v18 + 1;
      }

      else
      {
        v20 = v12;
      }

      v21 = (v10 + 8 * v18);
      v22 = (v11 + 8 * v18);
      v23 = (v10 + 8 * v20);
      v24 = (v11 + 8 * v20);
      v25 = v22[1];
      v26 = v24[1];
      v27 = *v21 + (v19 * (*v23 - *v21));
      v28 = v21[1] + (v19 * (v23[1] - v21[1]));
      _S6 = (v27 + (v6 * ((*v22 + (v19 * (*v24 - *v22))) - v27))) * v14;
      __asm { FCVT            H6, S6 }

      *(v16 - 1) = LOWORD(_S6);
      _S5 = v13 * (v28 + (v6 * ((v25 + (v19 * (v26 - v25))) - v28)));
      __asm { FCVT            H5, S5 }

      *v16 = LOWORD(_S5);
      v17 = v17 + v15;
      v16 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ___Z21convertAndResizeImageI10Pixel_UHVH10Pixel_UFVFEvRKN5apple6vision11ImageBufferIT_S5_EERKNS4_IT0_S9_EE_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 72) * a2;
  v3 = vcvtms_s32_f32(v2);
  v4 = *(result + 32);
  if (v4 >= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = *(result + 56);
  if (v5 >= 1)
  {
    v6 = v2 - floorf(v2);
    v7 = *(result + 40);
    v8 = v7[3] >> 2;
    v9 = *v7;
    v10 = v9 + 4 * v8 * v3;
    v11 = v9 + 4 * v4 * v8;
    v12 = *(result + 64);
    v13 = (**(result + 48) + 8 * a2 * (*(*(result + 48) + 24) >> 3) + 4);
    v14 = 0.0;
    do
    {
      v15 = v14 - floorf(v14);
      v16 = vcvtms_s32_f32(v14);
      if (v12 >= v16 + 1)
      {
        v17 = v16 + 1;
      }

      else
      {
        v17 = v12;
      }

      v18 = (v10 + 4 * v16);
      v19 = (v10 + 4 * v17);
      v20 = (v11 + 4 * v16);
      v21 = (v11 + 4 * v17);
      _H3 = *v18;
      __asm { FCVT            S3, H3 }

      _H4 = *v19;
      __asm { FCVT            S4, H4 }

      v30 = _S3 + (v15 * (_S4 - _S3));
      LOWORD(_S4) = *v20;
      __asm { FCVT            S4, H4 }

      _H5 = *v21;
      __asm { FCVT            S5, H5 }

      v34 = v30 + (v6 * ((_S4 + (v15 * (_S5 - _S4))) - v30));
      LOWORD(_S4) = v18[1];
      __asm { FCVT            S4, H4 }

      LOWORD(_S5) = v19[1];
      __asm { FCVT            S5, H5 }

      v37 = _S4 + (v15 * (_S5 - _S4));
      LOWORD(_S5) = v20[1];
      __asm { FCVT            S5, H5 }

      _H6 = v21[1];
      __asm { FCVT            S6, H6 }

      *(v13 - 1) = v34 * *(result + 80);
      *v13 = *(result + 84) * (v37 + (v6 * ((_S5 + (v15 * (_S6 - _S5))) - v37)));
      v13 += 2;
      v14 = v14 + *(result + 76);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t ___Z21convertAndResizeImageI10Pixel_UHVHS0_EvRKN5apple6vision11ImageBufferIT_S4_EERKNS3_IT0_S8_EE_block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(result + 72) * a2;
  v3 = vcvtms_s32_f32(v2);
  v4 = *(result + 32);
  if (v4 >= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = *(result + 56);
  if (v5 >= 1)
  {
    v6 = v2 - floorf(v2);
    v7 = *(result + 40);
    v8 = v7[3] >> 2;
    v9 = *v7;
    v10 = v9 + 4 * v8 * v3;
    v11 = v9 + 4 * v4 * v8;
    v12 = *(result + 64);
    v14 = *(result + 80);
    v13 = *(result + 84);
    v15 = *(result + 76);
    v16 = (**(result + 48) + 4 * a2 * (*(*(result + 48) + 24) >> 2) + 2);
    v17 = 0.0;
    do
    {
      v18 = vcvtms_s32_f32(v17);
      v19 = v17 - floorf(v17);
      if (v12 >= v18 + 1)
      {
        v20 = v18 + 1;
      }

      else
      {
        v20 = v12;
      }

      v21 = (v10 + 4 * v18);
      v22 = (v10 + 4 * v20);
      v23 = (v11 + 4 * v18);
      v24 = (v11 + 4 * v20);
      _H6 = *v21;
      __asm { FCVT            S6, H6 }

      _H7 = *v22;
      __asm { FCVT            S7, H7 }

      _H16 = *v23;
      v34 = _S6 + (v19 * (_S7 - _S6));
      __asm { FCVT            S7, H16 }

      _H16 = *v24;
      __asm { FCVT            S16, H16 }

      _H17 = v21[1];
      v39 = _S7 + (v19 * (_S16 - _S7));
      __asm { FCVT            S16, H17 }

      _H17 = v22[1];
      __asm { FCVT            S17, H17 }

      v43 = _S16 + (v19 * (_S17 - _S16));
      LOWORD(_S17) = v23[1];
      __asm { FCVT            S17, H17 }

      _H18 = v24[1];
      __asm { FCVT            S18, H18 }

      _S6 = (v34 + (v6 * (v39 - v34))) * v14;
      __asm { FCVT            H6, S6 }

      *(v16 - 1) = LOWORD(_S6);
      _S5 = v13 * (v43 + (v6 * ((_S17 + (v19 * (_S18 - _S17))) - v43)));
      __asm { FCVT            H5, S5 }

      *v16 = LOWORD(_S5);
      v17 = v17 + v15;
      v16 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

id getVCPRequestFrameWidthPropertyKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr;
  v8 = getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr)
  {
    v1 = VideoProcessingLibrary();
    v6[3] = dlsym(v1, "VCPRequestFrameWidthPropertyKey");
    getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVCPRequestFrameHeightPropertyKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr;
  v8 = getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr)
  {
    v1 = VideoProcessingLibrary();
    v6[3] = dlsym(v1, "VCPRequestFrameHeightPropertyKey");
    getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVCPRequestMotionFlowComputationAccuracyPropertyKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLoc(void)::ptr;
  v8 = getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLoc(void)::ptr)
  {
    v1 = MediaAnalysisLibrary();
    v6[3] = dlsym(v1, "VCPRequestMotionFlowComputationAccuracyPropertyKey");
    getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVCPRequestForceCPUPropertyKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr;
  v8 = getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr;
  if (!getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr)
  {
    v1 = VideoProcessingLibrary();
    v6[3] = dlsym(v1, "VCPRequestForceCPUPropertyKey");
    getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getVCPMotionFlowRequestClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVCPMotionFlowRequestClass(void)::softClass;
  v7 = getVCPMotionFlowRequestClass(void)::softClass;
  if (!getVCPMotionFlowRequestClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getVCPMotionFlowRequestClassv_block_invoke;
    v3[3] = &unk_1E77B69F0;
    v3[4] = &v4;
    ___ZL28getVCPMotionFlowRequestClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A5F8E7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL28getVCPMotionFlowRequestClassv_block_invoke(uint64_t a1)
{
  MediaAnalysisLibrary();
  result = objc_getClass("VCPMotionFlowRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVCPMotionFlowRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return MediaAnalysisLibrary();
  }

  return result;
}

uint64_t MediaAnalysisLibrary(void)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MediaAnalysisLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = ___ZL24MediaAnalysisLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E77B5D38;
    v5 = 0;
    MediaAnalysisLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = MediaAnalysisLibraryCore(char **)::frameworkLibrary;
    if (MediaAnalysisLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return MediaAnalysisLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL24MediaAnalysisLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  MediaAnalysisLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL41getVCPRequestForceCPUPropertyKeySymbolLocv_block_invoke_32764(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestForceCPUPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL26VideoProcessingLibraryCorePPc_block_invoke_32768()
{
  result = _sl_dlopen();
  VideoProcessingLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL62getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPRequestMotionFlowComputationAccuracyPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestMotionFlowComputationAccuracyPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL44getVCPRequestFrameHeightPropertyKeySymbolLocv_block_invoke_32773(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestFrameHeightPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL43getVCPRequestFrameWidthPropertyKeySymbolLocv_block_invoke_32776(uint64_t a1)
{
  v2 = VideoProcessingLibrary();
  result = dlsym(v2, "VCPRequestFrameWidthPropertyKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A5F90314(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5F90BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F90C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F90D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F90DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F90E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F90FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_1A5F9107C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F91140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F91200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F912B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A5F91378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t vision::mod::readBinSerializedModelValues(char *a1, unint64_t *a2, void *a3)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = 381;
    goto LABEL_10;
  }

  v6 = fopen(a1, "rb");
  if (!v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a1);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = 373;
LABEL_10:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v7 = v6;
  vision::mod::readBinSerializedModelValues(v6, 0, a2, a3);

  return fclose(v7);
}

void vision::mod::readBinSerializedModelValues(FILE *a1, const char *a2, unint64_t *a3, void *a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 381;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v40, "::");
    v8 = strlen(a2);
    v9 = std::string::insert(&v40, 0, a2, v8);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v42 = v9->__r_.__value_.__r.__words[2];
    *v41 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v41, "");
  }

  if (*a3)
  {
    v11 = 0;
    do
    {
      v12 = *(a3[1] + 8 * v11);
      if (v42 >= 0)
      {
        v13 = HIBYTE(v42);
      }

      else
      {
        v13 = v41[1];
      }

      v14 = strlen(*(a3[1] + 8 * v11));
      std::string::basic_string[abi:ne200100](&v40, v13 + v14);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v40;
      }

      else
      {
        v15 = v40.__r_.__value_.__r.__words[0];
      }

      if (v13)
      {
        if (v42 >= 0)
        {
          v16 = v41;
        }

        else
        {
          v16 = v41[0];
        }

        memmove(v15, v16, v13);
      }

      v17 = v15 + v13;
      if (v14)
      {
        memmove(v17, v12, v14);
      }

      v17[v14] = 0;
      if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a4, &v40))
      {
        __p.__r_.__value_.__r.__words[0] = 0;
        v39 = 0;
        if (fseek(a1, 0, 0) == -1)
        {
          v35 = __cxa_allocate_exception(8uLL);
          *v35 = 373;
          __cxa_throw(v35, MEMORY[0x1E69E54B0], 0);
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v40;
        }

        else
        {
          v18 = v40.__r_.__value_.__r.__words[0];
        }

        if (BinSerializer_freadInFloat(a1, v18, 1, &v39, &__p) == 128)
        {
          operator new();
        }
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      ++v11;
    }

    while (v11 < *a3);
  }

  if (a3[2])
  {
    v19 = 0;
    do
    {
      v20 = *(a3[3] + 8 * v19);
      if (v42 >= 0)
      {
        v21 = HIBYTE(v42);
      }

      else
      {
        v21 = v41[1];
      }

      v22 = strlen(*(a3[3] + 8 * v19));
      std::string::basic_string[abi:ne200100](&v40, v21 + v22);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v40;
      }

      else
      {
        v23 = v40.__r_.__value_.__r.__words[0];
      }

      if (v21)
      {
        if (v42 >= 0)
        {
          v24 = v41;
        }

        else
        {
          v24 = v41[0];
        }

        memmove(v23, v24, v21);
      }

      v25 = v23 + v21;
      if (v22)
      {
        memmove(v25, v20, v22);
      }

      v25[v22] = 0;
      if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a4, &v40))
      {
        __p.__r_.__value_.__r.__words[0] = 0;
        v39 = 0;
        if (fseek(a1, 0, 0) == -1)
        {
          v36 = __cxa_allocate_exception(8uLL);
          *v36 = 373;
          __cxa_throw(v36, MEMORY[0x1E69E54B0], 0);
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v40;
        }

        else
        {
          v26 = v40.__r_.__value_.__r.__words[0];
        }

        if (BinSerializer_freadInBytes(a1, v26, &v39, &__p) == 128)
        {
          operator new();
        }
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      ++v19;
    }

    while (v19 < a3[2]);
  }

  if (a3[4])
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(a3[5] + 8 * v28);
      if (a2)
      {
        if (v29)
        {
          std::string::basic_string[abi:ne200100]<0>(&__p, v29);
          if (v42 >= 0)
          {
            v30 = v41;
          }

          else
          {
            v30 = v41[0];
          }

          if (v42 >= 0)
          {
            v31 = HIBYTE(v42);
          }

          else
          {
            v31 = v41[1];
          }

          v32 = std::string::insert(&__p, 0, v30, v31);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v40;
          }

          else
          {
            v34 = v40.__r_.__value_.__r.__words[0];
          }

          vision::mod::readBinSerializedModelValues(a1, v34, a3[6] + v27, a4);
          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          vision::mod::readBinSerializedModelValues(a1, a2, a3[6] + v27, a4);
        }
      }

      else
      {
        vision::mod::readBinSerializedModelValues(a1, v29, a3[6] + v27, a4);
      }

      ++v28;
      v27 += 56;
    }

    while (v28 < a3[4]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_1A5F91BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A5F91BFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    JUMPOUT(0x1A5F91CBCLL);
  }

  JUMPOUT(0x1A5F91CC0);
}

void sub_1A5F91C34(void *a1)
{
  __cxa_begin_catch(a1);
  free(v1);
  __cxa_rethrow();
}

void sub_1A5F91C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_end_catch();
  if (a18 < 0)
  {
    JUMPOUT(0x1A5F91C98);
  }

  JUMPOUT(0x1A5F91CB0);
}

void sub_1A5F91C70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    JUMPOUT(0x1A5F91C98);
  }

  if (a28 < 0)
  {
    JUMPOUT(0x1A5F91CBCLL);
  }

  JUMPOUT(0x1A5F91CC0);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,vision::mod::readBinSerializedModelValues(__sFILE *,char const*,vision::mod::BinSerializedModelFileInfo const&,vision::mod::ModelValues &,BOOL)::$_1,std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod28readBinSerializedModelValuesEP7__sFILEPKcRKNS0_26BinSerializedModelFileInfoERNS0_11ModelValuesEbE3$_1"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<unsigned char *,vision::mod::readBinSerializedModelValues(__sFILE *,char const*,vision::mod::BinSerializedModelFileInfo const&,vision::mod::ModelValues &,BOOL)::$_1,std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

uint64_t std::__shared_ptr_pointer<float *,vision::mod::readBinSerializedModelValues(__sFILE *,char const*,vision::mod::BinSerializedModelFileInfo const&,vision::mod::ModelValues &,BOOL)::$_0,std::allocator<float>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN6vision3mod28readBinSerializedModelValuesEP7__sFILEPKcRKNS0_26BinSerializedModelFileInfoERNS0_11ModelValuesEbE3$_0"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<float *,vision::mod::readBinSerializedModelValues(__sFILE *,char const*,vision::mod::BinSerializedModelFileInfo const&,vision::mod::ModelValues &,BOOL)::$_0,std::allocator<float>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::Face3D::~Face3D(vision::mod::Face3D *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x1AC556AE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void Projections_computeShiftBruteForce(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6, int a7, float *a8, float *a9)
{
  v12 = a9;
  if (a2 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = a2;
  }

  v14 = 8 * v13;
  v15 = malloc_type_malloc(v14, 0x100004052888210uLL);
  v16 = malloc_type_malloc(v14, 0x100004052888210uLL);
  v17 = v16;
  *v16 = 3.4028e38;
  v18 = 1 - a2;
  v72 = a8;
  v19 = *a8;
  v20 = 0.0;
  v21 = 0.0;
  if (*a8 >= (1 - a2))
  {
    v22 = (a5 - 1);
    if (v19 <= v22)
    {
      v23 = v19 - (1 - a2);
      v24 = v22 - v19;
      if (v23 > v24)
      {
        v24 = v23;
      }

      v21 = 0.0 / v24;
    }
  }

  if (v18 >= a5)
  {
    v54 = 3.4028e38;
    goto LABEL_42;
  }

  v25 = 0;
  v26 = (a5 + a2 - 1);
  v27 = a2 - 1;
  v65 = a5 - 1;
  v28 = -a2;
  v29 = vneg_f32(0x7F0000007FLL);
  v30 = a2 - 1;
  v64 = a5 + a2 - 2;
  v31 = v64;
  v66 = v16;
  v67 = v15;
  do
  {
    v32 = v28 + v25 + 1;
    v33 = v18 & ~(v18 >> 31);
    if (v31 >= v27)
    {
      v34 = v27;
    }

    else
    {
      v34 = v31;
    }

    v35 = v28 + v25 + v34 - v33 + 2;
    if (v35 >= a7)
    {
      v38 = v33 + v30;
      if (v65 >= v25)
      {
        v39 = v25;
      }

      else
      {
        v39 = v65;
      }

      v74 = v39;
      v75 = v28 + v25 + 1;
      v73 = v32 & ~(v32 >> 31);
      v40 = *v72;
      __C = 0.0;
      v41 = v26;
      v42 = v28;
      vDSP_dotpr((a1 + 4 * v38), 1, (a4 + 4 * v73), 1, &__C, v35);
      v28 = v42;
      v26 = v41;
      __C = __C / v35;
      v43 = 4 * v34 + 4;
      v44 = (*(*a3 + v43) - *(*a3 + 4 * v38)) / v35;
      *v45.i32 = (((*(a3[1] + v43) - *(a3[1] + 4 * v38)) / v35) - (v44 * v44)) + 0.0;
      v46 = vdup_lane_s32(v45, 0);
      v47 = vrsqrte_f32(v46);
      v48 = vbic_s8(vcgt_s32(v29, v46), vceqz_f32(v46));
      v49 = vbsl_s8(v48, vmul_f32(v45, vmul_f32(v47, vrsqrts_f32(v47, vmul_n_f32(v47, *v45.i32)))), v46);
      v50 = 4 * v74 + 4;
      v17 = v66;
      v15 = v67;
      v51 = (v74 - v73 + 1);
      *v46.i32 = (*(*a6 + v50) - *(*a6 + 4 * v73)) / v51;
      *v48.i32 = (((*(a6[1] + v50) - *(a6[1] + 4 * v73)) / v51) - (*v46.i32 * *v46.i32)) + 0.0;
      v52 = vdup_lane_s32(v48, 0);
      v53 = vrsqrte_f32(v52);
      *v48.i32 = vmul_f32(v49, vbsl_s8(vbic_s8(vcgt_s32(v29, v52), vceqz_f32(v52)), vmul_f32(v48, vmul_f32(v53, vrsqrts_f32(v53, vmul_n_f32(v53, *v48.i32)))), v52)).f32[0];
      v36 = v75;
      v37 = (((*v48.i32 - __C) + (v44 * *v46.i32)) / (*v48.i32 + *v48.i32)) + (v21 * vabds_f32(v40, v75));
    }

    else
    {
      v36 = v32;
      v37 = 3.4028e38;
    }

    v15[v25] = v36;
    v17[v25++] = v37;
    ++v18;
    --v31;
    --v30;
  }

  while (v26 != v25);
  v54 = *v17;
  if (v26 > 1)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v12 = a9;
    v58 = 3.4028e38;
    v59 = 1;
LABEL_23:
    v60 = &v17[v59];
    do
    {
      v61 = *v60;
      if (v54 > *v60)
      {
        v57 = v15[v59];
        v54 = *v60;
      }

      v62 = v59 + 1;
      if (v59 < v64 && v58 > v61 && *(v60 - 1) > v61 && v60[1] > v61)
      {
        v56 = v15[v59];
        v55 = 1;
        ++v59;
        v58 = *v60;
        if (v62 != v26)
        {
          goto LABEL_23;
        }

        goto LABEL_40;
      }

      ++v60;
      ++v59;
    }

    while (v26 != v62);
    v61 = v58;
    if (v55)
    {
LABEL_40:
      v20 = v56;
      v54 = v61;
      goto LABEL_42;
    }

    v20 = v57;
LABEL_42:
    *v72 = v20;
    *v12 = v54;
    if (!v15)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *v72 = 0.0;
  *a9 = v54;
LABEL_43:
  free(v15);
LABEL_44:

  free(v17);
}

void sub_1A5F95D64(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *exc_bufa, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a2)
  {

    objc_begin_catch(a1);
    JUMPOUT(0x1A5F95A80);
  }

  _Unwind_Resume(a1);
}

void sub_1A5F9688C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1AC556AE0](v23, 0x1000C8077774924);
  _Unwind_Resume(a1);
}

_DWORD *reverseCopy(_DWORD *__dst, char *__src, int a3, int a4)
{
  v4 = a4;
  v6 = __dst;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (a4 >= 1)
      {
        do
        {
          v12 = *__src;
          __src -= 4;
          *v6++ = v12;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (a3 != 8)
      {
LABEL_12:
        if (a4 >= 1)
        {
          v9 = a3;
          v10 = -a3;
          do
          {
            __dst = memcpy(v6, __src, v9);
            v6 = (v6 + v9);
            __src += v10;
            --v4;
          }

          while (v4);
        }

        return __dst;
      }

      if (a4 >= 1)
      {
        do
        {
          v8 = *__src;
          __src -= 8;
          *v6 = v8;
          v6 += 2;
          --v4;
        }

        while (v4);
      }
    }
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (a4 >= 1)
        {
          do
          {
            v7 = *__src;
            __src -= 2;
            *v6 = v7;
            v6 = (v6 + 2);
            --v4;
          }

          while (v4);
        }

        return __dst;
      }

      goto LABEL_12;
    }

    if (a4 >= 1)
    {
      do
      {
        v11 = *__src--;
        *v6 = v11;
        v6 = (v6 + 1);
        --v4;
      }

      while (v4);
    }
  }

  return __dst;
}

void saveImage(const char *a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v5 = CGDataProviderCreateWithData(0, *a2, *(a2 + 16) * *(a2 + 24), 0);
  v6 = *(a2 + 32) - 2;
  if (v6 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_1A60513AC[v6];
  }

  v8 = CGImageCreate(*(a2 + 8), *(a2 + 16), 8uLL, 0x20uLL, *(a2 + 24), DeviceRGB, v7, v5, 0, 0, kCGRenderingIntentDefault);
  v9 = strlen(a1);
  v10 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], a1, v9, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CGImageDestinationCreateWithURL(v10, @"public.png", 1uLL, 0);
    if (v12)
    {
      v13 = v12;
      CGImageDestinationAddImage(v12, v8, 0);
      CGImageDestinationFinalize(v13);
      CFRelease(v13);
    }

    CFRelease(v11);
  }

  CGDataProviderRelease(v5);
  CGImageRelease(v8);

  CGColorSpaceRelease(DeviceRGB);
}

void saveY(const char *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4 == 4 || v4 == 1)
  {
    v26 = v2;
    v27 = v3;
    v24 = 0;
    v25 = 0;
    if (v4 == 1 || v4 == 4)
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      v23[1] = v8;
      v23[2] = v9;
      v10 = (4 * v8 + 12) & 0xFFFFFFFFFFFFFFF0;
      v23[3] = v10;
      LODWORD(v24) = 2;
      if (v10 * v9)
      {
        v12 = malloc_type_calloc(v10 * v9, 1uLL, 0x100004077774924uLL);
        v23[0] = v12;
        if (v12)
        {
          v13 = v12;
          if (v9 > 0)
          {
            v14 = 0;
            v15 = *a2;
            if (v8 <= 1)
            {
              v16 = 1;
            }

            else
            {
              v16 = v8;
            }

            v17 = v12;
            do
            {
              v18 = v16;
              v19 = v17;
              v20 = v15;
              if (v8 >= 1)
              {
                do
                {
                  v21 = *v20;
                  *v19 = *v20;
                  v19[1] = v21;
                  v22 = *v20++;
                  v19[2] = v22;
                  v19[3] = -1;
                  v19 += 4;
                  --v18;
                }

                while (v18);
              }

              ++v14;
              v15 += *(a2 + 24);
              v17 += v10;
            }

            while (v14 < v9);
          }

          saveImage(a1, v23);
          free(v13);
        }

        else
        {
          printf("convertYUV420ToRGBA8888: failed to allocate %lu bytes\n");
        }
      }

      else
      {
        printf("convertYUV420ToRGBA8888: invalid dst size of %lu x %lu\n");
      }
    }

    else
    {
      puts("convertYUV420ToRGBA8888: src must be YUV420 format!");
    }
  }
}

const char *saveCVPixelBuffer(const char *result, CVPixelBufferRef pixelBuffer)
{
  if (pixelBuffer)
  {
    v3 = result;
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    if (PixelFormatType > 1111970368)
    {
      switch(PixelFormatType)
      {
        case 1111970369:
          v32 = 7;
          break;
        case 1278226488:
          LODWORD(v38) = 4;
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          v39 = 0;
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          saveY(v3, &BaseAddress);
          return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        case 1380401729:
          v32 = 2;
          break;
        default:
          return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      }
    }

    else
    {
      if (PixelFormatType != 32)
      {
        if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
        {
          v5 = CVPixelBufferGetWidth(pixelBuffer);
          v6 = CVPixelBufferGetHeight(pixelBuffer);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
          v8 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
          v39 = 0;
          Width = v5;
          Height = v6;
          v10 = 4 * v5;
          BytesPerRow = 4 * v5;
          v38 = 2;
          v33 = malloc_type_calloc(4 * v5, v6, 0x100004077774924uLL);
          BaseAddress = v33;
          if (v6)
          {
            LODWORD(v11) = 0;
            v12 = 2 * BytesPerRowOfPlane;
            v13 = &BaseAddressOfPlane[BytesPerRowOfPlane];
            v14 = v33 + 7;
            v15.i64[0] = 0x10000000100;
            v15.i64[1] = 0x10000000100;
            v16.i64[0] = 0xFF000000FFLL;
            v16.i64[1] = 0xFF000000FFLL;
            v17 = v5;
            do
            {
              if (v17)
              {
                v18 = 0;
                v19 = v14;
                do
                {
                  v20 = v8[v18 + 1] - 128;
                  v21 = v8[v18] - 128;
                  v22.i32[0] = BaseAddressOfPlane[v18];
                  v22.i32[1] = BaseAddressOfPlane[v18 + 1];
                  v23.i32[0] = v13[v18];
                  v23.i32[1] = v13[v18 + 1];
                  *v24.i8 = vshl_n_s32(v22, 9uLL);
                  v24.u64[1] = vshl_n_s32(v23, 9uLL);
                  v25 = vshrq_n_s32(vaddq_s32(vaddq_s32(vdupq_n_s32(-176 * v21 - 365 * v20), v24), v15), 9uLL);
                  v26 = vshrq_n_s32(vaddq_s32(vdupq_n_s32(904 * v21 + 256), v24), 9uLL);
                  v27 = vminq_s32(vmaxq_s32(vshrq_n_s32(vaddq_s32(vdupq_n_s32(717 * v20 + 256), v24), 9uLL), 0), v16);
                  v28 = vminq_s32(vmaxq_s32(v25, 0), v16);
                  v29 = vminq_s32(vmaxq_s32(v26, 0), v16);
                  *(v19 - 7) = v27.i8[0];
                  *(v19 - 6) = v28.i8[0];
                  *(v19 - 5) = v29.i8[0];
                  *(v19 - 4) = -1;
                  v30 = (v18 + 1);
                  if (v5 > v30)
                  {
                    *(v19 - 3) = v27.i8[4];
                    *(v19 - 2) = v28.i8[4];
                    *(v19 - 1) = v29.i8[4];
                    *v19 = -1;
                  }

                  if (v6 > (v11 | 1))
                  {
                    v31 = &v19[v10];
                    v19[v10 - 7] = v27.i8[8];
                    v19[v10 - 6] = v28.i8[8];
                    v19[v10 - 5] = v29.i8[8];
                    v19[v10 - 4] = -1;
                    if (v5 > v30)
                    {
                      *(v31 - 3) = v27.i8[12];
                      *(v31 - 2) = v28.i8[12];
                      *(v31 - 1) = v29.i8[12];
                      *v31 = -1;
                    }
                  }

                  v18 += 2;
                  v19 += 8;
                }

                while (v5 > v18);
                v17 = v5;
              }

              v11 = (v11 + 2);
              BaseAddressOfPlane += v12;
              v8 += BytesPerRowOfPlane;
              v13 += v12;
              v14 += 8 * v5;
            }

            while (v6 > v11);
          }

          saveImage(v3, &BaseAddress);
          if (v33)
          {
            free(v33);
          }
        }

        return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      }

      v32 = 3;
    }

    LODWORD(v38) = v32;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    saveImage(v3, &BaseAddress);
    return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  return result;
}

void saveVImage(const char *a1, unsigned __int8 **a2, int a3)
{
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  if (a3 <= 1278226533)
  {
    if (a3 == 32)
    {
      v5 = 3;
    }

    else
    {
      if (a3 != 1111970369)
      {
        if (a3 == 1278226488)
        {
          LODWORD(v26) = 1;
          *(v25 + 8) = vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL);
          *&v25[0] = *a2;
          *(&v25[1] + 1) = a2[3];
          saveY(a1, v25);
        }

        return;
      }

      v5 = 7;
    }

LABEL_21:
    LODWORD(v26) = v5;
    *(v25 + 8) = vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL);
    *&v25[0] = *a2;
    *(&v25[1] + 1) = a2[3];
    saveImage(a1, v25);
    return;
  }

  switch(a3)
  {
    case 1278226534:
      LODWORD(v26) = 1;
      v6 = a2[1];
      v7 = a2[2];
      *(&v25[0] + 1) = v7;
      *&v25[1] = v6;
      *(&v25[1] + 1) = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = malloc_type_calloc(*(&v25[1] + 1), v6, 0x100004077774924uLL);
      v9 = v8;
      *&v25[0] = v8;
      *(&v26 + 1) = 0;
      if (v6)
      {
        v10 = 0;
        v11 = *a2;
        v12 = v8;
        do
        {
          if (v7)
          {
            for (i = 0; i != v7; ++i)
            {
              v14 = fmax(*(v11 + 4 * i), 0.0);
              if (v14 > 1.0)
              {
                v14 = 1.0;
              }

              i[v12] = (v14 * 255.0 + 0.5);
            }
          }

          ++v10;
          v12 += (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v11 += a2[3];
        }

        while (v10 != v6);
      }

      saveY(a1, v25);
      v15 = v9;
      break;
    case 1280061496:
      LODWORD(v26) = 1;
      v16 = *(a2 + 1);
      *(v25 + 8) = vextq_s8(v16, v16, 8uLL);
      *(&v25[1] + 1) = a2[3];
      v17 = v16.i64[0];
      v18 = malloc_type_calloc(*(&v25[1] + 1), v16.u64[0], 0x100004077774924uLL);
      v19 = v18;
      *&v25[0] = v18;
      *(&v26 + 1) = 0;
      v20 = *(&v25[1] + 1) * v17;
      if (*(&v25[1] + 1) * v17)
      {
        v21 = *a2;
        v22 = v18;
        do
        {
          if (*v21++)
          {
            v24 = -1;
          }

          else
          {
            v24 = 0;
          }

          *v22++ = v24;
          --v20;
        }

        while (v20);
      }

      saveY(a1, v25);
      v15 = v19;
      break;
    case 1380401729:
      v5 = 2;
      goto LABEL_21;
    default:
      return;
  }

  free(v15);
}

BOOL _isPlaneSubsampled(const __CFDictionary *a1)
{
  v10 = 1;
  valuePtr = 1;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E69662C8]);
  if (Value)
  {
    v3 = Value;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      CFNumberGetValue(v3, kCFNumberLongType, &valuePtr);
    }
  }

  v5 = CFDictionaryGetValue(a1, *MEMORY[0x1E69662E0]);
  if (v5 && (v6 = v5, v7 = CFNumberGetTypeID(), v7 == CFGetTypeID(v6)))
  {
    CFNumberGetValue(v6, kCFNumberLongType, &v10);
    v8 = v10 > 1;
  }

  else
  {
    v8 = 0;
  }

  return valuePtr > 1 || v8;
}

float64x2_t VNAlignRectToSubsampledCVPixelBufferConstraint(float64x2_t *a1, CVPixelBufferRef pixelBuffer)
{
  v4 = *MEMORY[0x1E695E480];
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(v4, PixelFormatType);
  if (!v6)
  {
    return result;
  }

  v8 = v6;
  if (!CVPixelBufferIsPlanar(pixelBuffer))
  {
    isPlaneSubsampled = _isPlaneSubsampled(v8);
    CFRelease(v8);
    if (!isPlaneSubsampled)
    {
      return result;
    }

    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E69662D8]);
  if (Value)
  {
    v10 = Value;
    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v12 = Count;
      LOBYTE(v13) = 0;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
        v13 = v13 || _isPlaneSubsampled(ValueAtIndex);
      }

      CFRelease(v8);
      if (!v13)
      {
        return result;
      }

LABEL_16:
      v17 = vadd_s32(vmovn_s64(vcvtq_s64_f64(a1[1])), 0x100000001);
      v18 = vmovn_s64(vcvtq_s64_f64(*a1));
      v19.i64[0] = (v18.i32[0] & 0xFFFFFFFE);
      v19.i64[1] = (v18.i32[1] & 0xFFFFFFFE);
      result = vcvtq_f64_s64(v19);
      v19.i64[0] = (v17.i32[0] & 0xFFFFFFFE);
      v19.i64[1] = (v17.i32[1] & 0xFFFFFFFE);
      *a1 = result;
      a1[1] = vcvtq_f64_s64(v19);
      return result;
    }
  }

  CFRelease(v8);
  return result;
}

id VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [v8 initWithObjectsAndKeys:{v7, *MEMORY[0x1E696A578], v6, *MEMORY[0x1E696AA08], 0}];

  v10 = VNEntityIdentificationModelErrorWithUserInfo(a1, v9);

  return v10;
}

id VNEntityIdentificationModelErrorWithUserInfo(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithDomain:@"com.apple.vis.VNEntityIdentificationModel" code:a1 userInfo:v4];

  return v5;
}

id VNEntityIdentificationModelErrorForUnknownEntityUniqueIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown entity (%@)", a1];
  v2 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(7, v1, 0);

  return v2;
}

void sub_1A5F9AD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___writeVersion1EntityAndObservations_block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v8 setOutputFormat:200];
  [v8 vn_encodeEntityUniqueIdentifier:a1[4] forKey:@"E"];
  [v8 encodeObject:v6 forKey:@"O"];
  [v8 finishEncoding];
  v9 = [v8 encodedData];
  v10 = a1[8];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  v14 = *(v12 + 40);
  v13 = (v12 + 40);
  obj = v14;
  v15 = v9;
  v16 = v11;
  v17 = [v15 length];
  if (HIDWORD(v17))
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = VNPersonsModelIOStringForTag(1160466208);
    v20 = [v18 stringWithFormat:@"tag %@ has a data overflow to %lu bytes", v19, v17];
    obj = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, v20, 0);

    objc_storeStrong(v13, obj);
LABEL_4:
    *(*(a1[7] + 8) + 24) = 0;
    *a5 = 1;
    goto LABEL_5;
  }

  v21 = VNEntityIdentificationModelIOWriteTaggedBufferToOutputStream(1160466208, [v15 bytes], v17, v16, v10, &obj);

  objc_storeStrong(v13, obj);
  if ((v21 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
}

id VNEntityIdentificationModelErrorForReadOnlyModelWithLocalizedDescription(void *a1)
{
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v3 initWithObjectsAndKeys:{v2, *MEMORY[0x1E696A578], 0}];

  v5 = VNEntityIdentificationModelErrorWithUserInfo(6, v4);

  return v5;
}

uint64_t VNEntityIdentificationModelApplyTagValue(void *a1, uint64_t a2, objc_class *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x1E696AD98];
  v14 = a1;
  v15 = [v13 numberWithUnsignedInt:a2];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    goto LABEL_4;
  }

  if (objc_opt_isKindOfClass())
  {
    [v11 setValue:v16 forKeyPath:v12];
LABEL_4:
    a6 = 1;
    goto LABEL_7;
  }

  if (a6)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = VNPersonsModelIOStringForTag(a2);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromClass(a3);
    v22 = [v17 stringWithFormat:@"model data object %@ is a %@, not the expected %@", v18, v20, v21];

    *a6 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(3, v22, 0);

    a6 = 0;
  }

LABEL_7:

  return a6;
}

uint64_t _readTaggedObjectOfClass(void *a1, uint64_t a2, uint64_t a3, void *a4, CC_MD5_CTX *a5, void *a6)
{
  v11 = a1;
  v12 = a4;
  v13 = v11;
  LODWORD(v31) = 0;
  if (!VNEntityIdentificationModelIOReadUInt32FromInputStream(v13, &v31, a5, a6))
  {

    v17 = 0;
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v14 = objc_alloc(MEMORY[0x1E695DF88]);
  v15 = [v14 initWithLength:v31];
  v16 = [v15 mutableBytes];
  if (v16)
  {
    if (VNEntityIdentificationModelIOReadBufferFromInputStream(v13, v31, v16, a5, a6))
    {
      v17 = v15;
      goto LABEL_9;
    }
  }

  else if (a6)
  {
    +[VNError errorForMemoryAllocationFailure];
    *a6 = v17 = 0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_9:

  if (!v17)
  {
    goto LABEL_13;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__33748;
  v35 = __Block_byref_object_dispose__33749;
  v36 = 0;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = ___readTaggedObjectOfClass_block_invoke;
  v26 = &unk_1E77B6060;
  v17 = v17;
  v30 = a2;
  v28 = &v31;
  v29 = a3;
  v27 = v17;
  v18 = _Block_copy(&v23);
  v19 = VNExecuteBlock(v18, a6);
  if (v19)
  {
    v20 = v32[5];
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{a2, v23, v24, v25, v26}];
    [v12 setObject:v20 forKeyedSubscript:v21];
  }

  _Block_object_dispose(&v31, 8);
LABEL_14:

  return v19;
}

void sub_1A5F9CE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ___readTaggedObjectOfClass_block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:*(a1 + 32) error:a2];
  v5 = v4;
  if (v4)
  {
    [v4 setRequiresSecureCoding:1];
    [v5 setDecodingFailurePolicy:1];
    if (*(a1 + 56) == 1953326188)
    {
      [v5 setClass:objc_opt_class() forClassName:@"VNEntityIdentificationModelTrainedModel"];
    }

    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:a1 + 48 count:1];
    v7 = *MEMORY[0x1E696A508];
    v20 = 0;
    v8 = [v5 decodeTopLevelObjectOfClasses:v6 forKey:v7 error:&v20];
    v9 = v20;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    v12 = *(*(*(a1 + 40) + 8) + 40);
    v13 = v12 != 0;
    if (a2 && !v12)
    {
      if (v9)
      {
        v14 = v9;
        *a2 = v9;
      }

      else
      {
        v15 = MEMORY[0x1E696AEC0];
        v16 = NSStringFromClass(*(a1 + 48));
        v17 = [v15 stringWithFormat:@"could not decode object of class %@", v16];
        v18 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(1, v17, 0);
        *a2 = v18;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id VNEntityIdentificationModelErrorForUnsupportedAlgorithm(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = objc_opt_class();

  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"unsupported algorithm %@", v5];

  v7 = VNEntityIdentificationModelErrorWithLocalizedDescriptionAndUnderlyingError(11, v6, 0);

  return v7;
}

void sub_1A5F9E0FC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1A5F9EF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL30getABPKSkeletonDefinitionClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL32AltruisticBodyPoseKitLibraryCorePPc_block_invoke_34090;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77B6168;
    v6 = 0;
    AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ABPKSkeletonDefinition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getABPKSkeletonDefinitionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL32AltruisticBodyPoseKitLibraryCorePPc_block_invoke_34090()
{
  result = _sl_dlopen();
  AltruisticBodyPoseKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_1A5F9F670(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<espresso_buffer_t>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<espresso_buffer_t>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void sub_1A5FA154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  v21 = *(v19 - 104);
  if (v21)
  {
    *(v19 - 96) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<espresso_buffer_t>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19759A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5FA1840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VNShotflowNetwork;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5FA3A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FA48D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FA54B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FA6430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL QuadDetect(const vImage_Buffer *a1, float32x2_t *a2, void *a3, void *a4, int *a5)
{
  v867 = *MEMORY[0x1E69E9840];
  height = a1->height;
  width = a1->width;
  v9 = height * width;
  *v842 = 0u;
  v843 = 0u;
  v10 = a2->f32[1] * 3.14159265 / 180.0;
  a2[9].f32[1] = sinf(v10);
  v11.i32[0] = a2[5].i32[0];
  v12 = a2[3].f32[0];
  if (v11.f32[0] >= v12)
  {
    v11.i32[0] = a2[3].i32[0];
  }

  __srcb = v11.f32[0];
  a2[5].i32[0] = v11.i32[0];
  v11.f32[1] = v12;
  v13 = vcvt_f32_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(vsub_f32(vdup_n_s32(0x42B40000u), v11)), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x4066800000000000uLL)));
  sizee = v13.f32[0];
  v836 = sinf(v13.f32[1]);
  v14.f32[0] = sinf(sizee);
  v14.f32[1] = v836;
  a2[10] = vabs_f32(v14);
  a2[11].f32[0] = a2[1].f32[1] + 1.0;
  v15 = a2[5].f32[1];
  v14.f32[0] = __srcb * 3.14159265 / 180.0;
  v16 = ((v15 * cosf(v14.f32[0])) * 12.566) / (((v15 + 1.0) + (v15 + 1.0)) * ((v15 + 1.0) + (v15 + 1.0)));
  v798 = width;
  v799 = height * width;
  __NR = height;
  if (height >= width)
  {
    v17 = width;
  }

  else
  {
    v17 = height;
  }

  v18 = a2[8].f32[0] * v17;
  a2[11].f32[1] = v16;
  a2[12].f32[0] = v18;
  v19 = a2[3].f32[1];
  a2[12].f32[1] = floorf(v18 * a2[4].f32[0]);
  a2[13].i32[0] = 1094713344;
  v792 = a2;
  a2[13].f32[1] = v19 * v19;
  __E = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v20 = a1->height;
  v21 = a1->width;
  v854 = v20 * v21;
  v22 = malloc_type_malloc(4 * v20 * v21, 0x8AC60CC6uLL);
  destA.width = v21;
  destA.rowBytes = v21;
  destA.height = v20;
  destA.data = v22;
  destR.width = v21;
  destR.rowBytes = v21;
  destR.height = v20;
  destR.data = &v22[v20 * v21];
  destG.width = v21;
  destG.rowBytes = v21;
  destG.height = v20;
  destG.data = &v22[2 * v20 * v21];
  destB.width = v21;
  destB.rowBytes = v21;
  destB.height = v20;
  destB.data = &v22[3 * v20 * v21];
  vImageConvert_ARGB8888toPlanar8(a1, &destA, &destR, &destG, &destB, 0);
  v23 = malloc_type_malloc(12 * v20 * v21, 0x100004052888210uLL);
  dest.width = v21;
  dest.rowBytes = 4 * v21;
  dest.height = v20;
  dest.data = v23;
  src.width = v21;
  src.rowBytes = 4 * v21;
  src.height = v20;
  src.data = &v23[4 * v20 * v21];
  v856.width = v21;
  v856.rowBytes = 4 * v21;
  v856.height = v20;
  v856.data = &v23[8 * v20 * v21];
  vImageConvert_Planar8toPlanarF(&destG, &dest, 255.0, 0.0, 0);
  vImageConvert_Planar8toPlanarF(&destR, &src, 255.0, 0.0, 0);
  vImageConvert_Planar8toPlanarF(&destA, &v856, 255.0, 0.0, 0);
  v837 = 0x425413CD00000000;
  HIDWORD(__src) = 0;
  kernel = xmmword_1A6038E70;
  v861 = xmmword_1A6038E80;
  LODWORD(v862) = 1108735514;
  v24 = malloc_type_malloc(12 * v20 * v21, 0x100004052888210uLL);
  v849.width = v21;
  v849.rowBytes = 4 * v21;
  v849.height = v20;
  v849.data = v24;
  v848.width = v21;
  v848.rowBytes = 4 * v21;
  v848.height = v20;
  v848.data = &v24[4 * v20 * v21];
  v847.width = v21;
  v847.rowBytes = 4 * v21;
  v847.height = v20;
  v847.data = &v24[8 * v20 * v21];
  vImageConvolve_PlanarF(&dest, &v849, 0, 0, 0, &kernel, 3u, 3u, 0.0, 4u);
  vImageConvolve_PlanarF(&src, &v848, 0, 0, 0, &kernel, 3u, 3u, 0.0, 4u);
  vImageConvolve_PlanarF(&v856, &v847, 0, 0, 0, &kernel, 3u, 3u, 0.0, 4u);
  vDSP_vmaxmg(v849.data, 1, v848.data, 1, v849.data, 1, v20 * v21);
  vDSP_vmaxmg(v849.data, 1, v847.data, 1, v849.data, 1, v20 * v21);
  vvnintf(v849.data, v849.data, &v854);
  v825 = 0;
  *v857 = xmmword_1A6038E90;
  *&v857[16] = xmmword_1A6038EA0;
  v858 = 1108735514;
  v25 = malloc_type_malloc(12 * v20 * v21, 0x100004052888210uLL);
  v846.width = v21;
  v846.rowBytes = 4 * v21;
  v846.height = v20;
  v846.data = v25;
  v845.width = v21;
  v845.rowBytes = 4 * v21;
  v845.data = &v25[4 * v20 * v21];
  v845.height = v20;
  v844.width = v21;
  v844.rowBytes = 4 * v21;
  v844.data = &v25[8 * v20 * v21];
  v844.height = v20;
  vImageConvolve_PlanarF(&dest, &v846, 0, 0, 0, v857, 3u, 3u, 0.0, 4u);
  vImageConvolve_PlanarF(&src, &v845, 0, 0, 0, v857, 3u, 3u, 0.0, 4u);
  vImageConvolve_PlanarF(&v856, &v844, 0, 0, 0, v857, 3u, 3u, 0.0, 4u);
  vDSP_vmaxmg(v846.data, 1, v845.data, 1, v846.data, 1, v20 * v21);
  vDSP_vmaxmg(v846.data, 1, v844.data, 1, v846.data, 1, v20 * v21);
  vvnintf(v846.data, v846.data, &v854);
  vDSP_vmma(v849.data, 1, v849.data, 1, v846.data, 1, v846.data, 1, __E, 1, v20 * v21);
  if (v22)
  {
    free(v22);
  }

  if (v23)
  {
    free(v23);
  }

  if (v24)
  {
    free(v24);
  }

  if (v25)
  {
    free(v25);
  }

  destG.width = v798;
  destG.height = height;
  destG.rowBytes = 4 * v798;
  v26 = malloc_type_malloc(4 * v9, 0x100004052888210uLL);
  v27 = 0;
  destG.data = v26;
  v28 = 0.0;
  do
  {
    v29 = expf(((v27 * 2.5) * 0.5) * (((v27 * 2.5) * 0.5) * -0.5));
    *&v857[4 * v27 + 8] = v29;
    v28 = v28 + (v29 * 2.0);
    ++v27;
  }

  while (v27 != 3);
  for (i = 8; i != 20; i += 4)
  {
    *&v857[i] = (1.0 / (v28 + -1.0)) * *&v857[i];
  }

  v31 = 0;
  *v857 = vrev64_s32(*&v857[12]);
  p_kernel = &kernel;
  do
  {
    v33 = 0;
    v34 = *&v857[4 * v31];
    do
    {
      *(p_kernel + v33) = v34 * *&v857[v33];
      v33 += 4;
    }

    while (v33 != 20);
    p_kernel = (p_kernel + 20);
    ++v31;
  }

  while (v31 != 5);
  vDSP_f5x5(__E, height, v798, &kernel, v26);
  LODWORD(destA.data) = v799;
  vvsqrtf(destG.data, destG.data, &destA);
  vvsqrtf(destG.data, destG.data, &destA);
  destB.width = v798;
  destB.height = height;
  destB.rowBytes = 2 * v798;
  size = malloc_type_malloc(2 * v799, 0x1000040BDFB0063uLL);
  destB.data = size;
  dest.width = v798;
  dest.height = height;
  dest.rowBytes = 2 * v798;
  v35 = malloc_type_malloc(2 * v799, 0x1000040BDFB0063uLL);
  dest.data = v35;
  src.width = v798;
  src.height = height;
  src.rowBytes = 2 * v798;
  v36 = malloc_type_malloc(2 * v799, 0x1000040BDFB0063uLL);
  src.data = v36;
  v37 = destG.width;
  v38 = destG.height;
  v39 = destG.height * destG.width;
  LODWORD(v856.data) = LODWORD(destG.height) * LODWORD(destG.width);
  kernel = xmmword_1A6038E70;
  v861 = xmmword_1A6038E80;
  LODWORD(v862) = 1108735514;
  v40 = malloc_type_malloc(4 * destG.height * destG.width, 0x100004052888210uLL);
  destA.width = v37;
  destA.rowBytes = 4 * v37;
  destA.height = v38;
  destA.data = v40;
  v41 = malloc_type_malloc(4 * v39, 0x100004052888210uLL);
  vImageConvolve_PlanarF(&destG, &destA, 0, 0, 0, &kernel, 3u, 3u, 0.0, 4u);
  vvintf(destA.data, destA.data, &v856);
  vDSP_vfixr16(destA.data, 1, v35, 1, v39);
  *v857 = xmmword_1A6038E90;
  *&v857[16] = xmmword_1A6038EA0;
  v858 = 1108735514;
  v42 = malloc_type_malloc(4 * v39, 0x100004052888210uLL);
  destR.width = v37;
  destR.rowBytes = 4 * v37;
  destR.height = v38;
  destR.data = v42;
  vImageConvolve_PlanarF(&destG, &destR, 0, 0, 0, v857, 3u, 3u, 0.0, 4u);
  vvintf(destR.data, destR.data, &v856);
  vDSP_vfixr16(destR.data, 1, v36, 1, v39);
  vDSP_vdist(destA.data, 1, destR.data, 1, v41, 1, v39);
  vDSP_vfixru16(v41, 1, size, 1, v39);
  if (v40)
  {
    free(v40);
  }

  if (v41)
  {
    free(v41);
  }

  if (v42)
  {
    free(v42);
  }

  qd_trimImageBorders(&destB);
  qd_trimImageBorders(&dest);
  qd_trimImageBorders(&src);
  v43 = malloc_type_malloc(v799, 0x100004077774924uLL);
  v44 = v43;
  if (__NR >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = __NR;
  }

  v46 = v798;
  v47 = v45 * v798;
  bzero(v43, v47);
  v48 = __NR - v45;
  bzero(&v44[(__NR - v45) * v798], v47);
  v784 = v44;
  if (v45 < __NR - v45)
  {
    v49 = &v44[v47];
    v50 = v798;
    v51 = &v44[v47 + v798 - v45];
    v52 = __NR;
    if (__NR >= 4)
    {
      v52 = 4;
    }

    v53 = v45;
    do
    {
      if (__NR >= 1)
      {
        v54 = 0;
        do
        {
          v49[v54] = 0;
          v51[v54++] = 0;
        }

        while (v52 != v54);
      }

      ++v53;
      v49 += v798;
      v51 += v798;
    }

    while (v53 != v48);
    v55 = v45 + v45 * v798;
    v56 = &v44[v55];
    v57 = 2 * v55;
    v58 = 2 * v798;
    v59 = &size[v58 - 2];
    v60 = size + 2;
    v61 = &size[-v58];
    v62 = v45;
    while (v45 >= v798 - v45)
    {
LABEL_67:
      ++v62;
      v56 += v798;
      v36 += v58;
      v35 += v58;
      v59 += v58;
      v60 += v58;
      v61 += v58;
      if (v62 == v48)
      {
        v85 = v798;
        goto LABEL_70;
      }
    }

    v63 = 0;
    v64 = v61;
    v65 = v60;
    v66 = v59;
    v67 = v35;
    v68 = v36;
    while (1)
    {
      v69 = *&v65[v57 - 2];
      if (*&v65[v57 - 2])
      {
        break;
      }

      v77 = 0;
LABEL_66:
      v56[v63++] = v77;
      v68 += 2;
      v67 += 2;
      v66 += 2;
      v65 += 2;
      v64 += 2;
      if (v798 - 2 * v45 == v63)
      {
        goto LABEL_67;
      }
    }

    v70 = *&v67[v57];
    v71 = -v70 / v69;
    v72 = *&v68[v57];
    v73 = v72 / v69;
    if ((v70 & 0x80000000) != 0)
    {
      if ((v72 & 0x80000000) == 0)
      {
        if (-v70 < v72)
        {
          v74 = (v73 * (*&v64[v57] - v69)) + ((*&v64[v57 + 2] - *&v64[v57]) * v71);
          v75 = *(v66 + v57 + 2);
          v76 = *(v66 + v57) - v75;
          goto LABEL_51;
        }

        v74 = (v73 * (*&v64[v57 + 2] - *&v65[v57])) + ((*&v65[v57] - v69) * v71);
        v80 = *&v65[v57 - 4];
        v81 = *(v66 + v57);
        v76 = v80 - v69;
LABEL_58:
        v78 = v81 - v80;
        goto LABEL_63;
      }

      if (v72 <= v70)
      {
        v74 = (v73 * (v69 - *(v66 + v57 + 2))) + ((*(v66 + v57 + 4) - *(v66 + v57 + 2)) * v71);
        v79 = *&v64[v57];
        v76 = *&v64[v57 - 2] - v79;
        goto LABEL_62;
      }

      v74 = (v73 * (*&v65[v57] - *(v66 + v57 + 4))) + ((*&v65[v57] - v69) * v71);
      v82 = *&v65[v57 - 4];
      v83 = *&v64[v57 - 2];
      v76 = v82 - v69;
    }

    else
    {
      if ((v72 & 0x80000000) == 0)
      {
        if (v70 < v72)
        {
          v74 = (v73 * (*&v64[v57] - v69)) + ((*&v64[v57] - *&v64[v57 - 2]) * v71);
          v75 = *(v66 + v57 + 2);
          v76 = v75 - *(v66 + v57 + 4);
LABEL_51:
          v78 = v75 - v69;
LABEL_63:
          v77 = 0;
          if (v74 <= 0.0)
          {
            v84 = (v73 * v78) + (v76 * v71);
            if (v84 <= 0.0)
            {
              v77 = v84 != 0.0;
            }
          }

          goto LABEL_66;
        }

        v74 = (v73 * (*&v64[v57 - 2] - *&v65[v57 - 4])) + ((v69 - *&v65[v57 - 4]) * v71);
        v80 = *&v65[v57];
        v81 = *(v66 + v57 + 4);
        v76 = v69 - v80;
        goto LABEL_58;
      }

      if (v70 < -v72)
      {
        v74 = (v73 * (v69 - *(v66 + v57 + 2))) + ((*(v66 + v57 + 2) - *(v66 + v57)) * v71);
        v79 = *&v64[v57];
        v76 = v79 - *&v64[v57 + 2];
LABEL_62:
        v78 = v69 - v79;
        goto LABEL_63;
      }

      v74 = (v73 * (*&v65[v57 - 4] - *(v66 + v57))) + ((v69 - *&v65[v57 - 4]) * v71);
      v82 = *&v65[v57];
      v83 = *&v64[v57 + 2];
      v76 = v69 - v82;
    }

    v78 = v82 - v83;
    goto LABEL_63;
  }

  v50 = v798;
  v85 = v798;
LABEL_70:
  v86 = malloc_type_malloc(v799, 0x100004077774924uLL);
  v87 = malloc_type_malloc(v799, 0x100004077774924uLL);
  bzero(v87, v50);
  v788 = v86;
  v783 = v87;
  if (__NR < 4)
  {
    bzero(v87, v50);
    bzero(v86, v50);
    v103 = v86;
  }

  else
  {
    v88 = __NR - 2;
    v89 = v87;
    v90 = (v85 - 1);
    v91 = 1;
    v92 = v44;
    do
    {
      if (v91 == 1)
      {
        v93 = v50;
      }

      else
      {
        v93 = 0;
      }

      v94 = &v92[v93];
      v95 = &v89[v93];
      *v95 = 0;
      if (v90 < 2)
      {
        v101 = 1;
      }

      else
      {
        v96 = v94 + 2;
        v97 = (8 * (v94[-v50 + 1] & 1)) & 0xC8 | (16 * (v94[1] & 1)) & 0xD8 | (32 * (v94[v50 + 1] & 1)) | v94[-v50] & 1 | (2 * (*v94 & 1)) & 0xFB | (4 * (v94[v50] & 1));
        v98 = v95 + 1;
        v99 = v90 - 1;
        do
        {
          v100 = ((*v96 & 1) << 7) | ((v96[-v50] & 1) << 6) | ((v96[v50] & 1) << 8) | v97;
          *v98++ = qdthin1[v100];
          v97 = v100 >> 3;
          ++v96;
          --v99;
        }

        while (v99);
        v101 = (v85 - 1);
      }

      v92 = &v94[v50];
      v95[v101] = 0;
      v89 = &v95[v50];
      ++v91;
    }

    while (v91 != v88);
    bzero(v89, v50);
    bzero(v788, v50);
    v102 = 1;
    v103 = v788;
    v85 = v798;
    v104 = v87;
    do
    {
      if (v102 == 1)
      {
        v105 = v50;
      }

      else
      {
        v105 = 0;
      }

      v106 = &v104[v105];
      v107 = &v103[v105];
      *v107 = 0;
      if (v90 < 2)
      {
        v113 = 1;
      }

      else
      {
        v108 = v106 + 2;
        v109 = (8 * (v106[-v50 + 1] & 1)) & 0xC8 | (16 * (v106[1] & 1)) & 0xD8 | (32 * (v106[v50 + 1] & 1)) | v106[-v50] & 1 | (2 * (*v106 & 1)) & 0xFB | (4 * (v106[v50] & 1));
        v110 = v107 + 1;
        v111 = v90 - 1;
        do
        {
          v112 = ((*v108 & 1) << 7) | ((v108[-v50] & 1) << 6) | ((v108[v50] & 1) << 8) | v109;
          *v110++ = qdthin2[v112];
          v109 = v112 >> 3;
          ++v108;
          --v111;
        }

        while (v111);
        v113 = v90;
      }

      v104 = &v106[v50];
      v107[v113] = 0;
      v103 = &v107[v50];
      ++v102;
    }

    while (v102 != v88);
  }

  bzero(v103, v50);
  *&v857[16] = v85;
  *&v857[8] = __NR;
  *&v857[24] = v85;
  v114 = malloc_type_malloc(v799, 0x100004077774924uLL);
  *v857 = v114;
  v115 = *&v857[24];
  bzero(v114, v50);
  if (__NR >= 4)
  {
    v116 = (v85 - 1);
    v117 = 1;
    v118 = v788;
    do
    {
      if (v117 == 1)
      {
        v119 = v50;
      }

      else
      {
        v119 = 0;
      }

      v120 = &v118[v119];
      if (v117 == 1)
      {
        v121 = v115;
      }

      else
      {
        v121 = 0;
      }

      v122 = &v114[v121];
      *v122 = 0;
      if (v116 < 2)
      {
        v128 = 1;
      }

      else
      {
        v123 = v120 + 2;
        v124 = (8 * (v120[-v50 + 1] & 1)) & 0xC8 | (16 * (v120[1] & 1)) & 0xD8 | (32 * (v120[v50 + 1] & 1)) | v120[-v50] & 1 | (2 * (*v120 & 1)) & 0xFB | (4 * (v120[v50] & 1));
        v125 = v122 + 1;
        v126 = v116 - 1;
        do
        {
          v127 = ((*v123 & 1) << 7) | ((v123[-v50] & 1) << 6) | ((v123[v50] & 1) << 8) | v124;
          *v125++ = triplet[v127];
          v124 = v127 >> 3;
          ++v123;
          --v126;
        }

        while (v126);
        v128 = (v85 - 1);
      }

      v118 = &v120[v50];
      v122[v128] = 0;
      v114 = &v122[v115];
      _ZF = v117++ == __NR - 3;
    }

    while (!_ZF);
  }

  bzero(v114, v50);
  destR.data = 0;
  destR.width = malloc_type_calloc(0x4000uLL, 0x28uLL, 0x102004082217F83uLL);
  destR.height = 0;
  LODWORD(__src) = *(v792 + 36);
  v129 = *&v857[16];
  v130 = *&v857[8];
  v826 = *v857;
  v131 = *&v857[16];
  v132 = malloc_type_calloc(4uLL, *&v857[16], 0x1AA083AEuLL);
  v804 = v131;
  v814 = malloc_type_calloc(4uLL, v131, 0x2E49C731uLL);
  v806 = v129;
  v797 = ((v129 >> 1) + 1);
  v133 = malloc_type_malloc(24 * v797, 0x108004098BBCF0FuLL);
  v134 = ((v129 >> 1) + 8) >> 3;
  v135 = malloc_type_calloc(v134, 1uLL, 0x100004077774924uLL);
  sizea = malloc_type_calloc(v134, 1uLL, 0x100004077774924uLL);
  v136 = malloc_type_calloc(v134, 1uLL, 0x100004077774924uLL);
  __n = v134;
  memset(v135, 255, v134);
  v819 = malloc_type_calloc(0x4000uLL, 8uLL, 0x2004093837F09uLL);
  v808 = v129 >> 1;
  if (((v129 >> 1) & 0x80000000) == 0)
  {
    v137 = (v129 >> 1) + 1;
    v138 = v133;
    do
    {
      if (v138)
      {
        *v138 = 0x2000000004;
        v138[2] = malloc_type_malloc(0x80uLL, 0x2A103737uLL);
        v138[1] = 0xF00000010;
      }

      v138 += 3;
      --v137;
    }

    while (v137);
  }

  LODWORD(kernel) = 0;
  v818 = v135;
  if (v130 >= 3)
  {
    v812 = 0;
    v139 = 0;
    v140 = (v806 - 1);
    v800 = v130 - 2;
    v837 = 192 * v134;
    LODWORD(v825) = 1;
    v823 = v140;
    while (1)
    {
      v141 = sizea;
      sizea = v136;
      v142 = v814;
      v143 = v826 + v804;
      v824 = v814;
      v826 += v804;
      v814 = v132;
      v815 = v141;
      if (v806 >= 3)
      {
        break;
      }

LABEL_231:
      bzero(v814, 4 * v806);
      if (__n >= 1)
      {
        v212 = 0;
        v213 = v135;
        v214 = sizea;
        v215 = v815;
        do
        {
          v217 = *v215++;
          v216 = v217;
          v218 = *v214++;
          v219 = v216 & ~v218;
          if ((v216 & (v218 ^ 0xFF)) != 0)
          {
            if (v219)
            {
              v220 = &v133[v212];
              if (v133)
              {
                v221 = *(v220 + 12) - *(v220 + 8) + 1;
              }

              else
              {
                v221 = 0;
              }

              if (v221 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 276, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v222 = destR.width + 40 * v139;
                *(v222 + 4) = v221;
                *v222 = 1;
                *(v222 + 12) = 0;
                *(v222 + 24) = 0;
                v223 = malloc_type_malloc(4 * v221 + 8, 0x100004052888210uLL);
                *(v222 + 16) = v223;
                if (v133 && (v224 = *&v133[v212 + 8], v224 <= *&v133[v212 + 12]))
                {
                  v225 = (*&v133[v212 + 16] + *&v133[v212] * v224);
                }

                else
                {
                  v225 = 0;
                }

                memcpy(v223, v225, 4 * v221);
                v226 = *(v222 + 16);
                v227 = &v226[v221];
                v228 = *v226;
                v229 = *(v227 - 1);
                v230 = v228 - v229;
                if (v230 < 0)
                {
                  v230 = v229 - v228;
                }

                if (v230 > 1)
                {
                  v232 = 0;
                }

                else
                {
                  v231 = (v228 >> 16) - (v229 >> 16);
                  if (v231 < 0)
                  {
                    v231 = -v231;
                  }

                  v232 = v231 < 2;
                }

                *(v222 + 8) = v232;
              }

              else
              {
                eraseContourPixels(v220, *v857, *&v857[24]);
              }

              *v213 |= 1u;
              if (v133)
              {
                v233 = &v133[v212];
                v234 = *&v133[v212 + 4] >> 1;
                *(v233 + 2) = v234;
                *(v233 + 3) = v234 - 1;
              }
            }

            if ((v219 & 2) != 0)
            {
              v235 = &v133[v212];
              v46 = (*&v133[v212 + 36] - *&v133[v212 + 32] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 277, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v236 = destR.width + 40 * v139;
                *(v236 + 4) = v46;
                *v236 = 1;
                *(v236 + 12) = 0;
                *(v236 + 24) = 0;
                v237 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v238 = 0;
                *(v236 + 16) = v237;
                v239 = v235[8];
                if (v239 <= v235[9])
                {
                  v238 = (*&v133[v212 + 40] + v235[6] * v239);
                }

                memcpy(v237, v238, 4 * v46);
                v240 = *(v236 + 16);
                v241 = &v240[v46];
                v242 = *v240;
                v243 = *(v241 - 1);
                v244 = v242 - v243;
                if (v244 < 0)
                {
                  v244 = v243 - v242;
                }

                if (v244 > 1)
                {
                  v246 = 0;
                }

                else
                {
                  v245 = (v242 >> 16) - (v243 >> 16);
                  if (v245 < 0)
                  {
                    v245 = -v245;
                  }

                  v246 = v245 < 2;
                }

                *(v236 + 8) = v246;
              }

              else
              {
                eraseContourPixels((v235 + 6), *v857, *&v857[24]);
              }

              *v213 |= 2u;
              v247 = *&v133[v212 + 28] >> 1;
              v235[8] = v247;
              v235[9] = v247 - 1;
            }

            if ((v219 & 4) != 0)
            {
              v248 = &v133[v212];
              v46 = (*&v133[v212 + 60] - *&v133[v212 + 56] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 278, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v249 = destR.width + 40 * v139;
                *(v249 + 4) = v46;
                *v249 = 1;
                *(v249 + 12) = 0;
                *(v249 + 24) = 0;
                v250 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v251 = 0;
                *(v249 + 16) = v250;
                v252 = v248[14];
                if (v252 <= v248[15])
                {
                  v251 = (*&v133[v212 + 64] + v248[12] * v252);
                }

                memcpy(v250, v251, 4 * v46);
                v253 = *(v249 + 16);
                v254 = &v253[v46];
                v255 = *v253;
                v256 = *(v254 - 1);
                v257 = v255 - v256;
                if (v257 < 0)
                {
                  v257 = v256 - v255;
                }

                if (v257 > 1)
                {
                  v259 = 0;
                }

                else
                {
                  v258 = (v255 >> 16) - (v256 >> 16);
                  if (v258 < 0)
                  {
                    v258 = -v258;
                  }

                  v259 = v258 < 2;
                }

                *(v249 + 8) = v259;
              }

              else
              {
                eraseContourPixels((v248 + 12), *v857, *&v857[24]);
              }

              *v213 |= 4u;
              v260 = *&v133[v212 + 52] >> 1;
              v248[14] = v260;
              v248[15] = v260 - 1;
            }

            if ((v219 & 8) != 0)
            {
              v261 = &v133[v212];
              v46 = (*&v133[v212 + 84] - *&v133[v212 + 80] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 279, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v262 = destR.width + 40 * v139;
                *(v262 + 4) = v46;
                *v262 = 1;
                *(v262 + 12) = 0;
                *(v262 + 24) = 0;
                v263 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v264 = 0;
                *(v262 + 16) = v263;
                v265 = v261[20];
                if (v265 <= v261[21])
                {
                  v264 = (*&v133[v212 + 88] + v261[18] * v265);
                }

                memcpy(v263, v264, 4 * v46);
                v266 = *(v262 + 16);
                v267 = &v266[v46];
                v268 = *v266;
                v269 = *(v267 - 1);
                v270 = v268 - v269;
                if (v270 < 0)
                {
                  v270 = v269 - v268;
                }

                if (v270 > 1)
                {
                  v272 = 0;
                }

                else
                {
                  v271 = (v268 >> 16) - (v269 >> 16);
                  if (v271 < 0)
                  {
                    v271 = -v271;
                  }

                  v272 = v271 < 2;
                }

                *(v262 + 8) = v272;
              }

              else
              {
                eraseContourPixels((v261 + 18), *v857, *&v857[24]);
              }

              *v213 |= 8u;
              v273 = *&v133[v212 + 76] >> 1;
              v261[20] = v273;
              v261[21] = v273 - 1;
            }

            if ((v219 & 0x10) != 0)
            {
              v274 = &v133[v212];
              v46 = (*&v133[v212 + 108] - *&v133[v212 + 104] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 280, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v275 = destR.width + 40 * v139;
                *(v275 + 4) = v46;
                *v275 = 1;
                *(v275 + 12) = 0;
                *(v275 + 24) = 0;
                v276 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v277 = 0;
                *(v275 + 16) = v276;
                v278 = v274[26];
                if (v278 <= v274[27])
                {
                  v277 = (*&v133[v212 + 112] + v274[24] * v278);
                }

                memcpy(v276, v277, 4 * v46);
                v279 = *(v275 + 16);
                v280 = &v279[v46];
                v281 = *v279;
                v282 = *(v280 - 1);
                v283 = v281 - v282;
                if (v283 < 0)
                {
                  v283 = v282 - v281;
                }

                if (v283 > 1)
                {
                  v285 = 0;
                }

                else
                {
                  v284 = (v281 >> 16) - (v282 >> 16);
                  if (v284 < 0)
                  {
                    v284 = -v284;
                  }

                  v285 = v284 < 2;
                }

                *(v275 + 8) = v285;
              }

              else
              {
                eraseContourPixels((v274 + 24), *v857, *&v857[24]);
              }

              *v213 |= 0x10u;
              v286 = *&v133[v212 + 100] >> 1;
              v274[26] = v286;
              v274[27] = v286 - 1;
            }

            if ((v219 & 0x20) != 0)
            {
              v287 = &v133[v212];
              v46 = (*&v133[v212 + 132] - *&v133[v212 + 128] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 281, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v288 = destR.width + 40 * v139;
                *(v288 + 4) = v46;
                *v288 = 1;
                *(v288 + 12) = 0;
                *(v288 + 24) = 0;
                v289 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v290 = 0;
                *(v288 + 16) = v289;
                v291 = v287[32];
                if (v291 <= v287[33])
                {
                  v290 = (*&v133[v212 + 136] + v287[30] * v291);
                }

                memcpy(v289, v290, 4 * v46);
                v292 = *(v288 + 16);
                v293 = &v292[v46];
                v294 = *v292;
                v295 = *(v293 - 1);
                v296 = v294 - v295;
                if (v296 < 0)
                {
                  v296 = v295 - v294;
                }

                if (v296 > 1)
                {
                  v298 = 0;
                }

                else
                {
                  v297 = (v294 >> 16) - (v295 >> 16);
                  if (v297 < 0)
                  {
                    v297 = -v297;
                  }

                  v298 = v297 < 2;
                }

                *(v288 + 8) = v298;
              }

              else
              {
                eraseContourPixels((v287 + 30), *v857, *&v857[24]);
              }

              *v213 |= 0x20u;
              v299 = *&v133[v212 + 124] >> 1;
              v287[32] = v299;
              v287[33] = v299 - 1;
            }

            if ((v219 & 0x40) != 0)
            {
              v300 = &v133[v212];
              v46 = (*&v133[v212 + 156] - *&v133[v212 + 152] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 282, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v301 = destR.width + 40 * v139;
                *(v301 + 4) = v46;
                *v301 = 1;
                *(v301 + 12) = 0;
                *(v301 + 24) = 0;
                v302 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v303 = 0;
                *(v301 + 16) = v302;
                v304 = v300[38];
                if (v304 <= v300[39])
                {
                  v303 = (*&v133[v212 + 160] + v300[36] * v304);
                }

                memcpy(v302, v303, 4 * v46);
                v305 = *(v301 + 16);
                v306 = &v305[v46];
                v307 = *v305;
                v308 = *(v306 - 1);
                v309 = v307 - v308;
                if (v309 < 0)
                {
                  v309 = v308 - v307;
                }

                if (v309 > 1)
                {
                  v311 = 0;
                }

                else
                {
                  v310 = (v307 >> 16) - (v308 >> 16);
                  if (v310 < 0)
                  {
                    v310 = -v310;
                  }

                  v311 = v310 < 2;
                }

                *(v301 + 8) = v311;
              }

              else
              {
                eraseContourPixels((v300 + 36), *v857, *&v857[24]);
              }

              *v213 |= 0x40u;
              v312 = *&v133[v212 + 148] >> 1;
              v300[38] = v312;
              v300[39] = v312 - 1;
            }

            if (v219 < 0)
            {
              v313 = &v133[v212];
              v46 = (*&v133[v212 + 180] - *&v133[v212 + 176] + 1);
              if (v46 >= __src)
              {
                if (v139 >= 0x3FFF)
                {
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 283, "cidcnt < MAX_CONTOURS");
                }

                LODWORD(destR.data) = ++v139;
                v314 = destR.width + 40 * v139;
                *(v314 + 4) = v46;
                *v314 = 1;
                *(v314 + 12) = 0;
                *(v314 + 24) = 0;
                v315 = malloc_type_malloc(4 * v46 + 8, 0x100004052888210uLL);
                v316 = 0;
                *(v314 + 16) = v315;
                v317 = v313[44];
                if (v317 <= v313[45])
                {
                  v316 = (*&v133[v212 + 184] + v313[42] * v317);
                }

                memcpy(v315, v316, 4 * v46);
                v318 = *(v314 + 16);
                v319 = &v318[v46];
                v320 = *v318;
                v321 = *(v319 - 1);
                v322 = v320 - v321;
                if (v322 < 0)
                {
                  v322 = v321 - v320;
                }

                if (v322 > 1)
                {
                  v324 = 0;
                }

                else
                {
                  v323 = (v320 >> 16) - (v321 >> 16);
                  if (v323 < 0)
                  {
                    v323 = -v323;
                  }

                  v324 = v323 < 2;
                }

                *(v314 + 8) = v324;
              }

              else
              {
                eraseContourPixels((v313 + 42), *v857, *&v857[24]);
              }

              *v213 |= 0x80u;
              v325 = *&v133[v212 + 172] >> 1;
              v313[44] = v325;
              v313[45] = v325 - 1;
            }
          }

          v212 += 192;
          ++v213;
        }

        while (v837 != v212);
      }

      v326 = v815;
      bzero(v815, __n);
      v140 = (v806 - 1);
      v327 = v824;
      v132 = v824;
      v136 = v815;
      _ZF = v825 == v800;
      LODWORD(v825) = v825 + 1;
      v135 = v818;
      if (_ZF)
      {
        goto LABEL_365;
      }
    }

    v144 = 1;
    v145 = v819;
    do
    {
      if (*(v143 + v144))
      {
        v146 = v144 + 1;
        v147 = v132[v144] + v132[v144 - 1] + v132[v144 + 1];
      }

      else
      {
        v147 = 0;
        v146 = v144 + 1;
      }

      v142[v144] = v147;
      v144 = v146;
    }

    while (v146 != v140);
    v148 = 1;
    while (1)
    {
      if (*(v143 + v148))
      {
        v149 = &v142[v148];
        v150 = *v149;
        v151 = *(v149 - 1);
        LOWORD(kernel) = v148;
        WORD1(kernel) = v825;
        if (v150)
        {
          if (v151)
          {
            if (v150 != v151)
            {
              v166 = v145;
              if (v150 <= v151)
              {
                v167 = v151;
              }

              else
              {
                v167 = v150;
              }

              if (v150 >= v151)
              {
                LODWORD(v150) = v151;
              }

              v168 = v166[v150];
              v169 = *(*(v168 + 2) + *v168 * v168[3]);
              v170 = v169 - kernel;
              if (v170 < 0)
              {
                v170 = kernel - v169;
              }

              if (v170 > 1)
              {
                goto LABEL_183;
              }

              v171 = (v169 >> 16) - (kernel >> 16);
              if (v171 < 0)
              {
                v171 = -v171;
              }

              if (v171 >= 2)
              {
LABEL_183:
                v181 = *(*(v168 + 2) + *v168 * v168[2]);
                v182 = v181 - kernel;
                if (v182 < 0)
                {
                  v182 = kernel - v181;
                }

                if (v182 > 1)
                {
                  goto LABEL_942;
                }

                v183 = (v181 >> 16) - (kernel >> 16);
                if (v183 < 0)
                {
                  v183 = -v183;
                }

                if (v183 >= 2)
                {
LABEL_942:
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 155, "pneighbor(*(Pcoord *)dequeFirst(dbLookup[mnid]), pix)");
                }

                v172 = 0;
              }

              else
              {
                v172 = 1;
              }

              v184 = v819[v167];
              v185 = *(*(v184 + 2) + *v184 * v184[3]);
              v186 = v185 - kernel;
              if (v186 < 0)
              {
                v186 = kernel - v185;
              }

              if (v186 > 1)
              {
                goto LABEL_197;
              }

              v187 = (v185 >> 16) - (kernel >> 16);
              if (v187 < 0)
              {
                v187 = -v187;
              }

              if (v187 >= 2)
              {
LABEL_197:
                v189 = *(*(v184 + 2) + *v184 * v184[2]);
                v190 = v189 - kernel;
                if (v190 < 0)
                {
                  v190 = kernel - v189;
                }

                if (v190 > 1)
                {
                  goto LABEL_943;
                }

                v191 = (v189 >> 16) - (kernel >> 16);
                if (v191 < 0)
                {
                  v191 = (kernel >> 16) - (v189 >> 16);
                }

                if (v191 >= 2)
                {
LABEL_943:
                  __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 163, "pneighbor(*(Pcoord *)dequeFirst(dbLookup[nid]), pix)");
                }

                v188 = 0;
              }

              else
              {
                v188 = 2;
              }

              v192 = v188 | v172;
              if (v192 > 1)
              {
                if (v192 != 2)
                {
                  appended = appendDequeElement(v168, &kernel);
                  v194 = v819;
                  v204 = v819[v167];
                  v205 = 1;
                  goto LABEL_222;
                }

                v193 = prependDequeElement(v168, &kernel);
                v194 = v819;
                v195 = v819[v167];
                v196 = 0;
LABEL_219:
                prependDeque(v193, v195, v196);
              }

              else
              {
                if (!v192)
                {
                  v193 = prependDequeElement(v168, &kernel);
                  v194 = v819;
                  v195 = v819[v167];
                  v196 = 1;
                  goto LABEL_219;
                }

                appended = appendDequeElement(v168, &kernel);
                v194 = v819;
                v204 = v819[v167];
                v205 = 0;
LABEL_222:
                appendDeque(appended, v204, v205);
              }

              v206 = -1431655765 * ((v194[v167] - v133) >> 3);
              v135[v206 >> 3] |= 1 << (v206 & 7);
              v207 = v194[v167];
              v140 = (v806 - 1);
              v142 = v824;
              v143 = v826;
              if (v207)
              {
                v208 = v207[1] >> 1;
                v207[2] = v208;
                v207[3] = v208 - 1;
              }

              v815[(0xAAAAAAAAAAAAAAABLL * ((v207 - v133) >> 3)) >> 3] &= ~(1 << ((-85 * ((v207 - v133) >> 3)) & 7));
              v209 = 0xAAAAAAAAAAAAAAABLL * ((v819[v167] - v133) >> 3);
              sizea[v209 >> 3] &= ~(1 << (v209 & 7));
              v819[v167] = 0;
              *(v824 + 4 * v148) = v150;
              LODWORD(v209) = -1431655765 * ((v819[v150] - v133) >> 3);
              sizea[v209 >> 3] |= 1 << (v209 & 7);
              v210 = v824;
              v211 = (v806 - 1);
              do
              {
                if (*v210 == v167)
                {
                  *v210 = v150;
                }

                ++v210;
                --v211;
              }

              while (v211);
              v145 = v819;
              goto LABEL_230;
            }

            v152 = v145[v150];
            v153 = *(*(v152 + 2) + *v152 * v152[3]);
            v154 = v153 - kernel;
            if (v154 < 0)
            {
              v154 = kernel - v153;
            }

            if (v154 > 1)
            {
              goto LABEL_132;
            }

            v155 = (v153 >> 16) - (kernel >> 16);
            if (v155 < 0)
            {
              v155 = -v155;
            }

            if (v155 > 1)
            {
LABEL_132:
              v156 = *(*(v152 + 2) + *v152 * v152[2]);
              v157 = v156 - kernel;
              if (v157 < 0)
              {
                v157 = kernel - v156;
              }

              if (v157 > 1)
              {
                goto LABEL_941;
              }

              v158 = (v156 >> 16) - (kernel >> 16);
              if (v158 < 0)
              {
                v158 = (kernel >> 16) - (v156 >> 16);
              }

              if (v158 >= 2)
              {
LABEL_941:
                __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 202, "pneighbor(*(Pcoord *)dequeFirst(dbLookup[mid]), pix)");
              }

              goto LABEL_180;
            }

LABEL_153:
            appendDequeElement(v152, &kernel);
          }

          else
          {
            v152 = v145[v150];
            v163 = *(*(v152 + 2) + *v152 * v152[3]);
            v164 = v163 - kernel;
            if (v164 < 0)
            {
              v164 = kernel - v163;
            }

            if (v164 <= 1)
            {
              v165 = (v163 >> 16) - (kernel >> 16);
              if (v165 < 0)
              {
                v165 = -v165;
              }

              if (v165 <= 1)
              {
                goto LABEL_153;
              }
            }

            v177 = *(*(v152 + 2) + *v152 * v152[2]);
            v178 = v177 - kernel;
            if (v178 < 0)
            {
              v178 = kernel - v177;
            }

            if (v178 > 1)
            {
              goto LABEL_940;
            }

            v179 = (v177 >> 16) - (kernel >> 16);
            if (v179 < 0)
            {
              v179 = (kernel >> 16) - (v177 >> 16);
            }

            if (v179 >= 2)
            {
LABEL_940:
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 215, "pneighbor(*(Pcoord *)dequeFirst(dbLookup[mid]), pix)");
            }

LABEL_180:
            prependDequeElement(v152, &kernel);
          }

          v180 = -1431655765 * ((v145[v150] - v133) >> 3);
          sizea[v180 >> 3] |= 1 << (v180 & 7);
          v142 = v824;
LABEL_182:
          v143 = v826;
          v140 = (v806 - 1);
          goto LABEL_230;
        }

        if (v151)
        {
          v159 = v145[v151];
          v160 = *(*(v159 + 2) + *v159 * v159[3]);
          v161 = v160 - kernel;
          if (v161 < 0)
          {
            v161 = kernel - v160;
          }

          if (v161 > 1)
          {
            goto LABEL_166;
          }

          v162 = (v160 >> 16) - (kernel >> 16);
          if (v162 < 0)
          {
            v162 = -v162;
          }

          if (v162 > 1)
          {
LABEL_166:
            v173 = *(*(v159 + 2) + *v159 * v159[2]);
            v174 = v173 - kernel;
            if (v174 < 0)
            {
              v174 = kernel - v173;
            }

            if (v174 > 1)
            {
              goto LABEL_939;
            }

            v175 = (v173 >> 16) - (kernel >> 16);
            if (v175 < 0)
            {
              v175 = (kernel >> 16) - (v173 >> 16);
            }

            if (v175 >= 2)
            {
LABEL_939:
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 229, "pneighbor(*(Pcoord *)dequeFirst(dbLookup[pid]), pix)");
            }

            prependDequeElement(v159, &kernel);
          }

          else
          {
            appendDequeElement(v159, &kernel);
          }

          v176 = -1431655765 * ((v145[v151] - v133) >> 3);
          sizea[v176 >> 3] |= 1 << (v176 & 7);
          v142 = v824;
          *(v824 + 4 * v148) = v151;
          goto LABEL_182;
        }

        if (v812 > 16382)
        {
          v328 = 0;
          v327 = v814;
          v444 = v815;
          v816 = sizea;
          v445 = v142;
          if (!v814)
          {
            goto LABEL_498;
          }

LABEL_497:
          free(v327);
          goto LABEL_498;
        }

        v197 = 0;
        while (1)
        {
          v198 = v135[v197];
          if (v135[v197])
          {
            break;
          }

          if (((v806 >> 4) & ~(v806 >> 31)) + 1 == ++v197)
          {
            goto LABEL_956;
          }
        }

        v199 = 8 * v197;
        if ((v198 & 1) == 0)
        {
          do
          {
            v200 = v198;
            ++v199;
            v198 >>= 1;
          }

          while ((v200 & 2) == 0);
        }

        if (v199 > v808 || v199 == -1)
        {
LABEL_956:
          __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 250, "loc != -1");
        }

        v135[v199 >> 3] &= ~(1 << (v199 & 7));
        v201 = &v133[24 * v199];
        v145[v812 + 1] = v201;
        appendDequeElement(v201, &kernel);
        v140 = (v806 - 1);
        v142 = v824;
        v143 = v826;
        v202 = -1431655765 * ((v145[v812 + 1] - v133) >> 3);
        sizea[v202 >> 3] |= 1 << (v202 & 7);
        *(v824 + 4 * v148) = ++v812;
      }

LABEL_230:
      if (++v148 == v140)
      {
        goto LABEL_231;
      }
    }
  }

  v139 = 0;
  v326 = v136;
  v327 = v132;
LABEL_365:
  v816 = v326;
  v328 = 1;
  if (__n >= 1)
  {
    v329 = 0;
    v330 = 0;
    v837 = 192 * __n;
    v331 = v327;
    do
    {
      v46 = sizea[v330];
      if (sizea[v330])
      {
        if (v46)
        {
          v332 = &v133[v329];
          if (v133)
          {
            v333 = *(v332 + 12) - *(v332 + 8) + 1;
          }

          else
          {
            v333 = 0;
          }

          if (v333 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 303, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v334 = destR.width + 40 * v139;
            *(v334 + 4) = v333;
            *v334 = 1;
            *(v334 + 12) = 0;
            *(v334 + 24) = 0;
            v335 = malloc_type_malloc(4 * v333 + 8, 0x100004052888210uLL);
            *(v334 + 16) = v335;
            if (v133 && (v336 = *&v133[v329 + 8], v336 <= *&v133[v329 + 12]))
            {
              v337 = (*&v133[v329 + 16] + *&v133[v329] * v336);
            }

            else
            {
              v337 = 0;
            }

            memcpy(v335, v337, 4 * v333);
            v338 = *(v334 + 16);
            v339 = &v338[v333];
            v340 = *v338;
            v341 = *(v339 - 1);
            v342 = v340 - v341;
            if (v342 < 0)
            {
              v342 = v341 - v340;
            }

            if (v342 > 1)
            {
              v344 = 0;
            }

            else
            {
              v343 = (v340 >> 16) - (v341 >> 16);
              if (v343 < 0)
              {
                v343 = -v343;
              }

              v344 = v343 < 2;
            }

            v327 = v331;
            *(v334 + 8) = v344;
          }

          else
          {
            eraseContourPixels(v332, *v857, *&v857[24]);
            v327 = v331;
          }

          v135[v330] |= 1u;
          if (v133)
          {
            v345 = &v133[v329];
            v346 = *&v133[v329 + 4] >> 1;
            *(v345 + 2) = v346;
            *(v345 + 3) = v346 - 1;
          }
        }

        if ((v46 & 2) != 0)
        {
          v347 = &v133[v329];
          v348 = *&v133[v329 + 36] - *&v133[v329 + 32] + 1;
          if (v348 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 304, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v349 = destR.width + 40 * v139;
            *(v349 + 4) = v348;
            *v349 = 1;
            *(v349 + 12) = 0;
            *(v349 + 24) = 0;
            v350 = malloc_type_malloc(4 * v348 + 8, 0x100004052888210uLL);
            v351 = 0;
            *(v349 + 16) = v350;
            v352 = v347[8];
            if (v352 <= v347[9])
            {
              v351 = (*&v133[v329 + 40] + v347[6] * v352);
            }

            memcpy(v350, v351, 4 * v348);
            v353 = *(v349 + 16);
            v354 = &v353[v348];
            v355 = *v353;
            v356 = *(v354 - 1);
            v357 = v355 - v356;
            if (v357 < 0)
            {
              v357 = v356 - v355;
            }

            if (v357 > 1)
            {
              v359 = 0;
            }

            else
            {
              v358 = (v355 >> 16) - (v356 >> 16);
              if (v358 < 0)
              {
                v358 = -v358;
              }

              v359 = v358 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v349 + 8) = v359;
          }

          else
          {
            eraseContourPixels((v347 + 6), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 2u;
          v360 = *&v133[v329 + 28] >> 1;
          v347[8] = v360;
          v347[9] = v360 - 1;
        }

        if ((v46 & 4) != 0)
        {
          v361 = &v133[v329];
          v362 = *&v133[v329 + 60] - *&v133[v329 + 56] + 1;
          if (v362 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 305, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v363 = destR.width + 40 * v139;
            *(v363 + 4) = v362;
            *v363 = 1;
            *(v363 + 12) = 0;
            *(v363 + 24) = 0;
            v364 = malloc_type_malloc(4 * v362 + 8, 0x100004052888210uLL);
            v365 = 0;
            *(v363 + 16) = v364;
            v366 = v361[14];
            if (v366 <= v361[15])
            {
              v365 = (*&v133[v329 + 64] + v361[12] * v366);
            }

            memcpy(v364, v365, 4 * v362);
            v367 = *(v363 + 16);
            v368 = &v367[v362];
            v369 = *v367;
            v370 = *(v368 - 1);
            v371 = v369 - v370;
            if (v371 < 0)
            {
              v371 = v370 - v369;
            }

            if (v371 > 1)
            {
              v373 = 0;
            }

            else
            {
              v372 = (v369 >> 16) - (v370 >> 16);
              if (v372 < 0)
              {
                v372 = -v372;
              }

              v373 = v372 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v363 + 8) = v373;
          }

          else
          {
            eraseContourPixels((v361 + 12), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 4u;
          v374 = *&v133[v329 + 52] >> 1;
          v361[14] = v374;
          v361[15] = v374 - 1;
        }

        if ((v46 & 8) != 0)
        {
          v375 = &v133[v329];
          v376 = *&v133[v329 + 84] - *&v133[v329 + 80] + 1;
          if (v376 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 306, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v377 = destR.width + 40 * v139;
            *(v377 + 4) = v376;
            *v377 = 1;
            *(v377 + 12) = 0;
            *(v377 + 24) = 0;
            v378 = malloc_type_malloc(4 * v376 + 8, 0x100004052888210uLL);
            v379 = 0;
            *(v377 + 16) = v378;
            v380 = v375[20];
            if (v380 <= v375[21])
            {
              v379 = (*&v133[v329 + 88] + v375[18] * v380);
            }

            memcpy(v378, v379, 4 * v376);
            v381 = *(v377 + 16);
            v382 = &v381[v376];
            v383 = *v381;
            v384 = *(v382 - 1);
            v385 = v383 - v384;
            if (v385 < 0)
            {
              v385 = v384 - v383;
            }

            if (v385 > 1)
            {
              v387 = 0;
            }

            else
            {
              v386 = (v383 >> 16) - (v384 >> 16);
              if (v386 < 0)
              {
                v386 = -v386;
              }

              v387 = v386 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v377 + 8) = v387;
          }

          else
          {
            eraseContourPixels((v375 + 18), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 8u;
          v388 = *&v133[v329 + 76] >> 1;
          v375[20] = v388;
          v375[21] = v388 - 1;
        }

        if ((v46 & 0x10) != 0)
        {
          v389 = &v133[v329];
          v390 = *&v133[v329 + 108] - *&v133[v329 + 104] + 1;
          if (v390 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 307, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v391 = destR.width + 40 * v139;
            *(v391 + 4) = v390;
            *v391 = 1;
            *(v391 + 12) = 0;
            *(v391 + 24) = 0;
            v392 = malloc_type_malloc(4 * v390 + 8, 0x100004052888210uLL);
            v393 = 0;
            *(v391 + 16) = v392;
            v394 = v389[26];
            if (v394 <= v389[27])
            {
              v393 = (*&v133[v329 + 112] + v389[24] * v394);
            }

            memcpy(v392, v393, 4 * v390);
            v395 = *(v391 + 16);
            v396 = &v395[v390];
            v397 = *v395;
            v398 = *(v396 - 1);
            v399 = v397 - v398;
            if (v399 < 0)
            {
              v399 = v398 - v397;
            }

            if (v399 > 1)
            {
              v401 = 0;
            }

            else
            {
              v400 = (v397 >> 16) - (v398 >> 16);
              if (v400 < 0)
              {
                v400 = -v400;
              }

              v401 = v400 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v391 + 8) = v401;
          }

          else
          {
            eraseContourPixels((v389 + 24), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 0x10u;
          v402 = *&v133[v329 + 100] >> 1;
          v389[26] = v402;
          v389[27] = v402 - 1;
        }

        if ((v46 & 0x20) != 0)
        {
          v403 = &v133[v329];
          v404 = *&v133[v329 + 132] - *&v133[v329 + 128] + 1;
          if (v404 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 308, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v405 = destR.width + 40 * v139;
            *(v405 + 4) = v404;
            *v405 = 1;
            *(v405 + 12) = 0;
            *(v405 + 24) = 0;
            v406 = malloc_type_malloc(4 * v404 + 8, 0x100004052888210uLL);
            v407 = 0;
            *(v405 + 16) = v406;
            v408 = v403[32];
            if (v408 <= v403[33])
            {
              v407 = (*&v133[v329 + 136] + v403[30] * v408);
            }

            memcpy(v406, v407, 4 * v404);
            v409 = *(v405 + 16);
            v410 = &v409[v404];
            v411 = *v409;
            v412 = *(v410 - 1);
            v413 = v411 - v412;
            if (v413 < 0)
            {
              v413 = v412 - v411;
            }

            if (v413 > 1)
            {
              v415 = 0;
            }

            else
            {
              v414 = (v411 >> 16) - (v412 >> 16);
              if (v414 < 0)
              {
                v414 = -v414;
              }

              v415 = v414 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v405 + 8) = v415;
          }

          else
          {
            eraseContourPixels((v403 + 30), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 0x20u;
          v416 = *&v133[v329 + 124] >> 1;
          v403[32] = v416;
          v403[33] = v416 - 1;
        }

        if ((v46 & 0x40) != 0)
        {
          v417 = &v133[v329];
          v418 = *&v133[v329 + 156] - *&v133[v329 + 152] + 1;
          if (v418 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 309, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v419 = destR.width + 40 * v139;
            *(v419 + 4) = v418;
            *v419 = 1;
            *(v419 + 12) = 0;
            *(v419 + 24) = 0;
            v420 = malloc_type_malloc(4 * v418 + 8, 0x100004052888210uLL);
            v421 = 0;
            *(v419 + 16) = v420;
            v422 = v417[38];
            if (v422 <= v417[39])
            {
              v421 = (*&v133[v329 + 160] + v417[36] * v422);
            }

            memcpy(v420, v421, 4 * v418);
            v423 = *(v419 + 16);
            v424 = &v423[v418];
            v425 = *v423;
            v426 = *(v424 - 1);
            v427 = v425 - v426;
            if (v427 < 0)
            {
              v427 = v426 - v425;
            }

            if (v427 > 1)
            {
              v429 = 0;
            }

            else
            {
              v428 = (v425 >> 16) - (v426 >> 16);
              if (v428 < 0)
              {
                v428 = -v428;
              }

              v429 = v428 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v419 + 8) = v429;
          }

          else
          {
            eraseContourPixels((v417 + 36), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 0x40u;
          v430 = *&v133[v329 + 148] >> 1;
          v417[38] = v430;
          v417[39] = v430 - 1;
        }

        if ((v46 & 0x80) != 0)
        {
          v431 = &v133[v329];
          v432 = *&v133[v329 + 180] - *&v133[v329 + 176] + 1;
          if (v432 >= __src)
          {
            if (v139 >= 0x3FFF)
            {
              __assert_rtn("ConnectedComponents", "ConnectedComponents.c", 310, "cidcnt < MAX_CONTOURS");
            }

            LODWORD(destR.data) = ++v139;
            v46 = destR.width + 40 * v139;
            *(v46 + 4) = v432;
            *v46 = 1;
            *(v46 + 12) = 0;
            *(v46 + 24) = 0;
            v433 = malloc_type_malloc(4 * v432 + 8, 0x100004052888210uLL);
            v434 = 0;
            *(v46 + 16) = v433;
            v435 = v431[44];
            if (v435 <= v431[45])
            {
              v434 = (*&v133[v329 + 184] + v431[42] * v435);
            }

            memcpy(v433, v434, 4 * v432);
            v436 = *(v46 + 16);
            v437 = &v436[v432];
            v438 = *v436;
            v439 = *(v437 - 1);
            v440 = v438 - v439;
            if (v440 < 0)
            {
              v440 = v439 - v438;
            }

            if (v440 > 1)
            {
              v442 = 0;
            }

            else
            {
              v441 = (v438 >> 16) - (v439 >> 16);
              if (v441 < 0)
              {
                v441 = -v441;
              }

              v442 = v441 < 2;
            }

            v135 = v818;
            v327 = v331;
            *(v46 + 8) = v442;
          }

          else
          {
            eraseContourPixels((v431 + 42), *v857, *&v857[24]);
            v327 = v331;
            v135 = v818;
          }

          v135[v330] |= 0x80u;
          v443 = *&v133[v329 + 172] >> 1;
          v431[44] = v443;
          v431[45] = v443 - 1;
        }
      }

      ++v330;
      v329 += 192;
    }

    while (v837 != v329);
    v328 = 1;
  }

  v444 = sizea;
  v445 = v814;
  if (v327)
  {
    goto LABEL_497;
  }

LABEL_498:
  if (v445)
  {
    free(v445);
  }

  if (v135)
  {
    free(v135);
  }

  if (v444)
  {
    free(v444);
  }

  if (v816)
  {
    free(v816);
  }

  v446 = v797;
  if (v819)
  {
    free(v819);
  }

  if (v133)
  {
    if ((v808 & 0x80000000) == 0)
    {
      v447 = (v133 + 16);
      do
      {
        if (*v447)
        {
          free(*v447);
        }

        v447 += 3;
        --v446;
      }

      while (v446);
    }

    free(v133);
  }

  if ((v328 & 1) == 0)
  {
    if (__E)
    {
      free(__E);
    }

    if (destG.data)
    {
      free(destG.data);
      destG.data = 0;
    }

    if (destB.data)
    {
      free(destB.data);
    }

    if (dest.data)
    {
      free(dest.data);
    }

    if (src.data)
    {
      free(src.data);
    }

    if (v784)
    {
      free(v784);
    }

    if (v788)
    {
      free(v788);
    }

    if (v783)
    {
      free(v783);
    }

    if (*v857)
    {
      free(*v857);
      *v857 = 0;
    }

    releaseContourDatabaseMemory(&destR);
    v467 = 0;
    *a5 = 0;
    return v467;
  }

  data_low = LODWORD(destR.data);
  v449 = destR.width;
  v450 = LODWORD(destR.data) + 1;
  v451 = LODWORD(destR.data) + 1;
  v452 = malloc_type_malloc(8 * v451, 0x100004000313F17uLL);
  v453 = malloc_type_malloc(2 * v450, 0x1000040BDFB0063uLL);
  v454 = malloc_type_malloc(4 * v450, 0x100004052888210uLL);
  v455 = *(v792 + 100);
  *v453 = 0;
  *v452 = 0;
  if (data_low < 1)
  {
    v456 = 0;
  }

  else
  {
    v456 = 0;
    v457 = vcvtms_s32_f32(v455);
    v458 = (v449 + 56);
    v459 = 1;
    do
    {
      v460 = *(v458 - 3);
      if (v460 > v457)
      {
        ++v456;
      }

      v453[v459] = v460;
      v461 = &(*v458)[v460];
      v462 = **v458;
      v463 = *(v461 - 4);
      v464 = v462 - v463;
      if (v464 < 0)
      {
        v464 = v463 - v462;
      }

      if (v464 > 1)
      {
        v466 = 0;
      }

      else
      {
        v465 = (v462 >> 16) - (v463 >> 16);
        if (v465 < 0)
        {
          v465 = -v465;
        }

        v466 = v465 < 2;
      }

      *(v458 - 8) = v466;
      v452[v459] = v459;
      ++v459;
      v458 += 5;
    }

    while (v451 != v459);
  }

  vDSP_vfltu16(v453, 1, v454, 1, v451);
  vDSP_vsorti(v454, v452, 0, v451, -1);
  if ((data_low & 0x80000000) == 0)
  {
    v468 = v451;
    v469 = v452;
    v470 = v453;
    do
    {
      v471 = *v469++;
      *v470++ = v471;
      --v468;
    }

    while (v468);
  }

  destR.height = v453;
  HIDWORD(destR.data) = v456;
  if (v454)
  {
    free(v454);
  }

  free(v452);
  v842[1] = __NR;
  *&v843 = v798;
  *(&v843 + 1) = 2 * v798;
  v842[0] = malloc_type_calloc(v799, 2uLL, 0x1000040BDFB0063uLL);
  SelfClosureContourHeal(&destR, *v857, *&v857[16], v842[0], 1);
  v472 = *&v857[16];
  v473 = *v857;
  v474 = v842[0];
  v475 = destR.width;
  data_high = HIDWORD(destR.data);
  v795 = destR.height;
  LODWORD(v849.data) = 0;
  LODWORD(v848.data) = 0;
  if (SHIDWORD(destR.data) >= 1)
  {
    v476 = 0;
    v477 = vcvtms_s32_f32(*(v792 + 100));
    v478 = *(v792 + 88);
    v786 = *&v857[16] << 32;
    v787 = v842[0];
    v785 = *&v857[16];
    v791 = destR.width;
    v790 = v477;
    v824 = *&v857[16];
    while (1)
    {
      v807 = *(v795 + 2 * v476);
      v479 = v475 + 40 * *(v795 + 2 * v476);
      if ((*(v479 + 8) & 1) != 0 || *v479 != 1)
      {
        goto LABEL_697;
      }

      v480 = 1;
      v793 = v476;
      __src = v475 + 40 * *(v795 + 2 * v476);
      do
      {
        v481 = v480;
        v482 = *(v479 + 16);
        LODWORD(v837) = v481;
        if (v481)
        {
          v483 = v482 + 1;
        }

        else
        {
          v484 = &v482[*(v479 + 4)];
          v482 = v484 - 1;
          v483 = v484 - 2;
        }

        sizeb = *v482;
        LODWORD(destA.data) = *v482;
        HIDWORD(destA.data) = *v483;
        v485 = testJoin(&destA, v842[0], v843, &v849);
        if (!v485)
        {
          goto LABEL_682;
        }

        v486 = v475 + 40 * v485;
        v487 = *(v486 + 4);
        if (v487 <= v477)
        {
          goto LABEL_682;
        }

        v488 = *(v486 + 16);
        if (__PAIR64__(WORD1(v849.data), LOWORD(v849.data)) == __PAIR64__(v488[1], *v488))
        {
          v490 = *v488;
          v489 = v488 + 2;
          LODWORD(v856.data) = v490;
        }

        else
        {
          v491 = &v488[2 * v487];
          if (__PAIR64__(WORD1(v849.data), LOWORD(v849.data)) != __PAIR64__(*(v491 - 1), *(v491 - 2)))
          {
            __assert_rtn("AdjacentContourHeal", "Contours.c", 603, "PCOORD_EQUAL(joinPoint, LAST_PCOORD(cPtrN))");
          }

          LODWORD(v856.data) = *(v491 - 1);
          v489 = v491 - 4;
        }

        HIDWORD(v856.data) = *v489;
        if (testJoin(&v856, v842[0], v843, &v848) != v807 || (v809 = *(__src + 4), v820 = *(v486 + 4), v827 = LODWORD(v849.data), v46 = v46 & 0xFFFFFFFF00000000 | LODWORD(v849.data), v797 = v797 & 0xFFFFFFFF00000000 | sizeb, (v492 = healCenters(v797, v46, &kernel)) == 0))
        {
LABEL_682:
          v479 = __src;
          goto LABEL_683;
        }

        v493 = *(v486 + 16);
        v796 = v46;
        if (v837)
        {
          v494 = v827;
          if (*v493 != v827 || v493[1] != WORD1(v827))
          {
            v495 = &v493[2 * *(v486 + 4)];
            if (*(v495 - 2) != v827 || *(v495 - 1) != WORD1(v827))
            {
              __assert_rtn("AdjacentContourHeal", "Contours.c", 635, "PCOORD_EQUAL(joinPoint, LAST_PCOORD(cPtrN))");
            }

LABEL_583:
            LODWORD(v823) = 0;
            goto LABEL_584;
          }
        }

        else
        {
          v496 = &v493[2 * *(v486 + 4)];
          v494 = v827;
          if (*(v496 - 2) != v827 || *(v496 - 1) != WORD1(v827))
          {
            if (*v493 != v827 || v493[1] != WORD1(v827))
            {
              __assert_rtn("AdjacentContourHeal", "Contours.c", 641, "PCOORD_EQUAL(joinPoint, FIRST_PCOORD(cPtrN))");
            }

            goto LABEL_583;
          }
        }

        LODWORD(v823) = 1;
LABEL_584:
        v497 = 0;
        __NRa = 4 * (v820 - 1);
        v805 = v809 - 1;
        v817 = 4 * v805;
        v801 = 4 * v820;
        __na = 4 * v809;
        v813 = 4 * (v820 + v809 + 2);
        v825 = v492;
        while (1)
        {
          v498 = &kernel + 2 * v497;
          v499 = v498[1];
          v500 = v473;
          v501 = v473 + *v498;
          v449 = v449 & 0xFFFFFFFF00000000 | sizeb;
          data_low = data_low & 0xFFFFFFFF00000000 | v494;
          v502 = heal((v501 + (v499 - 1) * v472 - 1), v472, v449, data_low, &kernel, v497);
          if ((v502 & 0x80000000) == 0)
          {
            break;
          }

LABEL_680:
          ++v497;
          LODWORD(v472) = v824;
          v473 = v500;
          v494 = v827;
          if (v497 == v825)
          {
            v475 = v791;
            v476 = v793;
            v477 = v790;
            v46 = v796;
            goto LABEL_682;
          }
        }

        v503 = v502;
        if (v502 <= 1)
        {
          if (!v502)
          {
            v504 = malloc_type_malloc(4 * (v820 + v809 + 3), 0x100004052888210uLL);
            v472 = v504;
            if (v837)
            {
              v505 = *(v486 + 16);
              if (v823)
              {
                v506 = __src;
                if (v820 >= 1)
                {
                  v507 = &v505[4 * *(v486 + 4) - 4];
                  v508 = v820;
                  v509 = v504;
                  do
                  {
                    v510 = *v507;
                    v507 -= 4;
                    *v509++ = v510;
                    --v508;
                  }

                  while (v508);
                }
              }

              else
              {
                memcpy(v504, v505, v801);
                v506 = __src;
              }

              v560 = &v472[2 * v820];
              *v560 = *v498;
              memcpy(v560 + 2, *(v506 + 16), __na);
              v538 = __src;
              goto LABEL_635;
            }

            memcpy(v504, *(__src + 16), __na);
            v532 = &v472[2 * v809];
            *v532 = *v498;
            v533 = v532 + 2;
            v534 = *(v486 + 16);
            if (v823)
            {
              v535 = v820;
              if (v820 >= 1)
              {
                v536 = &v534[4 * *(v486 + 4) - 4];
                v537 = 4 * v809 + 4;
                v538 = __src;
                do
                {
                  v539 = *v536;
                  v536 -= 4;
                  *(v472 + v537) = v539;
                  v537 += 4;
                  --v535;
                }

                while (v535);
LABEL_635:
                v561 = v820 + v809 + 3;
                goto LABEL_654;
              }
            }

            else
            {
              memcpy(v533, v534, v801);
            }

            v561 = v820 + v809 + 3;
            goto LABEL_653;
          }

          v518 = malloc_type_malloc(v813, 0x100004052888210uLL);
          v472 = v518;
          if (v837)
          {
            v519 = *(v486 + 16);
            if (v823)
            {
              v520 = __src;
              if (v820 >= 1)
              {
                v521 = &v519[4 * *(v486 + 4) - 4];
                v522 = v820;
                v523 = v518;
                do
                {
                  v524 = *v521;
                  v521 -= 4;
                  *v523++ = v524;
                  --v522;
                }

                while (v522);
              }
            }

            else
            {
              memcpy(v518, v519, v801);
              v520 = __src;
            }

            v564 = 4 * (v809 - 1);
            v565 = &v472[2 * v820];
            *v565 = *v498;
            v562 = v565 + 2;
            v563 = (*(v520 + 16) + 4);
LABEL_640:
            memcpy(v562, v563, v564);
            v538 = __src;
LABEL_641:
            v561 = v820 + v809 + 2;
            goto LABEL_654;
          }

          memcpy(v518, *(__src + 16), v817);
          v547 = &v472[2 * v805];
          *v547 = *v498;
          v541 = v547 + 2;
          v548 = *(v486 + 16);
          if (v823)
          {
            v549 = v820;
            if (v820 >= 1)
            {
              v550 = &v548[4 * *(v486 + 4) - 4];
              v551 = v817 + 4;
              v538 = __src;
              do
              {
                v552 = *v550;
                v550 -= 4;
                *(v472 + v551) = v552;
                v551 += 4;
                --v549;
              }

              while (v549);
              goto LABEL_641;
            }

            goto LABEL_650;
          }

          v567 = 4 * v820;
LABEL_649:
          memcpy(v541, v548, v567);
          goto LABEL_650;
        }

        if (v502 == 2)
        {
          v511 = malloc_type_malloc(v813, 0x100004052888210uLL);
          v472 = v511;
          if (v837)
          {
            v512 = *(v486 + 16);
            if (v823)
            {
              v513 = __src;
              if (v820 >= 2)
              {
                v514 = &v512[4 * *(v486 + 4) - 4];
                v515 = v820 - 1;
                v516 = v511;
                do
                {
                  v517 = *v514;
                  v514 -= 4;
                  *v516++ = v517;
                  --v515;
                }

                while (v515);
              }
            }

            else
            {
              memcpy(v511, v512, __NRa);
              v513 = __src;
            }

            v562 = &v472[2 * v820];
            *(v562 - 1) = *v498;
            v563 = *(v513 + 16);
            v564 = 4 * v809;
            goto LABEL_640;
          }

          memcpy(v511, *(__src + 16), __na);
          v540 = &v472[2 * v809];
          *v540 = *v498;
          v541 = v540 + 2;
          v542 = *(v486 + 16);
          if (!v823)
          {
            v548 = (v542 + 4);
            v567 = 4 * (v820 - 1);
            goto LABEL_649;
          }

          if (v820 >= 2)
          {
            v543 = (v542 + 4 * *(v486 + 4) - 8);
            v544 = 4 * v809 + 4;
            v545 = v820 - 1;
            v538 = __src;
            do
            {
              v546 = *v543--;
              *(v472 + v544) = v546;
              v544 += 4;
              --v545;
            }

            while (v545);
            goto LABEL_641;
          }

LABEL_650:
          v561 = v820 + v809 + 2;
          goto LABEL_653;
        }

        v525 = malloc_type_malloc(4 * (v820 + v809 + 1), 0x100004052888210uLL);
        v472 = v525;
        if (v837)
        {
          v526 = *(v486 + 16);
          if (v823)
          {
            v527 = __src;
            if (v820 >= 2)
            {
              v528 = &v526[4 * *(v486 + 4) - 4];
              v529 = v820 - 1;
              v530 = v525;
              do
              {
                v531 = *v528;
                v528 -= 4;
                *v530++ = v531;
                --v529;
              }

              while (v529);
            }
          }

          else
          {
            memcpy(v525, v526, __NRa);
            v527 = __src;
          }

          v566 = &v472[2 * v820];
          *(v566 - 1) = *v498;
          memcpy(v566, (*(v527 + 16) + 4), v817);
          v538 = __src;
          goto LABEL_644;
        }

        memcpy(v525, *(__src + 16), v817);
        v553 = &v472[2 * v805];
        *v553 = *v498;
        v554 = v553 + 2;
        v555 = *(v486 + 16);
        if (v823)
        {
          if (v820 >= 2)
          {
            v556 = (v555 + 4 * *(v486 + 4) - 8);
            v557 = v817 + 4;
            v558 = v820 - 1;
            v538 = __src;
            do
            {
              v559 = *v556--;
              *(v472 + v557) = v559;
              v557 += 4;
              --v558;
            }

            while (v558);
LABEL_644:
            v561 = v820 + v809 + 1;
            goto LABEL_654;
          }
        }

        else
        {
          memcpy(v554, (v555 + 4), __NRa);
        }

        v561 = v820 + v809 + 1;
LABEL_653:
        v538 = __src;
LABEL_654:
        v568 = *(v538 + 4);
        if (v568 <= 1)
        {
          v576 = 0;
        }

        else
        {
          v569 = 0;
          v570 = *(v538 + 16);
          v571 = v570 + 3;
          v572 = *v570;
          v573 = v568 - 1;
          do
          {
            v574 = *(v571 - 1);
            v575 = *(v571 - 1);
            v569 += (v572 - v574) * *v571;
            v571 += 2;
            v572 = v575;
            --v573;
          }

          while (v573);
          v576 = v569 + (v574 - *v570) * v570[1];
        }

        if (v576 < 0)
        {
          v576 = -v576;
        }

        v577 = *(v486 + 4);
        if (v577 < 2)
        {
          v587 = 0;
        }

        else
        {
          v578 = 0;
          v579 = *(v486 + 16);
          v582 = *v579;
          v581 = v579 + 3;
          v580 = v582;
          v583 = v582;
          v584 = v577 - 1;
          do
          {
            v585 = *(v581 - 1);
            v586 = *(v581 - 1);
            v578 += (v583 - v585) * *v581;
            v581 += 2;
            v583 = v586;
            --v584;
          }

          while (v584);
          v587 = v578 + (v585 - v580) * *(*(v486 + 16) + 2);
        }

        v588 = (v561 - 2);
        if (v587 < 0)
        {
          v587 = -v587;
        }

        if (v561 < 4)
        {
          v595 = 0;
        }

        else
        {
          v589 = 0;
          v590 = v472 + 3;
          v591 = *v472;
          v592 = v588 - 1;
          do
          {
            v593 = *(v590 - 1);
            v594 = *(v590 - 1);
            v589 += (v591 - v593) * *v590;
            v590 += 2;
            v591 = v594;
            --v592;
          }

          while (v592);
          v595 = v589 + (v593 - *v472) * v472[1];
        }

        if (v595 < 0)
        {
          v595 = -v595;
        }

        if (v576 <= v587)
        {
          v576 = v587;
        }

        if ((v478 * v595) < v576)
        {
          if (v472)
          {
            free(v472);
          }

          goto LABEL_680;
        }

        v596 = v561 - 3;
        if (v837)
        {
          v596 = 0;
        }

        v597 = &v472[2 * v596];
        v598 = v597[1];
        v599 = *v597;
        v600 = v786 * SWORD1(sizeb);
        *&v787[2 * sizeb + (v600 >> 31)] = 0;
        v601 = v786 * SWORD1(v827);
        *&v787[2 * v827 + (v601 >> 31)] = 0;
        *&v787[2 * v599 + ((v786 * v598) >> 31)] = v807;
        *(v501 + v499 * v785) = 1;
        if (v503 == 1)
        {
          v602 = sizeb;
          v601 = v786 * SWORD1(sizeb);
          v473 = v500;
          v475 = v791;
          v476 = v793;
          v479 = __src;
          goto LABEL_693;
        }

        v602 = v827;
        v475 = v791;
        v476 = v793;
        v479 = __src;
        if (v503 == 3)
        {
          v473 = v500;
          *(v500 + sizeb + (v600 >> 32)) = 0;
LABEL_693:
          *(v473 + v602 + (v601 >> 32)) = 0;
          goto LABEL_694;
        }

        v473 = v500;
        if (v503 == 2)
        {
          goto LABEL_693;
        }

LABEL_694:
        v603 = *(v479 + 16);
        v46 = v796;
        if (v603)
        {
          free(v603);
          v479 = __src;
        }

        *(v479 + 16) = v472;
        *(v479 + 4) = v588;
        *v486 = 0;
        LODWORD(v472) = v824;
        v477 = v790;
LABEL_683:
        v480 = 0;
      }

      while ((v837 & 1) != 0);
LABEL_697:
      if (++v476 == data_high)
      {
        v473 = *v857;
        v472 = *&v857[16];
        v474 = v842[0];
        break;
      }
    }
  }

  SelfClosureContourHeal(&destR, v473, v472, v474, 0);
  v856.data = 0x800000000001;
  v856.height = malloc_type_calloc(0x8000uLL, 0x30uLL, 0x1020040D9DE8CEBuLL);
  data = destR.data;
  if (SLODWORD(destR.data) < 1)
  {
    goto LABEL_834;
  }

  v605 = 1;
  v606 = destR.width;
  v607 = destR.width;
  sizec = destR.data;
  while (2)
  {
    v608 = *(v607 + 40);
    v607 += 40;
    if (v608 != 1)
    {
      goto LABEL_759;
    }

    v609 = *v792;
    v610 = *(v792 + 8);
    kernel = 0uLL;
    *(&kernel + 1) = malloc_type_calloc(8uLL, 8uLL, 0x100004000313F17uLL);
    DWORD1(kernel) = 8 * (*(&kernel + 1) != 0);
    v611 = *(v606 + 44);
    if (v611 <= 1)
    {
      __assert_rtn("splitIntoMonotonicSpans", "SegmentUtilities.c", 85, "cPtr->nPnts > 1");
    }

    v837 = v607;
    LODWORD(__src) = v605;
    v612 = v605 | (v605 << 16);
    v613 = *(v606 + 48);
    v614 = (v611 - 1);
    if (*(v606 + 48))
    {
      v615 = *(v606 + 44);
    }

    else
    {
      v615 = v611 - 1;
    }

    v616 = *(v606 + 56);
    v617 = malloc_type_malloc(4 * v615, 0x100004052888210uLL);
    v618 = v617;
    v619 = 0;
    do
    {
      v620 = &v617[v619];
      *v620 = v616[v619 + 2] - v616[v619];
      v620[1] = v616[v619 + 3] - v616[v619 + 1];
      v619 += 2;
    }

    while (2 * (v611 - 1) != v619);
    if (v613)
    {
      v621 = &v616[2 * v614];
      v622 = &v617[2 * v614];
      *v622 = *v616 - *v621;
      v622[1] = v616[1] - v621[1];
      v623 = &v849;
    }

    else
    {
      v623 = 0;
    }

    LODWORD(destA.data) = 0;
    LODWORD(v849.data) = 0;
    v624 = *v617;
    if (v624 >= 0)
    {
      v625 = *v617;
    }

    else
    {
      v625 = -v624;
    }

    v626 = v617[1];
    if (v626 >= 0)
    {
      v627 = v617[1];
    }

    else
    {
      v627 = -v626;
    }

    findDiff(v617, v615, (v625 == 1) | (2 * (v627 == 1)), &destA, v623);
    _ZF = v625 == 1 && LOWORD(destA.data) == 0;
    if (_ZF || v627 == 1 && !WORD1(destA.data))
    {
      if (v613)
      {
        __assert_rtn("splitIntoMonotonicSpans", "SegmentUtilities.c", 130, "!closedP");
      }

      addSpan(&kernel, v611 << 32);
      goto LABEL_725;
    }

    v828 = v613;
    v663 = SLOWORD(v849.data);
    v664 = SLOWORD(v849.data) + SLOWORD(destA.data);
    v665 = SWORD1(v849.data) + SWORD1(destA.data);
    v666 = v664 < v665;
    if (v664 >= v665)
    {
      if (SLOWORD(v849.data) >= 1)
      {
        v825 = malloc_type_malloc(4 * v615, 0x100004052888210uLL);
        v823 = 4 * v663;
        v824 = malloc_type_malloc(4 * v611 + 4, 0x100004052888210uLL);
        memcpy((v825 + v823), v618, 4 * (v615 - v663));
        memcpy(v825, &v618[4 * (v615 - v663)], v823);
        memcpy((v824 + v823), v616, 4 * (v611 - v663));
        memcpy(v824, &v616[2 * (v611 - v663)], v823);
        *(v606 + 56) = v824;
        free(v616);
        free(v618);
        v618 = v825;
        v616 = v824;
      }

      if ((v828 & 1) == 0)
      {
        goto LABEL_771;
      }
    }

    else
    {
      if (SWORD1(v849.data) >= 1)
      {
        LODWORD(v824) = SWORD1(v849.data) + SWORD1(destA.data);
        v667 = SWORD1(v849.data);
        v668 = malloc_type_malloc(4 * v615, 0x100004052888210uLL);
        v821 = malloc_type_malloc(4 * (v611 + 1), 0x100004052888210uLL);
        v823 = v668;
        v825 = 4 * v667;
        memcpy(&v668[v825], v618, 4 * (v615 - v667));
        memcpy(v668, &v618[4 * (v615 - v667)], v825);
        memcpy(&v821[v825], v616, 4 * (v611 - v667));
        memcpy(v821, &v616[2 * (v611 - v667)], v825);
        *(v606 + 56) = v821;
        free(v616);
        free(v618);
        v665 = v824;
        v618 = v668;
        v616 = v821;
      }

      v664 = v665;
      if (!v828)
      {
        goto LABEL_771;
      }
    }

    *&v616[2 * v611] = *v616;
LABEL_771:
    v669 = 0;
    v670 = 0;
    while (1)
    {
      v671 = v664 - v670;
      if (v666)
      {
        if (v664 > v670)
        {
          v672 = 0;
          v673 = -1;
          v674 = -1;
          v675 = &v618[4 * v670];
          while (1)
          {
            v677 = *v675;
            v675 += 4;
            v676 = v677;
            if (v677 < 0 && v674 == -1)
            {
              v674 = v672;
            }

            if (v673 == -1 && v676 > 0)
            {
              v673 = v672;
            }

            if ((v674 & 0x80000000) == 0 && (v673 & 0x80000000) == 0)
            {
              break;
            }

            if (v671 == ++v672)
            {
              goto LABEL_807;
            }
          }

LABEL_808:
          if (v674 > v673)
          {
            v673 = v674;
          }

          v664 = v673 + v670;
          goto LABEL_811;
        }
      }

      else if (v664 > v670)
      {
        v680 = 0;
        v673 = -1;
        v674 = -1;
        v681 = &v618[4 * v670 + 2];
        while (1)
        {
          v683 = *v681;
          v681 += 4;
          v682 = v683;
          if (v683 < 0 && v674 == -1)
          {
            v674 = v680;
          }

          if (v673 == -1 && v682 > 0)
          {
            v673 = v680;
          }

          if ((v674 & 0x80000000) == 0 && (v673 & 0x80000000) == 0)
          {
            goto LABEL_808;
          }

          if (v671 == ++v680)
          {
            goto LABEL_807;
          }
        }
      }

      if ((v669 & 1) == 0)
      {
LABEL_807:
        v669 = 0;
        goto LABEL_812;
      }

      v664 = v670 - 1;
LABEL_811:
      v669 = 1;
LABEL_812:
      if (v615 == v664)
      {
        break;
      }

      addSpan(&kernel, v670 | ((v664 - v670) << 32));
      if (v615 < v664)
      {
        __assert_rtn("splitIntoMonotonicSpans", "SegmentUtilities.c", 268, "idx <= monoLength");
      }

      v686 = &v618[4 * v664];
      v687 = *v686;
      if (v687 < 0)
      {
        v687 = -v687;
      }

      v688 = v687 == 1;
      v689 = v686[1];
      if (v689 >= 0)
      {
        v690 = v686[1];
      }

      else
      {
        v690 = -v689;
      }

      LODWORD(destA.data) = 0;
      findDiff(v686, v615 - v664, v688 | (2 * (v690 == 1)), &destA, 0);
      v691 = SLOWORD(destA.data);
      if (v688 && LOWORD(destA.data) == 0)
      {
        v691 = v615 - v664;
      }

      v692 = SWORD1(destA.data);
      if (WORD1(destA.data))
      {
        v693 = 0;
      }

      else
      {
        v693 = v690 == 1;
      }

      if (v693)
      {
        v692 = v615 - v664;
      }

      v666 = v691 < v692;
      if (v691 > v692)
      {
        v692 = v691;
      }

      v670 = v664;
      v644 = v615 <= v664;
      v664 += v692;
      if (v644)
      {
        goto LABEL_725;
      }
    }

    addSpan(&kernel, v670 | ((v615 - v670 + 1) << 32));
    if (v618)
    {
LABEL_725:
      free(v618);
    }

    v629 = *(v606 + 56);
    v630 = kernel;
    v631 = allocSegments(&v856, kernel);
    v632 = *(&kernel + 1);
    *(v606 + 52) = v630;
    *(v606 + 64) = v631;
    v633 = v631;
    v634 = v632;
    if (v630 >= 2)
    {
      v635 = v630 - 1;
      v634 = v632;
      v633 = v631;
      do
      {
        *(v633 + 12) = v634[1] + 1;
        *(v633 + 40) = v629 + 4 * *v634;
        v633 = *v633;
        v634 += 2;
        --v635;
      }

      while (v635);
    }

    *(v633 + 12) = v634[1];
    *(v633 + 40) = v629 + 4 * *v634;
    v636 = 0;
    if (v631)
    {
      do
      {
        v637 = *(v631 + 40);
        v638 = *(v631 + 12);
        v639 = v637[v638 - 1];
        v640 = v639 - *v637;
        v641 = (v639 >> 16) - (*v637 >> 16);
        if (v641 >= 0)
        {
          v642 = v641;
        }

        else
        {
          v642 = -v641;
        }

        if (v640 >= 0)
        {
          v643 = v640;
        }

        else
        {
          v643 = -v640;
        }

        v644 = v642 > v643;
        if (v642 <= v643)
        {
          v645 = v640;
        }

        else
        {
          v645 = v641;
        }

        if (v644)
        {
          v641 = v640;
        }

        v646 = v641 & 0x10000;
        v647 = v645 >> 31;
        if (v644)
        {
          ++v646;
        }

        v648 = v646 | (v647 << 8);
        applyCoordTransform(v648, v637, v638);
        v649 = *v631;
        v650 = straightLineWLSQ(*(v631 + 40), *(v631 + 12));
        v652 = v651;
        v653 = *&v651;
        *(v631 + 16) = v651;
        *(v631 + 20) = Lsq2Leq(v650);
        *(v631 + 24) = v654;
        *(v631 + 28) = v655;
        if (v609 < v653)
        {
          splitSegmentIntoStraightSegments(v631, v650, v652, &v856, v609);
        }

        if (v649 == v631)
        {
          v660 = 0;
        }

        else
        {
          v656 = -1;
          v657 = v631;
          do
          {
            v658 = v656;
            v657 = *v657;
            ++v656;
          }

          while (v657 != v649);
          if (v656)
          {
            v659 = mergeSegments(v631, (v658 + 2), v610);
            v660 = v659;
            if (v659 >= 2)
            {
              v661 = v659 - 1;
              do
              {
                v629 = v629 & 0xFFFFFFFFFF000000 | v648;
                revertSegmentCoordinateSystem(v631, *(v631 + 12) - 1, v629);
                *(v631 + 32) = v612;
                v631 = *v631;
                --v661;
              }

              while (v661);
            }
          }

          else
          {
            v660 = 1;
          }
        }

        v662 = v631;
        v630 = v630 & 0xFFFFFFFFFF000000 | v648;
        revertSegmentCoordinateSystem(v631, *(v631 + 12), v630);
        *(v631 + 32) = v612;
        v636 += v660;
        v631 = v649;
      }

      while (v649);
      *(v606 + 72) = v662;
      v632 = *(&kernel + 1);
    }

    *(v606 + 52) = v636;
    data = sizec;
    v605 = __src;
    v607 = v837;
    if (v632)
    {
      free(v632);
    }

LABEL_759:
    v606 = v607;
    _ZF = v605++ == data;
    if (!_ZF)
    {
      continue;
    }

    break;
  }

LABEL_834:
  v694 = *&v857[8] + *&v857[16];
  AnnealContours(&destR, v792, *&v857[8] + *&v857[16]);
  MergeContours(&destR, v792, v694, &v856, v857, v842, 0);
  AnnealContours(&destR, v792, v694);
  MergeContours(&destR, v792, v694, &v856, v857, v842, 1);
  AnnealContours(&destR, v792, v694);
  MergeContours(&destR, v792, v694, &v856, v857, v842, 1);
  AnnealContours(&destR, v792, v694);
  v695 = HIDWORD(destR.data);
  v696 = *(v792 + 104);
  v697 = malloc_type_malloc(4 * v694, 0x100004052888210uLL);
  v698 = *(v792 + 76);
  LODWORD(destA.data) = *(v792 + 8);
  HIDWORD(destA.data) = v698;
  destA.height = *(v792 + 16);
  destA.width = v697;
  *&kernel = 0;
  v861 = 0u;
  v865 = 0u;
  v866 = 0u;
  v863 = 0u;
  v864 = 0u;
  v862 = 0u;
  *(&kernel + 1) = v857;
  *&v861 = v842;
  v822 = v697;
  *&v864 = v697;
  if (v695 >= 1)
  {
    v699 = 0;
    v700 = llroundf(v696);
    v701 = v700 * v700;
    v829 = v700 * v700;
    do
    {
      v702 = *(destR.height + 2 * v699);
      v703 = destR.width + 40 * v702;
      if (*v703 == 1 && (*(v703 + 8) & 1) == 0)
      {
        v704 = *(v703 + 32);
        v705 = *(*(v703 + 24) + 40);
        v706 = *v705;
        v707 = v705[1];
        v708 = *(v704 + 40) + 4 * *(v704 + 12);
        v709 = *(v708 - 4);
        v710 = *(v708 - 2);
        if ((v706 - v709) * (v706 - v709) + (v707 - v710) * (v707 - v710) <= v701)
        {
          v711 = v706;
          v712 = v709;
          v713 = v710;
          v714 = v709 | (v710 << 16);
          sized = v707;
          v715 = v706 | (v707 << 16);
          v837 = v714 | v837 & 0xFFFFFFFF00000000;
          __src = v715 | __src & 0xFFFFFFFF00000000;
          if (checkBridgeCrossing(&kernel, v709 | (v710 << 16), v706 | (v707 << 16)))
          {
            v823 = v823 & 0xFFFFFFFF00000000 | (v702 << 16);
            v824 = v714 | v824 & 0xFFFFFFFF00000000;
            v825 = v715 | v825 & 0xFFFFFFFF00000000;
            BridgeSegment = createBridgeSegment(&v856, v702 << 16, v714, v715);
            *v704 = BridgeSegment;
            *(v703 + 32) = BridgeSegment;
            ++*(v703 + 12);
            *(v703 + 8) = 1;
            v717 = *(BridgeSegment + 12);
            if (v717 >= 1)
            {
              v718 = *v857;
              v719 = *&v857[24] << 32;
              v720 = (*(BridgeSegment + 40) + 2);
              do
              {
                *(v718 + *(v720 - 1) + ((v719 * *v720) >> 32)) = 1;
                v720 += 2;
                --v717;
              }

              while (v717);
            }

            v721 = v842[0];
            v722 = *(&v843 + 1);
            *(v842[0] + 2 * v712 + *(&v843 + 1) * v713) = 0;
            *&v721[2 * v711 + v722 * sized] = 0;
            AnnealContour(v703, &destA);
          }

          v701 = v829;
        }
      }

      ++v699;
    }

    while (v699 != v695);
  }

  if (v822)
  {
    free(v822);
  }

  v723 = malloc_type_malloc(32 * SHIDWORD(destR.data), 0x1000040E0EAB150uLL);
  v724 = Contours2Quads(&destR, v792, v857, v723, SHIDWORD(destR.data));
  v725 = v724;
  if (v724 < 2)
  {
    v745 = v724;
    v769 = a3;
    v770 = a5;
    if (v724 == 1)
    {
      v771 = v723 + 1;
      v772 = 0.0;
      for (j = 1; j != 5; ++j)
      {
        v772 = v772 + ((*(v771 - 1) * v723[2 * (j & 3) + 1]) - (v723[2 * (j & 3)] * *v771));
        v771 += 2;
      }

      canonicalizeQuad(v723, v772);
      v745 = 1;
    }
  }

  else
  {
    v726 = malloc_type_malloc(32 * v724, 0x1000040E0EAB150uLL);
    v727 = malloc_type_malloc(8 * v725, 0x100004000313F17uLL);
    v728 = malloc_type_malloc(4 * v725, 0x100004052888210uLL);
    v729 = malloc_type_calloc(v725, 8uLL, 0x100004000313F17uLL);
    v730 = malloc_type_malloc(v725, 0x100004077774924uLL);
    v838 = malloc_type_malloc(4 * v725, 0x100004052888210uLL);
    v731 = 0;
    v732 = v723 + 1;
    __asm { FMOV            V9.2S, #0.25 }

    __srca = v723;
    do
    {
      v737 = 0.0;
      v738 = v732;
      for (k = 1; k != 5; ++k)
      {
        v737 = v737 + ((*(v738 - 1) * v723[2 * (k & 3) + 1]) - (v723[2 * (k & 3)] * *v738));
        v738 += 2;
      }

      canonicalizeQuad(v723, v737);
      v740 = 0;
      v728[v731] = fabsf(v737);
      v727[v731] = v731;
      v730[v731] = 1;
      v741 = 0;
      do
      {
        v741 = vadd_f32(v741, *&v723[v740]);
        v740 += 2;
      }

      while (v740 != 6);
      v729[v731] = vmul_f32(v741, _D9);
      v742 = &v726[32 * v731];
      v743 = *v723;
      v744 = *(v723 + 1);
      v723 += 8;
      *v742 = v743;
      *(v742 + 1) = v744;
      ++v731;
      v732 += 8;
    }

    while (v731 != v725);
    vDSP_vsorti(v728, v727, 0, v725, -1);
    v745 = 0;
    v746 = 0;
    v747 = v726 + 4;
    v723 = __srca;
    do
    {
      v748 = v727[v746];
      if (v730[v748] == 1)
      {
        v749 = &v726[32 * v748];
        if (++v746 >= v725)
        {
          goto LABEL_872;
        }

        v750 = 0;
        v751 = &v729[v748];
        v752 = v746;
        v753 = &v747[32 * v748];
        while (1)
        {
          v754 = v727[v752];
          if (v730[v754] == 1 && (((v751[1] - v729[v754].f32[1]) * (v751[1] - v729[v754].f32[1])) + ((*v751 - v729[v754].f32[0]) * (*v751 - v729[v754].f32[0]))) <= 100.0)
          {
            break;
          }

LABEL_865:
          if (v725 == ++v752)
          {
            goto LABEL_866;
          }
        }

        v755 = &v747[32 * v754];
        v756 = v753;
        v757 = 3;
        while ((((*v756 - *v755) * (*v756 - *v755)) + ((*(v756 - 1) - *(v755 - 1)) * (*(v756 - 1) - *(v755 - 1)))) <= 100.0)
        {
          v756 += 2;
          v755 += 2;
          if (!--v757)
          {
            v838[v750++] = v752;
            goto LABEL_865;
          }
        }

LABEL_866:
        if (v750)
        {
          v759 = *v749;
          v758 = v749[1];
          if (v750 >= 1)
          {
            v760 = v750;
            v761 = v838;
            do
            {
              v762 = *v761++;
              v763 = v727[v762];
              v730[v763] = 0;
              v764 = &v726[32 * v763];
              v758 = vaddq_f32(v764[1], v758);
              v759 = vaddq_f32(*v764, v759);
              --v760;
            }

            while (v760);
          }

          v765 = 1.0 / (v750 + 1);
          v766 = &__srca[8 * v745];
          *v766 = vmulq_n_f32(v759, v765);
          v766[1] = vmulq_n_f32(v758, v765);
        }

        else
        {
LABEL_872:
          v767 = v749[1];
          v768 = &__srca[8 * v745];
          *v768 = *v749;
          v768[1] = v767;
        }

        ++v745;
      }

      else
      {
        ++v746;
      }
    }

    while (v746 < v725);
    if (v726)
    {
      free(v726);
    }

    v769 = a3;
    if (v727)
    {
      free(v727);
    }

    v770 = a5;
    if (v728)
    {
      free(v728);
    }

    if (v729)
    {
      free(v729);
    }

    if (v730)
    {
      free(v730);
    }

    if (v838)
    {
      free(v838);
    }
  }

  if (v745 >= *(v792 + 72))
  {
    v774 = *(v792 + 72);
  }

  else
  {
    v774 = v745;
  }

  memcpy(v769, v723, 32 * v774);
  v467 = v774 > 0;
  if (v774 >= 1)
  {
    memset_pattern16(a4, &unk_1A6038F40, 4 * v774);
  }

  *v770 = v774;
  if (v723)
  {
    free(v723);
  }

  if (__E)
  {
    free(__E);
  }

  if (destG.data)
  {
    free(destG.data);
    destG.data = 0;
  }

  if (destB.data)
  {
    free(destB.data);
  }

  if (dest.data)
  {
    free(dest.data);
  }

  if (src.data)
  {
    free(src.data);
  }

  if (v784)
  {
    free(v784);
  }

  if (v788)
  {
    free(v788);
  }

  if (v783)
  {
    free(v783);
  }

  if (*v857)
  {
    free(*v857);
    *v857 = 0;
  }

  if (v842[0])
  {
    free(v842[0]);
    v842[0] = 0;
  }

  releaseContourDatabaseMemory(&destR);
  v775 = v856.height;
  if (v856.height)
  {
    v776 = v856.data;
    if (SLODWORD(v856.data) >= 2)
    {
      v777 = (v856.height + 88);
      v778 = 1;
      do
      {
        if (*(v777 - 32) == 1 && *(v777 - 4) <= 0 && *v777)
        {
          free(*v777);
          *v777 = 0;
          v776 = v856.data;
        }

        ++v778;
        v777 += 6;
      }

      while (v778 < v776);
      v775 = v856.height;
    }

    free(v775);
  }

  return v467;
}

void sub_1A5FAB914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__34519(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5FADEC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void vision::mod::ImageDescriptor_EspressoSmartCam::~ImageDescriptor_EspressoSmartCam(vision::mod::ImageDescriptor_EspressoSmartCam *this)
{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1973180;
  v1 = *(this + 7);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<vision::mod::ImageDescriptor_EspressoSmartCam>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void computePhogDescriptor(_BYTE *a1, void **a2)
{
  v65 = *MEMORY[0x1E69E9840];
  v61 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  v4 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  v60 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  v58 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  v5 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  v6 = malloc_type_malloc(0x2400uLL, 0x100004052888210uLL);
  for (i = 0; i != 4; ++i)
  {
    v8 = exp2(i);
    *&v64[4 * i + 32] = v8;
    v9 = 48 / v8;
    *&v64[4 * i + 16] = v9;
    *&v64[4 * i] = v9;
  }

  v10 = 0;
  v11 = 0;
  v12 = a1 + 1;
  v13 = v60;
  v14 = v61;
  v15 = v58;
  do
  {
    v16 = v12;
    v17 = v10;
    v18 = 47;
    do
    {
      LOBYTE(v8) = *v16;
      v19 = LODWORD(v8);
      *(v61 + v17) = v19;
      LOBYTE(v19) = *(v16 - 1);
      *&v8 = LODWORD(v19);
      *&v4[v17 + 4] = LODWORD(v8);
      v17 += 4;
      ++v16;
      --v18;
    }

    while (v18);
    v20 = 48 * v11 + 47;
    LOBYTE(v8) = a1[v20];
    v21 = LODWORD(v8);
    v61[v20] = v21;
    LOBYTE(v21) = a1[48 * v11];
    *&v8 = LODWORD(v21);
    *&v4[192 * v11++] = LODWORD(v8);
    v10 += 192;
    v12 += 48;
  }

  while (v11 != 48);
  for (j = 0; j != 2256; ++j)
  {
    LOBYTE(v8) = a1[j + 48];
    v23 = LODWORD(v8);
    v60[j] = v23;
    LOBYTE(v23) = a1[j];
    *&v8 = LODWORD(v23);
    v58[j + 48] = LODWORD(v8);
  }

  v59 = v4;
  for (k = 0; k != 48; ++k)
  {
    LOBYTE(v8) = *a1;
    *&v25 = LODWORD(v8);
    v58[k] = v25;
    LOBYTE(v25) = a1[2256];
    *&v8 = v25;
    v60[k + 2256] = *&v8;
    ++a1;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v57 = v6;
  do
  {
    v29 = 0;
    v62 = v28;
    v63 = v26;
    v30 = &v6[v28];
    v31 = &v5[v28];
    v32 = &v15[v26];
    v33 = &v13[v26];
    v34 = &v59[4 * v26];
    v35 = &v14[v26];
    do
    {
      v36 = v35[v29] - *&v34[4 * v29];
      v37 = v33[v29] - *&v32[v29];
      v38 = v36 * 0.5;
      if (v29 == 47)
      {
        v38 = v35[v29] - *&v34[4 * v29];
      }

      if (v29)
      {
        v36 = v38;
      }

      if (v27 && v27 != 47)
      {
        v37 = v37 * 0.5;
      }

      v39 = sqrtf((v37 * v37) + (v36 * v36));
      if (v36 == 0.0)
      {
        v36 = 0.00001;
      }

      v40 = (atan2f(v37, v36) + 3.14159265) * 180.0 / 3.14159265;
      v31[v29] = v39;
      *&v30[4 * v29++] = ceilf(v40 / 45.0);
    }

    while (v29 != 48);
    v26 = v63 + 48;
    v28 = v62 + 48;
    ++v27;
    v13 = v60;
    v14 = v61;
    v6 = v57;
    v15 = v58;
  }

  while (v27 != 48);
  bzero(*a2, 0xAA0uLL);
  LODWORD(v41) = 0;
  for (m = 0; m != 48; ++m)
  {
    v43 = 0;
    v41 = v41;
    do
    {
      v44 = 0;
      v45 = (v57[v41] + -1.0);
      v46 = *a2;
      do
      {
        v47 = v5[v41];
        if (v47 > 0.0)
        {
          v48 = dword_1A6038F50[v44] + v45 + 8 * (m / *&v64[v44 * 4] + *&v64[v44 * 4 + 32] * (v43 / *&v64[v44 * 4 + 16]));
          v46[v48] = v47 + v46[v48];
        }

        ++v44;
      }

      while (v44 != 4);
      ++v41;
      ++v43;
    }

    while (v43 != 48);
  }

  v49 = 0;
  v50 = *a2;
  v51 = 0.0;
  do
  {
    v52 = *&v50[v49];
    v53 = vcvt_hight_f64_f32(v52);
    v54 = vcvtq_f64_f32(*v52.f32);
    v51 = v51 + v54.f64[0] + v54.f64[1] + v53.f64[0] + v53.f64[1];
    v49 += 16;
  }

  while (v49 != 2720);
  v55 = 0;
  v56 = vdupq_lane_s64(*&v51, 0);
  do
  {
    *&v50[v55] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*&v50[v55]), v56)), vdivq_f64(vcvt_hight_f64_f32(*&v50[v55]), v56));
    v55 += 16;
  }

  while (v55 != 2720);
  free(v61);
  free(v59);
  free(v58);
  free(v60);
  free(v5);

  free(v57);
}

void vision::mod::LandmarkAttributes::init(void *a1, void *a2, char a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "scorPdiffParameters");
  v6 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v7 = v6;
  if (v6)
  {
    if (*(v6 + 10) == 2)
    {
      v9 = v6[6];
      v8 = v6[7];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = a1[2];
      a1[1] = v9;
      a1[2] = v8;
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      *a1 = v7[8];
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_80;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "exprParameters");
  v11 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v12 = v11;
  if (v11)
  {
    if (*(v11 + 10) == 2)
    {
      v14 = v11[6];
      v13 = v11[7];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = a1[12];
      a1[11] = v14;
      a1[12] = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      a1[10] = v12[8];
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_80;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "blinkParametersApp");
  v16 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v17 = v16;
  if (v16)
  {
    if (*(v16 + 10) == 2)
    {
      v19 = v16[6];
      v18 = v16[7];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = a1[21];
      a1[20] = v19;
      a1[21] = v18;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      a1[19] = v17[8];
      LOBYTE(v17) = 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_80;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "smileBlinkParametersGeo");
  v21 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v22 = v21;
  if (v21)
  {
    if (*(v21 + 10) == 2)
    {
      v24 = v21[6];
      v23 = v21[7];
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      v25 = a1[18];
      a1[17] = v24;
      a1[18] = v23;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      a1[16] = v22[8];
      LOBYTE(v22) = 1;
    }

    else
    {
      LOBYTE(v22) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_80;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "lmarkQuality");
  v26 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v27 = v26;
  if (v26)
  {
    if (*(v26 + 10) == 2)
    {
      v29 = v26[6];
      v28 = v26[7];
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = a1[5];
      a1[4] = v29;
      a1[5] = v28;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      a1[3] = v27[8];
      LOBYTE(v27) = 1;
    }

    else
    {
      LOBYTE(v27) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_80;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "exprParamsv1");
  v31 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
  v32 = v31;
  if (v31)
  {
    if (*(v31 + 10) == 2)
    {
      v34 = v31[6];
      v33 = v31[7];
      if (v33)
      {
        atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
      }

      v35 = a1[15];
      a1[14] = v34;
      a1[15] = v33;
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      a1[13] = v32[8];
      LOBYTE(v32) = 1;
    }

    else
    {
      LOBYTE(v32) = 0;
    }
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_80;
  }

  if ((a3 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "pupilMeanStd");
    v36 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a2, __p);
    if (v36 && (v37 = v36, *(v36 + 10) == 2))
    {
      v39 = v36[6];
      v38 = v36[7];
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v40 = a1[9];
      a1[8] = v39;
      a1[9] = v38;
      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      a1[7] = v37[8];
      v41 = 1;
    }

    else
    {
      v41 = 0;
    }

    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v41 & 1) == 0)
    {
LABEL_80:
      exception = __cxa_allocate_exception(8uLL);
      *exception = 2936;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }
  }
}

vision::mod::LandmarkAttributes *vision::mod::LandmarkAttributes::LandmarkAttributes(vision::mod::LandmarkAttributes *this, char *a2, char a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  memset(v12, 0, sizeof(v12));
  v13 = 1065353216;
  vision::mod::readBinSerializedModelValues(a2, vision::mod::LandmarkAttributes::sModelFileInfo, v12);
  vision::mod::LandmarkAttributes::init(this, v12, a3);
  if ((a3 & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E699BC28]);
    v7 = [objc_alloc(MEMORY[0x1E699BC20]) initWithPlatform:0];
    v8 = [v6 initWithJSFile:a2 binSerializerId:"pupil" context:v7 computePath:0];
    v9 = *(this + 6);
    *(this + 6) = v8;

    if (!*(this + 6))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = 2936;
      __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::~__hash_table(v12);
  return this;
}

void sub_1A5FAF41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::~__hash_table(&a9);
  v11 = *(v9 + 168);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(v9 + 144);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v9 + 120);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v9 + 96);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v9 + 72);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v9 + 40);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v9 + 16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

void *vision::mod::LandmarkAttributes::LandmarkAttributes(void *a1, void *a2, char a3)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[18] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  vision::mod::LandmarkAttributes::init(a1, a2, a3);
  return a1;
}

void sub_1A5FAF4E4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 168);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v1 + 120);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v1 + 96);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v1 + 40);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(v1 + 16);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void vision::mod::LandmarkAttributes::~LandmarkAttributes(vision::mod::LandmarkAttributes *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t *vision::mod::LandmarkAttributes::computePixelDistanceFeature(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a3[1] - *a3) >> 3;
  result = std::vector<float>::vector[abi:ne200100](a1, (((v5 - 1) * v5) >> 1) + 1);
  v7 = *a3;
  v8 = a3[1] - *a3;
  v9 = *result;
  if ((v8 >> 3) < 2)
  {
    v19 = 0;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = (v8 >> 3) - 1;
    v13 = ((v8 >> 3) & 0x7FFFFFFF) - 1;
    v14 = (v7 + 12);
    do
    {
      v11 = v11;
      v15 = v14;
      v16 = v13;
      v17 = (v7 + 8 * v10);
      do
      {
        v18 = (*v17 - *(v15 - 1)) / *(a2 + 12);
        *(v9 + 4 * v11++) = sqrtf((((v17[1] - *v15) / *(a2 + 8)) * ((v17[1] - *v15) / *(a2 + 8))) + (v18 * v18));
        v15 += 2;
        --v16;
      }

      while (v16);
      ++v10;
      --v13;
      v14 += 2;
    }

    while (v10 != v12);
    v19 = v11;
  }

  *(v9 + 4 * v19) = 1065353216;
  return result;
}

void **tplTrackerResampler_alloc(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x68uLL, 0x10100405B433AA0uLL);
  v5 = v4;
  v13 = v4;
  if (v4)
  {
    v4[4].i32[2] = 1066192077;
    v4->i64[0] = a1;
    v4->i64[1] = a2;
    v6.i64[0] = a1;
    v6.i64[1] = a2;
    v7 = vaddq_s64(vcvtq_u64_f64(vcvtq_f64_f32(vrndp_f32(vmul_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v6)), vdup_n_s32(0x3F8CCCCDu)), vdup_n_s32(0x3F99999Au))))), vdupq_n_s64(8uLL));
    v4[1] = v7;
    v8 = v7.i64[0] * v7.i64[1];
    v9 = malloc_type_calloc(v7.i64[0] * v7.i64[1], 1uLL, 0x100004077774924uLL);
    v5[6] = v9;
    if (!v9 || (v10 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL), (v5[7] = v10) == 0) || (v11 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL), (v5[8] = v11) == 0))
    {
      tplTrackerResampler_free(&v13);
      return v13;
    }
  }

  return v5;
}

void tplTrackerResampler_free(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2[6]);
      free(v2[7]);
      free(v2[8]);
      free(v2);
    }

    *a1 = 0;
  }
}

uint64_t tplTrackerResampler_setImage(uint64_t a1, CVPixelBufferRef pixelBuffer, float64x2_t *a3)
{
  if (!a1)
  {
    goto LABEL_94;
  }

  if (CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    v6 = 6782;
    goto LABEL_95;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v154[0] = BaseAddressOfPlane;
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  v154[1] = HeightOfPlane;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  v154[2] = WidthOfPlane;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v154[3] = BytesPerRowOfPlane;
  v11 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  v153[0] = v11;
  v153[1] = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1uLL);
  v153[2] = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1uLL);
  v12 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  v153[3] = v12;
  if (!*a1)
  {
    goto LABEL_94;
  }

  v13 = *(a1 + 8);
  if (!v13)
  {
    goto LABEL_94;
  }

  v14 = v12;
  v15 = a3[2];
  __asm { FMOV            V3.2D, #1.0 }

  v20 = vcvt_f32_f64(vaddq_f64(vsubq_f64(v15, *a3), _Q3));
  v21 = v20.f32[0] / *a1;
  if (v21 < (v20.f32[1] / v13))
  {
    v21 = v20.f32[1] / v13;
  }

  v22 = vcvtq_f64_f32(vmul_f32(vmul_n_f32(v20, *(a1 + 72) + -1.0), 0x3F0000003F000000));
  v23 = vcvt_s32_f32(vrndm_f32(vcvt_f32_f64(vsubq_f64(*a3, v22))));
  v24 = vaddq_f64(v15, v22);
  v25 = v24.f64[0];
  v26 = vcvtps_s32_f32(v25);
  *v24.f64 = v24.f64[1];
  v27 = vcvtps_s32_f32(*v24.f64);
  if (v21 < 1.2)
  {
    v28.i64[0] = WidthOfPlane;
    v28.i64[1] = HeightOfPlane;
    v29.i64[0] = -1;
    v29.i64[1] = -1;
    v30 = vaddq_s64(v28, v29);
    v31 = *&v23 & 0xFFFFFFFEFFFFFFFELL;
    *v28.i8 = vadd_s32(v31, 0x100000001);
    v32.i64[0] = v28.u32[0];
    v32.i64[1] = v28.u32[1];
    v33 = vand_s8(vmovn_s64(vbslq_s8(vcgtq_u64(v32, v30), v30, v32)), vcgt_s32(v31, 0x200000002));
    v34 = (v26 & 0xFFFFFFFE) + 4;
    v35 = v30.i32[2];
    if (v30.i64[0] < v34)
    {
      LODWORD(v34) = v30.i32[0];
    }

    if ((v26 & 0xFFFFFFFE) <= -4)
    {
      v36 = 0;
    }

    else
    {
      v36 = v34;
    }

    v37 = v27 & 0xFFFFFFFE;
    if (v30.i64[1] >= ((v27 & 0xFFFFFFFE) + 4))
    {
      v35 = v37 + 4;
    }

    if (v37 <= -4)
    {
      v38 = 0;
    }

    else
    {
      v38 = v35;
    }

    v39 = v33.i32[0];
    v40 = v36 - v33.i32[0];
    v41 = v40 + 1;
    if (*(a1 + 16) >= (v40 + 1))
    {
      v42 = v33.u32[1];
      v43 = v38 - v33.i32[1];
      v44 = v38 - v33.i32[1] + 1;
      if (*(a1 + 24) >= v44)
      {
        *(a1 + 32) = v41;
        *(a1 + 40) = v44;
        *(a1 + 76) = 0x400000003F800000;
        v45 = vcvt_f32_u32(v33);
        *(a1 + 84) = v45;
        *(a1 + 92) = vadd_f32(v45, 0x3F0000003F000000);
        *(a1 + 100) = 1;
        if (v44)
        {
          v46 = 0;
          v47 = *(a1 + 48);
          v48 = BaseAddressOfPlane + BytesPerRowOfPlane * v42 + v39;
          do
          {
            if (v40 != -1)
            {
              v49 = 0;
              do
              {
                *(v47 + v49) = v48[v49];
                ++v49;
              }

              while (v41 != v49);
            }

            v48 += BytesPerRowOfPlane;
            v47 += v41;
            ++v46;
          }

          while (v46 != v44);
          if ((v43 + 2) >= 3)
          {
            v50 = 0;
            v51 = (v41 + (v41 >> 31)) >> 1;
            v52 = (v44 + (v44 >> 31)) >> 1;
            v54 = *(a1 + 56);
            v53 = *(a1 + 64);
            v55 = v40 + 2;
            v56 = v11 + (v39 & 0x7FFFFFFE) + v14 * (v42 >> 1) + 1;
            v6 = 6784;
            do
            {
              if (v55 >= 3)
              {
                v57 = 0;
                v58 = v56;
                do
                {
                  *(v54 + v57) = *(v58 - 1);
                  v59 = *v58;
                  v58 += 2;
                  *(v53 + v57++) = v59;
                }

                while (v51 != v57);
              }

              v54 += v51;
              v53 += v51;
              ++v50;
              v56 += v14;
            }

            while (v50 != v52);
            goto LABEL_95;
          }
        }

LABEL_67:
        v6 = 6784;
        goto LABEL_95;
      }
    }

LABEL_94:
    v6 = 6780;
    goto LABEL_95;
  }

  if (v21 >= 2.4)
  {
    if (v21 < 4.8)
    {
      v93.i64[0] = WidthOfPlane;
      v93.i64[1] = HeightOfPlane;
      v94.i64[0] = -1;
      v94.i64[1] = -1;
      v95 = vaddq_s64(v93, v94);
      v96 = *&v23 & 0xFFFFFFFCFFFFFFFCLL;
      *v93.i8 = vadd_s32(v96, 0x300000003);
      v97.i64[0] = v93.u32[0];
      v97.i64[1] = v93.u32[1];
      v98 = vand_s8(vmovn_s64(vbslq_s8(vcgtq_u64(v97, v95), v95, v97)), vcgt_s32(v96, 0x400000004));
      v99 = v95.i32[2];
      v100 = (v26 & 0xFFFFFFFC) + 8;
      if (v95.i64[0] < v100)
      {
        LODWORD(v100) = v95.i32[0];
      }

      if ((v26 & 0xFFFFFFFC) <= -8)
      {
        LODWORD(v100) = 0;
      }

      v101 = v27 & 0xFFFFFFFC;
      if (v95.i64[1] >= ((v27 & 0xFFFFFFFC) + 8))
      {
        v99 = v101 + 8;
      }

      if (v101 <= -8)
      {
        v102 = 0;
      }

      else
      {
        v102 = v99;
      }

      v103 = v98.u32[0];
      v104 = v100 - v98.i32[0] + 1;
      if (*(a1 + 16) >= (v104 >> 2))
      {
        v105 = v98.u32[1];
        v106 = v102 - v98.i32[1] + 1;
        if (*(a1 + 24) >= (v106 >> 2))
        {
          *(a1 + 32) = v104 >> 2;
          *(a1 + 40) = v106 >> 2;
          __asm { FMOV            V1.2S, #4.0 }

          *(a1 + 76) = _D1;
          *v108.f32 = vcvt_f32_u32(v98);
          v108.i64[1] = v108.i64[0];
          __asm { FMOV            V1.4S, #1.5 }

          *(a1 + 84) = vaddq_f32(v108, _Q1);
          *(a1 + 100) = 0;
          tplTrackerResampler_lumaDownscale4(BaseAddressOfPlane, BytesPerRowOfPlane, v103, v105, v104, v106, *(a1 + 48));
          tplTrackerResampler_chromaDownscale2(v11, v14, v103 >> 1, v105 >> 1, (v104 + (v104 >> 31)) >> 1, (v106 + (v106 >> 31)) >> 1, *(a1 + 56), *(a1 + 64));
          goto LABEL_67;
        }
      }

      goto LABEL_94;
    }

    if (v21 <= 9.6)
    {
      v136.i64[0] = WidthOfPlane;
      v136.i64[1] = HeightOfPlane;
      v137.i64[0] = -1;
      v137.i64[1] = -1;
      v138 = vaddq_s64(v136, v137);
      v139 = *&v23 & 0xFFFFFFF8FFFFFFF8;
      *v136.i8 = vadd_s32(v139, 0x700000007);
      v140.i64[0] = v136.u32[0];
      v140.i64[1] = v136.u32[1];
      v141 = vand_s8(vmovn_s64(vbslq_s8(vcgtq_u64(v140, v138), v138, v140)), vcgt_s32(v139, 0x800000008));
      v142 = v138.i32[2];
      v143 = (v26 & 0xFFFFFFF8) + 16;
      if (v138.i64[0] < v143)
      {
        LODWORD(v143) = v138.i32[0];
      }

      if ((v26 & 0xFFFFFFF8) <= -16)
      {
        LODWORD(v143) = 0;
      }

      v144 = v27 & 0xFFFFFFF8;
      if (v138.i64[1] >= ((v27 & 0xFFFFFFF8) + 16))
      {
        v142 = v144 + 16;
      }

      if (v144 <= -16)
      {
        v145 = 0;
      }

      else
      {
        v145 = v142;
      }

      v146 = v141.u32[0];
      v147 = v143 - v141.i32[0] + 1;
      if (*(a1 + 16) < (v147 >> 3))
      {
        goto LABEL_94;
      }

      v148 = v141.u32[1];
      v149 = v145 - v141.i32[1] + 1;
      if (*(a1 + 24) < (v149 >> 3))
      {
        goto LABEL_94;
      }

      *(a1 + 32) = v147 >> 3;
      *(a1 + 40) = v149 >> 3;
      *(a1 + 76) = 0x4100000041000000;
      *v151.f32 = vcvt_f32_u32(v141);
      v151.i64[1] = v151.i64[0];
      __asm { FMOV            V1.4S, #3.5 }

      *(a1 + 84) = vaddq_f32(v151, _Q1);
      *(a1 + 100) = 0;
      v6 = tplTrackerResampler_lumaDownscale8N(v154, v146, v148, v147, v149, 1, *(a1 + 48));
      if (v6 == 128)
      {
        tplTrackerResampler_chromaDownscale4(v11, v14, v146 >> 1, v148 >> 1, (v147 + (v147 >> 31)) >> 1, (v149 + (v149 >> 31)) >> 1, *(a1 + 56), *(a1 + 64));
      }
    }

    else
    {
      v110 = vcvtps_s32_f32(log2f(v21 / 1.2));
      v111 = 1 << v110;
      v112 = -(1 << v110);
      v113.i64[0] = WidthOfPlane;
      v113.i64[1] = HeightOfPlane;
      v114.i64[0] = -1;
      v114.i64[1] = -1;
      v115 = vaddq_s64(v113, v114);
      v116 = (2 << v110) + v27;
      v117 = v115.i32[2];
      v118 = v116 & v112;
      if (v115.i64[1] >= v118)
      {
        v117 = v116 & v112;
      }

      _ZF = (v116 & v112) == 0;
      _NF = (v116 & v112 & 0x80000000) != 0;
      v119 = (2 << v110) + v26;
      if (_NF ^ __OFSUB__(v115.i64[1], v118) | _ZF)
      {
        v120 = 0;
      }

      else
      {
        v120 = v117;
      }

      v121 = v119 & v112;
      v122 = vand_s8(vsub_s32(v23, vdup_n_s32(v111)), vdup_n_s32(v112));
      v123.i64[0] = v122.u32[0];
      v123.i64[1] = v122.u32[1];
      v124 = vbslq_s8(vcgtq_u64(v123, v115), v115, v123);
      _VF = __OFSUB__(v115.i64[0], v121);
      if (v115.i64[0] < v121)
      {
        LODWORD(v121) = v115.i32[0];
      }

      v126 = vand_s8(vmovn_s64(v124), vcgtz_s32(v122));
      if (((v119 & v112 & 0x80000000) != 0) ^ _VF | ((v119 & v112) == 0))
      {
        v127 = 0;
      }

      else
      {
        v127 = v121;
      }

      v128 = v126.u32[0];
      v129 = v127 - v126.i32[0] + 1;
      v130 = v129 >> v110;
      if (*(a1 + 16) < (v129 >> v110))
      {
        goto LABEL_94;
      }

      v131 = v126.u32[1];
      v132 = v120 - v126.i32[1] + 1;
      v133 = v132 >> v110;
      if (*(a1 + 24) < v133)
      {
        goto LABEL_94;
      }

      *(a1 + 32) = v130;
      *(a1 + 40) = v133;
      *(a1 + 76) = v111;
      *(a1 + 80) = v111;
      *v134.f32 = vcvt_f32_u32(v126);
      v134.i64[1] = v134.i64[0];
      v135.i64[0] = 0x3F0000003F000000;
      v135.i64[1] = 0x3F0000003F000000;
      *(a1 + 84) = vmlaq_n_f32(v134, v135, v111 + -1.0);
      *(a1 + 100) = 0;
      v6 = tplTrackerResampler_lumaDownscale8N(v154, v128, v131, v129, v132, v111 >> 3, *(a1 + 48));
      if (v6 == 128)
      {
        v6 = tplTrackerResampler_chromaDownscale8N(v153, v128 >> 1, v131 >> 1, (v129 + (v129 >> 31)) >> 1, (v132 + (v132 >> 31)) >> 1, v111 >> 4, *(a1 + 56), *(a1 + 64));
      }
    }
  }

  else
  {
    v60 = *&v23 & 0xFFFFFFFEFFFFFFFELL;
    v61.i64[0] = WidthOfPlane;
    v61.i64[1] = HeightOfPlane;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v63 = vaddq_s64(v61, v62);
    v64 = vadd_s32(v60, 0x100000001);
    v65.i64[0] = v64.u32[0];
    v65.i64[1] = v64.u32[1];
    v66 = vand_s8(vmovn_s64(vbslq_s8(vcgtq_u64(v65, v63), v63, v65)), vcgt_s32(v60, 0x200000002));
    v67 = (v26 & 0xFFFFFFFE) + 4;
    v68 = v63.i32[2];
    if (v63.i64[0] < v67)
    {
      LODWORD(v67) = v63.i32[0];
    }

    if ((v26 & 0xFFFFFFFE) <= -4)
    {
      v69 = 0;
    }

    else
    {
      v69 = v67;
    }

    v70 = v27 & 0xFFFFFFFE;
    if (v63.i64[1] >= ((v27 & 0xFFFFFFFE) + 4))
    {
      v68 = v70 + 4;
    }

    if (v70 <= -4)
    {
      v71 = 0;
    }

    else
    {
      v71 = v68;
    }

    v72 = v66.u32[0];
    v73 = v69 - v66.i32[0];
    v74 = v69 - v66.i32[0] + 1;
    if (*(a1 + 16) < (v74 / 2))
    {
      goto LABEL_94;
    }

    v75 = v66.u32[1];
    v76 = v71 - v66.i32[1];
    v77 = v76 + 1;
    if (*(a1 + 24) < ((v76 + 1) / 2))
    {
      goto LABEL_94;
    }

    v78 = (v74 + (v74 >> 31)) >> 1;
    v79 = (v77 + (v77 >> 31)) >> 1;
    *(a1 + 32) = v78;
    *(a1 + 40) = v79;
    *(a1 + 76) = 0x4000000040000000;
    *v80.f32 = vcvt_f32_u32(v66);
    v80.i64[1] = v80.i64[0];
    v81.i64[0] = 0x3F0000003F000000;
    v81.i64[1] = 0x3F0000003F000000;
    *(a1 + 84) = vaddq_f32(v80, v81);
    *(a1 + 100) = 0;
    v82 = BaseAddressOfPlane;
    v83 = BytesPerRowOfPlane;
    v84 = v75;
    v85 = v76;
    tplTrackerResampler_lumaDownscale2(v82, v83, v72, v75, v74, v77, *(a1 + 48));
    if ((v85 + 2) < 3)
    {
      goto LABEL_67;
    }

    v86 = 0;
    v88 = *(a1 + 56);
    v87 = *(a1 + 64);
    v89 = v11 + (v72 & 0xFFFFFFFE) + v14 * (v84 >> 1) + 1;
    v6 = 6784;
    do
    {
      if ((v73 + 2) >= 3)
      {
        v90 = 0;
        v91 = v89;
        do
        {
          *(v88 + v90) = *(v91 - 1);
          v92 = *v91;
          v91 += 2;
          *(v87 + v90++) = v92;
        }

        while (v78 != v90);
      }

      v88 += v78;
      v87 += v78;
      ++v86;
      v89 += v14;
    }

    while (v86 != v79);
  }

LABEL_95:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return v6;
}

void tplTrackerResampler_resample(uint64_t a1, double *a2, unsigned int a3, int a4, uint64_t a5, _BYTE *a6, _BYTE *a7, int *a8, float a9, float a10)
{
  v10 = a4;
  if (a3 < 1)
  {
    v13 = 0;
    v70 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v76 = 0;
    v14 = *(a1 + 76);
    v15 = *(a1 + 80);
    v16 = a10 / v14;
    v17 = a9 / v14;
    v18 = a10 / v15;
    v19 = *(a1 + 100);
    v71 = a8;
    v72 = *(a1 + 32);
    v20 = v72 >> v19;
    v21 = *(a1 + 40) >> v19;
    v22 = (a2[1] - *(a1 + 96)) / v15;
    v77 = a3;
    v23 = a3;
    v24 = a4;
    v25 = a9 / v15;
    v75 = a3;
    do
    {
      v26 = vcvtms_s32_f32(v22);
      v27 = v26 + 1;
      if (v22 >= 0.0 && v21 > v27)
      {
        if (v12 >= v77)
        {
          v32 = v77;
        }

        else
        {
          v32 = v12;
        }

        v77 = v32;
        if (v12 <= v76)
        {
          v33 = v76;
        }

        else
        {
          v33 = v12;
        }

        v76 = v33;
        if (v10 >= 1)
        {
          v34 = 0;
          v35 = (((v27 - v22) * 255.0) + 0.5);
          v36 = 255 - v35;
          v37 = v20 * v26;
          v38 = *(a1 + 56) + v37;
          v39 = *(a1 + 64) + v37;
          v40 = (*a2 - *(a1 + 92)) / *(a1 + 80);
          do
          {
            v41 = vcvtms_s32_f32(v40);
            if ((v41 & 0x80000000) != 0 || (v42 = v41 + 1, v20 <= v41 + 1))
            {
              a6[v34] = 0x80;
              a7[v34] = 0x80;
            }

            else
            {
              v43 = ((v42 - v40) * 255.0) + 0.5;
              v44 = 255 - v43;
              v45 = (v44 * *(v38 + v42) + *(v38 + v41) * v43 + 191) >> 8;
              v46 = (v44 * *(v38 + v20 + v42) + *(v38 + v20 + v41) * v43 + 191) >> 8;
              v47 = (v44 * *(v39 + v42) + *(v39 + v41) * v43 + 191) >> 8;
              v48 = (v44 * *(v39 + v20 + v42) + *(v39 + v20 + v41) * v43 + 191) >> 8;
              v49 = v46 * v36 + v45 * v35 + 191;
              v50 = HIWORD(v49);
              v51 = v49 >> 8;
              if (v50)
              {
                LOBYTE(v51) = -1;
              }

              a6[v34] = v51;
              v52 = v48 * v36 + v47 * v35 + 191;
              v53 = HIWORD(v52);
              v54 = v52 >> 8;
              if (v53)
              {
                LOBYTE(v54) = -1;
              }

              a7[v34] = v54;
              if (v34 < v24)
              {
                v24 = v34;
              }

              if (v34 > v13)
              {
                v13 = v34;
              }
            }

            v40 = v18 + v40;
            ++v34;
          }

          while (v10 != v34);
          v23 = a3;
        }
      }

      else if (v10 >= 1)
      {
        v29 = a6;
        v30 = a7;
        v31 = v10;
        do
        {
          *v29++ = 0x80;
          *v30++ = 0x80;
          --v31;
        }

        while (v31);
      }

      v22 = v25 + v22;
      ++v12;
      a7 += v10;
      a6 += v10;
    }

    while (v12 != v23);
    v55 = 0;
    v56 = (a2[1] - *(a1 + 88)) / *(a1 + 76);
    v57 = a5;
    do
    {
      if (v55 < v77 || v55 > v76 || v56 < 0.0 || (v58 = vcvtms_s32_f32(v56), *(a1 + 40) <= (v58 + 1)))
      {
        if (v10 >= 1)
        {
          bzero((a5 + v55 * v10), v10);
          v23 = v75;
        }
      }

      else if (v10 >= 1)
      {
        v59 = 0;
        v60 = ((((v58 + 1) - v56) * 255.0) + 0.5);
        v61 = *(a1 + 48) + v72 * v58;
        v62 = (*a2 - *(a1 + 84)) / *(a1 + 76);
        do
        {
          if (v59 < v24)
          {
            goto LABEL_46;
          }

          v63 = 0;
          if (v59 > v13)
          {
            goto LABEL_47;
          }

          v64 = vcvtms_s32_f32(v62);
          if ((v64 & 0x80000000) != 0)
          {
            goto LABEL_47;
          }

          v65 = v64 + 1;
          if (*(a1 + 32) <= (v64 + 1))
          {
LABEL_46:
            v63 = 0;
          }

          else
          {
            v66 = (((v65 - v62) * 255.0) + 0.5);
            v67 = (((255 - v66) * *(v61 + v72 + v65) + *(v61 + v72 + v64) * v66 + 191) >> 8) * (255 - v60) + (((255 - v66) * *(v61 + v65) + *(v61 + v64) * v66 + 191) >> 8) * v60 + 191;
            v68 = HIWORD(v67);
            v69 = v67 >> 8;
            if (v68)
            {
              v63 = -1;
            }

            else
            {
              v63 = v69;
            }
          }

LABEL_47:
          *(v57 + v59) = v63;
          v62 = v16 + v62;
          ++v59;
        }

        while (v10 != v59);
      }

      v56 = v17 + v56;
      ++v55;
      v57 += v10;
    }

    while (v55 != v23);
    v10 = v24;
    a8 = v71;
    v70 = v76;
    a3 = v77;
  }

  *a8 = v10;
  a8[1] = a3;
  a8[2] = v13;
  a8[3] = v70;
}

double VNAffineTransformForVisionToTopLeftOriginOrientation@<D0>(int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0x3FF0000000000000;
    *&v5 = 0xBFF0000000000000;
    *(a3 + 24) = xmmword_1A6038B90;
    *(a3 + 40) = 0x3FF0000000000000;
  }

  else
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v7;
    v5 = *(v6 + 32);
    *(a3 + 32) = v5;
  }

  if (a2 - 2 <= 6)
  {
    v8 = *(a3 + 16);
    *&t1.a = *a3;
    *&t1.c = v8;
    *&t1.tx = *(a3 + 32);
    CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
    CGAffineTransformConcat(a3, &t1, &t2);
    v9 = &kVisionToOrientationRotationMirrorState + 2 * a2;
    v10 = *v9;
    if (*v9)
    {
      v11 = *(a3 + 16);
      *&t2.a = *a3;
      *&t2.c = v11;
      *&t2.tx = *(a3 + 32);
      CGAffineTransformMakeRotation(&v18, v10 * 90.0 * 0.0174532925);
      CGAffineTransformConcat(&t1, &t2, &v18);
      v12 = *&t1.c;
      *a3 = *&t1.a;
      *(a3 + 16) = v12;
      *(a3 + 32) = *&t1.tx;
    }

    if (v9[1] == 1)
    {
      v13 = *(a3 + 16);
      *&t2.a = *a3;
      *&t2.c = v13;
      *&t2.tx = *(a3 + 32);
      CGAffineTransformMakeScale(&v18, -1.0, 1.0);
      CGAffineTransformConcat(&t1, &t2, &v18);
      v14 = *&t1.c;
      *a3 = *&t1.a;
      *(a3 + 16) = v14;
      *(a3 + 32) = *&t1.tx;
    }

    v15 = *(a3 + 16);
    *&t2.a = *a3;
    *&t2.c = v15;
    *&t2.tx = *(a3 + 32);
    CGAffineTransformMakeTranslation(&v18, 0.5, 0.5);
    CGAffineTransformConcat(&t1, &t2, &v18);
    v16 = *&t1.c;
    *a3 = *&t1.a;
    *(a3 + 16) = v16;
    *&v5 = t1.tx;
    *(a3 + 32) = *&t1.tx;
  }

  return *&v5;
}

void sub_1A5FB20DC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1A5FB2558(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_1A5FB3394(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v4);
  operator delete(v6);

  _Unwind_Resume(a1);
}

void sub_1A5FB36B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FB4368(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  VNNSDataStreambuf::~VNNSDataStreambuf((v3 - 136));

  _Unwind_Resume(a1);
}

void sub_1A5FB474C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, vision::mod::FaceID3Model *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  std::unique_ptr<vision::mod::FaceID3Model>::reset[abi:ne200100](&a12);
  std::istream::~istream();
  VNNSDataStreambuf::~VNNSDataStreambuf(&a35);

  _Unwind_Resume(a1);
}

void ___ZL54_serialNumberToPersonUniqueIdentifierDictionaryClassesv_block_invoke_35524()
{
  v0 = objc_autoreleasePoolPush();
  v1 = VNEntityUniqueIdentifierClasses();
  v2 = [v1 mutableCopy];

  [v2 addObject:objc_opt_class()];
  v3 = [v2 copy];
  v4 = _serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes;
  _serialNumberToPersonUniqueIdentifierDictionaryClasses(void)::classes = v3;

  objc_autoreleasePoolPop(v0);
}

void sub_1A5FB4F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose((v40 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35530(uint64_t result, uint64_t a2)
{
  *(result + 48) = &unk_1F1975C88;
  *(result + 56) = *(a2 + 56);
  return result;
}

void sub_1A5FB5344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void **a15, void *a16, uint64_t a17, char a18)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(a16);

  a15 = &a18;
  std::vector<std::map<int,double>>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

void sub_1A5FB5EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, std::__shared_weak_count *a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  _Block_object_dispose((v43 - 224), 8);

  _Block_object_dispose((v43 - 168), 8);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v45 = *(v43 - 248);
  if (v45)
  {
    *(v43 - 240) = v45;
    operator delete(v45);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__90(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__91(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1A5FB64A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FB726C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void vision::mod::PetprintGenerator::~PetprintGenerator(vision::mod::PetprintGenerator *this)
{
  vision::mod::PetprintGenerator::~PetprintGenerator(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1975D38;
  if (*(this + 60) == 1)
  {
    espresso_plan_destroy();
    *(this + 9) = 0;
    espresso_context_destroy();
    *(this + 8) = 0;
  }

  std::unique_ptr<vision::mod::ImageProcessing_Preprocessor>::reset[abi:ne200100](this + 57, 0);
  v2 = *(this + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3)
{
  v4 = result;
  v5 = result[2];
  v6 = *result;
  if ((v5 - *result) < 9)
  {
    if (v6)
    {
      result[1] = v6;
      operator delete(v6);
      v5 = 0;
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }

    v7 = v5 >> 1;
    if ((v5 >> 1) <= 3)
    {
      v7 = 3;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<float>::__vallocate[abi:ne200100](v4, v8);
  }

  v9 = result[1];
  v10 = v9 - v6;
  if ((v9 - v6) > 8)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v6[v15];
  }

  else
  {
    v11 = &__src[v10];
    if (v9 != v6)
    {
      result = memmove(*result, __src, v10);
      v9 = v4[1];
    }

    v12 = v9;
    if (v11 != a3)
    {
      v12 = v9;
      do
      {
        v13 = *v11;
        v11 += 4;
        *v12 = v13;
        v12 += 4;
      }

      while (v11 != a3);
    }

    v14 = v12;
  }

  v4[1] = v14;
  return result;
}

void vision::mod::PetprintGeneratorConcrete::~PetprintGeneratorConcrete(vision::mod::PetprintGeneratorConcrete *this)
{
  vision::mod::PetprintGenerator::~PetprintGenerator(this);

  JUMPOUT(0x1AC556B00);
}

void std::__shared_ptr_emplace<vision::mod::PetprintGeneratorConcrete>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1975DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void vision::mod::PetprintGenerator::getPetPrint(uint64_t a1, float **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    a2[1] = v4;
    v5 = v4;
  }

  if (*(a1 + 44) >= 1)
  {
    v6 = 0;
    v7 = 0.0;
    do
    {
      v8 = *(*(a1 + 96) + 4 * v6);
      v9 = a2[2];
      if (v5 >= v9)
      {
        v10 = *a2;
        v11 = v5 - *a2;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v15);
        }

        *(4 * v12) = v8;
        v5 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5++ = v8;
      }

      a2[1] = v5;
      v7 = v7 + v8;
      ++v6;
      v17 = *(a1 + 44);
    }

    while (v6 < v17);
    if (v17 >= 1 && (*(a1 + 8) & 1) != 0)
    {
      v18 = *(a1 + 9);
      v19 = *a2;
      v20 = 0.0;
      v21 = *(a1 + 44);
      do
      {
        v22 = *v19;
        if (v18)
        {
          v22 = v22 - (v7 / v17);
          *v19 = v22;
        }

        v20 = v20 + (v22 * v22);
        ++v19;
        --v21;
      }

      while (v21);
      v23 = *a2;
      v24 = sqrtf(v20);
      do
      {
        *v23 = *v23 / v24;
        ++v23;
        --v17;
      }

      while (v17);
    }
  }
}

void sub_1A5FB83E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p)
{
  if (v44)
  {
    operator delete(v44);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1A5FB8AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = VNFaceBBoxAligner;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A5FB8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  std::__hash_table<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ModelValues::ValueInfo>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,cvml::util::binserialized_table_of_contents::blob_info>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<vision::mod::FaceBoxPoseAligner<signed char>>::__on_zero_shared(uint64_t a1)
{
  std::__tree<std::__value_type<long long,std::vector<long long>>,std::__map_value_compare<long long,std::__value_type<long long,std::vector<long long>>,std::less<long long>,true>,std::allocator<std::__value_type<long long,std::vector<long long>>>>::destroy(*(a1 + 144));
  v4 = (a1 + 112);
  std::vector<vision::mod::ERTTree>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 72) = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<vision::mod::FaceBoxPoseAligner<signed char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19760E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5FB94EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void *std::vector<vision::mod::DetectedObject>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<vision::mod::DetectedObject>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1A5FBA060(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _Block_object_dispose(va, 8);
  *(v15 - 144) = a4;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100]((v15 - 144));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__35972(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1A5FBA4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v25 - 88) = v23;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100]((v25 - 88));
  *(v25 - 88) = &a19;
  std::vector<vision::mod::DetectedObject>::__destroy_vector::operator()[abi:ne200100]((v25 - 88));

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c69_ZTSNSt3__16vectorIN6vision3mod14DetectedObjectENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<vision::mod::DetectedObject>::__init_with_size[abi:ne200100]<vision::mod::DetectedObject*,vision::mod::DetectedObject*>(v2, *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 4));
}

id VNCreateMetalDevice()
{
  v0 = MTLCreateSystemDefaultDevice();

  return v0;
}

void sub_1A5FBB3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1A5FBDD88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x1A5FBDD28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,void (*)(void *),std::allocator<unsigned char>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), 0x80000001A6052032))
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<unsigned char *,void (*)(void *),std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC556B00);
}

void sub_1A5FBF9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40)
{
  objc_destroyWeak(&STACK[0x2A8]);
  _Block_object_dispose(&STACK[0x2B0], 8);

  _Block_object_dispose(&STACK[0x2E8], 8);
  STACK[0x2B0] = a15;
  std::vector<GazeFollowOutputsPerFace>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2B0]);
  _Block_object_dispose(&STACK[0x330], 8);
  v43 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__36490(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__36491(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<CamGaze_output_label>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5FBFCE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__55(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void std::vector<GazeFollowOutputsPerFace>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void sub_1A5FBFEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<GazeFollowOutputsPerFace>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5FC048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24)
{
  objc_end_catch();

  JUMPOUT(0x1A5FC0500);
}

void std::vector<GazeFollowOutputsPerFace>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = (v4 - 48);
        std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v7 = (v4 - 112);
        std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 -= 136;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1A5FC0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (v16)
  {
    JUMPOUT(0x1A5FC0EE0);
  }

  JUMPOUT(0x1A5FC0F08);
}

void sub_1A5FC1E60(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 16);
  objc_exception_rethrow();
}

void sub_1A5FC1F98(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 16);
  objc_exception_rethrow();
}

void sub_1A5FC2F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36818(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A5FC31CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5FC3B60(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5FC4460(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5FC4610(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A5FC5498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::ObjectTrackerRPN::free(vision::mod::ObjectTrackerRPN *this)
{
  NtDestroyTracker(*(this + 4));
  *(this + 4) = 0;
  return 6784;
}

void vision::mod::ObjectTrackerRPN::init(const void **this)
{
  (*(*this + 7))(this);
  {
    operator new();
  }

  __cxa_bad_cast();
}

uint64_t vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(int a1)
{
  if (vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(NtReturn)::onceToken != -1)
  {
    dispatch_once(&vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(NtReturn)::onceToken, &__block_literal_global_37340);
  }

  v2 = *(vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(NtReturn)::mapRPNErrorCodesToCVMLStatus + 8);
  if (!v2)
  {
    return 6782;
  }

  v3 = vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(NtReturn)::mapRPNErrorCodesToCVMLStatus + 8;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 != vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(NtReturn)::mapRPNErrorCodesToCVMLStatus + 8 && *(v3 + 32) <= a1)
  {
    return *(v3 + 40);
  }

  else
  {
    return 6782;
  }
}

void sub_1A5FC7D18(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<long long,int>,std::__map_value_compare<long long,std::__value_type<long long,int>,std::less<long long>,true>,std::allocator<std::__value_type<long long,int>>>::destroy(*(v2 + 8));
  MEMORY[0x1AC556B00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::ObjectTrackerRPN::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 16))(a1);
  if (result == 128)
  {
    result = (*(*a1 + 24))(a1, a2, a3);
    if (result == 128)
    {
      return 6784;
    }
  }

  return result;
}

uint64_t vision::mod::ObjectTrackerRPN::track(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return 6751;
  }

  if (!v6)
  {
    __cxa_bad_cast();
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x5002000000;
  v23 = __Block_byref_object_copy__37344;
  v24 = __Block_byref_object_dispose__37345;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v7 = *(v6 + 12);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN6vision3mod16ObjectTrackerRPN5trackEP10__CVBufferRNSt3__16vectorINS0_14DetectedObjectENS4_9allocatorIS6_EEEE_block_invoke;
  block[3] = &unk_1E77B67D8;
  block[6] = a1;
  block[7] = a2;
  block[4] = &v28;
  block[5] = &v20;
  dispatch_sync(v7, block);
  v8 = vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(*(v29 + 6));
  if (v8 == 128)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "unknown");
    v34 = vneg_f32(0x3F0000003FLL);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v9 = v21;
    Height = CVPixelBufferGetHeight(a2);
    std::string::basic_string[abi:ne200100]<0>(&v41, "unknown");
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v47 = 0;
    v48 = 0;
    v11 = v9[5];
    v12 = v9[6];
    v13 = v9[8];
    v14 = v9[7];
    v45 = v13;
    v46 = v14;
    v15 = Height - (v12 + v13);
    v43 = v11;
    v44 = v15;
    if (v42 < 0)
    {
      operator delete(v41);
    }

    v34 = __PAIR64__(LODWORD(v15), LODWORD(v11));
    v35 = __PAIR64__(LODWORD(v14), LODWORD(v13));
    v40 = *(v21 + 19);
    v16 = a3[1];
    if (v16 >= a3[2])
    {
      v17 = std::vector<vision::mod::DetectedObject>::__emplace_back_slow_path<vision::mod::DetectedObject const&>(a3, __p);
    }

    else
    {
      vision::mod::DetectedObject::DetectedObject(a3[1], __p);
      v17 = v16 + 80;
      a3[1] = v16 + 80;
    }

    a3[1] = v17;
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 6784;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v28, 8);
  return v8;
}

void sub_1A5FC8094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__37344(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN6vision3mod16ObjectTrackerRPN5trackEP10__CVBufferRNSt3__16vectorINS0_14DetectedObjectENS4_9allocatorIS6_EEEE_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 32);
  if (v2 && *v2 == -1430532899)
  {
    v3 = *(result + 56);
    v4 = *(*(result + 40) + 8);
    *(v4 + 72) = 3;
    NtLockCvPixelBuffers(v2);
    CVPixelBufferLockBaseAddress(v3, 1uLL);
    if (TtTrkRpnInstancePreProcess(*(v2 + 138), (v2 + 278), (v2 + 879), (v2 + 1125), (v2 + 801), (v2 + 819), (v2 + 840)) || (v5 = CVPixelBufferGetBaseAddress(v3), v6 = CVPixelBufferGetHeight(v3), v7 = 4 * CVPixelBufferGetWidth(v3), v8 = CVPixelBufferGetBytesPerRow(v3), v9 = *(v2 + 138), v16 = v5, v17 = __PAIR64__(v7, v6), v18 = v8 | 0x100000000, TtTrkRpnPreProcessCropResizeRef(v9, (v2 + 278), &v16, (v2 + 819), (v2 + 876), v2 + 1125, (v2 + 801))))
    {
      CVPixelBufferUnlockBaseAddress(v3, 1uLL);
      CVPixelBufferUnlockBaseAddress(*(v2 + 509), 0);
      result = CVPixelBufferUnlockBaseAddress(*(v2 + 507), 0);
      v10 = -8;
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(*(v2 + 507));
      Width = CVPixelBufferGetWidth(*(v2 + 507));
      Height = CVPixelBufferGetHeight(*(v2 + 507));
      BytesPerRow = CVPixelBufferGetBytesPerRow(*(v2 + 507));
      memcpy(*(v2 + 51), v2 + 4090, 0x28000uLL);
      memcpy(*(v2 + 72), v2 + 167930, 0x14000uLL);
      v16 = BaseAddress;
      v17 = Height;
      v18 = Width;
      v19 = BytesPerRow;
      result = espresso_network_bind_input_vimagebuffer_bgra8();
      if (result || (!*(v2 + 4089) ? (result = espresso_plan_execute_sync(), v2[270] = result) : (dispatch_sync_f(*(v2 + 137), v2, EspressoInstancePlanExecuteSynced), result = v2[270]), result))
      {
        v10 = -9;
      }

      else
      {
        TtTrkRpnInstancePostProcess(*(v2 + 138), v2 + 278, (v2 + 801), (v2 + 819), (v2 + 1125), v2 + 3516);
        if (*(v2 + 4088))
        {
          if (v2[924])
          {
            *(v4 + 40) = vcvtq_f64_f32(*(v2 + 927));
            *(v4 + 56) = vcvtq_f64_f32(*(v2 + 929));
            *(v4 + 76) = v2[931] / 1000.0;
            v15 = v2[946] != 1;
          }

          else
          {
            v15 = 2;
          }

          *(v4 + 72) = v15;
          *(v2 + 3516) = 0;
        }

        CVPixelBufferUnlockBaseAddress(v3, 1uLL);
        result = NtUnlockCvPixelBuffers(v2);
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = -4;
  }

  *(*(*(v1 + 32) + 8) + 24) = v10;
  return result;
}

uint64_t vision::mod::ObjectTrackerRPN::setTargetObjects(uint64_t a1, __CVBuffer *a2, float32x2_t **a3)
{
  if (!*(a1 + 32))
  {
    return 6751;
  }

  v3 = *a3;
  if (a3[1] - *a3 != 80)
  {
    return 6780;
  }

  if (!v6)
  {
    __cxa_bad_cast();
  }

  v7 = v6;
  CVPixelBufferGetHeight(a2);
  v20 = 0x2000000000;
  block[1] = 0x40000000;
  v8 = v3[4];
  v9 = vcvtq_f64_f32(v3[3]);
  v18 = 0;
  v19 = &v18;
  v21 = 0;
  v10 = *(v7 + 11);
  block[0] = MEMORY[0x1E69E9820];
  block[2] = ___ZN6vision3mod16ObjectTrackerRPN16setTargetObjectsEP10__CVBufferRKNSt3__16vectorINS0_14DetectedObjectENS4_9allocatorIS6_EEEE_block_invoke;
  block[3] = &unk_1E77B67B0;
  block[5] = a1;
  block[6] = a2;
  v11 = vcvtq_f64_f32(v8);
  block[4] = &v18;
  v16 = v9;
  v17 = vextq_s8(v11, v11, 8uLL);
  dispatch_sync(v10, block);
  v12 = vision::mod::ObjectTrackerRPN::mapRPNErrorCodesToCVMLStatus(*(v19 + 6));
  if (v12 == 128)
  {
    v13 = 6784;
  }

  else
  {
    v13 = v12;
  }

  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t ___ZN6vision3mod16ObjectTrackerRPN16setTargetObjectsEP10__CVBufferRKNSt3__16vectorINS0_14DetectedObjectENS4_9allocatorIS6_EEEE_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 40) + 32);
  if (!v2 || *v2 != -1430532899)
  {
    v4 = -4;
    goto LABEL_8;
  }

  v3 = *(result + 48);
  v17 = *(result + 56);
  v18 = *(result + 72);
  NtLockCvPixelBuffers(v2);
  result = CVPixelBufferLockBaseAddress(v3, 1uLL);
  if (result)
  {
    goto LABEL_6;
  }

  *(v2 + 3708) = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v18);
  *(v2 + 3696) = 1;
  *(v2 + 1116) = CVPixelBufferGetHeight(v3);
  *(v2 + 1112) = CVPixelBufferGetWidth(v3);
  if (TtTrkRpnExemplarPreProcess(*(v2 + 1104), v2 + 1112, v2 + 3516, (v2 + 1125), (v2 + 3204), v2 + 3276, v2 + 3360) || (BaseAddress = CVPixelBufferGetBaseAddress(v3), Height = CVPixelBufferGetHeight(v3), v7 = 4 * CVPixelBufferGetWidth(v3), BytesPerRow = CVPixelBufferGetBytesPerRow(v3), v9 = *(v2 + 1104), v19 = BaseAddress, v20 = Height, v21 = v7, v22 = BytesPerRow, v23 = 1, v10 = TtTrkRpnPreProcessCropResizeRef(v9, v2 + 1112, &v19, v2 + 3276, v2 + 3504, v2 + 1125, (v2 + 3204)), !BaseAddress) || v10)
  {
    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    CVPixelBufferUnlockBaseAddress(*(v2 + 4072), 0);
    result = CVPixelBufferUnlockBaseAddress(*(v2 + 4056), 0);
LABEL_6:
    v4 = -8;
    goto LABEL_8;
  }

  v11 = CVPixelBufferGetBaseAddress(*(v2 + 4072));
  if (!v11)
  {
    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    result = NtUnlockCvPixelBuffers(v2);
    goto LABEL_6;
  }

  v12 = v11;
  Width = CVPixelBufferGetWidth(*(v2 + 4072));
  v14 = CVPixelBufferGetHeight(*(v2 + 4072));
  v15 = CVPixelBufferGetBytesPerRow(*(v2 + 4072));
  v16 = EspressoNetExemplarRun(v2, v12, v14, Width, v15);
  if (v16)
  {
    v4 = v16;
    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    result = NtUnlockCvPixelBuffers(v2);
  }

  else
  {
    if (!TtTrkRpnExemplarPostProcess(*(v2 + 1104), v2 + 1112, (v2 + 3204), v2 + 3276, (v2 + 1125), (v2 + 3516)))
    {
      *(v2 + 4088) = 1;
    }

    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    result = NtUnlockCvPixelBuffers(v2);
    v4 = 0;
  }

LABEL_8:
  *(*(*(v1 + 32) + 8) + 24) = v4;
  return result;
}

void vision::mod::ObjectTrackerRPN::~ObjectTrackerRPN(vision::mod::ObjectTrackerRPN *this)
{
  vision::mod::ObjectTrackerRPN::~ObjectTrackerRPN(this);

  JUMPOUT(0x1AC556B00);
}

{
  *this = &unk_1F1976310;
  NtDestroyTracker(*(this + 4));
  *(this + 4) = 0;
  *this = &unk_1F19763B0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

float ImageProcessing_rect2DMakefromImage(void *a1)
{
  if (a1 && *a1 && a1[2] && a1[1] && a1[3] >= 2uLL)
  {
    return 0.0;
  }

  else
  {
    return NAN;
  }
}

void sub_1A5FC939C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5FC95C4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5FC9740(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5FC9968(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5FC9AE4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1A5FC9D0C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A5FCB4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = v15;

  _Unwind_Resume(a1);
}

void sub_1A5FCB838(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A5FCBEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(&a57);

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<void *,espresso_buffer_t>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,espresso_buffer_t>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,espresso_buffer_t>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t eraseContourPixels(uint64_t result, uint64_t a2, int a3)
{
  if (!result)
  {
    __assert_rtn("eraseContourPixels", "ConnectedComponents.c", 17, "deque != NULL");
  }

  v3 = *(result + 8);
  v4 = (*(result + 12) - v3 + 1);
  if (v4 >= 1)
  {
    v5 = (*(result + 16) + 4 * v3 + 2);
    do
    {
      *(a2 + *(v5 - 1) + *v5 * a3) = 0;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t allocSegments(int *a1, int a2)
{
  v2 = *(a1 + 1);
  v3 = a1[1];
  v4 = *a1;
  v5 = *a1 + a2;
  *a1 = v5;
  if (v5 > v3)
  {
    __assert_rtn("allocSegments", "Segments.c", 16, "sdb->nSegments <= sdb->maxSegments");
  }

  result = v2 + 48 * v4;
  v7 = result;
  if (a2 >= 2)
  {
    v8 = a2 - 1;
    v9 = result;
    do
    {
      v7 = v9 + 48;
      *v9 = v9 + 48;
      *(v9 + 8) = 1;
      v9 += 48;
      --v8;
    }

    while (v8);
  }

  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

float segmentSinCos(int a1, __int16 *a2, int a3, __int16 *a4, float *a5, float *a6)
{
  v6 = &a2[2 * a1];
  v7 = &a4[2 * a3];
  v8 = *(v6 - 2) - *a2;
  v9 = *(v6 - 1) - a2[1];
  LODWORD(v6) = *(v7 - 2) - *a4;
  v10 = *(v7 - 1) - a4[1];
  v11 = 1.0 / sqrtf((v8 * v8 + v9 * v9) * (v6 * v6 + v10 * v10));
  *a5 = v11 * (v6 * v9 - v10 * v8);
  result = v11 * (v6 * v8 + v10 * v9);
  *a6 = result;
  return result;
}

float segmentSinCosLen2(int a1, __int16 *a2, int a3, __int16 *a4, float *a5, float *a6, unsigned int *a7)
{
  v7 = &a2[2 * a1];
  v8 = &a4[2 * a3];
  v9 = *(v7 - 2) - *a2;
  v10 = *(v7 - 1) - a2[1];
  LODWORD(v7) = *(v8 - 2) - *a4;
  v11 = *(v8 - 1) - a4[1];
  v12 = v7 * v7 + v11 * v11;
  v13 = 1.0 / sqrtf((v9 * v9 + v10 * v10) * v12);
  *a5 = v13 * (v7 * v10 - v11 * v9);
  result = v13 * (v7 * v9 + v11 * v10);
  *a6 = result;
  *a7 = v12;
  return result;
}

void sub_1A5FCD1F0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t vision::mod::ImageDescriptorProcessorHasher::computeHashesInBase64(_DWORD *a1, uint64_t a2, std::vector<std::string> *a3)
{
  (*(*a1 + 64))(&v16);
  std::dynamic_pointer_cast[abi:ne200100]<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferAbstract>(&v18, &v16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v6 = v18;
  if (v18)
  {
    (*(*a1 + 160))(a1, a2, v18);
    v7 = v6[7];
    std::vector<std::string>::resize(a3, a1[4]);
    v8 = a1[3];
    v9 = &CVML_status_internalError;
    if (v8)
    {
      v10 = a1[4];
      if (v8 == v8 / v10 * v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = 4 * (v8 / v10);
        v9 = &CVML_status_ok;
        do
        {
          (*(*a1 + 192))(a1, v7, &a3->__begin_[v11]);
          ++v12;
          ++v11;
          v7 += v13;
        }

        while (v12 < a1[4]);
      }
    }
  }

  else
  {
    v9 = &CVML_status_internalError;
  }

  v14 = *v9;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return (v14 + 128) | 0xE00;
}

void sub_1A5FCD5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::dynamic_pointer_cast[abi:ne200100]<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferAbstract>(void **a1, void **a2)
{
  result = *a2;
  {
    v5 = v4[1];
    *a1 = result;
    a1[1] = v5;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t vision::mod::ImageDescriptorProcessorHasher::computeHashes(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 64))(&v30);
  std::dynamic_pointer_cast[abi:ne200100]<vision::mod::ImageDescriptorBufferFloat32,vision::mod::ImageDescriptorBufferAbstract>(&v28, &v30);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v6 = v28;
  if (!v28)
  {
    goto LABEL_23;
  }

  v7 = (*(*a1 + 160))(a1, a2, v28);
  if (v7 != 128)
  {
    goto LABEL_24;
  }

  v8 = v6[7];
  if (v8)
  {
    v9 = a1[3];
    v10 = &CVML_status_internalError;
    if (v9)
    {
      v11 = a1[4];
      v12 = v9 / v11;
      if (v9 == v9 / v11 * v11)
      {
        v13 = 0;
        v14 = v12;
        v15 = *(a3 + 8);
        v16 = 4 * v12;
        do
        {
          v17 = *(a3 + 16);
          if (v15 >= v17)
          {
            v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
            v19 = v18 + 1;
            if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a3) >> 3);
            if (2 * v20 > v19)
            {
              v19 = 2 * v20;
            }

            if (v20 >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v19;
            }

            v34 = a3;
            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v21);
            }

            v22 = (24 * v18);
            v30 = 0;
            v31 = v22;
            v32 = 24 * v18;
            v33 = 0;
            v22->__vftable = 0;
            v22->__shared_owners_ = 0;
            v22->__shared_weak_owners_ = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v18, v8, v8 + v16, v14);
            v15 = (v32 + 24);
            v23 = *(a3 + 8) - *a3;
            v24 = v31 - v23;
            memcpy(v31 - v23, *a3, v23);
            v25 = *a3;
            *a3 = v24;
            *(a3 + 8) = v15;
            v26 = *(a3 + 16);
            *(a3 + 16) = v33;
            v32 = v25;
            v33 = v26;
            v30 = v25;
            v31 = v25;
            std::__split_buffer<std::vector<long long>>::~__split_buffer(&v30);
          }

          else
          {
            *v15 = 0;
            v15[1] = 0;
            v15[2] = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v15, v8, v8 + v16, v14);
            v15 += 3;
            *(a3 + 8) = v15;
          }

          *(a3 + 8) = v15;
          ++v13;
          v8 += v16;
        }

        while (v13 < a1[4]);
        v10 = &CVML_status_ok;
      }
    }

    v7 = (*v10 + 128) | 0xE00;
  }

  else
  {
LABEL_23:
    v7 = 3710;
  }

LABEL_24:
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  return v7;
}

void sub_1A5FCD8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::ImageDescriptorProcessorHasher::hashFeature(vision::mod::ImageDescriptorProcessorHasher *this, const vision::mod::ImageDescriptorBufferAbstract *lpsrc, vision::mod::ImageDescriptorBufferAbstract *a3)
{
  result = 3708;
  if (v6 && v7)
  {
    if (v6[12] == *(this + 2) && v7[12] == *(this + 3))
    {
      vision::mod::ImageDescriptorBufferAbstract::resizeForDescriptorsCount(a3, 1uLL, 0);
      (*(*this + 184))(this, *(lpsrc + 7), *(a3 + 7));
      return 3712;
    }

    else
    {
      return 3708;
    }
  }

  return result;
}

void vision::mod::ImageDescriptorProcessorHasher::getBase64(std::string *this, uint64_t a2, signed int a3)
{
  *(&this->__r_.__value_.__s + 23) = 0;
  this->__r_.__value_.__s.__data_[0] = 0;
  if (a3 >= 25)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3708;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v5 = a2 << (24 - a3);
  std::string::push_back(this, vision::mod::ImageDescriptorProcessorHasher::b64chrs[(v5 >> 18) & 0x3F]);
  v6 = vcvtd_n_s64_f64(ceil(vcvtd_n_f64_s32(a3, 3uLL)), 3uLL);
  if (v6 < 7)
  {
    v7 = 61;
  }

  else
  {
    v7 = vision::mod::ImageDescriptorProcessorHasher::b64chrs[(v5 >> 12) & 0x3F];
  }

  std::string::push_back(this, v7);
  if (v6 < 13)
  {
    v8 = 61;
  }

  else
  {
    v8 = vision::mod::ImageDescriptorProcessorHasher::b64chrs[(v5 >> 6) & 0x3F];
  }

  std::string::push_back(this, v8);
  if (v6 < 19)
  {
    v9 = 61;
  }

  else
  {
    v9 = vision::mod::ImageDescriptorProcessorHasher::b64chrs[v5 & 0x3F];
  }

  std::string::push_back(this, v9);
}

void sub_1A5FCDC24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void vision::mod::ImageDescriptorProcessorHasher::base64EncodeHash(float *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    *(a4 + 8) = 0;
    v7 = *a4;
  }

  else
  {
    *(a4 + 23) = 0;
    v7 = a4;
  }

  *v7 = 0;
  v8 = vcvtpd_s64_f64(log2((2 * a3)));
  if (v8 >= 25)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = 3708;
    goto LABEL_32;
  }

  if (a2)
  {
    v9 = 0;
    v10 = 24;
    v11 = a2;
    while (1)
    {
      v12 = *a1;
      if (*a1 != v12)
      {
        break;
      }

      if (v10 >= v8)
      {
        v9 = (v9 << v8) | v12;
        v10 -= v8;
      }

      else
      {
        v13 = v8 - v10;
        vision::mod::ImageDescriptorProcessorHasher::getBase64(&__p, (v12 >> (v8 - v10)) | (v9 << v10), 24);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, p_p, size);
        v16 = ldexp(1.0, v13);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v9 = v12 & (v16 + -1.0);
        v10 = 24 - v13;
      }

      ++a1;
      if (!--v11)
      {
        v17 = 24 - v10;
        goto LABEL_22;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v21 = 3700;
LABEL_32:
    *exception = v21;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  v17 = 0;
  v9 = 0;
LABEL_22:
  vision::mod::ImageDescriptorProcessorHasher::getBase64(&__p, v9, v17);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1A5FCDE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL VNNormalizedRectIsIdentityRect(CGRect normalizedRect)
{
  v2.origin.x = 0.0;
  v2.origin.y = 0.0;
  v2.size.width = 1.0;
  v2.size.height = 1.0;
  return CGRectEqualToRect(normalizedRect, v2);
}

CGPoint VNImagePointForNormalizedPointUsingRegionOfInterest(CGPoint normalizedPoint, size_t imageWidth, size_t imageHeight, CGRect roi)
{
  VisionCoreImagePointForNormalizedPoint();
  result.y = v5;
  result.x = v4;
  return result;
}

CGPoint VNNormalizedPointForImagePointUsingRegionOfInterest(CGPoint imagePoint, size_t imageWidth, size_t imageHeight, CGRect roi)
{
  if (imageWidth && imageHeight)
  {
    v4 = (imagePoint.x - roi.origin.x * imageWidth) / (roi.size.width * imageWidth);
    v5 = (imagePoint.y - roi.origin.y * imageHeight) / (roi.size.height * imageHeight);
  }

  else
  {
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v5;
  result.x = v4;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  v3 = normalizedRect.origin.x * imageWidth;
  v4 = normalizedRect.size.width * imageWidth;
  v5 = normalizedRect.origin.y * imageHeight;
  v6 = normalizedRect.size.height * imageHeight;
  result.size.height = v6;
  result.size.width = v4;
  result.origin.y = v5;
  result.origin.x = v3;
  return result;
}

CGRect VNImageRectForNormalizedRectUsingRegionOfInterest(CGRect normalizedRect, size_t imageWidth, size_t imageHeight, CGRect roi)
{
  height = roi.size.height;
  width = roi.size.width;
  v8 = normalizedRect.size.height;
  v9 = normalizedRect.size.width;
  VisionCoreImagePointForNormalizedPoint();
  v12 = v9 * width * imageWidth;
  v13 = v8 * height * imageHeight;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

CGRect VNNormalizedRectForImageRect(CGRect imageRect, size_t imageWidth, size_t imageHeight)
{
  width = imageRect.size.width;
  y = imageRect.origin.y;
  x = imageRect.origin.x;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (imageWidth)
  {
    v7 = x / imageWidth;
    v8 = width / imageWidth;
  }

  v9 = 0.0;
  if (imageHeight)
  {
    v6 = y / imageHeight;
    v9 = imageRect.size.height / imageHeight;
  }

  v10 = v9;
  result.size.height = v10;
  result.size.width = v8;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

CGRect VNNormalizedRectForImageRectUsingRegionOfInterest(CGRect imageRect, size_t imageWidth, size_t imageHeight, CGRect roi)
{
  if (imageWidth && imageHeight)
  {
    height = imageRect.size.height;
    width = imageRect.size.width;
    y = imageRect.origin.y;
    x = imageRect.origin.x;
    v18 = roi.origin.y * imageHeight;
    v19 = roi.origin.x * imageWidth;
    v8 = roi.size.width * imageWidth;
    v9 = roi.size.height * imageHeight;
    v10 = (imageRect.origin.x - v19) / v8;
    v11 = (imageRect.origin.y - v18) / v9;
    MaxX = CGRectGetMaxX(imageRect);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MaxY = CGRectGetMaxY(v20);
    v13 = (MaxX - v19) / v8 - v10;
    v14 = (MaxY - v18) / v9 - v11;
  }

  else
  {
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  v15 = v10;
  v16 = v11;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

CGPoint VNNormalizedFaceBoundingBoxPointForLandmarkPoint(vector_float2 faceLandmarkPoint, CGRect faceBoundingBox, size_t imageWidth, size_t imageHeight)
{
  v4 = faceBoundingBox.size.height * imageHeight * faceLandmarkPoint.f32[1];
  v5 = faceBoundingBox.size.width * imageWidth * faceLandmarkPoint.f32[0];
  result.y = v4;
  result.x = v5;
  return result;
}

CGPoint VNImagePointForFaceLandmarkPoint(vector_float2 faceLandmarkPoint, CGRect faceBoundingBox, size_t imageWidth, size_t imageHeight)
{
  v4 = faceBoundingBox.origin.y * imageHeight;
  v5 = faceBoundingBox.origin.x * imageWidth + faceLandmarkPoint.f32[0] * (faceBoundingBox.size.width * imageWidth);
  v6 = v4 + faceLandmarkPoint.f32[1] * (faceBoundingBox.size.height * imageHeight);
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

double VNNormalizedRectForPixelRectInBounds(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a7 <= 0.0 || a8 <= 0.0)
  {
    return *MEMORY[0x1E695F050];
  }

  else
  {
    return (a1 - a5) / a7;
  }
}

double VNPixelRectForNormalizedRectInBounds(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a7 <= 0.0 || a8 <= 0.0)
  {
    return *MEMORY[0x1E695F050];
  }

  v9.origin.x = a5 + a1 * a7;
  v9.origin.y = a6 + a2 * a8;
  v9.size.width = a3 * a7;
  v9.size.height = a4 * a8;
  *&result = CGRectIntegral(v9);
  return result;
}

double VNLargestCentralSquareOfRect(double result, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    return result + (a3 - a4) * 0.5;
  }

  return result;
}

double VNNormalizedImageRectForNormalizedRegionOfInterestRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = a1;
  result = 0.0;
  if (v14)
  {
    return (a3 * v14 + a9 * (a5 * v14)) / v14;
  }

  return result;
}

uint64_t VNVisionCoreE5RTComputeDeviceTypesForMLComputeDevices(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = 4;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = 2;
          }

          else
          {
            objc_opt_class();
            v7 = objc_opt_isKindOfClass() & 1;
          }
        }

        v2 |= v7;
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return v2;
}

id VNMethodSignatureStringForObjectAndSelector(void *a1, const char *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    isClass = object_isClass(v3);
    Class = object_getClass(v4);
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (isClass)
    {
      v9 = 43;
    }

    else
    {
      v9 = 45;
    }

    v10 = NSStringFromClass(Class);
    v11 = NSStringFromSelector(a2);
    v5 = [v8 initWithFormat:@"%c[%@ %@]", v9, v10, v11];
  }

  return v5;
}

void sub_1A5FCF7D0(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

__CFString *VNElementTypeToString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VNElementType(%lu)", a1];
  }

  else
  {
    v2 = off_1E77B6A28[a1];
  }

  return v2;
}

__CFString *VNImageCropAndScaleOptionToString(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = @"VNImageCropAndScaleOptionScaleFill";
    }

    else
    {
      if (a1 != 257)
      {
LABEL_12:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VNImageCropAndScaleOption(%lu)", a1];

        return v2;
      }

      v2 = @"VNImageCropAndScaleOptionScaleFitRotate90CCW";
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = @"VNImageCropAndScaleOptionScaleFit";

        return v2;
      }

      goto LABEL_12;
    }

    v2 = @"VNImageCropAndScaleOptionCenterCrop";
  }

  return v2;
}

id VNHumanReadableCGRect(double a1, double a2, double a3, double a4)
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%g, %g)", *&a1, *&a2];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%g x %g", *&a3, *&a4];
  v9 = [v6 stringWithFormat:@"[%@ %@]", v7, v8];

  return v9;
}

void ___Z71_featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientationsv_block_invoke()
{
  v27[8] = *MEMORY[0x1E69E9840];
  v24[0] = &unk_1F19C1E40;
  v24[1] = &unk_1F19C1E58;
  v25[0] = &unk_1F19C1E40;
  v25[1] = &unk_1F19C1E58;
  v24[2] = &unk_1F19C1E70;
  v24[3] = &unk_1F19C1E88;
  v25[2] = &unk_1F19C1E70;
  v25[3] = &unk_1F19C1E88;
  v26[0] = &unk_1F19C1E40;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4];
  v27[0] = v9;
  v26[1] = &unk_1F19C1EA0;
  v22[0] = &unk_1F19C1E40;
  v22[1] = &unk_1F19C1E58;
  v23[0] = &unk_1F19C1EA0;
  v23[1] = &unk_1F19C1EB8;
  v22[2] = &unk_1F19C1E70;
  v22[3] = &unk_1F19C1E88;
  v23[2] = &unk_1F19C1ED0;
  v23[3] = &unk_1F19C1EE8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v27[1] = v8;
  v26[2] = &unk_1F19C1E70;
  v20[0] = &unk_1F19C1E40;
  v20[1] = &unk_1F19C1E58;
  v21[0] = &unk_1F19C1E70;
  v21[1] = &unk_1F19C1E88;
  v20[2] = &unk_1F19C1E70;
  v20[3] = &unk_1F19C1E88;
  v21[2] = &unk_1F19C1E40;
  v21[3] = &unk_1F19C1E58;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v27[2] = v7;
  v26[3] = &unk_1F19C1ED0;
  v18[0] = &unk_1F19C1E40;
  v18[1] = &unk_1F19C1E58;
  v19[0] = &unk_1F19C1ED0;
  v19[1] = &unk_1F19C1EE8;
  v18[2] = &unk_1F19C1E70;
  v18[3] = &unk_1F19C1E88;
  v19[2] = &unk_1F19C1EA0;
  v19[3] = &unk_1F19C1EB8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v27[3] = v6;
  v26[4] = &unk_1F19C1EE8;
  v16[0] = &unk_1F19C1E40;
  v16[1] = &unk_1F19C1E58;
  v17[0] = &unk_1F19C1EE8;
  v17[1] = &unk_1F19C1EA0;
  v16[2] = &unk_1F19C1E70;
  v16[3] = &unk_1F19C1E88;
  v17[2] = &unk_1F19C1EB8;
  v17[3] = &unk_1F19C1ED0;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v27[4] = v5;
  v26[5] = &unk_1F19C1E58;
  v14[0] = &unk_1F19C1E40;
  v14[1] = &unk_1F19C1E58;
  v15[0] = &unk_1F19C1E58;
  v15[1] = &unk_1F19C1E70;
  v14[2] = &unk_1F19C1E70;
  v14[3] = &unk_1F19C1E88;
  v15[2] = &unk_1F19C1E88;
  v15[3] = &unk_1F19C1E40;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v27[5] = v0;
  v26[6] = &unk_1F19C1EB8;
  v12[0] = &unk_1F19C1E40;
  v12[1] = &unk_1F19C1E58;
  v13[0] = &unk_1F19C1EB8;
  v13[1] = &unk_1F19C1ED0;
  v12[2] = &unk_1F19C1E70;
  v12[3] = &unk_1F19C1E88;
  v13[2] = &unk_1F19C1EE8;
  v13[3] = &unk_1F19C1EA0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v27[6] = v1;
  v26[7] = &unk_1F19C1E88;
  v10[0] = &unk_1F19C1E40;
  v10[1] = &unk_1F19C1E58;
  v11[0] = &unk_1F19C1E88;
  v11[1] = &unk_1F19C1E40;
  v10[2] = &unk_1F19C1E70;
  v10[3] = &unk_1F19C1E88;
  v11[2] = &unk_1F19C1E58;
  v11[3] = &unk_1F19C1E70;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v27[7] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:8];
  v4 = _featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations(void)::featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations;
  _featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations(void)::featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations = v3;
}

void sub_1A5FCFCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v17 = v15;

  _Unwind_Resume(a1);
}

uint64_t VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, void *a5)
{
  if (a3)
  {
    if (_featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations(void)::onceToken != -1)
    {
      dispatch_once(&_featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations(void)::onceToken, &__block_literal_global_38067);
    }

    v10 = _featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations(void)::featureCropOrientationsFromSuperpositionOfFeatureWithImageOrientations;
    v11 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInt:a2];
      v14 = [v12 objectForKeyedSubscript:v13];

      if (v14)
      {
        v15 = [v14 integerValue];
        *a3 = v15;
        if (a4)
        {
          *a3 = *(&VNCalculateFeatureCropOrientationFromSuperpositionOfFeatureWithImageOrientations::rotatedOrientations90CCW + (((v15 << 32) - 0x100000000) >> 30));
        }

        v16 = 1;
      }

      else
      {
        if (a5)
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInt:a1];
          *a5 = [VNError errorForInvalidArgument:v17 named:@"feature orientation"];
        }

        v14 = 0;
        v16 = 0;
      }
    }

    else
    {
      if (!a5)
      {
        v16 = 0;
        goto LABEL_17;
      }

      v14 = [MEMORY[0x1E696AD98] numberWithInt:a1];
      [VNError errorForInvalidArgument:v14 named:@"image orientation"];
      *a5 = v16 = 0;
    }

LABEL_17:
    return v16;
  }

  if (!a5)
  {
    return 0;
  }

  [VNError errorForInternalErrorWithLocalizedDescription:@"Face crop orientation is a mandatory parameter"];
  *a5 = v16 = 0;
  return v16;
}

uint64_t VNSetFaceOrientationInOptionsDictionary(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6)
  {
    v10 = -1;
    v7 = [v5 getFaceEXIFOrientation:&v10 error:a3];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      [v6 setObject:v8 forKeyedSubscript:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight"];
    }
  }

  else if (a3)
  {
    [VNError errorForInvalidArgument:0 named:@"options"];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id VNCloneFaceObservationFromOptions(uint64_t a1, void *a2)
{
  v3 = [VNValidationUtilities requiredFaceObservationInOptions:a1 error:a2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 vn_cloneObject];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else if (a2)
    {
      *a2 = +[VNError errorForMemoryAllocationFailure];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t VNFaceObservationsCollectionIsSubsetOfFaceObservationsCollection(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v7 = [v3 count];
      if (v7 <= [v5 count])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = v5;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v10)
        {
          v11 = *v26;
          do
          {
            v12 = 0;
            do
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v25 + 1) + 8 * v12) uuid];
              [v8 addObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v10);
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v14 = v3;
        v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = *v22;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [*(*(&v21 + 1) + 8 * v17) uuid];
              v19 = [v8 containsObject:v18];

              if ((v19 & 1) == 0)
              {
                v6 = 0;
                goto LABEL_24;
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v6 = 1;
LABEL_24:
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

void __VNRequestClasses_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __VNRequestClasses_block_invoke_2;
  v4[3] = &unk_1E77B68E8;
  v1 = v0;
  v5 = v1;
  [VNClassRegistrar enumerateEntriesUsingBlock:v4];
  v2 = [v1 copy];
  v3 = VNRequestClasses::ourRequestClasses;
  VNRequestClasses::ourRequestClasses = v2;
}

void __VNRequestClasses_block_invoke_2(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  aClassName = a4;
  if ((a2 - 1) <= 1)
  {
    v6 = NSClassFromString(aClassName);
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

uint64_t __VNDefaultObservationsSortingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    [v4 confidence];
    v7 = v6;
    [v5 confidence];
    if (v7 > v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v7 < v8;
    }
  }

  return v9;
}

uint64_t __VNDefaultClassificationObservationsSortingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    [v4 confidence];
    v7 = v6;
    [v5 confidence];
    if (v7 > v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v7 < v8;
    }

    if (!v9)
    {
      v10 = [v4 identifier];
      v11 = [v5 identifier];
      v9 = [v10 compare:v11 options:129];
    }
  }

  return v9;
}

uint64_t __VNDefaultRecognizedObjectObservationsSortingComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v9 = 0;
  }

  else
  {
    [v4 confidence];
    v7 = v6;
    [v5 confidence];
    if (v7 > v8)
    {
      v9 = -1;
    }

    else
    {
      v9 = v7 < v8;
    }

    if (!v9)
    {
      [v4 boundingBox];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v4 labels];
      v19 = [v18 count];
      [v5 boundingBox];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [v5 labels];
      v29 = [v28 count];
      if (v15 * v17 > v25 * v27)
      {
LABEL_7:
        v9 = -1;
LABEL_16:

        goto LABEL_17;
      }

      if (v15 * v17 >= v25 * v27)
      {
        v30 = v29;
        v33.origin.x = v11;
        v33.origin.y = v13;
        v33.size.width = v15;
        v33.size.height = v17;
        v34.origin.x = v21;
        v34.origin.y = v23;
        v34.size.width = v25;
        v34.size.height = v27;
        if (!CGRectIntersectsRect(v33, v34))
        {
          goto LABEL_15;
        }

        if (v19 > v30)
        {
          goto LABEL_7;
        }

        if (v19 >= v30)
        {
LABEL_15:
          v9 = 0;
          goto LABEL_16;
        }
      }

      v9 = 1;
      goto LABEL_16;
    }
  }

LABEL_17:

  return v9;
}

id VNRequestRevisionString(objc_class *a1, unint64_t a2)
{
  v3 = VNRequestClassFromClientSubclass(a1);
  v4 = v3;
  if (a2 < 0xDECAF000 || ([(objc_class *)v3 descriptionForPrivateRevision:a2], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = NSStringFromClass(v4);
    v5 = [v6 initWithFormat:@"%@Revision%lu", v7, a2];
  }

  return v5;
}

NSUInteger VNElementTypeSize(VNElementType elementType)
{
  if (elementType == VNElementTypeFloat)
  {
    return 4;
  }

  else
  {
    return 8 * (elementType == VNElementTypeDouble);
  }
}

id VNBinModelFilePathFromModelNameAndThrow(void *a1)
{
  v1 = a1;
  v2 = VNFrameworkBundle();
  v3 = [v2 pathForResource:v1 ofType:@"bin"];
  if (!v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Model file %@.bin is missing", v1];
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:@"Loading Resource Error" reason:v5 userInfo:0];
    objc_exception_throw(v6);
  }

  return v3;
}

uint64_t VNExecuteBlockWithPixelBuffer(__CVBuffer *a1, CVPixelBufferLockFlags a2, void *a3, void *a4)
{
  v7 = a3;
  if ([VNCVPixelBufferHelper lockPixelBuffer:a1 lockFlags:a2 error:a4])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __VNExecuteBlockWithPixelBuffer_block_invoke;
    v13[3] = &unk_1E77B6970;
    v14 = v7;
    v15 = a1;
    v8 = _Block_copy(v13);
    v9 = VNExecuteBlock(v8, a4);
    if (v9)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v11 = [VNCVPixelBufferHelper unlockPixelBuffer:a1 lockFlags:a2 error:v10]& v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id VNFloat32DataForFloat16Data(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    if (a2)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"float16 data was not a length multiple of 2"];
      *a2 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v5 = v4 >> 1;
    src.data = [v3 bytes];
    src.height = 1;
    src.width = v4 >> 1;
    src.rowBytes = v4;
    v6 = 2 * v4;
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:2 * v4];
    v11.data = [v7 mutableBytes];
    v11.height = 1;
    v11.width = v5;
    v11.rowBytes = v6;
    v8 = vImageConvert_Planar16FtoPlanarF(&src, &v11, 0);
    if (v8)
    {
      if (a2)
      {
        [VNError errorForVImageError:v8 localizedDescription:0];
        *a2 = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = [v7 copy];
    }
  }

  return v9;
}

id VNFloat16DataForFloat32Data(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if ((v4 & 3) != 0)
  {
    if (a2)
    {
      [VNError errorForInvalidArgumentWithLocalizedDescription:@"float32 data was not a length multiple of 4"];
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = v4 >> 2;
    src.data = [v3 bytes];
    src.height = 1;
    src.width = v4 >> 2;
    src.rowBytes = v4;
    v7 = v4 >> 1;
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v4 >> 1];
    v11.data = [v8 mutableBytes];
    v11.height = 1;
    v11.width = v6;
    v11.rowBytes = v7;
    v9 = vImageConvert_PlanarFtoPlanar16F(&src, &v11, 0);
    if (v9)
    {
      if (a2)
      {
        [VNError errorForVImageError:v9 localizedDescription:0];
        *a2 = v5 = 0;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = [v8 copy];
    }
  }

  return v5;
}

CFTypeRef VNDebugColorFromValues(const CGFloat *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v3 = CGColorCreate(v2, a1);
  CGColorSpaceRelease(v2);

  return CFAutorelease(v3);
}

CFTypeRef VNDebugContrastOutlineColor()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1A60523E0;
  v1[1] = unk_1A60523F0;
  return VNDebugColorFromValues(v1);
}

CFTypeRef VNDebugPathColor()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1A6052400;
  v1[1] = unk_1A6052410;
  return VNDebugColorFromValues(v1);
}

CFTypeRef VNDebugQuadColor()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1A6052420;
  v1[1] = unk_1A6052430;
  return VNDebugColorFromValues(v1);
}

CFTypeRef VNDebugBoundingBoxColor()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1A6052440;
  v1[1] = unk_1A6052450;
  return VNDebugColorFromValues(v1);
}

CFTypeRef VNDebugFeatureColor()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1A6052460;
  v1[1] = unk_1A6052470;
  return VNDebugColorFromValues(v1);
}

uint64_t VNDebugColorFromCGColor(CGColor *a1)
{
  v2 = NSClassFromString(&cfstr_Nscolor.isa);
  v3 = NSSelectorFromString(&cfstr_Colorwithcgcol.isa);
  v4 = [(objc_class *)v2 methodForSelector:v3];

  return v4(v2, v3, a1);
}

uint64_t VNGetRequestConcurrentTasksProcessingPolicyLimits(void *a1, void *a2, void *a3, uint64_t *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    *a1 = +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache maximumAllowedTasksInTheQueue];
    *a2 = +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache maximumAllowedTasksInTheQueue];
    *a3 = +[VNRequestAsyncTasksQueueCache maximumAllowedTasksInTheQueue];
    result = +[VNDetectorAsyncTasksQueueCache maximumAllowedTasksInTheQueue];
    *a4 = result;
  }

  else
  {

    return [VNError VNAssert:0 log:@"One of the output parameters is null"];
  }

  return result;
}

uint64_t VNUpgradeFaceprint(void *a1, void *a2, void *a3, void *a4, _DWORD *a5, void *a6)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a4)
  {
    if (a5)
    {
      if (__VNUpgradeFaceprint_block_invoke(v11, @"previousFaceprint", a6) && __VNUpgradeFaceprint_block_invoke(v12, @"newLowResolutionFaceprint", a6) && __VNUpgradeFaceprint_block_invoke(v13, @"session", a6))
      {
        v25[0] = v13;
        v24[0] = @"VNDetectorProcessOption_Session";
        v24[1] = @"VNEspressoprintUpgradeDetectorProcessOption_EspressoprintClass";
        v24[2] = @"VNDetectorOption_ComputeStageDeviceAssignments";
        v25[1] = objc_opt_class();
        v25[2] = MEMORY[0x1E695E0F8];
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
        v15 = [v13 detectorOfType:@"VNEspressoprintUpgradeDetectorType" configuredWithOptions:v14 error:a6];
        if (!v15)
        {
          v21 = 0;
LABEL_22:

          goto LABEL_16;
        }

        v16 = [v14 mutableCopy];
        [v16 setObject:v11 forKeyedSubscript:@"VNEspressoprintUpgradeDetectorProcessOption_FromEspressoprint"];
        [v16 setObject:v12 forKeyedSubscript:@"VNEspressoprintUpgradeDetectorProcessOption_ToEspressoprint"];
        v17 = [v15 processUsingQualityOfServiceClass:qos_class_self() options:v16 regionOfInterest:0 warningRecorder:a6 error:0 progressHandler:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
        v18 = v17;
        if (v17)
        {
          if ([v17 count] == 2)
          {
            *a4 = [v18 objectAtIndex:0];
            v19 = [v18 objectAtIndex:1];
            [v19 floatValue];
            *a5 = v20;

            v21 = 1;
LABEL_21:

            goto LABEL_22;
          }

          if (a6)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected number of faceprints returned"];
            *a6 = v21 = 0;
            goto LABEL_21;
          }
        }

        v21 = 0;
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (a6)
    {
      v22 = [VNError errorForInvalidArgument:0 named:@"sigmaOut"];
      goto LABEL_14;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (!a6)
  {
    goto LABEL_15;
  }

  v22 = [VNError errorForInvalidArgument:0 named:@"newHighResolutionFaceprintOut"];
LABEL_14:
  v21 = 0;
  *a6 = v22;
LABEL_16:

  return v21;
}

BOOL __VNUpgradeFaceprint_block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5 && a3)
  {
    *a3 = [VNError errorForInvalidArgument:0 named:v6];
  }

  return v5 != 0;
}

uint64_t VNUpgradeTorsoprint(void *a1, void *a2, void *a3, void *a4, _DWORD *a5, void *a6)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  if (a4)
  {
    if (a5)
    {
      if (__VNUpgradeTorsoprint_block_invoke(v11, @"previousFaceprint", a6) && __VNUpgradeTorsoprint_block_invoke(v12, @"newLowResolutionFaceprint", a6) && __VNUpgradeTorsoprint_block_invoke(v13, @"session", a6))
      {
        v25[0] = v13;
        v24[0] = @"VNDetectorProcessOption_Session";
        v24[1] = @"VNEspressoprintUpgradeDetectorProcessOption_EspressoprintClass";
        v24[2] = @"VNDetectorOption_ComputeStageDeviceAssignments";
        v25[1] = objc_opt_class();
        v25[2] = MEMORY[0x1E695E0F8];
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
        v15 = [v13 detectorOfType:@"VNEspressoprintUpgradeDetectorType" configuredWithOptions:v14 error:a6];
        if (!v15)
        {
          v21 = 0;
LABEL_22:

          goto LABEL_16;
        }

        v16 = [v14 mutableCopy];
        [v16 setObject:v11 forKeyedSubscript:@"VNEspressoprintUpgradeDetectorProcessOption_FromEspressoprint"];
        [v16 setObject:v12 forKeyedSubscript:@"VNEspressoprintUpgradeDetectorProcessOption_ToEspressoprint"];
        v17 = [v15 processUsingQualityOfServiceClass:qos_class_self() options:v16 regionOfInterest:0 warningRecorder:a6 error:0 progressHandler:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
        v18 = v17;
        if (v17)
        {
          if ([v17 count] == 2)
          {
            *a4 = [v18 objectAtIndex:0];
            v19 = [v18 objectAtIndex:1];
            [v19 floatValue];
            *a5 = v20;

            v21 = 1;
LABEL_21:

            goto LABEL_22;
          }

          if (a6)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected number of faceprints returned"];
            *a6 = v21 = 0;
            goto LABEL_21;
          }
        }

        v21 = 0;
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (a6)
    {
      v22 = [VNError errorForInvalidArgument:0 named:@"sigmaOut"];
      goto LABEL_14;
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  if (!a6)
  {
    goto LABEL_15;
  }

  v22 = [VNError errorForInvalidArgument:0 named:@"newHighResolutionFaceprintOut"];
LABEL_14:
  v21 = 0;
  *a6 = v22;
LABEL_16:

  return v21;
}

BOOL __VNUpgradeTorsoprint_block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5 && a3)
  {
    *a3 = [VNError errorForInvalidArgument:0 named:v6];
  }

  return v5 != 0;
}

void VNGetRequestConcurrentTasksProcessingPolicy(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && a4)
  {
    v8 = +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache];
    *a1 = [v8 maximumTasksCount];
    v9 = +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache];

    *a2 = [v9 maximumTasksCount];
    v10 = +[VNRequestAsyncTasksQueueCache sharedCache];

    *a3 = [v10 maximumTasksCount];
    v11 = +[VNDetectorAsyncTasksQueueCache sharedCache];

    *a4 = [v11 maximumTasksCount];
  }

  else
  {

    [VNError VNAssert:0 log:@"One of the output parameters is null"];
  }
}

void VNSetRequestConcurrentTasksProcessingPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[VNRequestPerformingPriorityGroup1AsyncTasksQueueCache sharedCache];
  [v8 setMaximumTasksCount:a1];
  v9 = +[VNRequestPerformingPriorityGroup2AsyncTasksQueueCache sharedCache];

  [v9 setMaximumTasksCount:a2];
  v10 = +[VNRequestAsyncTasksQueueCache sharedCache];

  [v10 setMaximumTasksCount:a3];
  v11 = +[VNDetectorAsyncTasksQueueCache sharedCache];

  [v11 setMaximumTasksCount:a4];
}

BOOL VNCheckRatioMismatch(double a1, double a2, double a3, double a4)
{
  v4 = a1 / a2;
  v5 = a3 / a4;
  if (v4 < 1.0 && v5 >= 1.0)
  {
    return 1;
  }

  if (v5 < 1.0)
  {
    return v4 >= 1.0;
  }

  return 0;
}

uint64_t VNDebugImageFromCGImage(uint64_t a1)
{
  if (load_uikit(void)::once != -1)
  {
    dispatch_once(&load_uikit(void)::once, &__block_literal_global_248);
  }

  v2 = NSClassFromString(&cfstr_Uiimage.isa);
  v3 = NSSelectorFromString(&cfstr_Imagewithcgima.isa);
  v4 = [(objc_class *)v2 methodForSelector:v3];

  return v4(v2, v3, a1);
}

void *___ZL10load_uikitv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 1);
  load_uikit(void)::uikitHandle = result;
  return result;
}

id VNDebugPathFromNormalizedCGPath(uint64_t a1, CGFloat a2, CGFloat a3)
{
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, a2, a3);
  v4 = MEMORY[0x1AC555C10](a1, &v9);
  if (load_uikit(void)::once != -1)
  {
    dispatch_once(&load_uikit(void)::once, &__block_literal_global_248);
  }

  v5 = NSClassFromString(&cfstr_Uibezierpath.isa);
  v6 = NSSelectorFromString(&cfstr_Bezierpathwith.isa);
  v7 = ([(objc_class *)v5 methodForSelector:v6])(v5, v6, v4);
  CGPathRelease(v4);

  return v7;
}

double VNDebugImageSizeFromObject(void *a1)
{
  v1 = a1;
  if (load_uikit(void)::once != -1)
  {
    dispatch_once(&load_uikit(void)::once, &__block_literal_global_248);
  }

  NSClassFromString(&cfstr_Uiimage.isa);
  if (objc_opt_isKindOfClass())
  {
    [v1 size];
    v3 = v2;
  }

  else
  {
    NSClassFromString(&cfstr_Uibezierpath.isa);
    if (objc_opt_isKindOfClass())
    {
      [v1 bounds];
      v3 = v4;
    }

    else
    {
      v3 = *MEMORY[0x1E695F060];
    }
  }

  return v3;
}

void (*VNDebugImageRenderNormalizedCGPathOnImage(uint64_t a1, void *a2, CGColor *a3))(uint64_t)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (load_uikit(void)::once != -1)
  {
    dispatch_once(&load_uikit(void)::once, &__block_literal_global_248);
  }

  v7 = load_uikit(void)::uikitHandle;
  v8 = dlsym(load_uikit(void)::uikitHandle, "UIGraphicsBeginImageContext");
  dlsym(v7, "UIGraphicsGetCurrentContext");
  v9 = dlsym(v7, "UIGraphicsGetImageFromCurrentImageContext");
  v10 = dlsym(v7, "UIGraphicsEndImageContext");
  NSClassFromString(&cfstr_Uiimage.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = [v5 size];
    v13 = v12;
    v15 = v14;
    v8(v11);
    [v5 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v16 = VNDebugPathFromNormalizedCGPath(a1, v13, v15);
    memset(&v24, 0, sizeof(v24));
    CGAffineTransformMakeScale(&v24, 1.0, -1.0);
    v23 = v24;
    CGAffineTransformTranslate(&v25, &v23, 0.0, -v15);
    v24 = v25;
    [v16 applyTransform:&v25];
    v17 = VNDebugColorFromCGColor(a3);
    *&v25.a = xmmword_1A60523E0;
    *&v25.c = unk_1A60523F0;
    v18 = VNDebugColorFromValues(&v25.a);
    v19 = VNDebugColorFromCGColor(v18);
    [v19 setStroke];
    [v16 setLineWidth:3.0];
    [v16 stroke];
    [v17 setStroke];
    [v16 setLineWidth:2.0];
    v9 = v9([v16 stroke]);
    v10();

LABEL_7:
    v21 = 0;
    goto LABEL_9;
  }

  NSClassFromString(&cfstr_Uibezierpath.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v20 = VNDebugPathFromNormalizedCGPath(a1, 512.0, 512.0);
    [v9 appendPath:v20];

    goto LABEL_7;
  }

  v21 = 1;
LABEL_9:
  objc_autoreleasePoolPop(v6);
  if (v21)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not render path on image %@", v5];
  }

  return v9;
}

__CFString *VNANEArchitectureName()
{
  if (VisionCoreHasANE())
  {
    v0 = [get_ANEDeviceInfoClass() aneSubType];
    v1 = [v0 uppercaseString];
  }

  else
  {
    v1 = &stru_1F1976900;
  }

  return v1;
}

id get_ANEDeviceInfoClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_ANEDeviceInfoClass(void)::softClass;
  v7 = get_ANEDeviceInfoClass(void)::softClass;
  if (!get_ANEDeviceInfoClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL22get_ANEDeviceInfoClassv_block_invoke;
    v3[3] = &unk_1E77B69F0;
    v3[4] = &v4;
    ___ZL22get_ANEDeviceInfoClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A5FD2320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL22get_ANEDeviceInfoClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleNeuralEngineLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = ___ZL28AppleNeuralEngineLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E77B6A10;
    v6 = 0;
    AppleNeuralEngineLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleNeuralEngineLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_ANEDeviceInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  get_ANEDeviceInfoClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL28AppleNeuralEngineLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  AppleNeuralEngineLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

__CFString *VNANEArchitectureSubTypeVariantName()
{
  if (VisionCoreHasANE())
  {
    v0 = [get_ANEDeviceInfoClass() aneSubTypeVariant];
    v1 = [v0 uppercaseString];
  }

  else
  {
    v1 = &stru_1F1976900;
  }

  return v1;
}

__CFString *VNANEArchitectureSubTypeProductVariantName()
{
  if (VisionCoreHasANE())
  {
    v0 = [get_ANEDeviceInfoClass() aneSubTypeProductVariant];
    v1 = [v0 uppercaseString];
  }

  else
  {
    v1 = &stru_1F1976900;
  }

  return v1;
}

id VNANEGenerationNumberForArchitectureName(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __VNANEGenerationNumberForArchitectureName_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (VNANEGenerationNumberForArchitectureName::onceToken != -1)
  {
    dispatch_once(&VNANEGenerationNumberForArchitectureName::onceToken, block);
  }

  v2 = VNANEGenerationNumberForArchitectureName::aneGenerationNumber;

  return v2;
}

void __VNANEGenerationNumberForArchitectureName_block_invoke(uint64_t a1)
{
  v9 = -1;
  v2 = MEMORY[0x1E696AE88];
  v3 = VNANEArchitectureName();
  v4 = [v2 scannerWithString:v3];

  v5 = [MEMORY[0x1E696AB08] letterCharacterSet];
  [v4 setCharactersToBeSkipped:v5];

  if ([v4 scanInteger:&v9] && (objc_msgSend(v4, "isAtEnd") & 1) != 0)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD98]);
    v7 = [v6 initWithInteger:v9];
    v8 = VNANEGenerationNumberForArchitectureName::aneGenerationNumber;
    VNANEGenerationNumberForArchitectureName::aneGenerationNumber = v7;
  }

  else if (*(a1 + 32))
  {
    **(a1 + 32) = [VNError errorForInternalErrorWithLocalizedDescription:@"ANE generation cannot be determined"];
  }
}

BOOL VNANEComputeDeviceSupportsExecution(uint64_t a1)
{
  v2 = VNANEArchitectureName();
  v3 = VNANEGenerationNumberForArchitectureName(v2, 0);
  v4 = [v3 integerValue] >= a1;

  return v4;
}

double calculateCropSizeOfPixelBuffer(__CVBuffer *a1, void *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  CVPixelBufferGetBytesPerRow(a1);
  CVPixelBufferGetBaseAddress(a1);
  v4 = [(VNControlledCapacityTasksQueue *)[VNControlledCapacitySyncTasksQueue alloc] initWithDispatchQueueLabel:@"com.apple.VN.observationSyncTasksQueue.VNInstanceMaskObservationProcessing" maximumTasksCount:15];
  v5 = [(VNControlledCapacityTasksQueue *)v4 maximumTasksCount];
  if (v5)
  {
    if (v5 < 0x555555555555556)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v6 = dispatch_group_create();
  if ([(VNControlledCapacityTasksQueue *)v4 dispatchGroupWait:v6 error:a2, v10, v11]&& a2)
  {
    *a2 = [VNError errorForInternalErrorWithLocalizedDescription:@"No pixels meet or exceed alpha threshold", v7];
  }

  v8 = *MEMORY[0x1E695F050];

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v8;
}

void sub_1A5FD2B44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x1A5FD2AB8);
}

uint64_t __calculateCropSizeOfPixelBuffer_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[4];
  v3 = v1[5];
  if (v2 <= v3)
  {
    v4 = *(a1 + 80);
    v5 = *(a1 + 72) >> 2;
    v6 = *(a1 + 48) + 4 * v2 * v5;
    v7 = 4 * v5;
    do
    {
      if (v4)
      {
        v8 = 0;
        v9 = *(a1 + 88);
        do
        {
          if (*(v6 + 4 * v8) > v9)
          {
            v10 = *v1;
            v11 = v1[1];
            if (v8 < *v1)
            {
              v10 = v8;
            }

            if (v2 < v11)
            {
              v11 = v2;
            }

            *v1 = v10;
            v1[1] = v11;
            v12 = v1[2];
            v13 = v1[3];
            if (v12 <= v8)
            {
              v12 = v8;
            }

            if (v13 <= v2)
            {
              v13 = v2;
            }

            v1[2] = v12;
            v1[3] = v13;
          }

          ++v8;
        }

        while (v4 != v8);
      }

      ++v2;
      v6 += v7;
    }

    while (v2 <= v3);
  }

  return [*(a1 + 32) dispatchReportBlockCompletion];
}

void rtcv::LoggerDevNull::instance()
{
  if (__cxa_guard_acquire(&qword_1EB2858A8))
  {
    _MergedGlobals = 0;
    _MergedGlobals = fopen("/dev/null", "wt");
    __cxa_atexit(rtcv::LoggerDevNull::~LoggerDevNull, &_MergedGlobals, &dword_1A5AFB000);

    __cxa_guard_release(&qword_1EB2858A8);
  }
}

uint64_t rtcv::Logger::instance()
{
  result = __cxa_guard_acquire(&qword_1EB2858B0);
  if (result)
  {
    rtcv::Logger::Logger(&unk_1EB2858B8);
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::istream::~istream()
{
  return MEMORY[0x1EEE63DF8]();
}

{
  return MEMORY[0x1EEE63E00]();
}

uint64_t std::ostream::~ostream()
{
  return MEMORY[0x1EEE63E90]();
}

{
  return MEMORY[0x1EEE63E98]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

std::bad_alloc *__cdecl std::bad_alloc::bad_alloc(std::bad_alloc *this)
{
  return MEMORY[0x1EEE64500](this);
}

{
  return MEMORY[0x1EEE64508](this);
}

void std::exception::~exception(std::exception *this)
{
  MEMORY[0x1EEE64520](this);
}

{
  MEMORY[0x1EEE64528](this);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}