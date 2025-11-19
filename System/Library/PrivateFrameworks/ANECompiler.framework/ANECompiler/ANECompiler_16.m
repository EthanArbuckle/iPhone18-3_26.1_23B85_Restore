__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBounds(void)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 24);
  v7 = *(a3 + 24);
  if (v6 >= *(a1 + 24))
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a3 + 32) = v13;
      *a3 = result;
      *(a3 + 16) = v12;
      if (*(a2 + 24) < *(a1 + 24))
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 32) = v17;
        *a2 = result;
        *(a2 + 16) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 32) = v9;
      *a3 = result;
      *(a3 + 16) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 32) = v21;
    *a2 = result;
    *(a2 + 16) = v20;
    if (*(a3 + 24) < *(a2 + 24))
    {
      result = *a2;
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
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
    result = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 32);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*(a3 + 24) < *(a2 + 24))
    {
      result = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 32);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *(a3 + 32) = v31;
      *a3 = result;
      *(a3 + 16) = v30;
      if (*(a2 + 24) < *(a1 + 24))
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 32) = v35;
        *a2 = result;
        *(a2 + 16) = v34;
      }
    }
  }

  if (*(a5 + 24) < *(a4 + 24))
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    if (*(a4 + 24) < *(a3 + 24))
    {
      result = *a3;
      v42 = *(a3 + 16);
      v43 = *(a3 + 32);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*(a3 + 24) < *(a2 + 24))
      {
        result = *a2;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *(a3 + 32) = v47;
        *a3 = result;
        *(a3 + 16) = v46;
        if (*(a2 + 24) < *(a1 + 24))
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 32) = v51;
          *a2 = result;
          *(a2 + 16) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBounds(void)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 64);
      v12 = *(a2 - 16);
      if (v11 < *(a1 + 24))
      {
        if (v12 >= v11)
        {
          v56 = *(a1 + 32);
          v57 = *a1;
          v58 = *(a1 + 56);
          *(a1 + 56) = *(a1 + 16);
          v59 = *(a1 + 64);
          *(a1 + 32) = *(a1 + 72);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v58;
          *(a1 + 40) = v57;
          *(a1 + 72) = v56;
          if (*(a2 - 16) >= v59)
          {
            return 1;
          }

          v13 = *(a1 + 40);
          v14 = *(a1 + 56);
          v15 = *(a1 + 72);
          v60 = *(a2 - 8);
          v61 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
        }

        else
        {
          v13 = *a1;
          v14 = *(a1 + 16);
          v15 = *(a1 + 32);
          v16 = *(a2 - 8);
          v17 = *(a2 - 24);
          *a1 = *v10;
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
        }

        *(a2 - 8) = v15;
        *v10 = v13;
        *(a2 - 24) = v14;
        return 1;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 72);
      v36 = *(a2 - 8);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 72) = v36;
      *(a2 - 8) = v35;
      *v10 = v33;
      *(a2 - 24) = v34;
      if (*(a1 + 64) >= *(a1 + 24))
      {
        return 1;
      }

LABEL_52:
      v94 = *(a1 + 32);
      v96 = *a1;
      v95 = *(a1 + 16);
      v97 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v97;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v96;
      *(a1 + 56) = v95;
      *(a1 + 72) = v94;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBounds(void)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        return 1;
      }

LABEL_14:
      v18 = a1 + 80;
      v19 = *(a1 + 64);
      v20 = *(a1 + 24);
      v21 = *(a1 + 104);
      if (v19 >= v20)
      {
        if (v21 < v19)
        {
          v38 = *(a1 + 56);
          v39 = *(a1 + 40);
          v40 = *(a1 + 96);
          *(a1 + 40) = *v18;
          *(a1 + 56) = v40;
          v42 = *(a1 + 64);
          v41 = *(a1 + 72);
          *(a1 + 72) = *(a1 + 112);
          *v18 = v39;
          *(a1 + 96) = v38;
          *(a1 + 112) = v41;
          if (v42 < v20)
          {
            v43 = *(a1 + 32);
            v45 = *a1;
            v44 = *(a1 + 16);
            v46 = *(a1 + 56);
            *a1 = *(a1 + 40);
            *(a1 + 16) = v46;
            *(a1 + 32) = *(a1 + 72);
            *(a1 + 40) = v45;
            *(a1 + 56) = v44;
            *(a1 + 72) = v43;
          }
        }
      }

      else
      {
        if (v21 >= v19)
        {
          v62 = *(a1 + 32);
          v64 = *a1;
          v63 = *(a1 + 16);
          v65 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v65;
          *(a1 + 56) = v63;
          v66 = *(a1 + 64);
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v64;
          *(a1 + 72) = v62;
          if (v21 >= v66)
          {
            goto LABEL_35;
          }

          v22 = *(a1 + 72);
          v23 = *(a1 + 56);
          v24 = *(a1 + 40);
          v67 = *(a1 + 96);
          *(a1 + 40) = *v18;
          *(a1 + 56) = v67;
          *(a1 + 72) = *(a1 + 112);
        }

        else
        {
          v22 = *(a1 + 32);
          v24 = *a1;
          v23 = *(a1 + 16);
          v25 = *(a1 + 96);
          *a1 = *v18;
          *(a1 + 16) = v25;
          *(a1 + 32) = *(a1 + 112);
        }

        *v18 = v24;
        *(a1 + 96) = v23;
        *(a1 + 112) = v22;
      }

LABEL_35:
      v68 = a1 + 120;
      if (a1 + 120 == a2)
      {
        return 1;
      }

      v69 = 0;
      v70 = 0;
      while (1)
      {
        v72 = *(v68 + 24);
        if (v72 < *(v18 + 24))
        {
          v98 = *v68;
          v99 = *(v68 + 16);
          v73 = *(v68 + 32);
          v74 = v69;
          do
          {
            v75 = a1 + v74;
            v76 = *(a1 + v74 + 96);
            *(v75 + 120) = *(a1 + v74 + 80);
            *(v75 + 136) = v76;
            *(v75 + 152) = *(a1 + v74 + 112);
            if (v74 == -80)
            {
              v71 = a1;
              goto LABEL_38;
            }

            v74 -= 40;
          }

          while (v72 < *(v75 + 64));
          v71 = a1 + v74 + 120;
LABEL_38:
          *v71 = v98;
          *(v71 + 16) = v99;
          *(v71 + 24) = v72;
          *(v71 + 32) = v73;
          if (++v70 == 8)
          {
            return v68 + 40 == a2;
          }
        }

        v18 = v68;
        v69 += 40;
        v68 += 40;
        if (v68 == a2)
        {
          return 1;
        }
      }
    }

    v26 = *(a1 + 64);
    v27 = *(a1 + 24);
    v28 = *(a1 + 104);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v49;
        v51 = *(a1 + 64);
        v50 = *(a1 + 72);
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v48;
        *(a1 + 96) = v47;
        *(a1 + 112) = v50;
        if (v51 < v27)
        {
          v52 = *(a1 + 32);
          v54 = *a1;
          v53 = *(a1 + 16);
          v55 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v55;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v54;
          *(a1 + 56) = v53;
          *(a1 + 72) = v52;
        }
      }
    }

    else
    {
      if (v28 < v26)
      {
        v29 = *(a1 + 32);
        v31 = *a1;
        v30 = *(a1 + 16);
        v32 = *(a1 + 96);
        *a1 = *(a1 + 80);
        *(a1 + 16) = v32;
        *(a1 + 32) = *(a1 + 112);
LABEL_48:
        *(a1 + 80) = v31;
        *(a1 + 96) = v30;
        *(a1 + 112) = v29;
        goto LABEL_49;
      }

      v77 = *(a1 + 32);
      v79 = *a1;
      v78 = *(a1 + 16);
      v80 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v80;
      *(a1 + 56) = v78;
      v81 = *(a1 + 64);
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v79;
      *(a1 + 72) = v77;
      if (v28 < v81)
      {
        v29 = *(a1 + 72);
        v30 = *(a1 + 56);
        v31 = *(a1 + 40);
        v82 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v82;
        *(a1 + 72) = *(a1 + 112);
        goto LABEL_48;
      }
    }

LABEL_49:
    if (*(a2 - 16) >= *(a1 + 104))
    {
      return 1;
    }

    v83 = a2 - 40;
    v84 = *(a1 + 80);
    v85 = *(a1 + 96);
    v86 = *(a1 + 112);
    v87 = *(a2 - 8);
    v88 = *(a2 - 24);
    *(a1 + 80) = *(a2 - 40);
    *(a1 + 96) = v88;
    *(a1 + 112) = v87;
    *(v83 + 32) = v86;
    *v83 = v84;
    *(v83 + 16) = v85;
    if (*(a1 + 104) >= *(a1 + 64))
    {
      return 1;
    }

    v89 = *(a1 + 56);
    v90 = *(a1 + 80);
    *(a1 + 56) = *(a1 + 96);
    v92 = *(a1 + 64);
    v91 = *(a1 + 72);
    *(a1 + 72) = *(a1 + 112);
    v93 = *(a1 + 40);
    *(a1 + 40) = v90;
    *(a1 + 80) = v93;
    *(a1 + 96) = v89;
    *(a1 + 112) = v91;
    if (v92 >= *(a1 + 24))
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 16) >= *(a1 + 24))
  {
    return 1;
  }

  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a2 - 8);
  v9 = *(a2 - 24);
  *a1 = *(a2 - 40);
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  *(a2 - 8) = v7;
  *(a2 - 24) = v6;
  *(a2 - 40) = v5;
  return 1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
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
      if (*(a2 - 8) < *(v12 + 32))
      {
        v288 = *(v12 + 32);
        v212 = *v12;
        v250 = *(v12 + 16);
        v109 = *(a2 - 40);
        v110 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v109;
        *(v12 + 16) = v110;
        result = v212;
        *(a2 - 8) = v288;
        *(a2 - 24) = v250;
        *(a2 - 40) = v212;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v118 = (v12 + 40);
      v120 = v12 == a2 || v118 == a2;
      if (a4)
      {
        if (!v120)
        {
          v121 = 0;
          v122 = v12;
          do
          {
            v124 = v122[4].n128_i64[1];
            v125 = v122[2].n128_i64[0];
            v122 = v118;
            if (v124 < v125)
            {
              v215 = *v118;
              v253 = v118[1];
              v126 = v121;
              do
              {
                v127 = v12 + v126;
                v128 = *(v12 + v126 + 16);
                *(v127 + 40) = *(v12 + v126);
                *(v127 + 56) = v128;
                *(v127 + 72) = *(v12 + v126 + 32);
                if (!v126)
                {
                  v123 = v12;
                  goto LABEL_124;
                }

                v126 -= 40;
              }

              while (v124 < *(v127 - 8));
              v123 = v12 + v126 + 40;
LABEL_124:
              result = v215;
              *v123 = v215;
              *(v123 + 16) = v253;
              *(v123 + 32) = v124;
            }

            v118 = (v122 + 40);
            v121 += 40;
          }

          while (&v122[2].n128_i8[8] != a2);
        }
      }

      else if (!v120)
      {
        do
        {
          v169 = *(a1 + 72);
          v170 = *(a1 + 32);
          a1 = v118;
          if (v169 < v170)
          {
            v221 = *v118;
            v259 = v118[1];
            v171 = v118;
            do
            {
              v172 = *(v171 - 24);
              *v171 = *(v171 - 40);
              v171[1] = v172;
              v171[2].n128_u64[0] = v171[-1].n128_u64[1];
              v173 = v171[-3].n128_i64[0];
              v171 = (v171 - 40);
            }

            while (v169 < v173);
            result = v221;
            *v171 = v221;
            v171[1] = v259;
            v171[2].n128_u64[0] = v169;
          }

          v118 = (a1 + 40);
        }

        while (a1 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v129 = (v14 - 2) >> 1;
        v130 = v129;
        do
        {
          if (v129 >= (0xCCCCCCCCCCCCCCCDLL * ((40 * v130) >> 3)))
          {
            v131 = (0x999999999999999ALL * ((40 * v130) >> 3)) | 1;
            v132 = v12 + 40 * v131;
            if ((0x999999999999999ALL * ((40 * v130) >> 3) + 2) < v14)
            {
              v133 = *(v132 + 32);
              v134 = *(v132 + 72);
              v135 = v133 < v134;
              v136 = v133 >= v134 ? 0 : 40;
              v132 += v136;
              if (v135)
              {
                v131 = 0x999999999999999ALL * ((40 * v130) >> 3) + 2;
              }
            }

            v137 = v12 + 40 * v130;
            v138 = *(v137 + 32);
            if (*(v132 + 32) >= v138)
            {
              v216 = *v137;
              v254 = *(v137 + 16);
              do
              {
                v139 = v137;
                v137 = v132;
                v140 = *v132;
                v141 = *(v132 + 16);
                *(v139 + 32) = *(v132 + 32);
                *v139 = v140;
                *(v139 + 16) = v141;
                if (v129 < v131)
                {
                  break;
                }

                v142 = (2 * v131) | 1;
                v132 = v12 + 40 * v142;
                v143 = 2 * v131 + 2;
                if (v143 < v14)
                {
                  v144 = *(v132 + 32);
                  v145 = *(v132 + 72);
                  v146 = v144 < v145;
                  v147 = v144 >= v145 ? 0 : 40;
                  v132 += v147;
                  if (v146)
                  {
                    v142 = v143;
                  }
                }

                v131 = v142;
              }

              while (*(v132 + 32) >= v138);
              *v137 = v216;
              *(v137 + 16) = v254;
              *(v137 + 32) = v138;
            }
          }

          v135 = v130-- <= 0;
        }

        while (!v135);
        v148 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v149 = 0;
          v291 = *(v12 + 32);
          v217 = *v12;
          v255 = *(v12 + 16);
          v150 = v12;
          do
          {
            v154 = v150 + 40 * v149;
            v151 = v154 + 40;
            v155 = (2 * v149) | 1;
            v149 = 2 * v149 + 2;
            if (v149 < v148)
            {
              if (*(v154 + 72) >= *(v154 + 112))
              {
                v149 = v155;
              }

              else
              {
                v151 = v154 + 80;
              }
            }

            else
            {
              v149 = v155;
            }

            v152 = *v151;
            v153 = *(v151 + 16);
            *(v150 + 32) = *(v151 + 32);
            *v150 = v152;
            *(v150 + 16) = v153;
            v150 = v151;
          }

          while (v149 <= ((v148 - 2) >> 1));
          a2 -= 40;
          if (v151 == a2)
          {
            result = v217;
            *(v151 + 32) = v291;
            *v151 = v217;
            *(v151 + 16) = v255;
          }

          else
          {
            v156 = *a2;
            v157 = *(a2 + 16);
            *(v151 + 32) = *(a2 + 32);
            *v151 = v156;
            *(v151 + 16) = v157;
            result = v217;
            *(a2 + 32) = v291;
            *a2 = v217;
            *(a2 + 16) = v255;
            v158 = v151 - v12 + 40;
            if (v158 >= 41)
            {
              v159 = (-2 - 0x3333333333333333 * (v158 >> 3)) >> 1;
              v160 = v12 + 40 * v159;
              v161 = *(v151 + 32);
              if (*(v160 + 32) < v161)
              {
                v185 = *v151;
                v188 = *(v151 + 16);
                do
                {
                  v162 = v151;
                  v151 = v160;
                  v163 = *v160;
                  v164 = *(v160 + 16);
                  *(v162 + 32) = *(v160 + 32);
                  *v162 = v163;
                  *(v162 + 16) = v164;
                  if (!v159)
                  {
                    break;
                  }

                  v159 = (v159 - 1) >> 1;
                  v160 = v12 + 40 * v159;
                }

                while (*(v160 + 32) < v161);
                result = v185;
                *v151 = v185;
                *(v151 + 16) = v188;
                *(v151 + 32) = v161;
              }
            }
          }

          v135 = v148-- <= 2;
        }

        while (!v135);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = *(a2 - 8);
    if (v13 < 0x1401)
    {
      v21 = *(v12 + 32);
      if (v21 < *(v16 + 32))
      {
        if (v17 < v21)
        {
          v266 = *(v16 + 32);
          v190 = *v16;
          v228 = *(v16 + 16);
          v22 = *v9;
          v23 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v22;
          *(v16 + 16) = v23;
          goto LABEL_36;
        }

        v275 = *(v16 + 32);
        v199 = *v16;
        v237 = *(v16 + 16);
        v46 = *v12;
        v47 = *(v12 + 16);
        *(v16 + 32) = *(v12 + 32);
        *v16 = v46;
        *(v16 + 16) = v47;
        *(v12 + 32) = v275;
        *v12 = v199;
        *(v12 + 16) = v237;
        if (*(a2 - 8) < *(v12 + 32))
        {
          v266 = *(v12 + 32);
          v190 = *v12;
          v228 = *(v12 + 16);
          v48 = *v9;
          v49 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v48;
          *(v12 + 16) = v49;
LABEL_36:
          *(a2 - 8) = v266;
          *v9 = v190;
          *(a2 - 24) = v228;
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

      v269 = *(v12 + 32);
      v193 = *v12;
      v231 = *(v12 + 16);
      v28 = *v9;
      v29 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v28;
      *(v12 + 16) = v29;
      *(a2 - 8) = v269;
      *v9 = v193;
      *(a2 - 24) = v231;
      if (*(v12 + 32) >= *(v16 + 32))
      {
        goto LABEL_37;
      }

      v270 = *(v16 + 32);
      v194 = *v16;
      v232 = *(v16 + 16);
      v30 = *v12;
      v31 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v30;
      *(v16 + 16) = v31;
      *(v12 + 32) = v270;
      *v12 = v194;
      *(v12 + 16) = v232;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v50 = *(v12 + 32);
      if (*(v12 - 8) < v50)
      {
        goto LABEL_62;
      }

      v184 = *v12;
      v187 = *(v12 + 16);
      if (v50 >= *(a2 - 8))
      {
        v97 = v12 + 40;
        do
        {
          v12 = v97;
          if (v97 >= a2)
          {
            break;
          }

          v98 = *(v97 + 32);
          v97 += 40;
        }

        while (v50 >= v98);
      }

      else
      {
        v95 = v12;
        do
        {
          v12 = v95 + 40;
          v96 = *(v95 + 72);
          v95 += 40;
        }

        while (v50 >= v96);
      }

      v99 = a2;
      if (v12 < a2)
      {
        v100 = a2;
        do
        {
          v99 = v100 - 40;
          v101 = *(v100 - 8);
          v100 -= 40;
        }

        while (v50 < v101);
      }

      while (v12 < v99)
      {
        v287 = *(v12 + 32);
        v211 = *v12;
        v249 = *(v12 + 16);
        v102 = *v99;
        v103 = *(v99 + 16);
        *(v12 + 32) = *(v99 + 32);
        *v12 = v102;
        *(v12 + 16) = v103;
        *(v99 + 32) = v287;
        *v99 = v211;
        *(v99 + 16) = v249;
        do
        {
          v104 = *(v12 + 72);
          v12 += 40;
        }

        while (v50 >= v104);
        do
        {
          v105 = *(v99 - 8);
          v99 -= 40;
        }

        while (v50 < v105);
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

      a4 = 0;
      result = v184;
      *v106 = v184;
      *(v12 - 24) = v187;
      *(v12 - 8) = v50;
    }

    else
    {
      v18 = *(v16 + 32);
      if (v18 >= *(v12 + 32))
      {
        if (v17 < v18)
        {
          v267 = *(v16 + 32);
          v191 = *v16;
          v229 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v267;
          *v9 = v191;
          *(a2 - 24) = v229;
          if (*(v16 + 32) < *(v12 + 32))
          {
            v268 = *(v12 + 32);
            v192 = *v12;
            v230 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v268;
            *v16 = v192;
            *(v16 + 16) = v230;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v271 = *(v12 + 32);
          v195 = *v12;
          v233 = *(v12 + 16);
          v32 = *v16;
          v33 = *(v16 + 16);
          *(v12 + 32) = *(v16 + 32);
          *v12 = v32;
          *(v12 + 16) = v33;
          *(v16 + 32) = v271;
          *v16 = v195;
          *(v16 + 16) = v233;
          if (*(a2 - 8) >= *(v16 + 32))
          {
            goto LABEL_28;
          }

          v265 = *(v16 + 32);
          v189 = *v16;
          v227 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
        }

        else
        {
          v265 = *(v12 + 32);
          v189 = *v12;
          v227 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
        }

        *(a2 - 8) = v265;
        *v9 = v189;
        *(a2 - 24) = v227;
      }

LABEL_28:
      v36 = v12 + 40 * v15;
      v37 = v36 - 40;
      v38 = *(v36 - 8);
      v39 = *(a2 - 48);
      if (v38 >= *(v12 + 72))
      {
        if (v39 < v38)
        {
          v273 = *(v37 + 32);
          v197 = *v37;
          v235 = *(v37 + 16);
          v42 = *v10;
          v43 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v42;
          *(v37 + 16) = v43;
          *(a2 - 48) = v273;
          *v10 = v197;
          *(a2 - 64) = v235;
          if (*(v37 + 32) < *(v12 + 72))
          {
            v274 = *(v12 + 72);
            v198 = *(v12 + 40);
            v236 = *(v12 + 56);
            v44 = *v37;
            v45 = *(v37 + 16);
            *(v12 + 72) = *(v37 + 32);
            *(v12 + 56) = v45;
            *(v12 + 40) = v44;
            *(v37 + 32) = v274;
            *v37 = v198;
            *(v37 + 16) = v236;
          }
        }
      }

      else
      {
        if (v39 >= v38)
        {
          v276 = *(v12 + 72);
          v200 = *(v12 + 40);
          v238 = *(v12 + 56);
          v51 = *v37;
          v52 = *(v37 + 16);
          *(v12 + 72) = *(v37 + 32);
          *(v12 + 56) = v52;
          *(v12 + 40) = v51;
          *(v37 + 32) = v276;
          *v37 = v200;
          *(v37 + 16) = v238;
          if (*(a2 - 48) >= *(v37 + 32))
          {
            goto LABEL_42;
          }

          v272 = *(v37 + 32);
          v196 = *v37;
          v234 = *(v37 + 16);
          v53 = *v10;
          v54 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v53;
          *(v37 + 16) = v54;
        }

        else
        {
          v272 = *(v12 + 72);
          v196 = *(v12 + 40);
          v234 = *(v12 + 56);
          v40 = *v10;
          v41 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 56) = v41;
          *(v12 + 40) = v40;
        }

        *(a2 - 48) = v272;
        *v10 = v196;
        *(a2 - 64) = v234;
      }

LABEL_42:
      v55 = v12 + 40 * v15;
      v56 = *(v55 + 72);
      v57 = *(a2 - 88);
      if (v56 >= *(v12 + 112))
      {
        if (v57 < v56)
        {
          v278 = *(v55 + 72);
          v202 = *(v55 + 40);
          v240 = *(v55 + 56);
          v60 = *v11;
          v61 = *(a2 - 104);
          *(v55 + 72) = *(a2 - 88);
          *(v55 + 56) = v61;
          *(v55 + 40) = v60;
          *(a2 - 88) = v278;
          *v11 = v202;
          *(a2 - 104) = v240;
          if (*(v55 + 72) < *(v12 + 112))
          {
            v279 = *(v12 + 112);
            v203 = *(v12 + 80);
            v241 = *(v12 + 96);
            v62 = *(v55 + 40);
            v63 = *(v55 + 56);
            *(v12 + 112) = *(v55 + 72);
            *(v12 + 80) = v62;
            *(v12 + 96) = v63;
            *(v55 + 72) = v279;
            *(v55 + 56) = v241;
            *(v55 + 40) = v203;
          }
        }
      }

      else
      {
        if (v57 >= v56)
        {
          v280 = *(v12 + 112);
          v204 = *(v12 + 80);
          v242 = *(v12 + 96);
          v64 = *(v55 + 40);
          v65 = *(v55 + 56);
          *(v12 + 112) = *(v55 + 72);
          *(v12 + 80) = v64;
          *(v12 + 96) = v65;
          *(v55 + 72) = v280;
          *(v55 + 56) = v242;
          *(v55 + 40) = v204;
          if (*(a2 - 88) >= *(v55 + 72))
          {
            goto LABEL_51;
          }

          v277 = *(v55 + 72);
          v201 = *(v55 + 40);
          v239 = *(v55 + 56);
          v66 = *v11;
          v67 = *(a2 - 104);
          *(v55 + 72) = *(a2 - 88);
          *(v55 + 56) = v67;
          *(v55 + 40) = v66;
        }

        else
        {
          v277 = *(v12 + 112);
          v201 = *(v12 + 80);
          v239 = *(v12 + 96);
          v58 = *v11;
          v59 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v58;
          *(v12 + 96) = v59;
        }

        *(a2 - 88) = v277;
        *v11 = v201;
        *(a2 - 104) = v239;
      }

LABEL_51:
      v68 = *(v16 + 32);
      v69 = *(v55 + 72);
      if (v68 >= *(v37 + 32))
      {
        if (v69 < v68)
        {
          v282 = *(v16 + 32);
          v206 = *v16;
          v244 = *(v16 + 16);
          v71 = *(v55 + 56);
          *v16 = *(v55 + 40);
          *(v16 + 16) = v71;
          *(v16 + 32) = *(v55 + 72);
          *(v55 + 56) = v244;
          *(v55 + 72) = v282;
          *(v55 + 40) = v206;
          if (*(v16 + 32) < *(v37 + 32))
          {
            v283 = *(v37 + 32);
            v207 = *v37;
            v245 = *(v37 + 16);
            v72 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v72;
            *(v37 + 32) = *(v16 + 32);
            *(v16 + 32) = v283;
            *v16 = v207;
            *(v16 + 16) = v245;
          }
        }
      }

      else
      {
        if (v69 >= v68)
        {
          v284 = *(v37 + 32);
          v208 = *v37;
          v246 = *(v37 + 16);
          v73 = *(v16 + 16);
          *v37 = *v16;
          *(v37 + 16) = v73;
          *(v37 + 32) = *(v16 + 32);
          *(v16 + 32) = v284;
          *v16 = v208;
          *(v16 + 16) = v246;
          if (*(v55 + 72) >= *(v16 + 32))
          {
            goto LABEL_60;
          }

          v281 = *(v16 + 32);
          v205 = *v16;
          v243 = *(v16 + 16);
          v74 = *(v55 + 56);
          *v16 = *(v55 + 40);
          *(v16 + 16) = v74;
          *(v16 + 32) = *(v55 + 72);
        }

        else
        {
          v281 = *(v37 + 32);
          v205 = *v37;
          v243 = *(v37 + 16);
          v70 = *(v55 + 56);
          *v37 = *(v55 + 40);
          *(v37 + 16) = v70;
          *(v37 + 32) = *(v55 + 72);
        }

        *(v55 + 56) = v243;
        *(v55 + 72) = v281;
        *(v55 + 40) = v205;
      }

LABEL_60:
      v285 = *(v12 + 32);
      v209 = *v12;
      v247 = *(v12 + 16);
      v75 = *v16;
      v76 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v75;
      *(v12 + 16) = v76;
      *(v16 + 32) = v285;
      *v16 = v209;
      *(v16 + 16) = v247;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v50 = *(v12 + 32);
LABEL_62:
      v77 = 0;
      v183 = *v12;
      v186 = *(v12 + 16);
      do
      {
        v78 = *(v12 + v77 + 72);
        v77 += 40;
      }

      while (v78 < v50);
      v79 = v12 + v77;
      v80 = a2;
      if (v77 == 40)
      {
        v83 = a2;
        while (v79 < v83)
        {
          v81 = v83 - 40;
          v84 = *(v83 - 8);
          v83 -= 40;
          if (v84 < v50)
          {
            goto LABEL_70;
          }
        }

        v81 = v83;
        v12 = v79;
      }

      else
      {
        do
        {
          v81 = v80 - 40;
          v82 = *(v80 - 8);
          v80 -= 40;
        }

        while (v82 >= v50);
LABEL_70:
        v12 = v79;
        if (v79 < v81)
        {
          v85 = v81;
          do
          {
            v286 = *(v12 + 32);
            v210 = *v12;
            v248 = *(v12 + 16);
            v86 = *v85;
            v87 = *(v85 + 16);
            *(v12 + 32) = *(v85 + 32);
            *v12 = v86;
            *(v12 + 16) = v87;
            *(v85 + 32) = v286;
            *v85 = v210;
            *(v85 + 16) = v248;
            do
            {
              v88 = *(v12 + 72);
              v12 += 40;
            }

            while (v88 < v50);
            do
            {
              v89 = *(v85 - 8);
              v85 -= 40;
            }

            while (v89 >= v50);
          }

          while (v12 < v85);
        }
      }

      v90 = (v12 - 40);
      if (v12 - 40 != a1)
      {
        v91 = *v90;
        v92 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v91;
        *(a1 + 16) = v92;
      }

      *v90 = v183;
      *(v12 - 24) = v186;
      *(v12 - 8) = v50;
      if (v79 < v81)
      {
        goto LABEL_81;
      }

      v93 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*>(a1, v12 - 40, v183);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*>(v12, a2, v94))
      {
        a2 = v12 - 40;
        if (!v93)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v93)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v115 = *(v12 + 72);
      v116 = *(v12 + 112);
      if (v115 >= *(v12 + 32))
      {
        if (v116 < v115)
        {
          v293 = *(v12 + 72);
          v219 = *(v12 + 40);
          v257 = *(v12 + 56);
          v167 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v167;
          *(v12 + 72) = *(v12 + 112);
          result = v219;
          *(v12 + 112) = v293;
          *(v12 + 80) = v219;
          *(v12 + 96) = v257;
          if (*(v12 + 72) < *(v12 + 32))
          {
            v294 = *(v12 + 32);
            v220 = *v12;
            v258 = *(v12 + 16);
            v168 = *(v12 + 56);
            *v12 = *(v12 + 40);
            *(v12 + 16) = v168;
            *(v12 + 32) = *(v12 + 72);
            result = v220;
            *(v12 + 56) = v258;
            *(v12 + 72) = v294;
            *(v12 + 40) = v220;
          }
        }
      }

      else
      {
        if (v116 < v115)
        {
          v290 = *(v12 + 32);
          v214 = *v12;
          v252 = *(v12 + 16);
          v117 = *(v12 + 96);
          *v12 = *(v12 + 80);
          *(v12 + 16) = v117;
          *(v12 + 32) = *(v12 + 112);
          goto LABEL_187;
        }

        v296 = *(v12 + 32);
        v223 = *v12;
        v261 = *(v12 + 16);
        v177 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v177;
        *(v12 + 32) = *(v12 + 72);
        result = v223;
        *(v12 + 56) = v261;
        *(v12 + 72) = v296;
        *(v12 + 40) = v223;
        if (*(v12 + 112) < *(v12 + 72))
        {
          v290 = *(v12 + 72);
          v214 = *(v12 + 40);
          v252 = *(v12 + 56);
          v178 = *(v12 + 96);
          *(v12 + 40) = *(v12 + 80);
          *(v12 + 56) = v178;
          *(v12 + 72) = *(v12 + 112);
LABEL_187:
          result = v214;
          *(v12 + 112) = v290;
          *(v12 + 80) = v214;
          *(v12 + 96) = v252;
        }
      }

      if (*(a2 - 8) >= *(v12 + 112))
      {
        return result;
      }

      v297 = *(v12 + 112);
      v224 = *(v12 + 80);
      v262 = *(v12 + 96);
      v179 = *v9;
      v180 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *(v12 + 80) = v179;
      *(v12 + 96) = v180;
      result = v224;
      *(a2 - 8) = v297;
      *v9 = v224;
      *(a2 - 24) = v262;
      if (*(v12 + 112) >= *(v12 + 72))
      {
        return result;
      }

      v298 = *(v12 + 72);
      v225 = *(v12 + 40);
      v263 = *(v12 + 56);
      v181 = *(v12 + 96);
      *(v12 + 40) = *(v12 + 80);
      *(v12 + 56) = v181;
      *(v12 + 72) = *(v12 + 112);
      result = v225;
      *(v12 + 112) = v298;
      *(v12 + 80) = v225;
      *(v12 + 96) = v263;
LABEL_191:
      if (*(v12 + 72) < *(v12 + 32))
      {
        v299 = *(v12 + 32);
        v226 = *v12;
        v264 = *(v12 + 16);
        v182 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v182;
        *(v12 + 32) = *(v12 + 72);
        result = v226;
        *(v12 + 56) = v264;
        *(v12 + 72) = v299;
        *(v12 + 40) = v226;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*,0>(v12, v12 + 40, v12 + 80, v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v111 = *(v12 + 72);
  v112 = *(a2 - 8);
  if (v111 >= *(v12 + 32))
  {
    if (v112 >= v111)
    {
      return result;
    }

    v292 = *(v12 + 72);
    v218 = *(v12 + 40);
    v256 = *(v12 + 56);
    v165 = *v9;
    v166 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 56) = v166;
    *(v12 + 40) = v165;
    result = v218;
    *(a2 - 8) = v292;
    *v9 = v218;
    *(a2 - 24) = v256;
    goto LABEL_191;
  }

  if (v112 >= v111)
  {
    v295 = *(v12 + 32);
    v222 = *v12;
    v260 = *(v12 + 16);
    v174 = *(v12 + 56);
    *v12 = *(v12 + 40);
    *(v12 + 16) = v174;
    *(v12 + 32) = *(v12 + 72);
    result = v222;
    *(v12 + 56) = v260;
    *(v12 + 72) = v295;
    *(v12 + 40) = v222;
    if (*(a2 - 8) >= *(v12 + 72))
    {
      return result;
    }

    v289 = *(v12 + 72);
    v213 = *(v12 + 40);
    v251 = *(v12 + 56);
    v175 = *v9;
    v176 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 56) = v176;
    *(v12 + 40) = v175;
  }

  else
  {
    v289 = *(v12 + 32);
    v213 = *v12;
    v251 = *(v12 + 16);
    v113 = *v9;
    v114 = *(a2 - 24);
    *(v12 + 32) = *(a2 - 8);
    *v12 = v113;
    *(v12 + 16) = v114;
  }

  result = v213;
  *(a2 - 8) = v289;
  *v9 = v213;
  *(a2 - 24) = v251;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 32);
  v7 = *(a3 + 32);
  if (v6 >= *(a1 + 32))
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a3 + 32) = v13;
      *a3 = result;
      *(a3 + 16) = v12;
      if (*(a2 + 32) < *(a1 + 32))
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 32) = v17;
        *a2 = result;
        *(a2 + 16) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 32) = v9;
      *a3 = result;
      *(a3 + 16) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 32) = v21;
    *a2 = result;
    *(a2 + 16) = v20;
    if (*(a3 + 32) < *(a2 + 32))
    {
      result = *a2;
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 32) < *(a3 + 32))
  {
    result = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 32);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*(a3 + 32) < *(a2 + 32))
    {
      result = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 32);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *(a3 + 32) = v31;
      *a3 = result;
      *(a3 + 16) = v30;
      if (*(a2 + 32) < *(a1 + 32))
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 32) = v35;
        *a2 = result;
        *(a2 + 16) = v34;
      }
    }
  }

  if (*(a5 + 32) < *(a4 + 32))
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    if (*(a4 + 32) < *(a3 + 32))
    {
      result = *a3;
      v42 = *(a3 + 16);
      v43 = *(a3 + 32);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*(a3 + 32) < *(a2 + 32))
      {
        result = *a2;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *(a3 + 32) = v47;
        *a3 = result;
        *(a3 + 16) = v46;
        if (*(a2 + 32) < *(a1 + 32))
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 32) = v51;
          *a2 = result;
          *(a2 + 16) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 72);
      v12 = *(a2 - 8);
      if (v11 < *(a1 + 32))
      {
        if (v12 >= v11)
        {
          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (*(a2 - 8) >= *(a1 + 72))
          {
            return 1;
          }

          v13 = *(a1 + 40);
          v14 = *(a1 + 56);
          v15 = *(a1 + 72);
          v58 = *(a2 - 8);
          v59 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v59;
          *(a1 + 72) = v58;
        }

        else
        {
          v13 = *a1;
          v14 = *(a1 + 16);
          v15 = *(a1 + 32);
          v16 = *(a2 - 8);
          v17 = *(a2 - 24);
          *a1 = *v10;
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
        }

        *(a2 - 8) = v15;
        *v10 = v13;
        *(a2 - 24) = v14;
        return 1;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 72);
      v36 = *(a2 - 8);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 72) = v36;
      *(a2 - 8) = v35;
      *v10 = v33;
      *(a2 - 24) = v34;
      if (*(a1 + 72) >= *(a1 + 32))
      {
        return 1;
      }

LABEL_52:
      v88 = *(a1 + 32);
      v90 = *a1;
      v89 = *(a1 + 16);
      v91 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v91;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v90;
      *(a1 + 56) = v89;
      *(a1 + 72) = v88;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::AllDifferentBoundsPropagator::PropagateLowerBoundsInternal(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::Span<operations_research::sat::AllDifferentBoundsPropagator::CachedBounds>)::$_0 &,operations_research::sat::AllDifferentBoundsPropagator::CachedBounds*,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        return 1;
      }

LABEL_14:
      v18 = a1 + 80;
      v19 = *(a1 + 72);
      v20 = *(a1 + 32);
      v21 = *(a1 + 112);
      if (v19 >= v20)
      {
        if (v21 < v19)
        {
          v38 = *(a1 + 72);
          v39 = *(a1 + 56);
          v40 = *(a1 + 40);
          v41 = *(a1 + 96);
          *(a1 + 40) = *v18;
          *(a1 + 56) = v41;
          *(a1 + 72) = *(a1 + 112);
          *v18 = v40;
          *(a1 + 96) = v39;
          *(a1 + 112) = v38;
          if (*(a1 + 72) < v20)
          {
            v42 = *(a1 + 32);
            v44 = *a1;
            v43 = *(a1 + 16);
            v45 = *(a1 + 56);
            *a1 = *(a1 + 40);
            *(a1 + 16) = v45;
            *(a1 + 32) = *(a1 + 72);
            *(a1 + 40) = v44;
            *(a1 + 56) = v43;
            *(a1 + 72) = v42;
          }
        }
      }

      else
      {
        if (v21 >= v19)
        {
          v60 = *(a1 + 32);
          v62 = *a1;
          v61 = *(a1 + 16);
          v63 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v63;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v62;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
          if (v21 >= *(a1 + 72))
          {
            goto LABEL_35;
          }

          v22 = *(a1 + 72);
          v23 = *(a1 + 56);
          v24 = *(a1 + 40);
          v64 = *(a1 + 96);
          *(a1 + 40) = *v18;
          *(a1 + 56) = v64;
          *(a1 + 72) = *(a1 + 112);
        }

        else
        {
          v22 = *(a1 + 32);
          v24 = *a1;
          v23 = *(a1 + 16);
          v25 = *(a1 + 96);
          *a1 = *v18;
          *(a1 + 16) = v25;
          *(a1 + 32) = *(a1 + 112);
        }

        *v18 = v24;
        *(a1 + 96) = v23;
        *(a1 + 112) = v22;
      }

LABEL_35:
      v65 = a1 + 120;
      if (a1 + 120 == a2)
      {
        return 1;
      }

      v66 = 0;
      v67 = 0;
      while (1)
      {
        v68 = *(v65 + 32);
        if (v68 < *(v18 + 32))
        {
          break;
        }

LABEL_38:
        v18 = v65;
        v66 += 40;
        v65 += 40;
        if (v65 == a2)
        {
          return 1;
        }
      }

      v92 = *v65;
      v93 = *(v65 + 16);
      v69 = v66;
      do
      {
        v70 = a1 + v69;
        v71 = *(a1 + v69 + 96);
        *(v70 + 120) = *(a1 + v69 + 80);
        *(v70 + 136) = v71;
        *(v70 + 152) = *(a1 + v69 + 112);
        if (v69 == -80)
        {
          *a1 = v92;
          *(a1 + 16) = v93;
          *(a1 + 32) = v68;
          if (++v67 != 8)
          {
            goto LABEL_38;
          }

          return v65 + 40 == a2;
        }

        v69 -= 40;
      }

      while (v68 < *(v70 + 72));
      v72 = a1 + v69 + 120;
      *v72 = v92;
      *(v72 + 16) = v93;
      *(v72 + 32) = v68;
      if (++v67 != 8)
      {
        goto LABEL_38;
      }

      return v65 + 40 == a2;
    }

    v26 = *(a1 + 72);
    v27 = *(a1 + 32);
    v28 = *(a1 + 112);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v46 = *(a1 + 72);
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v49;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v48;
        *(a1 + 96) = v47;
        *(a1 + 112) = v46;
        if (*(a1 + 72) < v27)
        {
          v50 = *(a1 + 32);
          v52 = *a1;
          v51 = *(a1 + 16);
          v53 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v53;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v52;
          *(a1 + 56) = v51;
          *(a1 + 72) = v50;
        }
      }
    }

    else
    {
      if (v28 < v26)
      {
        v29 = *(a1 + 32);
        v31 = *a1;
        v30 = *(a1 + 16);
        v32 = *(a1 + 96);
        *a1 = *(a1 + 80);
        *(a1 + 16) = v32;
        *(a1 + 32) = *(a1 + 112);
LABEL_48:
        *(a1 + 80) = v31;
        *(a1 + 96) = v30;
        *(a1 + 112) = v29;
        goto LABEL_49;
      }

      v73 = *(a1 + 32);
      v75 = *a1;
      v74 = *(a1 + 16);
      v76 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v76;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v75;
      *(a1 + 56) = v74;
      *(a1 + 72) = v73;
      if (v28 < *(a1 + 72))
      {
        v29 = *(a1 + 72);
        v30 = *(a1 + 56);
        v31 = *(a1 + 40);
        v77 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v77;
        *(a1 + 72) = *(a1 + 112);
        goto LABEL_48;
      }
    }

LABEL_49:
    if (*(a2 - 8) >= *(a1 + 112))
    {
      return 1;
    }

    v78 = a2 - 40;
    v79 = *(a1 + 80);
    v80 = *(a1 + 96);
    v81 = *(a1 + 112);
    v82 = *(a2 - 8);
    v83 = *(a2 - 24);
    *(a1 + 80) = *(a2 - 40);
    *(a1 + 96) = v83;
    *(a1 + 112) = v82;
    *(v78 + 32) = v81;
    *v78 = v79;
    *(v78 + 16) = v80;
    if (*(a1 + 112) >= *(a1 + 72))
    {
      return 1;
    }

    v84 = *(a1 + 72);
    v85 = *(a1 + 40);
    v86 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    v87 = *(a1 + 56);
    *(a1 + 56) = v86;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v85;
    *(a1 + 96) = v87;
    *(a1 + 112) = v84;
    if (*(a1 + 72) >= *(a1 + 32))
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 8) >= *(a1 + 32))
  {
    return 1;
  }

  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(a2 - 8);
  v9 = *(a2 - 24);
  *a1 = *(a2 - 40);
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  *(a2 - 8) = v7;
  *(a2 - 24) = v6;
  *(a2 - 40) = v5;
  return 1;
}

void File::Close(File *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v16[6] = *MEMORY[0x277D85DE8];
  if (a2 == 47802)
  {
    if (fclose(*this))
    {
      v16[0] = "Could not close file '";
      v16[1] = 22;
      v7 = *(this + 1);
      v6 = this + 8;
      v5 = v7;
      v8 = v6[23];
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v6 + 1);
      }

      else
      {
        v5 = v6;
      }

      v15[0] = v5;
      v15[1] = v8;
      v14[0] = "'";
      v14[1] = 1;
      absl::lts_20240722::StrCat(v16, v15, v14, &__p);
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

      absl::lts_20240722::Status::Status(a3, 3, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *this = 0;
      *a3 = 1;
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    absl::lts_20240722::Status::Status(a3, 3, "Wrong flags", 11);
  }
}

void sub_23C9D5B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t File::Open(void *__src, size_t __len, void *a3, size_t a4)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v13 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (a4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a4 >= 0x17)
  {
    operator new();
  }

  v11 = a4;
  if (a4)
  {
    memmove(&__p, a3, a4);
  }

  *(&__p + a4) = 0;
  if (v13 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (fopen(p_dst, p_p))
  {
    operator new();
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(__dst);
  }

  return 0;
}

void sub_23C9D5DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x23EED9460](v20, 0x1032C402793DAF4);
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(a1);
}

uint64_t File::ReadToString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    File::ReadToString(&v4);
  }

  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = 0;
    *(a2 + 23) = 0;
    if (!a3)
    {
      return a3;
    }

LABEL_6:
    operator new[]();
  }

  **a2 = 0;
  *(a2 + 8) = 0;
  if (a3)
  {
    goto LABEL_6;
  }

  return a3;
}

void file::Open(void *__src@<X0>, size_t __len@<X1>, void *a3@<X2>, size_t a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v18[6] = *MEMORY[0x277D85DE8];
  if (a6 == 47802 && (v11 = File::Open(__src, __len, a3, a4), (*a5 = v11) != 0))
  {
    *a7 = 1;
  }

  else
  {
    v18[0] = "Could not open '";
    v18[1] = 16;
    v17[0] = __src;
    v17[1] = __len;
    v16[0] = "'";
    v16[1] = 1;
    absl::lts_20240722::StrCat(v18, v17, v16, &__p);
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

    absl::lts_20240722::Status::Status(a7, 3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23C9D608C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::GetContents(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, absl::lts_20240722::status_internal::StatusRep **a5@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = 0;
  file::Open(a1, a2, "r", 1uLL, &v24, a4, &v23);
  v10 = v23;
  if (v23 != 1)
  {
LABEL_26:
    *a5 = v10;
    goto LABEL_27;
  }

  v11 = v24;
  v12 = (v24 + 8);
  v13 = (v24 + 8);
  if (*(v24 + 31) < 0)
  {
    v13 = *v12;
  }

  stat(v13, &v27);
  st_size = v27.st_size;
  if (File::ReadToString(v11, a3, v27.st_size) == st_size)
  {
    File::Close(v11, a4, &v27);
    if (v23 == 1)
    {
      if (*&v27.st_dev != 1)
      {
        v23 = *&v27.st_dev;
      }
    }

    else if ((v27.st_dev & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(*&v27.st_dev, v15);
    }

    if (v11[31] < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x23EED9460](v11, 0x1032C402793DAF4);
    v10 = v23;
    goto LABEL_26;
  }

  File::Close(v11, a4, &v27);
  if ((v27.st_dev & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(*&v27.st_dev, v16);
  }

  if (v11[31] < 0)
  {
    operator delete(*v12);
  }

  MEMORY[0x23EED9460](v11, 0x1032C402793DAF4);
  *&v27.st_dev = "Could not read from '";
  v27.st_ino = 21;
  v26[0] = a1;
  v26[1] = a2;
  v25[0] = "'.";
  v25[1] = 2;
  absl::lts_20240722::StrCat(&v27, v26, v25, &__p);
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

  absl::lts_20240722::Status::Status(a5, 3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v20 = v23;
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_29:
    absl::lts_20240722::status_internal::StatusRep::Unref(v20, v19);
    goto LABEL_27;
  }

  v20 = v23;
  if ((v23 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_23C9D62D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::WriteString(void *__ptr@<X1>, absl::lts_20240722::numbers_internal *this@<X2>, FILE **a3@<X0>, int a4@<W3>, void *a5@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (a3 && a4 == 47802 && fwrite(__ptr, 1uLL, this, *a3) == this)
  {
    *a5 = 1;
  }

  else
  {
    v14[0] = "Could not write ";
    v14[1] = 16;
    v12[0] = v13;
    v12[1] = absl::lts_20240722::numbers_internal::FastIntToBuffer(this, v13, this) - v13;
    v11[0] = " bytes";
    v11[1] = 6;
    absl::lts_20240722::StrCat(v14, v12, v11, &__p);
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

    absl::lts_20240722::Status::Status(a5, 3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C9D6490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::SetContents(void *a1@<X0>, size_t a2@<X1>, void *a3@<X2>, absl::lts_20240722::numbers_internal *a4@<X3>, int a5@<W4>, absl::lts_20240722::status_internal::StatusRep **a6@<X8>)
{
  *v15 = 0;
  file::Open(a1, a2, "w", 1uLL, v15, a5, a6);
  if (*a6 != 1)
  {
    return;
  }

  v10 = *v15;
  file::WriteString(a3, a4, *v15, a5, &v14);
  v12 = *a6;
  if (v14 == *a6)
  {
    goto LABEL_5;
  }

  *a6 = v14;
  v14 = 55;
  if ((v12 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v12, v11);
    v12 = v14;
LABEL_5:
    if ((v12 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v12, v11);
    }
  }

  File::Close(v10, a5, &v14);
  if (*a6 == 1)
  {
    if (v14 != 1)
    {
      *a6 = v14;
    }
  }

  else if ((v14 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v14, v13);
  }

  if (v10)
  {
    if (*(v10 + 31) < 0)
    {
      operator delete(v10[1]);
    }

    MEMORY[0x23EED9460](v10, 0x1032C402793DAF4);
  }
}

uint64_t file::ReadFileToProto(void *a1, size_t a2, char *a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  file::GetContents(a1, a2, &v19, 47802, v17);
  v7 = v17[0];
  if ((v17[0] & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v17[0], v6);
  }

  if (v7 == 1)
  {
    v18 = &unk_284F3BE58;
    google::protobuf::TextFormat::Parser::Parser(v17);
    v17[0] = &v18;
    if (v21 >= 0)
    {
      v8 = &v19;
    }

    else
    {
      v8 = v19;
    }

    if (v21 >= 0)
    {
      v9 = HIBYTE(v21);
    }

    else
    {
      v9 = v20;
    }

    if (google::protobuf::TextFormat::Parser::ParseFromString(v17, v8, v9, a3) & 1) != 0 || (v21 >= 0 ? (v10 = &v19) : (v10 = v19), v21 >= 0 ? (v11 = HIBYTE(v21)) : (v11 = v20), (google::protobuf::MessageLite::ParseFromString(a3, v10, v11)))
    {
      v12 = 1;
      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v17);
      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&v18);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        return v12;
      }
    }

    else
    {
      if (v21 >= 0)
      {
        v14 = &v19;
      }

      else
      {
        v14 = v19;
      }

      if (v21 >= 0)
      {
        v15 = HIBYTE(v21);
      }

      else
      {
        v15 = v20;
      }

      google::protobuf::TextFormat::ParseFromString(v14, v15, a3);
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/file.cc", 273);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, "Could not parse contents of ", 0x1CuLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v16, a1, a2);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
      v12 = 0;
      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v17);
      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(&v18);
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        return v12;
      }
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/base/file.cc", 252);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Could not read ", 0xFuLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v17, a1, a2);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
    v12 = 0;
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      return v12;
    }
  }

  operator delete(v19);
  return v12;
}

void sub_23C9D6800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(va);
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(va1);
  if (*(v3 - 33) < 0)
  {
    operator delete(*(v3 - 56));
  }

  _Unwind_Resume(a1);
}

void file::WriteProtoToASCIIFile()
{
  __p = 0;
  v1 = 0;
  v2 = 0;
  google::protobuf::TextFormat::PrintToString();
}

void sub_23C9D6924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t file::WriteProtoToFile(uint64_t a1, void *a2, size_t a3)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  result = google::protobuf::MessageLite::AppendToString(a1, &__p);
  if (result)
  {
    if (v13 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v13 >= 0)
    {
      v7 = HIBYTE(v13);
    }

    else
    {
      v7 = v12;
    }

    file::SetContents(a2, a3, p_p, v7, 47802, &v14);
    v9 = v14;
    if ((v14 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v14, v8);
    }

    result = v9 == 1;
  }

  if (SHIBYTE(v13) < 0)
  {
    v10 = result;
    operator delete(__p);
    return v10;
  }

  return result;
}

void sub_23C9D69F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void file::GetTextProto(void *a1@<X0>, size_t a2@<X1>, char *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (a4 == 47802 && file::ReadFileToProto(a1, a2, a3))
  {
    *a5 = 1;
  }

  else
  {
    v14[0] = "Could not read proto from '";
    v14[1] = 27;
    v13[0] = a1;
    v13[1] = a2;
    v12[0] = "'.";
    v12[1] = 2;
    absl::lts_20240722::StrCat(v14, v13, v12, &__p);
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

    absl::lts_20240722::Status::Status(a5, 3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23C9D6B10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::SetTextProto(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  if (a3 == 47802)
  {
    file::WriteProtoToASCIIFile();
  }

  v11[0] = "Could not write proto to '";
  v11[1] = 26;
  v10[0] = a1;
  v10[1] = a2;
  v9[0] = "'.";
  v9[1] = 2;
  absl::lts_20240722::StrCat(v11, v10, v9, &__p);
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

  absl::lts_20240722::Status::Status(a4, 3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_23C9D6C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::SetBinaryProto(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v14[6] = *MEMORY[0x277D85DE8];
  if (a4 == 47802 && file::WriteProtoToFile(a3, a1, a2))
  {
    *a5 = 1;
  }

  else
  {
    v14[0] = "Could not write proto to '";
    v14[1] = 26;
    v13[0] = a1;
    v13[1] = a2;
    v12[0] = "'.";
    v12[1] = 2;
    absl::lts_20240722::StrCat(v14, v13, v12, &__p);
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

    absl::lts_20240722::Status::Status(a5, 3, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23C9D6D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void file::anonymous namespace::NoOpErrorCollector::~NoOpErrorCollector(file::_anonymous_namespace_::NoOpErrorCollector *this)
{
  ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(this);

  JUMPOUT(0x23EED9460);
}

unint64_t operations_research::fasthash64(operations_research *this, unint64_t a2, uint64_t a3)
{
  v3 = (0x880355F21E6D1965 * a2) ^ a3;
  if (a2 >= 8)
  {
    v4 = (this + 8 * (a2 >> 3));
    v5 = 8 * (a2 >> 3);
    do
    {
      v6 = *this;
      this = (this + 8);
      v3 = 0x880355F21E6D1965 * (v3 ^ ((0x2127599BF4325C37 * (v6 ^ (v6 >> 23))) >> 47) ^ (0x2127599BF4325C37 * (v6 ^ (v6 >> 23))));
      v5 -= 8;
    }

    while (v5);
    this = v4;
  }

  v7 = 0;
  v8 = a2 & 7;
  if (v8 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v8 != 6)
      {
        v7 = *(this + 6) << 48;
      }

      v7 |= *(this + 5) << 40;
    }

    else if (v8 == 4)
    {
      goto LABEL_18;
    }

    v7 ^= *(this + 4) << 32;
LABEL_18:
    v7 ^= *(this + 3) << 24;
LABEL_19:
    v7 ^= *(this + 2) << 16;
LABEL_20:
    v7 ^= *(this + 1) << 8;
    goto LABEL_21;
  }

  if ((a2 & 7) > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((a2 & 7) == 0)
  {
    return (0x2127599BF4325C37 * (v3 ^ (v3 >> 23))) ^ ((0x2127599BF4325C37 * (v3 ^ (v3 >> 23))) >> 47);
  }

LABEL_21:
  v10 = 0x2127599BF4325C37 * (*this ^ (v7 >> 23) ^ v7);
  v11 = 0x2127599BF4325C37 * ((0x880355F21E6D1965 * (v3 ^ (v10 >> 47) ^ v10)) ^ ((0x880355F21E6D1965 * (v3 ^ (v10 >> 47) ^ v10)) >> 23));
  return v11 ^ (v11 >> 47);
}

uint64_t operations_research::GetProcessMemoryUsage(operations_research *this)
{
  task_info_outCnt = 10;
  if (task_info(*MEMORY[0x277D85F48], 0x12u, task_info_out, &task_info_outCnt))
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

uint64_t operations_research::RunWorker(std::condition_variable *this, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  operations_research::ThreadPool::GetNextTask(this, v10);
  result = v11[0];
  while (v11[0])
  {
    (*(*result + 48))(result);
    operations_research::ThreadPool::GetNextTask(this, v8);
    v4 = v11[0];
    v11[0] = 0;
    if (v4 == v10)
    {
      (*(*v4 + 32))(v4);
      v5 = v9;
      v6 = v11;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }

      v5 = v9;
      v6 = v11;
      if (!v9)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v8)
    {
      v11[0] = v10;
      (*(*v5 + 24))(v5, v10);
      goto LABEL_15;
    }

    v11[0] = v5;
    v6 = &v9;
LABEL_13:
    *v6 = 0;
LABEL_15:
    if (v9 == v8)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))();
    }

    result = v11[0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C9D7100(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_23C9D7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23C9D712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<void ()(void)>::~function(va);
  _Unwind_Resume(a1);
}

void operations_research::ThreadPool::GetNextTask(std::condition_variable *this@<X0>, uint64_t a2@<X8>)
{
  v11.__m_ = &this->__cv_.__opaque[24];
  v11.__owns_ = 1;
  std::mutex::lock(&this->__cv_.__opaque[24]);
  if (*&this->__cv_.__opaque[16])
  {
LABEL_4:
    v4 = *&this->__cv_.__opaque[8];
    v5 = *(v4 + 40);
    if (v5)
    {
      if (v5 == v4 + 16)
      {
        *(a2 + 24) = a2;
        (*(*v5 + 24))(v5, a2);
LABEL_10:
        v7 = *&this->__cv_.__opaque[8];
        v6 = *&this->__cv_.__opaque[16];
        v9 = *v7;
        v8 = v7[1];
        *(v9 + 8) = v8;
        *v8 = v9;
        *&this->__cv_.__opaque[16] = v6 - 1;
        v10 = v7[5];
        if (v10 == v7 + 2)
        {
          (*(*v10 + 32))(v10);
          operator delete(v7);
          if (*&this->__cv_.__opaque[16] >= SHIDWORD(this[4].__cv_.__sig))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10)
          {
            (*(*v10 + 40))(v10);
          }

          operator delete(v7);
          if (*&this->__cv_.__opaque[16] >= SHIDWORD(this[4].__cv_.__sig))
          {
            goto LABEL_18;
          }
        }

        if (BYTE1(this[4].__cv_.__sig) == 1)
        {
          BYTE1(this[4].__cv_.__sig) = 0;
          std::condition_variable::notify_all(this + 3);
        }

        goto LABEL_18;
      }

      v5 = (*(*v5 + 16))(v5);
    }

    *(a2 + 24) = v5;
    goto LABEL_10;
  }

  while (LOBYTE(this[4].__cv_.__sig) != 1)
  {
    std::condition_variable::wait(this + 2, &v11);
    if (*&this->__cv_.__opaque[16])
    {
      goto LABEL_4;
    }
  }

  *(a2 + 24) = 0;
LABEL_18:
  if (v11.__owns_)
  {
    std::mutex::unlock(v11.__m_);
  }
}

void sub_23C9D72F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

double operations_research::ThreadPool::ThreadPool(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = a4;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_23CE3FC10;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1018212795;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1018212795;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 179) = 0u;
  *(a1 + 196) = 2000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  return result;
}

void operations_research::ThreadPool::~ThreadPool(operations_research::ThreadPool *this)
{
  if (*(this + 194) == 1)
  {
    std::mutex::lock((this + 32));
    *(this + 192) = 1;
    std::mutex::unlock((this + 32));
    std::condition_variable::notify_all(this + 2);
    if (*this >= 1)
    {
      v2 = 0;
      v3 = 0;
      do
      {
        std::thread::join((*(this + 25) + v2));
        ++v3;
        v2 += 8;
      }

      while (v3 < *this);
    }
  }

  v4 = *(this + 25);
  if (v4)
  {
    v5 = *(this + 26);
    v6 = *(this + 25);
    if (v5 != v4)
    {
      do
      {
        std::thread::~thread((v5 - 8));
      }

      while (v5 != v4);
      v6 = *(this + 25);
    }

    *(this + 26) = v4;
    operator delete(v6);
  }

  std::condition_variable::~condition_variable(this + 3);
  std::condition_variable::~condition_variable(this + 2);
  std::mutex::~mutex((this + 32));
  if (*(this + 3))
  {
    v7 = *(this + 2);
    v8 = *(*(this + 1) + 8);
    v9 = *v7;
    *(v9 + 8) = v8;
    *v8 = v9;
    *(this + 3) = 0;
    if (v7 != (this + 8))
    {
      do
      {
        v10 = *(v7 + 1);
        v11 = *(v7 + 5);
        if (v11 == (v7 + 16))
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        operator delete(v7);
        v7 = v10;
      }

      while (v10 != (this + 8));
    }
  }
}

uint64_t operations_research::ThreadPool::StartWorkers(uint64_t this)
{
  *(this + 194) = 1;
  if (*this >= 1)
  {
    std::thread::thread<void (*)(void *),operations_research::ThreadPool *,0>();
  }

  return this;
}

void operations_research::ThreadPool::Schedule(uint64_t a1)
{
  v2.__m_ = (a1 + 32);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  while (*(a1 + 24) >= *(a1 + 196))
  {
    *(a1 + 193) = 1;
    std::condition_variable::wait((a1 + 144), &v2);
  }

  operator new();
}

void sub_23C9D77B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  operator delete(v10);
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

void sub_23C9D78B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C9D78E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),operations_research::ThreadPool *>>::~unique_ptr[abi:ne200100](&a9);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),operations_research::ThreadPool *>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x23EED9200]();
    MEMORY[0x23EED9460](v5, 0x20C4093837F09);
  }

  MEMORY[0x23EED9460](a1, 0xA0C40A8488062);
  return 0;
}

void sub_23C9D7984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),operations_research::ThreadPool *>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),operations_research::ThreadPool *>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x23EED9200]();
      MEMORY[0x23EED9460](v4, 0x20C4093837F09);
    }

    MEMORY[0x23EED9460](v1, 0xA0C40A8488062);
    return v2;
  }

  return result;
}

void *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x23EED9200]();
    MEMORY[0x23EED9460](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

uint64_t std::vector<std::thread>::__emplace_back_slow_path<std::thread>(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - v3;
  v7 = v6 + 1;
  if ((v6 + 1) >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 2 > v7)
  {
    v7 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = v4 - v3;
  v11 = 8 * v6 - 8 * v10;
  *(8 * v6) = *a2;
  *a2 = 0;
  if (v3 != v4)
  {
    v12 = v4 - v3 - 8;
    v13 = v3;
    v14 = (8 * v6 - 8 * v10);
    if (v12 < 0x98)
    {
      goto LABEL_27;
    }

    if (v11 < &v3[1] + (v12 & 0xFFFFFFFFFFFFFFF8))
    {
      v13 = v3;
      v14 = (8 * v6 - 8 * v10);
      if (v3 < v4 - v3 + (v12 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8)
      {
        goto LABEL_27;
      }
    }

    v15 = (v12 >> 3) + 1;
    v16 = v15 & 0x3FFFFFFFFFFFFFFCLL;
    v13 = &v3[v16];
    v14 = (v11 + v16 * 8);
    v17 = (-8 * v10 + 8 * v6 + 16);
    v18 = v3 + 2;
    v19 = v15 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = *&v18->__t_;
      *(v17 - 1) = *&v18[-2].__t_;
      *v17 = v20;
      *&v18[-2].__t_ = 0uLL;
      *&v18->__t_ = 0uLL;
      v17 += 2;
      v18 += 4;
      v19 -= 4;
    }

    while (v19);
    if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_27:
      do
      {
        *v14++ = v13->__t_;
        v13->__t_ = 0;
        ++v13;
      }

      while (v13 != v4);
    }

    do
    {
      std::thread::~thread(v3);
      v3 = v21 + 1;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 8 * v6 + 8;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 8 * v6 + 8;
}

char *operations_research::OrToolsVersionString@<X0>(char *a1@<X2>, std::string *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *&v12 = v13;
  *(&v12 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(9, v13, a1) - v13;
  *&v10 = v11;
  *(&v10 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xA, v11, v4) - v11;
  v8 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0x270F, v9, v5) - v9;
  v14 = v12;
  v15 = ".";
  v16 = 1;
  v17 = v10;
  v18 = ".";
  v19 = 1;
  v20 = v9;
  v21 = v8;
  result = absl::lts_20240722::strings_internal::CatPieces(&v14, 5, a2);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::glop::EtaMatrix::EtaMatrix(uint64_t a1, unsigned int a2, uint64_t a3)
{
  *a1 = &unk_284F3BEA0;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(*a3 + 8 * a2);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 24), *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(v6 + 8 * *(a1 + 8)) = 0;
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  if (vcvtd_n_f64_s32((v7 - v6) >> 3, 1uLL) > (v8 - v9) && v9 != v8)
  {
    v12 = a2;
    do
    {
      v14 = *v9;
      if (v12 != v14)
      {
        v15 = *(*(a1 + 24) + 8 * v14);
        v16 = *(a1 + 56);
        if (v16 == *(a1 + 64) && (!v16 || v16 < 2 * v16))
        {
          operator new[]();
        }

        *(a1 + 56) = v16 + 1;
        v13 = *(a1 + 80);
        *(*(a1 + 72) + 4 * v16) = v14;
        *(v13 + 8 * v16) = v15;
        *(a1 + 88) = 1;
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return a1;
}

void sub_23C9D7EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  v12 = *(v10 + 48);
  *(v10 + 48) = 0;
  if (v12)
  {
    MEMORY[0x23EED9440](v12, 0x1000C8077774924);
    v13 = *a10;
    if (!*a10)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = *a10;
    if (!*a10)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 32) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::EtaMatrix::~EtaMatrix(operations_research::glop::EtaMatrix *this)
{
  *this = &unk_284F3BEA0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_284F3BEA0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8077774924);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::EtaFactorization::~EtaFactorization(operations_research::glop::EtaFactorization *this)
{
  *this = &unk_284F3BEC0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    *(this + 2) = v2;
    if (!v2)
    {
      return;
    }

    goto LABEL_3;
  }

  do
  {
    v5 = *v2++;
    v4 = v5;
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  while (v2 != v3);
  v2 = *(this + 1);
  *(this + 2) = v2;
  if (v2)
  {
LABEL_3:
    operator delete(v2);
  }
}

{
  *this = &unk_284F3BEC0;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    *(this + 2) = v2;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5)
      {
        (*(*v4 + 8))(v4);
      }
    }

    while (v2 != v3);
    v2 = *(this + 1);
    *(this + 2) = v2;
    if (!v2)
    {
LABEL_4:

      JUMPOUT(0x23EED9460);
    }
  }

  operator delete(v2);
  goto LABEL_4;
}

void operations_research::glop::EtaFactorization::SparseLeftSolve(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = (*(a1 + 16) - *(a1 + 8)) >> 3;
    v5 = (v4 - 1);
    if (v4 - 1 >= 0)
    {
      do
      {
        v9 = *(*(a1 + 8) + 8 * v5);
        v10 = *(v9 + 8);
        v11 = *a2;
        v12 = *(*a2 + 8 * *(v9 + 8));
        v13 = *a3;
        v14 = a3[1] - *a3;
        if ((v14 >> 2) < 1)
        {
          *(v11 + 8 * *(v9 + 8)) = v12 / *(v9 + 16);
        }

        else
        {
          v15 = 0;
          v16 = 0;
          v17 = (v14 >> 2) & 0x7FFFFFFF;
          do
          {
            v18 = *(v13 + 4 * v15);
            if (v18 == v10)
            {
              do
              {
                if (v17 - 1 == v15)
                {
                  *(v11 + 8 * *(v9 + 8)) = v12 / *(v9 + 16);
                  goto LABEL_5;
                }

                v18 = *(v13 + 4 + 4 * v15++);
              }

              while (v18 == v10);
              v16 = 1;
            }

            v12 = v12 - *(v11 + 8 * v18) * *(*(v9 + 24) + 8 * v18);
            ++v15;
          }

          while (v15 != v17);
          *(v11 + 8 * *(v9 + 8)) = v12 / *(v9 + 16);
          if (v16)
          {
            continue;
          }
        }

        std::vector<int>::push_back[abi:ne200100](a3, (v9 + 8));
LABEL_5:
        ;
      }

      while (v5-- > 0);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v19, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 164, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v19);
  }
}

uint64_t operations_research::glop::BasisFactorization::BasisFactorization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_284F3BEE0;
  *(a1 + 31) = 18;
  strcpy((a1 + 8), "BasisFactorization");
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 72;
  operations_research::DistributionStat::DistributionStat(a1 + 88, "refactorization_interval", 0x18uLL, a1 + 8);
  *(a1 + 88) = &unk_284F44DF0;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 168, 0);
  *(a1 + 496) = a2;
  *(a1 + 504) = a3;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 689) = 0;
  *(a1 + 908) = 0;
  *(a1 + 512) = xmmword_23CE3FC20;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 617) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 920) = &unk_284F3BEC0;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  operations_research::glop::LuFactorization::LuFactorization((a1 + 952));
  *(a1 + 4840) = 0u;
  *(a1 + 908) = *(a1 + 292);
  *(a1 + 904) = *(a1 + 394);
  operations_research::glop::GlopParameters::CopyFrom((a1 + 168), (a1 + 168));
  operations_research::glop::GlopParameters::CopyFrom((a1 + 2600), (a1 + 168));
  operations_research::glop::GlopParameters::CopyFrom((a1 + 4504), (a1 + 168));
  return a1;
}

void sub_23C9D84E8(_Unwind_Exception *a1)
{
  operations_research::glop::EtaFactorization::~EtaFactorization(v3);
  v5 = v1[110];
  if (v5)
  {
    v1[111] = v5;
    operator delete(v5);
  }

  v6 = v1[107];
  if (v6)
  {
    v1[108] = v6;
    operator delete(v6);
  }

  operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix((v1 + 97));
  operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(v2);
  operations_research::glop::ScatteredColumn::~ScatteredColumn((v1 + 76));
  v7 = v1[73];
  if (v7)
  {
    v1[74] = v7;
    operator delete(v7);
    v8 = v1[70];
    if (!v8)
    {
LABEL_7:
      v9 = v1[67];
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = v1[70];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v1[71] = v8;
  operator delete(v8);
  v9 = v1[67];
  if (!v9)
  {
LABEL_9:
    operations_research::glop::GlopParameters::~GlopParameters((v1 + 21));
    operations_research::glop::BasisFactorization::Stats::~Stats((v1 + 1));
    _Unwind_Resume(a1);
  }

LABEL_8:
  v1[68] = v9;
  operator delete(v9);
  goto LABEL_9;
}

void operations_research::glop::CompactSparseMatrix::~CompactSparseMatrix(operations_research::glop::CompactSparseMatrix *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void operations_research::glop::ScatteredColumn::~ScatteredColumn(operations_research::glop::ScatteredColumn *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void operations_research::glop::BasisFactorization::Stats::~Stats(operations_research::glop::BasisFactorization::Stats *this)
{
  *(this + 10) = &unk_284F3A5F8;
  if (*(this + 111) < 0)
  {
    v2 = this;
    operator delete(*(this + 11));
    this = v2;
  }

  operations_research::StatsGroup::~StatsGroup(this);
}

void operations_research::glop::BasisFactorization::~BasisFactorization(operations_research::glop::BasisFactorization *this)
{
  *this = &unk_284F3BEE0;
  operations_research::glop::LuFactorization::~LuFactorization((this + 952));
  *(this + 115) = &unk_284F3BEC0;
  v2 = *(this + 116);
  v3 = *(this + 117);
  if (v2 == v3)
  {
    *(this + 117) = v2;
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  do
  {
    v19 = *v2++;
    v18 = v19;
    if (v19)
    {
      (*(*v18 + 8))(v18);
    }
  }

  while (v2 != v3);
  v2 = *(this + 116);
  *(this + 117) = v2;
  if (v2)
  {
LABEL_3:
    operator delete(v2);
  }

LABEL_4:
  v4 = *(this + 110);
  if (v4)
  {
    *(this + 111) = v4;
    operator delete(v4);
  }

  v5 = *(this + 107);
  if (v5)
  {
    *(this + 108) = v5;
    operator delete(v5);
  }

  v6 = *(this + 104);
  if (v6)
  {
    *(this + 105) = v6;
    operator delete(v6);
  }

  v7 = *(this + 101);
  if (v7)
  {
    *(this + 102) = v7;
    operator delete(v7);
  }

  v8 = *(this + 98);
  if (v8)
  {
    *(this + 99) = v8;
    operator delete(v8);
  }

  v9 = *(this + 94);
  if (v9)
  {
    *(this + 95) = v9;
    operator delete(v9);
  }

  v10 = *(this + 91);
  if (v10)
  {
    *(this + 92) = v10;
    operator delete(v10);
  }

  v11 = *(this + 88);
  if (v11)
  {
    *(this + 89) = v11;
    operator delete(v11);
  }

  v12 = *(this + 83);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(this + 80);
  if (v13)
  {
    *(this + 81) = v13;
    operator delete(v13);
  }

  v14 = *(this + 76);
  if (v14)
  {
    *(this + 77) = v14;
    operator delete(v14);
  }

  v15 = *(this + 73);
  if (v15)
  {
    *(this + 74) = v15;
    operator delete(v15);
  }

  v16 = *(this + 70);
  if (v16)
  {
    *(this + 71) = v16;
    operator delete(v16);
  }

  v17 = *(this + 67);
  if (v17)
  {
    *(this + 68) = v17;
    operator delete(v17);
  }

  operations_research::glop::GlopParameters::~GlopParameters((this + 168));
  *(this + 11) = &unk_284F3A5F8;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  operations_research::StatsGroup::~StatsGroup((this + 8));
}

{
  operations_research::glop::BasisFactorization::~BasisFactorization(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::glop::BasisFactorization::Clear(operations_research::glop::BasisFactorization *this)
{
  *(this + 228) = 0;
  *(this + 688) = 0;
  v2 = *(this + 116);
  v3 = *(this + 117);
  if (v2 != v3)
  {
    do
    {
      v5 = *v2++;
      v4 = v5;
      if (v5)
      {
        (*(*v4 + 8))(v4);
      }
    }

    while (v2 != v3);
    v2 = *(this + 116);
  }

  *(this + 117) = v2;
  operations_research::glop::LuFactorization::Clear((this + 952));
  *(this + 68) = *(this + 67);
  *(this + 66) = 0;
  operations_research::glop::CompactSparseMatrix::Reset(this + 696, **(this + 62));
  operations_research::glop::CompactSparseMatrix::Reset(this + 776, **(this + 62));
  *(this + 108) = *(this + 107);
  *(this + 111) = *(this + 110);
}

void operations_research::glop::BasisFactorization::Initialize(operations_research::glop::BasisFactorization *this@<X0>, uint64_t a2@<X8>)
{
  *(this + 228) = 0;
  *(this + 688) = 0;
  v4 = *(this + 116);
  v5 = *(this + 117);
  if (v4 != v5)
  {
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    while (v4 != v5);
    v4 = *(this + 116);
  }

  *(this + 117) = v4;
  operations_research::glop::LuFactorization::Clear((this + 952));
  *(this + 68) = *(this + 67);
  *(this + 66) = 0;
  operations_research::glop::CompactSparseMatrix::Reset(this + 696, **(this + 62));
  operations_research::glop::CompactSparseMatrix::Reset(this + 776, **(this + 62));
  *(this + 108) = *(this + 107);
  *(this + 111) = *(this + 110);
  v8 = *(this + 62);
  v9 = *v8;
  if (v9 < 1)
  {
    goto LABEL_23;
  }

  v10 = *(this + 63);
  v11 = *v10;
  v12 = v8[7];
  v13 = **v10;
  v14 = *(v12 + 8 * v13);
  if (*(v12 + (((v13 << 32) + 0x100000000) >> 29)) - v14 != 1)
  {
    goto LABEL_22;
  }

  v15 = v8[1];
  v16 = v8[4];
  if (*(v16 + 4 * v14) || *(v15 + 8 * v14) != 1.0)
  {
    goto LABEL_22;
  }

  v18 = 1;
  do
  {
    v19 = v18;
    if (v9 == v18)
    {
      break;
    }

    v20 = *(v11 + 4 * v18);
    v21 = *(v12 + 8 * v20);
    if (*(v12 + (((v20 << 32) + 0x100000000) >> 29)) - v21 != 1)
    {
      break;
    }

    v22 = *(v15 + 8 * v21);
    v23 = *(v16 + 4 * v21);
    v18 = v19 + 1;
  }

  while (v19 == v23 && v22 == 1.0);
  if (v19 >= v9)
  {
LABEL_23:

    operations_research::glop::Status::Status(a2);
  }

  else
  {
LABEL_22:
    v25 = ((v10[1] - v11) >> 2);
    v27[0] = *(this + 62);
    v27[1] = v11;
    v27[2] = v25;
    operations_research::glop::LuFactorization::ComputeFactorization((this + 952), v27, a2);
    Factorization = operations_research::glop::LuFactorization::DeterministicTimeOfLastFactorization((this + 952));
    *(this + 605) = Factorization;
    *(this + 606) = Factorization + *(this + 606);
    *(this + 64) = 0;
  }
}

void sub_23C9D8BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::BasisFactorization::ComputeInitialBasis@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  operations_research::glop::LuFactorization::ComputeInitialBasis(a1 + 952, *(a1 + 496), a2, a3);
  result = operations_research::glop::LuFactorization::DeterministicTimeOfLastFactorization((a1 + 952)) + *(a1 + 4848);
  *(a1 + 4848) = result;
  return result;
}

void sub_23C9D8C34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::BasisFactorization::Refactorize(operations_research::glop::BasisFactorization *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 228))
  {
    operations_research::glop::BasisFactorization::ForceRefactorization(this, a2);
  }

  else
  {
    operations_research::glop::Status::Status(a2);
  }
}

double operations_research::glop::BasisFactorization::ForceRefactorization@<D0>(operations_research::glop::BasisFactorization *this@<X0>, uint64_t a2@<X8>)
{
  operations_research::IntegerDistribution::Add(this + 88, *(this + 228));
  *(this + 228) = 0;
  *(this + 688) = 0;
  v4 = *(this + 116);
  v5 = *(this + 117);
  if (v4 != v5)
  {
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    while (v4 != v5);
    v4 = *(this + 116);
  }

  *(this + 117) = v4;
  operations_research::glop::LuFactorization::Clear((this + 952));
  *(this + 68) = *(this + 67);
  *(this + 66) = 0;
  operations_research::glop::CompactSparseMatrix::Reset(this + 696, **(this + 62));
  operations_research::glop::CompactSparseMatrix::Reset(this + 776, **(this + 62));
  *(this + 108) = *(this + 107);
  *(this + 111) = *(this + 110);
  v8 = *(this + 63);
  v9 = *v8;
  v10 = ((v8[1] - *v8) >> 2);
  v13[0] = *(this + 62);
  v13[1] = v9;
  v13[2] = v10;
  operations_research::glop::LuFactorization::ComputeFactorization((this + 952), v13, a2);
  Factorization = operations_research::glop::LuFactorization::DeterministicTimeOfLastFactorization((this + 952));
  *(this + 605) = Factorization;
  result = Factorization + *(this + 606);
  *(this + 606) = result;
  *(this + 64) = 0;
  return result;
}

void sub_23C9D8D98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::BasisFactorization::MiddleProductFormUpdate(uint64_t a1@<X0>, int a2@<W1>, signed int a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v8 = *(a1 + 880);
  v9 = (*(a1 + 888) - v8) >> 2;
  v10 = (v8 + 4 * a2);
  if (a2 >= v9)
  {
    v11 = &operations_research::glop::kInvalidCol;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = *(a1 + 856);
  v14 = (*(a1 + 864) - v13) >> 2;
  v15 = (v13 + 4 * a3);
  if (a3 >= v14)
  {
    v16 = &operations_research::glop::kInvalidCol;
  }

  else
  {
    v16 = v15;
  }

  v17 = *v16;
  if (v12 == -1 || v17 == -1)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 268);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "One update vector is missing!!!", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v41);
    operations_research::glop::BasisFactorization::ForceRefactorization(a1, a4);
  }

  else
  {
    v19 = (a1 + 560);
    v20 = *(a1 + 776);
    *&v41 = 0;
    v21 = *(a1 + 560);
    v22 = (*(a1 + 568) - v21) >> 3;
    if (v20 <= v22)
    {
      if (v20 < v22)
      {
        *(a1 + 568) = v21 + 8 * v20;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 560, v20 - v22, &v41);
    }

    v23 = *(a1 + 832);
    v24 = *(v23 + 8 * v12);
    v25 = *(v23 + (((v12 << 32) + 0x100000000) >> 29));
    v26 = v25 - v24;
    if (v25 > v24)
    {
      v27 = (*(a1 + 808) + 4 * v24);
      v28 = (*(a1 + 784) + 8 * v24);
      do
      {
        v30 = *v27++;
        v29 = v30;
        LODWORD(v41) = v30;
        v31 = *v28++;
        *(*v19 + 8 * v29) = v31;
        std::vector<int>::push_back[abi:ne200100](a1 + 584, &v41);
        --v26;
      }

      while (v26);
    }

    ColumnOfU = operations_research::glop::LuFactorization::GetColumnOfU(a1 + 952, a3, a5);
    v33 = ColumnOfU[1];
    if (v33 >= 1)
    {
      v34 = ColumnOfU[3];
      v35 = ColumnOfU[4];
      do
      {
        v36 = *v35++;
        v37 = v36;
        LODWORD(v36) = *v34++;
        *(*v19 + 8 * SLODWORD(v36)) = *(*v19 + 8 * SLODWORD(v36)) - v37;
        LODWORD(v41) = LODWORD(v36);
        std::vector<int>::push_back[abi:ne200100](a1 + 584, &v41);
        --v33;
      }

      while (v33);
    }

    v38 = operations_research::glop::CompactSparseMatrix::ColumnScalarProduct((a1 + 696), v17, (a1 + 560));
    v39 = operations_research::glop::CompactSparseMatrix::AddAndClearColumnWithNonZeros(a1 + 696, (a1 + 560), (a1 + 584));
    *&v41 = a1 + 696;
    *(&v41 + 1) = __PAIR64__(v17, v39);
    v42 = v38 + 1.0;
    if (v38 + 1.0 == 0.0)
    {
      operator new();
    }

    std::vector<operations_research::glop::RankOneUpdateElementaryMatrix>::push_back[abi:ne200100](a1 + 536, &v41);
    v40 = *(v41 + 56);
    *(a1 + 528) += *(v40 + (((DWORD2(v41) << 32) + 0x100000000) >> 29)) - (*(v40 + 8 * SDWORD2(v41)) + *(v40 + 8 * SHIDWORD(v41))) + *(v40 + (((HIDWORD(v41) << 32) + 0x100000000) >> 29));
    operations_research::glop::Status::Status(a4);
  }
}

void sub_23C9D913C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[1];
  v4 = a1[4];
  v5 = a1[7];
  v6 = *a3;
  v7 = *(v5 + 8 * a2);
  v8 = *(v5 + (((a2 << 32) + 0x100000000) >> 29));
  result = 0.0;
  if (v8 - 3 > v7)
  {
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      result = result + *(v3 + 8 * v7) * *(v6 + 8 * *(v4 + 4 * v7));
      v10 = v10 + *(v3 + 8 * (v7 + 1)) * *(v6 + 8 * *(v4 + 4 * (v7 + 1)));
      v11 = v11 + *(v3 + 8 * (v7 + 2)) * *(v6 + 8 * *(v4 + 4 * (v7 + 2)));
      v12 = v12 + *(v3 + 8 * (v7 + 3)) * *(v6 + 8 * *(v4 + 4 * (v7 + 3)));
      v7 += 4;
    }

    while (v7 < v8 - 3);
    result = result + v10 + v11 + v12;
  }

  if (v7 < v8)
  {
    v13 = v7;
    result = result + *(v3 + 8 * v7) * *(v6 + 8 * *(v4 + 4 * v7));
    v14 = v7 + 1;
    if (v14 < v8)
    {
      result = result + *(v3 + 8 * v14) * *(v6 + 8 * *(v4 + 4 * v14));
      if (v13 + 2 < v8)
      {
        return result + *(v3 + 8 * (v13 + 2)) * *(v6 + 8 * *(v4 + 4 * (v13 + 2)));
      }
    }
  }

  return result;
}

void operations_research::glop::BasisFactorization::Update(operations_research::glop::BasisFactorization *this@<X0>, int a2@<W1>, signed int a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v7 = *(this + 228);
  if (v7 < *(this + 227) || (*(this + 354) & 1) != 0 && (a5.n128_u64[0] = *(this + 605), a5.n128_f64[0] >= *(this + 64)))
  {
    *(this + 228) = v7 + 1;
    if (*(this + 904) != 1)
    {
      operator new();
    }

    operations_research::glop::BasisFactorization::MiddleProductFormUpdate(this, a2, a3, a4, a5);
    if (!*a4)
    {
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      *(this + 688) = 0;
      operations_research::glop::Status::Status(a4);
    }
  }

  else
  {

    operations_research::glop::BasisFactorization::ForceRefactorization(this, a4);
  }
}

void operations_research::glop::BasisFactorization::LeftSolve(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 344, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v43, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
    return;
  }

  if (*(a1 + 904) != 1)
  {
    *(a2 + 40) = *(a2 + 32);
    v12 = *(a1 + 928);
    v13 = ((*(a1 + 936) - v12) >> 3) - 1;
    if (v13 < 0)
    {
LABEL_29:
      operations_research::glop::LuFactorization::LeftSolve((a1 + 952), a2);
      v8 = *(a2 + 32);
      v9 = *(a2 + 40);
      if (v8 != v9)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

    v14 = *a2;
    v15 = *a2 + 16;
    while (1)
    {
      v17 = *(v12 + 8 * v13);
      v18 = *(v17 + 56);
      v19 = *&v14[8 * *(v17 + 8)];
      if (v18)
      {
        if (v18 >= 1)
        {
          v20 = *(v17 + 72);
          v21 = *(v17 + 80);
          do
          {
            v22 = *v20++;
            v23 = *&v14[8 * v22];
            v24 = *v21++;
            v19 = v19 - v23 * v24;
            --v18;
          }

          while (v18);
        }

        goto LABEL_13;
      }

      v25 = *(v17 + 24);
      v26 = *(v17 + 32) - v25;
      if ((v26 >> 3) >= 1)
      {
        v27 = (v26 >> 3) & 0x7FFFFFFF;
        if (v27 >= 4)
        {
          v29 = (v26 >> 3) & 3;
          v28 = v27 - v29;
          v30 = v25 + 1;
          v31 = v27 - v29;
          v32 = v15;
          do
          {
            v33 = vmulq_f64(v30[-1], vnegq_f64(v32[-1]));
            v34 = vmulq_f64(*v30, vnegq_f64(*v32));
            v19 = v19 + v33.f64[0] + v33.f64[1] + v34.f64[0] + v34.f64[1];
            v30 += 2;
            v32 += 2;
            v31 -= 4;
          }

          while (v31);
          if (!v29)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v28 = 0;
        }

        v35 = v28 - v27;
        v36 = v28;
        v37 = &v25->f64[v36];
        v38 = &v14[v36 * 8];
        do
        {
          v39 = *v38++;
          v40 = v39;
          v41 = *v37++;
          v19 = v19 - v40 * v41;
        }

        while (!__CFADD__(v35++, 1));
      }

LABEL_13:
      *&v14[8 * *(v17 + 8)] = v19 / *(v17 + 16);
      if (v13-- <= 0)
      {
        goto LABEL_29;
      }
    }
  }

  operations_research::glop::LuFactorization::LeftSolveUWithNonZeros((a1 + 952), a2);
  operations_research::glop::RankOneUpdateFactorization::LeftSolveWithNonZeros(a1 + 512, a2);
  operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(a1 + 952, a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    v6 = 126 - 2 * __clz((v5 - v4) >> 2);
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v4, v5, v43, v7, 1);
    *(a2 + 24) = 1;
  }

  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (v8 != v9)
  {
LABEL_9:
    v10 = (v9 - v8) >> 2;
    v11 = **(a1 + 496);
    if (!v11)
    {
      return;
    }

LABEL_31:
    *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + v10 / v11 * (operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952)) * 0.000000002);
    return;
  }

LABEL_30:
  LODWORD(v10) = (*(a2 + 8) - *a2) >> 3;
  v11 = **(a1 + 496);
  if (v11)
  {
    goto LABEL_31;
  }
}

void operations_research::glop::RankOneUpdateFactorization::LeftSolveWithNonZeros(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (a2[4] == a2[5])
    {

      operations_research::glop::RankOneUpdateFactorization::LeftSolve(a1, a2);
    }

    else
    {
      operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
      v4 = a2[4];
      v5 = a2[5];
      if (v4 == v5)
      {
        v9 = (a1 + 8);
        v10 = 1;
      }

      else
      {
        v6 = a2[7];
        v7 = a2[4];
        do
        {
          v8 = *v7++;
          *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        }

        while (v7 != v5);
        v9 = (a1 + 8);
        v10 = *(a1 + 8) * ((a2[1] - *a2) >> 3) < ((v5 - v4) >> 2);
      }

      v11 = -1431655765 * ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
      if ((v11 & 0x80000000) == 0)
      {
        while (1)
        {
          v26 = *(a1 + 24);
          v27 = (v26 + 24 * v11);
          if (v10)
          {
            break;
          }

          operations_research::glop::RankOneUpdateElementaryMatrix::LeftSolveWithNonZeros((v26 + 24 * v11), a2);
          v28 = a2[4];
          v29 = a2[5];
          if (v28 == v29)
          {
LABEL_14:
            v10 = 1;
            v13 = v11-- <= 0;
            if (v13)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v10 = *v9 * ((a2[1] - *a2) >> 3) < ((v29 - v28) >> 2);
            v13 = v11-- <= 0;
            if (v13)
            {
              goto LABEL_25;
            }
          }
        }

        v12 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*v27, *(v27 + 2), a2) / v27[2];
        if (v12 != 0.0)
        {
          v14 = *(v27 + 3);
          v15 = *v27;
          v16 = *(*v27 + 56);
          v17 = *(v16 + 8 * v14);
          v18 = *(v16 + (((v14 << 32) + 0x100000000) >> 29));
          v13 = v18 <= v17;
          v19 = v18 - v17;
          if (!v13)
          {
            v20 = *a2;
            v21 = *(*&v15 + 8);
            v22 = (*(*&v15 + 32) + 4 * v17);
            v23 = (v21 + 8 * v17);
            do
            {
              v24 = *v23++;
              v25 = v24;
              LODWORD(v24) = *v22++;
              *(v20 + 8 * SLODWORD(v24)) = *(v20 + 8 * SLODWORD(v24)) + v12 * v25;
              --v19;
            }

            while (v19);
          }
        }

        goto LABEL_14;
      }

LABEL_25:
      operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
      v30 = a2[4];
      v31 = a2[5];
      if (v30 == v31 || *v9 * ((a2[1] - *a2) >> 3) < ((v31 - v30) >> 2))
      {
        operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
        a2[5] = a2[4];
      }

      *a1 = *a1 + *(a1 + 16) * 0.000000002;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/rank_one_update.h", 173, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
  }
}

void operations_research::glop::BasisFactorization::RightSolve(operations_research::glop::BasisFactorization *this, operations_research::glop::ScatteredColumn *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v45, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 360, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, "d", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v45, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v45);
    return;
  }

  if (*(this + 904) != 1)
  {
    *(a2 + 5) = *(a2 + 4);
    operations_research::glop::LuFactorization::RightSolve(this + 952, a2);
    v8 = *(this + 117);
    v9 = *(this + 116);
    v10 = v8 - v9;
    if (v8 == v9)
    {
      goto LABEL_34;
    }

    v11 = 0;
    v12 = 0;
    v13 = v10 >> 3;
    v14 = *a2;
    v15 = *a2 + 16;
    while (1)
    {
      v16 = *(v9 + 8 * v11);
      v17 = 8 * *(v16 + 8);
      v18 = *(v14 + v17);
      if (v18 == 0.0)
      {
        goto LABEL_11;
      }

      v19 = *(v16 + 56);
      v20 = v18 / *(v16 + 16);
      if (v19)
      {
        if (v19 >= 1)
        {
          v21 = *(v16 + 72);
          v22 = *(v16 + 80);
          do
          {
            v23 = *v22++;
            v24 = v23;
            LODWORD(v23) = *v21++;
            *(v14 + 8 * SLODWORD(v23)) = *(v14 + 8 * SLODWORD(v23)) - v24 * v20;
            --v19;
          }

          while (v19);
        }

        goto LABEL_10;
      }

      v25 = *(v16 + 24);
      v26 = *(v16 + 32) - v25;
      if ((v26 >> 3) >= 1)
      {
        v27 = (v26 >> 3) & 0x7FFFFFFF;
        if (v27 >= 4 && (v14 < v25 + 8 * v27 ? (v28 = v25 >= v14 + 8 * v27) : (v28 = 1), v28))
        {
          v29 = (v26 >> 3) & 3;
          v30 = v27 - v29;
          v31 = vdupq_lane_s64(*&v20, 0);
          v32 = (v25 + 16);
          v33 = v27 - v29;
          v34 = v15;
          do
          {
            v35 = vmlsq_f64(*v34, v31, *v32);
            v34[-1] = vmlsq_f64(v34[-1], v31, v32[-1]);
            *v34 = v35;
            v34 += 2;
            v32 += 2;
            v33 -= 4;
          }

          while (v33);
          if (!v29)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v30 = 0;
        }

        v36 = v30 - v27;
        v37 = 8 * v30;
        v38 = (v14 + 8 * v30);
        v39 = (v25 + v37);
        do
        {
          v40 = *v39++;
          *v38 = *v38 - v40 * v20;
          ++v38;
          v28 = __CFADD__(v36++, 1);
        }

        while (!v28);
      }

LABEL_10:
      *(v14 + v17) = v20;
LABEL_11:
      v11 = ++v12;
      if (v13 <= v12)
      {
        goto LABEL_34;
      }
    }
  }

  operations_research::glop::LuFactorization::RightSolveLWithNonZeros((this + 952), a2);
  operations_research::glop::RankOneUpdateFactorization::RightSolveWithNonZeros((this + 512), a2);
  operations_research::glop::LuFactorization::RightSolveUWithNonZeros((this + 952), a2);
  if ((*(a2 + 24) & 1) == 0)
  {
    v4 = *(a2 + 4);
    v5 = *(a2 + 5);
    v6 = 126 - 2 * __clz((v5 - v4) >> 2);
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v4, v5, v45, v7, 1);
    *(a2 + 24) = 1;
  }

LABEL_34:
  v41 = *(a2 + 4);
  v42 = *(a2 + 5);
  if (v41 == v42)
  {
    LODWORD(v43) = (*(a2 + 1) - *a2) >> 3;
    v44 = **(this + 62);
    if (v44)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v43 = (v42 - v41) >> 2;
    v44 = **(this + 62);
    if (v44)
    {
LABEL_36:
      *(this + 606) = *(this + 606) + *(this + 66) * 0.000000002 + v43 / v44 * (operations_research::glop::LuFactorization::NumberOfEntries((this + 952)) * 0.000000002);
    }
  }
}

void operations_research::glop::RankOneUpdateFactorization::RightSolveWithNonZeros(operations_research::glop::RankOneUpdateFactorization *this, operations_research::glop::ScatteredColumn *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v35, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/rank_one_update.h", 209, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "d", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v35);
    return;
  }

  if (*(a2 + 4) != *(a2 + 5))
  {
    operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
    v4 = *(a2 + 4);
    v5 = *(a2 + 5);
    if (v4 == v5)
    {
      v9 = (this + 8);
      v10 = 1;
      v11 = *(this + 4) - *(this + 3);
      if (!v11)
      {
LABEL_23:
        operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
        v33 = *(a2 + 4);
        v34 = *(a2 + 5);
        if (v33 == v34 || *v9 * ((*(a2 + 1) - *a2) >> 3) < ((v34 - v33) >> 2))
        {
          operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(a2);
          *(a2 + 5) = *(a2 + 4);
        }

        *this = *this + *(this + 2) * 0.000000002;
        return;
      }
    }

    else
    {
      v6 = *(a2 + 7);
      v7 = *(a2 + 4);
      do
      {
        v8 = *v7++;
        *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      }

      while (v7 != v5);
      v9 = (this + 8);
      v10 = *(this + 1) * ((*(a2 + 1) - *a2) >> 3) < (v5 - v4);
      v11 = *(this + 4) - *(this + 3);
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    v12 = 0;
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    while (1)
    {
      v29 = *(this + 3);
      v30 = (v29 + 24 * v12);
      if (v10)
      {
        break;
      }

      operations_research::glop::RankOneUpdateElementaryMatrix::RightSolveWithNonZeros((v29 + 24 * v12), a2);
      v31 = *(a2 + 4);
      v32 = *(a2 + 5);
      if (v31 == v32)
      {
LABEL_14:
        v10 = 1;
        v12 = ++v13;
        if (v14 <= v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = *v9 * ((*(a2 + 1) - *a2) >> 3) < ((v32 - v31) >> 2);
        v12 = ++v13;
        if (v14 <= v13)
        {
          goto LABEL_23;
        }
      }
    }

    v15 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*v30, *(v30 + 3), a2) / v30[2];
    if (v15 != 0.0)
    {
      v16 = *(v30 + 2);
      v17 = *v30;
      v18 = *(*v30 + 56);
      v19 = *(v18 + 8 * v16);
      v20 = *(v18 + (((v16 << 32) + 0x100000000) >> 29));
      v21 = v20 <= v19;
      v22 = v20 - v19;
      if (!v21)
      {
        v23 = *a2;
        v24 = *(*&v17 + 8);
        v25 = (*(*&v17 + 32) + 4 * v19);
        v26 = (v24 + 8 * v19);
        do
        {
          v27 = *v26++;
          v28 = v27;
          LODWORD(v27) = *v25++;
          *(v23 + 8 * SLODWORD(v27)) = *(v23 + 8 * SLODWORD(v27)) + v15 * v28;
          --v22;
        }

        while (v22);
      }
    }

    goto LABEL_14;
  }

  operations_research::glop::RankOneUpdateFactorization::RightSolve(this, a2);
}

uint64_t operations_research::glop::BasisFactorization::RightSolveForTau(operations_research::glop::BasisFactorization *this, const operations_research::glop::ScatteredColumn *a2)
{
  if (*(this + 904) == 1)
  {
    if (*(this + 688) == 1)
    {
      *(this + 688) = 0;
      operations_research::glop::LuFactorization::RightSolveLWithPermutedInput(this + 952, a2, this + 76);
LABEL_43:
      operations_research::glop::RankOneUpdateFactorization::RightSolveWithNonZeros((this + 512), (this + 608));
      operations_research::glop::LuFactorization::RightSolveUWithNonZeros((this + 952), (this + 608));
      goto LABEL_44;
    }

    v37 = **(this + 62);
    v38 = v37;
    v39 = (this + 608);
    v40 = *(this + 80);
    v41 = *(this + 81);
    if (v40 == v41 || v37 * 0.05 <= ((v41 - v40) >> 2))
    {
      v64 = 0;
      v44 = v37 << 32;
      v45 = *(this + 76);
      v46 = (*(this + 77) - v45) >> 3;
      v47 = a2;
      v48 = v37 >= v46;
      v49 = v37 - v46;
      if (v49 != 0 && v48)
      {
        std::vector<double>::__append(this + 608, v49, &v64);
        v45 = *v39;
      }

      else if (!v48)
      {
        *(this + 77) = &v45[8 * v37];
      }

      bzero(v45, v44 >> 29);
      a2 = v47;
      goto LABEL_42;
    }

    v42 = *v39;
    if (&v41[-1].u8[4] == v40)
    {
      v43 = *(this + 80);
    }

    else
    {
      v55 = ((&v41[-1].u8[4] - v40) >> 2) + 1;
      v43 = (v40 + 4 * (v55 & 0x7FFFFFFFFFFFFFFELL));
      v56 = v55 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v57 = *v40++;
        v58 = vshrq_n_s64(vshll_n_s32(v57, 0x20uLL), 0x1DuLL);
        *(v42 + v58.i64[0]) = 0;
        *(v42 + v58.i64[1]) = 0;
        v56 -= 2;
      }

      while (v56);
      if (v55 == (v55 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_54:
        v64 = 0;
        v60 = (*(this + 77) - v42) >> 3;
        v61 = v38 >= v60;
        v62 = v38 - v60;
        if (v62 != 0 && v61)
        {
          v63 = a2;
          std::vector<double>::__append(this + 608, v62, &v64);
          a2 = v63;
        }

        else if (!v61)
        {
          *(this + 77) = &v42[v38];
        }

LABEL_42:
        *(this + 81) = *(this + 80);
        operations_research::glop::LuFactorization::RightSolveLForScatteredColumn((this + 952), a2, (this + 608));
        goto LABEL_43;
      }
    }

    do
    {
      v59 = v43->i32[0];
      v43 = (v43 + 4);
      v42[v59] = 0;
    }

    while (v43 != v41);
    goto LABEL_54;
  }

  v3 = (this + 608);
  *(this + 81) = *(this + 80);
  if ((this + 608) != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 76, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
  }

  operations_research::glop::LuFactorization::RightSolve(this + 952, this + 76);
  v4 = *(this + 117);
  v5 = *(this + 116);
  v6 = v4 - v5;
  if (v4 != v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = v6 >> 3;
    v10 = *v3;
    v11 = *v3 + 16;
    do
    {
      v12 = *(v5 + 8 * v7);
      v13 = 8 * *(v12 + 8);
      v14 = *(v10 + v13);
      if (v14 == 0.0)
      {
        goto LABEL_9;
      }

      v15 = *(v12 + 56);
      v16 = v14 / *(v12 + 16);
      if (v15)
      {
        if (v15 >= 1)
        {
          v17 = *(v12 + 72);
          v18 = *(v12 + 80);
          do
          {
            v19 = *v18++;
            v20 = v19;
            LODWORD(v19) = *v17++;
            *(v10 + 8 * SLODWORD(v19)) = *(v10 + 8 * SLODWORD(v19)) - v20 * v16;
            --v15;
          }

          while (v15);
        }

        goto LABEL_8;
      }

      v21 = *(v12 + 24);
      v22 = *(v12 + 32) - v21;
      if ((v22 >> 3) >= 1)
      {
        v23 = (v22 >> 3) & 0x7FFFFFFF;
        if (v23 >= 4 && (v10 < v21 + 8 * v23 ? (v24 = v21 >= v10 + 8 * v23) : (v24 = 1), v24))
        {
          v25 = (v22 >> 3) & 3;
          v26 = v23 - v25;
          v27 = vdupq_lane_s64(*&v16, 0);
          v28 = (v21 + 16);
          v29 = v23 - v25;
          v30 = v11;
          do
          {
            v31 = vmlsq_f64(*v30, v27, *v28);
            v30[-1] = vmlsq_f64(v30[-1], v27, v28[-1]);
            *v30 = v31;
            v30 += 2;
            v28 += 2;
            v29 -= 4;
          }

          while (v29);
          if (!v25)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v26 = 0;
        }

        v32 = v26 - v23;
        v33 = 8 * v26;
        v34 = (v10 + 8 * v26);
        v35 = (v21 + v33);
        do
        {
          v36 = *v35++;
          *v34 = *v34 - v36 * v16;
          ++v34;
          v24 = __CFADD__(v32++, 1);
        }

        while (!v24);
      }

LABEL_8:
      *(v10 + v13) = v16;
LABEL_9:
      v7 = ++v8;
    }

    while (v9 > v8);
  }

LABEL_44:
  *(this + 689) = 1;
  v50 = *(this + 80);
  v51 = *(this + 81);
  if (v50 == v51)
  {
    LODWORD(v52) = (*(this + 77) - *(this + 76)) >> 3;
    v53 = **(this + 62);
    if (!v53)
    {
      return this + 608;
    }

    goto LABEL_46;
  }

  v52 = (v51 - v50) >> 2;
  v53 = **(this + 62);
  if (v53)
  {
LABEL_46:
    *(this + 606) = *(this + 606) + *(this + 66) * 0.000000002 + v52 / v53 * (operations_research::glop::LuFactorization::NumberOfEntries((this + 952)) * 0.000000002);
  }

  return this + 608;
}

void operations_research::glop::BasisFactorization::LeftSolveForUnitRow(uint64_t a1, signed int a2, uint64_t a3)
{
  v50 = a2;
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v49, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 403, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v49, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v49);
    return;
  }

  v6 = **(a1 + 496);
  v7 = v6;
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  v10 = (a3 + 32);
  if (v9 != v8 && v6 * 0.05 > ((v8 - v9) >> 2))
  {
    v11 = *a3;
    if (&v8[-1].u8[4] == v9)
    {
      v12 = *(a3 + 32);
    }

    else
    {
      v21 = ((&v8[-1].u8[4] - v9) >> 2) + 1;
      v12 = (v9 + 4 * (v21 & 0x7FFFFFFFFFFFFFFELL));
      v22 = v21 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v23 = *v9++;
        v24 = vshrq_n_s64(vshll_n_s32(v23, 0x20uLL), 0x1DuLL);
        *(v11 + v24.i64[0]) = 0;
        *(v11 + v24.i64[1]) = 0;
        v22 -= 2;
      }

      while (v22);
      if (v21 == (v21 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_20:
        v49[0] = 0;
        v26 = (*(a3 + 8) - v11) >> 3;
        if (v7 <= v26)
        {
          if (v7 < v26)
          {
            *(a3 + 8) = v11 + 8 * v7;
          }
        }

        else
        {
          std::vector<double>::__append(a3, v7 - v26, v49);
        }

        goto LABEL_11;
      }
    }

    do
    {
      v25 = v12->i32[0];
      v12 = (v12 + 4);
      *(v11 + 8 * v25) = 0;
    }

    while (v12 != v8);
    goto LABEL_20;
  }

  v49[0] = 0;
  v13 = v6 << 32;
  v14 = *a3;
  v15 = (*(a3 + 8) - *a3) >> 3;
  if (v6 <= v15)
  {
    if (v6 < v15)
    {
      *(a3 + 8) = &v14[8 * v6];
    }
  }

  else
  {
    std::vector<double>::__append(a3, v6 - v15, v49);
    v14 = *a3;
  }

  bzero(v14, v13 >> 29);
LABEL_11:
  *(a3 + 40) = *(a3 + 32);
  if ((*(a1 + 904) & 1) == 0)
  {
    *(*a3 + 8 * a2) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](v10, &v50);
    operations_research::glop::EtaFactorization::SparseLeftSolve(a1 + 920, a3, v10);
    operations_research::glop::LuFactorization::LeftSolve((a1 + 952), a3);
    goto LABEL_46;
  }

  v16 = (a1 + 856);
  v17 = *(a1 + 856);
  v18 = *(a1 + 864) - v17;
  if (a2 >= (v18 >> 2))
  {
    v19 = a2 + 1;
    v20 = v18 >> 2;
    if (v19 <= v20)
    {
      if (v19 < v20)
      {
        *(a1 + 864) = v17 + 4 * v19;
      }
    }

    else
    {
      std::vector<int>::__append((a1 + 856), v19 - v20, &operations_research::glop::kInvalidCol);
      v17 = *v16;
    }
  }

  v27 = *(v17 + 4 * a2);
  if (v27 == -1)
  {
    v30 = operations_research::glop::LuFactorization::LeftSolveUForUnitRow(a1 + 952, a2, a3);
    if (*(a3 + 32) == *(a3 + 40))
    {
      v31 = operations_research::glop::CompactSparseMatrix::AddDenseColumnPrefix(a1 + 696, *a3, (*(a3 + 8) - *a3) >> 3, v30);
    }

    else
    {
      v31 = operations_research::glop::CompactSparseMatrix::AddDenseColumnWithNonZeros(a1 + 696, a3, v10);
    }

    *(*v16 + 4 * a2) = v31;
    operations_research::glop::RankOneUpdateFactorization::LeftSolveWithNonZeros(a1 + 512, a3);
    if (*(a1 + 689) == 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v28 = *(a1 + 696);
    v49[0] = 0;
    v29 = (*(a3 + 8) - *a3) >> 3;
    if (v28 <= v29)
    {
      if (v28 < v29)
      {
        *(a3 + 8) = *a3 + 8 * v28;
      }
    }

    else
    {
      std::vector<double>::__append(a3, v28 - v29, v49);
    }

    *(a3 + 40) = *(a3 + 32);
    v32 = *(a1 + 752);
    v33 = *(v32 + 8 * v27);
    v34 = *(v32 + (((v27 << 32) + 0x100000000) >> 29));
    v35 = v34 - v33;
    if (v34 > v33)
    {
      v36 = (*(a1 + 704) + 8 * v33);
      v37 = (*(a1 + 728) + 4 * v33);
      do
      {
        v39 = *v37++;
        v38 = v39;
        LODWORD(v49[0]) = v39;
        v40 = *v36++;
        *(*a3 + 8 * v38) = v40;
        std::vector<int>::push_back[abi:ne200100](v10, v49);
        --v35;
      }

      while (v35);
    }

    operations_research::glop::RankOneUpdateFactorization::LeftSolveWithNonZeros(a1 + 512, a3);
    if (*(a1 + 689) == 1)
    {
LABEL_37:
      *(a1 + 688) = operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(a1 + 952, a3, (a1 + 608));
      if (*(a3 + 24))
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }
  }

  *(a1 + 688) = 0;
  operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(a1 + 952, a3);
  *(a1 + 689) = 0;
  if (*(a3 + 24))
  {
    goto LABEL_46;
  }

LABEL_42:
  v41 = *(a3 + 32);
  v42 = *(a3 + 40);
  v43 = 126 - 2 * __clz((v42 - v41) >> 2);
  if (v42 == v41)
  {
    v44 = 0;
  }

  else
  {
    v44 = v43;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v41, v42, v49, v44, 1);
  *(a3 + 24) = 1;
LABEL_46:
  v45 = *(a3 + 32);
  v46 = *(a3 + 40);
  if (v45 == v46)
  {
    LODWORD(v47) = (*(a3 + 8) - *a3) >> 3;
    v48 = **(a1 + 496);
    if (!v48)
    {
      return;
    }
  }

  else
  {
    v47 = (v46 - v45) >> 2;
    v48 = **(a1 + 496);
    if (!v48)
    {
      return;
    }
  }

  *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + v47 / v48 * (operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952)) * 0.000000002);
}

void sub_23C9DA8B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::BasisFactorization::TemporaryLeftSolveForUnitRow(uint64_t a1, signed int a2, uint64_t a3)
{
  if (*(a1 + 912))
  {
    operations_research::glop::BasisFactorization::TemporaryLeftSolveForUnitRow(v29);
  }

  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v29, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 459, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v29);
    return;
  }

  v6 = **(a1 + 496);
  v7 = v6;
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  if (v9 != v8 && v6 * 0.05 > ((v8 - v9) >> 2))
  {
    v10 = *a3;
    if (&v8[-1].u8[4] == v9)
    {
      v11 = *(a3 + 32);
    }

    else
    {
      v23 = ((&v8[-1].u8[4] - v9) >> 2) + 1;
      v11 = (v9 + 4 * (v23 & 0x7FFFFFFFFFFFFFFELL));
      v24 = v23 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v25 = *v9++;
        v26 = vshrq_n_s64(vshll_n_s32(v25, 0x20uLL), 0x1DuLL);
        *&v10[v26.i64[0]] = 0;
        *&v10[v26.i64[1]] = 0;
        v24 -= 2;
      }

      while (v24);
      if (v23 == (v23 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_26:
        v29[0] = 0;
        v28 = (*(a3 + 8) - v10) >> 3;
        if (v7 <= v28)
        {
          if (v7 < v28)
          {
            *(a3 + 8) = &v10[8 * v7];
          }
        }

        else
        {
          std::vector<double>::__append(a3, v7 - v28, v29);
        }

        goto LABEL_12;
      }
    }

    do
    {
      v27 = v11->i32[0];
      v11 = (v11 + 4);
      *&v10[8 * v27] = 0;
    }

    while (v11 != v8);
    goto LABEL_26;
  }

  v29[0] = 0;
  v12 = v6 << 32;
  v13 = *a3;
  v14 = (*(a3 + 8) - *a3) >> 3;
  if (v6 <= v14)
  {
    if (v6 < v14)
    {
      *(a3 + 8) = &v13[8 * v6];
    }
  }

  else
  {
    std::vector<double>::__append(a3, v6 - v14, v29);
    v13 = *a3;
  }

  bzero(v13, v12 >> 29);
LABEL_12:
  *(a3 + 40) = *(a3 + 32);
  operations_research::glop::LuFactorization::LeftSolveUForUnitRow(a1 + 952, a2, a3);
  operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(a1 + 952, a3);
  if ((*(a3 + 24) & 1) == 0)
  {
    v15 = *(a3 + 32);
    v16 = *(a3 + 40);
    v17 = 126 - 2 * __clz((v16 - v15) >> 2);
    if (v16 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v15, v16, v29, v18, 1);
    *(a3 + 24) = 1;
  }

  v19 = *(a3 + 32);
  v20 = *(a3 + 40);
  if (v19 != v20)
  {
    v21 = (v20 - v19) >> 2;
    v22 = **(a1 + 496);
    if (!v22)
    {
      return;
    }

LABEL_21:
    *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + v21 / v22 * (operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952)) * 0.000000002);
    return;
  }

  LODWORD(v21) = (*(a3 + 8) - *a3) >> 3;
  v22 = **(a1 + 496);
  if (v22)
  {
    goto LABEL_21;
  }
}

void operations_research::glop::BasisFactorization::RightSolveForProblemColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/basis_representation.cc", 471, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, "d", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v88);
    return;
  }

  v6 = **(a1 + 496);
  v7 = v6;
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  v10 = (a3 + 32);
  if (v9 != v8 && v6 * 0.05 > ((v8 - v9) >> 2))
  {
    v11 = *a3;
    if (&v8[-1].u8[4] == v9)
    {
      v12 = *(a3 + 32);
    }

    else
    {
      v71 = ((&v8[-1].u8[4] - v9) >> 2) + 1;
      v12 = (v9 + 4 * (v71 & 0x7FFFFFFFFFFFFFFELL));
      v72 = v71 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v73 = *v9++;
        v74 = vshrq_n_s64(vshll_n_s32(v73, 0x20uLL), 0x1DuLL);
        *&v11[v74.i64[0]] = 0;
        *&v11[v74.i64[1]] = 0;
        v72 -= 2;
      }

      while (v72);
      if (v71 == (v71 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_52:
        v88[0] = 0;
        v76 = (*(a3 + 8) - v11) >> 3;
        if (v7 <= v76)
        {
          if (v7 < v76)
          {
            *(a3 + 8) = &v11[8 * v7];
          }
        }

        else
        {
          std::vector<double>::__append(a3, v7 - v76, v88);
        }

        goto LABEL_11;
      }
    }

    do
    {
      v75 = v12->i32[0];
      v12 = (v12 + 4);
      *&v11[8 * v75] = 0;
    }

    while (v12 != v8);
    goto LABEL_52;
  }

  v88[0] = 0;
  v13 = v6 << 32;
  v14 = *a3;
  v15 = (*(a3 + 8) - *a3) >> 3;
  if (v6 <= v15)
  {
    if (v6 < v15)
    {
      *(a3 + 8) = &v14[8 * v6];
    }
  }

  else
  {
    std::vector<double>::__append(a3, v6 - v15, v88);
    v14 = *a3;
  }

  bzero(v14, v13 >> 29);
LABEL_11:
  *(a3 + 40) = *(a3 + 32);
  if (*(a1 + 904))
  {
    v16 = *(a1 + 496);
    v17 = v16[7];
    v18 = *(v17 + 8 * a2);
    v19 = (a2 << 32) + 0x100000000;
    v20 = v16[4] + 4 * v18;
    v21 = v16[1] + 8 * v18;
    v88[0] = *(v17 + (v19 >> 29)) - v18;
    v88[1] = v20;
    v88[2] = v21;
    operations_research::glop::LuFactorization::RightSolveLForColumnView((a1 + 952), v88, a3);
    operations_research::glop::RankOneUpdateFactorization::RightSolveWithNonZeros((a1 + 512), a3);
    v22 = *(a1 + 880);
    v23 = *(a1 + 888) - v22;
    if (a2 >= (v23 >> 2))
    {
      v24 = v23 >> 2;
      if (v19 >> 32 <= v24)
      {
        if (v19 >> 32 < v24)
        {
          *(a1 + 888) = v22 + 4 * (v19 >> 32);
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 880), (v19 >> 32) - v24, &operations_research::glop::kInvalidCol);
      }
    }

    v77 = *v10;
    v78 = v10[1];
    if (*v10 == v78)
    {
      v79 = operations_research::glop::CompactSparseMatrix::AddDenseColumn(a1 + 776, a3);
    }

    else
    {
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(*v10, v78, v88, 126 - 2 * __clz((v78 - *v10) >> 2), 1);
      v79 = operations_research::glop::CompactSparseMatrix::AddDenseColumnWithNonZeros(a1 + 776, a3, v10);
    }

    *(*(a1 + 880) + 4 * a2) = v79;
    operations_research::glop::LuFactorization::RightSolveUWithNonZeros((a1 + 952), a3);
    if ((*(a3 + 24) & 1) == 0)
    {
      v80 = *(a3 + 32);
      v81 = *(a3 + 40);
      v82 = 126 - 2 * __clz((v81 - v80) >> 2);
      if (v81 == v80)
      {
        v83 = 0;
      }

      else
      {
        v83 = v82;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v80, v81, v88, v83, 1);
      *(a3 + 24) = 1;
    }

    goto LABEL_66;
  }

  v25 = *(a1 + 496);
  v26 = *v25;
  v88[0] = 0;
  v27 = (*(a3 + 8) - *a3) >> 3;
  if (v26 <= v27)
  {
    if (v26 < v27)
    {
      *(a3 + 8) = *a3 + 8 * v26;
    }
  }

  else
  {
    std::vector<double>::__append(a3, v26 - v27, v88);
  }

  v28 = v25[7];
  v29 = *(v28 + 8 * a2);
  v30 = *(v28 + (((a2 << 32) + 0x100000000) >> 29));
  v31 = v30 <= v29;
  v32 = v30 - v29;
  if (!v31)
  {
    v33 = *a3;
    v34 = (v25[4] + 4 * v29);
    v35 = (v25[1] + 8 * v29);
    do
    {
      v36 = *v35++;
      v37 = v36;
      LODWORD(v36) = *v34++;
      *(v33 + 8 * v36) = v37;
      --v32;
    }

    while (v32);
  }

  operations_research::glop::LuFactorization::RightSolve(a1 + 952, a3);
  v38 = *(a1 + 936);
  v39 = *(a1 + 928);
  v40 = v38 - v39;
  if (v38 != v39)
  {
    v41 = 0;
    v42 = 0;
    v43 = v40 >> 3;
    v44 = *a3;
    v45 = *a3 + 16;
    do
    {
      v46 = *(v39 + 8 * v41);
      v47 = 8 * *(v46 + 8);
      v48 = *(v44 + v47);
      if (v48 == 0.0)
      {
        goto LABEL_25;
      }

      v49 = *(v46 + 56);
      v50 = v48 / *(v46 + 16);
      if (v49)
      {
        if (v49 >= 1)
        {
          v51 = *(v46 + 72);
          v52 = *(v46 + 80);
          do
          {
            v53 = *v52++;
            v54 = v53;
            LODWORD(v53) = *v51++;
            *(v44 + 8 * SLODWORD(v53)) = *(v44 + 8 * SLODWORD(v53)) - v54 * v50;
            --v49;
          }

          while (v49);
        }

        goto LABEL_24;
      }

      v55 = *(v46 + 24);
      v56 = *(v46 + 32) - v55;
      if ((v56 >> 3) >= 1)
      {
        v57 = (v56 >> 3) & 0x7FFFFFFF;
        if (v57 >= 4 && (v44 < v55 + 8 * v57 ? (v58 = v55 >= v44 + 8 * v57) : (v58 = 1), v58))
        {
          v59 = (v56 >> 3) & 3;
          v60 = v57 - v59;
          v61 = vdupq_lane_s64(*&v50, 0);
          v62 = (v55 + 16);
          v63 = v57 - v59;
          v64 = v45;
          do
          {
            v65 = vmlsq_f64(*v64, v61, *v62);
            v64[-1] = vmlsq_f64(v64[-1], v61, v62[-1]);
            *v64 = v65;
            v64 += 2;
            v62 += 2;
            v63 -= 4;
          }

          while (v63);
          if (!v59)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v60 = 0;
        }

        v66 = v60 - v57;
        v67 = 8 * v60;
        v68 = (v44 + 8 * v60);
        v69 = (v55 + v67);
        do
        {
          v70 = *v69++;
          *v68 = *v68 - v70 * v50;
          ++v68;
          v58 = __CFADD__(v66++, 1);
        }

        while (!v58);
      }

LABEL_24:
      *(v44 + v47) = v50;
LABEL_25:
      v41 = ++v42;
    }

    while (v43 > v42);
  }

LABEL_66:
  v84 = *(a3 + 32);
  v85 = *(a3 + 40);
  if (v84 == v85)
  {
    LODWORD(v86) = (*(a3 + 8) - *a3) >> 3;
    v87 = **(a1 + 496);
    if (!v87)
    {
      return;
    }
  }

  else
  {
    v86 = (v85 - v84) >> 2;
    v87 = **(a1 + 496);
    if (!v87)
    {
      return;
    }
  }

  *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + v86 / v87 * (operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952)) * 0.000000002);
}

void sub_23C9DB11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double operations_research::glop::BasisFactorization::RightSolveSquaredNorm(uint64_t a1, unint64_t *a2)
{
  v3 = **(a1 + 496);
  if (v3)
  {
    v4 = *a2 / v3;
    v5 = a2;
    v6 = operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952));
    a2 = v5;
    *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + v4 * (v6 * 0.000000002);
  }

  return operations_research::glop::LuFactorization::RightSolveSquaredNorm(a1 + 952, a2);
}

double operations_research::glop::BasisFactorization::DualEdgeSquaredNorm(uint64_t a1, signed int a2)
{
  v4 = **(a1 + 496);
  if (v4)
  {
    *(a1 + 4848) = *(a1 + 4848) + *(a1 + 528) * 0.000000002 + 1.0 / v4 * (operations_research::glop::LuFactorization::NumberOfEntries((a1 + 952)) * 0.000000002);
  }

  return operations_research::glop::LuFactorization::DualEdgeSquaredNorm(a1 + 952, a2);
}

double operations_research::glop::BasisFactorization::ComputeInfinityNormConditionNumberUpperBound(operations_research::glop::BasisFactorization *this)
{
  v1 = *(this + 62);
  v2 = *v1;
  if (v2 < 1)
  {
    return 1.0;
  }

  v4 = **(this + 63);
  v5 = v1[7];
  v6 = *v4;
  v7 = *(v5 + 8 * v6);
  if (*(v5 + (((v6 << 32) + 0x100000000) >> 29)) - v7 != 1)
  {
    goto LABEL_16;
  }

  v8 = v1[1];
  v9 = v1[4];
  if (*(v9 + 4 * v7) || *(v8 + 8 * v7) != 1.0)
  {
    goto LABEL_16;
  }

  v11 = 1;
  do
  {
    v12 = v11;
    if (v2 == v11)
    {
      break;
    }

    v13 = v4[v11];
    v14 = *(v5 + 8 * v13);
    if (*(v5 + (((v13 << 32) + 0x100000000) >> 29)) - v14 != 1)
    {
      break;
    }

    v15 = *(v8 + 8 * v14);
    v16 = *(v9 + 4 * v14);
    v11 = v12 + 1;
  }

  while (v12 == v16 && v15 == 1.0);
  result = 1.0;
  if (v12 < v2)
  {
LABEL_16:
    *(this + 606) = *(this + 606) + *(this + 66) * 0.000000002 + v2 / v2 * (operations_research::glop::LuFactorization::NumberOfEntries((this + 952)) * 0.000000002);
    v19 = *(this + 62);
    v20 = *v19;
    if (v20 < 1)
    {
      v36 = 1.0;
    }

    else
    {
      v21 = *(this + 63);
      v22 = *v21;
      v23 = v19[7];
      v24 = **v21;
      v25 = *(v23 + 8 * v24);
      if (*(v23 + (((v24 << 32) + 0x100000000) >> 29)) - v25 != 1)
      {
        goto LABEL_31;
      }

      v26 = v19[1];
      v27 = v19[4];
      if (*(v27 + 4 * v25) || *(v26 + 8 * v25) != 1.0)
      {
        goto LABEL_31;
      }

      v29 = 1;
      do
      {
        v30 = v29;
        if (v20 == v29)
        {
          break;
        }

        v31 = v22[v29];
        v32 = *(v23 + 8 * v31);
        if (*(v23 + (((v31 << 32) + 0x100000000) >> 29)) - v32 != 1)
        {
          break;
        }

        v33 = *(v26 + 8 * v32);
        v34 = *(v27 + 4 * v32);
        v29 = v30 + 1;
      }

      while (v30 == v34 && v33 == 1.0);
      v36 = 1.0;
      if (v30 < v20)
      {
LABEL_31:
        v37 = (v21[1] - v22);
        v38[0] = *(this + 62);
        v38[1] = v22;
        v38[2] = v37;
        v36 = operations_research::glop::CompactSparseMatrixView::ComputeInfinityNorm(v38);
      }
    }

    return v36 * operations_research::glop::LuFactorization::ComputeInverseInfinityNormUpperBound((this + 952));
  }

  return result;
}

char *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void operations_research::glop::LuFactorization::~LuFactorization(operations_research::glop::LuFactorization *this)
{
  operations_research::glop::Markowitz::~Markowitz((this + 1976));
  operations_research::glop::GlopParameters::~GlopParameters((this + 1648));
  *(this + 196) = &unk_284F3A5F8;
  if (*(this + 1599) < 0)
  {
    operator delete(*(this + 197));
    *(this + 186) = &unk_284F3A5F8;
    if ((*(this + 1519) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup((this + 1408));
      v2 = *(this + 173);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    *(this + 186) = &unk_284F3A5F8;
    if ((*(this + 1519) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 187));
  operations_research::StatsGroup::~StatsGroup((this + 1408));
  v2 = *(this + 173);
  if (v2)
  {
LABEL_4:
    *(this + 174) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(this + 170);
  if (v3)
  {
    *(this + 171) = v3;
    operator delete(v3);
  }

  v4 = *(this + 164);
  *(this + 164) = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8077774924);
  }

  v5 = *(this + 161);
  if (v5)
  {
    *(this + 162) = v5;
    operator delete(v5);
  }

  v6 = *(this + 158);
  if (v6)
  {
    *(this + 159) = v6;
    operator delete(v6);
  }

  v7 = *(this + 155);
  if (v7)
  {
    *(this + 156) = v7;
    operator delete(v7);
  }

  v8 = *(this + 152);
  if (v8)
  {
    *(this + 153) = v8;
    operator delete(v8);
  }

  v9 = *(this + 149);
  if (v9)
  {
    *(this + 150) = v9;
    operator delete(v9);
  }

  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 896));
  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 600));
  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 304));
  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 8));
}

void operations_research::glop::Markowitz::~Markowitz(operations_research::glop::Markowitz *this)
{
  operations_research::glop::GlopParameters::~GlopParameters((this + 1576));
  v2 = *(this + 194);
  if (v2)
  {
    *(this + 195) = v2;
    operator delete(v2);
  }

  v3 = *(this + 191);
  if (v3)
  {
    *(this + 192) = v3;
    operator delete(v3);
  }

  v4 = *(this + 188);
  if (v4)
  {
    *(this + 189) = v4;
    operator delete(v4);
  }

  v5 = *(this + 183);
  if (v5)
  {
    v6 = *(this + 184);
    v7 = *(this + 183);
    if (v6 != v5)
    {
      v8 = *(this + 184);
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 16) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = *(this + 183);
    }

    *(this + 184) = v5;
    operator delete(v7);
  }

  v11 = *(this + 180);
  if (v11)
  {
    *(this + 181) = v11;
    operator delete(v11);
  }

  v12 = *(this + 177);
  if (v12)
  {
    *(this + 178) = v12;
    operator delete(v12);
  }

  operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern((this + 1264));
  v13 = *(this + 155);
  if (v13)
  {
    operator delete(v13);
  }

  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 944));
  operations_research::glop::TriangularMatrix::~TriangularMatrix((this + 648));
  v14 = *(this + 78);
  if (v14)
  {
    v15 = *(this + 79);
    v16 = *(this + 78);
    if (v15 != v14)
    {
      do
      {
        v18 = *(v15 - 6);
        v15 -= 6;
        v17 = v18;
        *v15 = 0;
        if (v18)
        {
          MEMORY[0x23EED9440](v17, 0x1000C8077774924);
        }
      }

      while (v15 != v14);
      v16 = *(this + 78);
    }

    *(this + 79) = v14;
    operator delete(v16);
  }

  v19 = *(this + 75);
  if (v19)
  {
    *(this + 76) = v19;
    operator delete(v19);
  }

  v20 = *(this + 72);
  if (v20)
  {
    *(this + 73) = v20;
    operator delete(v20);
  }

  v21 = *(this + 66);
  *(this + 66) = 0;
  if (v21)
  {
    MEMORY[0x23EED9440](v21, 0x1000C8077774924);
  }

  v22 = *(this + 63);
  if (v22)
  {
    v23 = *(this + 64);
    v24 = *(this + 63);
    if (v23 != v22)
    {
      do
      {
        v26 = *(v23 - 6);
        v23 -= 6;
        v25 = v26;
        *v23 = 0;
        if (v26)
        {
          MEMORY[0x23EED9440](v25, 0x1000C8077774924);
        }
      }

      while (v23 != v22);
      v24 = *(this + 63);
    }

    *(this + 64) = v22;
    operator delete(v24);
  }

  v27 = *(this + 60);
  if (v27)
  {
    *(this + 61) = v27;
    operator delete(v27);
  }

  v28 = *(this + 57);
  if (v28)
  {
    *(this + 58) = v28;
    operator delete(v28);
  }

  v29 = *(this + 51);
  *(this + 51) = 0;
  if (v29)
  {
    MEMORY[0x23EED9440](v29, 0x1000C8077774924);
  }

  *(this + 40) = &unk_284F3A5F8;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
LABEL_51:
      *(this + 20) = &unk_284F3A5F8;
      if ((*(this + 191) & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_58;
    }
  }

  else
  {
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
      goto LABEL_51;
    }
  }

  operator delete(*(this + 31));
  *(this + 20) = &unk_284F3A5F8;
  if ((*(this + 191) & 0x80000000) == 0)
  {
LABEL_52:
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_53:
    v30 = this;

    goto LABEL_55;
  }

LABEL_59:
  operator delete(*(this + 11));
  v30 = this;

LABEL_55:
  operations_research::StatsGroup::~StatsGroup(v30);
}

void operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern(operations_research::glop::MatrixNonZeroPattern *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    v8 = *(this + 1);
    v9 = *this;
    if (v8 != v7)
    {
      v10 = *(this + 1);
      do
      {
        v11 = *(v10 - 32);
        v10 -= 32;
        if (v11)
        {
          operator delete(*(v8 - 24));
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *this;
    }

    *(this + 1) = v7;
    operator delete(v9);
  }
}

void operations_research::glop::TriangularMatrix::~TriangularMatrix(operations_research::glop::TriangularMatrix *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  v8 = *(this + 15);
  if (v8)
  {
    *(this + 16) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }

  v11 = *(this + 4);
  if (v11)
  {
    *(this + 5) = v11;
    operator delete(v11);
  }

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

void std::vector<operations_research::glop::RankOneUpdateElementaryMatrix>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void operations_research::glop::RankOneUpdateFactorization::LeftSolve(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = -1431655765 * ((*(a1 + 32) - *(a1 + 24)) >> 3) - 1;
    if ((v3 & 0x80000000) == 0)
    {
      do
      {
        v6 = *(a1 + 24) + 24 * v3;
        v7 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*v6, *(v6 + 8), a2) / *(v6 + 16);
        if (v7 != 0.0)
        {
          v8 = *(v6 + 12);
          v9 = *v6;
          v10 = *(*v6 + 56);
          v11 = *(v10 + 8 * v8);
          v12 = *(v10 + (((v8 << 32) + 0x100000000) >> 29));
          v5 = v12 <= v11;
          v13 = v12 - v11;
          if (!v5)
          {
            v14 = *a2;
            v15 = *(v9 + 8);
            v16 = (*(v9 + 32) + 4 * v11);
            v17 = (v15 + 8 * v11);
            do
            {
              v18 = *v17++;
              v19 = v18;
              LODWORD(v18) = *v16++;
              *(v14 + 8 * SLODWORD(v18)) = *(v14 + 8 * SLODWORD(v18)) + v7 * v19;
              --v13;
            }

            while (v13);
          }
        }

        v5 = v3-- <= 0;
      }

      while (!v5);
    }

    *a1 = *a1 + *(a1 + 16) * 0.000000002;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/rank_one_update.h", 163, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "y", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }
}

void operations_research::glop::RankOneUpdateElementaryMatrix::LeftSolveWithNonZeros(double *a1, uint64_t a2)
{
  v4 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*a1, *(a1 + 2), a2) / a1[2];
  if (v4 != 0.0)
  {
    v5 = *(a1 + 3);
    v6 = *a1;
    v7 = *(*a1 + 56);
    v8 = *(v7 + 8 * v5);
    v9 = *(v7 + (((v5 << 32) + 0x100000000) >> 29));
    v10 = v9 - v8;
    if (v9 > v8)
    {
      v11 = (*(*&v6 + 8) + 8 * v8);
      v12 = (*(*&v6 + 32) + 4 * v8);
      do
      {
        v13 = *v12++;
        v14 = v4 * *v11;
        v15 = *a2;
        v16 = 8 * v13;
        v17 = *(*a2 + v16);
        v24 = v13;
        *(v15 + v16) = v14 + v17;
        v18 = *(a2 + 56);
        v19 = v13 >> 6;
        v20 = 1 << v13;
        v21 = *(v18 + 8 * (v13 >> 6));
        v22 = v21 & (1 << v13);
        if (v14 != 0.0 && v22 == 0)
        {
          *(v18 + 8 * v19) = v21 | v20;
          std::vector<int>::push_back[abi:ne200100](a2 + 32, &v24);
          *(a2 + 24) = 0;
        }

        ++v11;
        --v10;
      }

      while (v10);
    }
  }
}

void operations_research::glop::ScatteredVector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::ScatteredRowEntry>>::ClearSparseMask(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  if (v1 == v2)
  {
    v4 = a1[1] - *a1;
    goto LABEL_8;
  }

  v3 = ((v2 - v1) >> 2);
  v4 = a1[1] - *a1;
  if ((v4 >> 3) * 0.8 < v3)
  {
LABEL_8:
    v10 = 0;
    std::vector<BOOL>::assign((a1 + 7), (v4 >> 3), &v10);
    return;
  }

  std::vector<BOOL>::resize((a1 + 7), (v4 >> 3), 0);
  v6 = a1[4];
  v7 = a1[5];
  if (v6 != v7)
  {
    v8 = a1[7];
    do
    {
      v9 = *v6++;
      *(v8 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v9);
    }

    while (v6 != v7);
  }
}

void operations_research::glop::RankOneUpdateFactorization::RightSolve(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32) - *(a1 + 24);
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
      do
      {
        v8 = *(a1 + 24) + 24 * v5;
        v9 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*v8, *(v8 + 12), a2) / *(v8 + 16);
        if (v9 != 0.0)
        {
          v10 = *(v8 + 8);
          v11 = *v8;
          v12 = *(*v8 + 56);
          v13 = *(v12 + 8 * v10);
          v14 = *(v12 + (((v10 << 32) + 0x100000000) >> 29));
          v15 = v14 <= v13;
          v16 = v14 - v13;
          if (!v15)
          {
            v17 = *a2;
            v18 = *(v11 + 8);
            v19 = (*(v11 + 32) + 4 * v13);
            v20 = (v18 + 8 * v13);
            do
            {
              v21 = *v20++;
              v22 = v21;
              LODWORD(v21) = *v19++;
              *(v17 + 8 * SLODWORD(v21)) = *(v17 + 8 * SLODWORD(v21)) + v9 * v22;
              --v16;
            }

            while (v16);
          }
        }

        v5 = ++v6;
      }

      while (v7 > v6);
    }

    *a1 = *a1 + *(a1 + 16) * 0.000000002;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/rank_one_update.h", 198, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "d", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v23);
  }
}

void operations_research::glop::RankOneUpdateElementaryMatrix::RightSolveWithNonZeros(operations_research::glop::RankOneUpdateElementaryMatrix *this, operations_research::glop::ScatteredColumn *a2)
{
  v4 = -operations_research::glop::CompactSparseMatrix::ColumnScalarProduct(*this, *(this + 3), a2) / *(this + 2);
  if (v4 != 0.0)
  {
    v5 = *(this + 2);
    v6 = *this;
    v7 = *(*this + 56);
    v8 = *(v7 + 8 * v5);
    v9 = *(v7 + (((v5 << 32) + 0x100000000) >> 29));
    v10 = v9 - v8;
    if (v9 > v8)
    {
      v11 = (*(*&v6 + 8) + 8 * v8);
      v12 = (*(*&v6 + 32) + 4 * v8);
      do
      {
        v13 = *v12++;
        v14 = v4 * *v11;
        v15 = *a2;
        v16 = 8 * v13;
        v17 = *(*a2 + v16);
        v24 = v13;
        *(v15 + v16) = v14 + v17;
        v18 = *(a2 + 7);
        v19 = v13 >> 6;
        v20 = 1 << v13;
        v21 = *(v18 + 8 * (v13 >> 6));
        v22 = v21 & (1 << v13);
        if (v14 != 0.0 && v22 == 0)
        {
          *(v18 + 8 * v19) = v21 | v20;
          std::vector<int>::push_back[abi:ne200100](a2 + 32, &v24);
          *(a2 + 24) = 0;
        }

        ++v11;
        --v10;
      }

      while (v10);
    }
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = &v5[a2];
      v19 = *a3;
      v20 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v20 < 3)
      {
        goto LABEL_36;
      }

      v21 = v20 + 1;
      v22 = &v5[v21 & 0x3FFFFFFFFFFFFFFCLL];
      v23 = vdupq_lane_s64(v19, 0);
      v24 = (v5 + 2);
      v25 = v21 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v24[-1] = v23;
        *v24 = v23;
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      v5 = v22;
      if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_36:
        do
        {
          *v5++ = v19;
        }

        while (v5 != v18);
      }

      v5 = v18;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 3;
    v7 = v6 + a2;
    if ((v6 + a2) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = 8 * v6;
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v26 + 8 * a2;
      v11 = *a3;
      v12 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v13 = (8 * v6);
      if (v12 < 3)
      {
        goto LABEL_37;
      }

      v14 = v12 + 1;
      v13 = (v26 + 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
      v15 = vdupq_lane_s64(v11, 0);
      v16 = (v26 + 16);
      v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v16[-1] = v15;
        *v16 = v15;
        v16 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_37:
        do
        {
          *v13++ = v11;
        }

        while (v13 != v10);
      }
    }

    else
    {
      v10 = 8 * v6;
    }

    v27 = *a1;
    v28 = *(a1 + 8) - *a1;
    v29 = v26 - v28;
    memcpy((v26 - v28), *a1, v28);
    *a1 = v29;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v27)
    {

      operator delete(v27);
    }
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(unint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_67:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_58;
          }

          goto LABEL_62;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_58:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_63:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_67;
          }

LABEL_62:
          v6 = v42;
          goto LABEL_63;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_58;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_50;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_48:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_50:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_51:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
LABEL_30:
        v35 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return 1;
        }

        v36 = 0;
        for (i = 12; ; i += 4)
        {
          v38 = *v35;
          v39 = *v20;
          if (*v35 < v39)
          {
            break;
          }

LABEL_33:
          v20 = v35++;
          if (v35 == a2)
          {
            return 1;
          }
        }

        v40 = i;
        do
        {
          *(a1 + v40) = v39;
          v41 = v40 - 4;
          if (v40 == 4)
          {
            *a1 = v38;
            if (++v36 != 8)
            {
              goto LABEL_33;
            }

            return v35 + 1 == a2;
          }

          v39 = *(a1 + v40 - 8);
          v40 -= 4;
        }

        while (v38 < v39);
        *(a1 + v41) = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 >= v22)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(int *a1, int *a2, int *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 4 * v5;
      if (v4 >= (4 * v5) >> 2)
      {
        v7 = (v6 >> 1) | 1;
        v8 = &a1[v7];
        if ((v6 >> 1) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v6 / 4];
          v12 = a1[v5];
          if (*v8 >= v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[1];
          if (*v8 <= v10)
          {
            v9 = v8[1];
          }

          if (*v8 < v10)
          {
            ++v8;
            v7 = (v6 >> 1) + 2;
          }

          v11 = &a1[v6 / 4];
          v12 = a1[v5];
          if (v9 >= v12)
          {
LABEL_22:
            while (1)
            {
              *v11 = v9;
              v11 = v8;
              if (v4 < v7)
              {
                break;
              }

              v14 = (2 * v7) | 1;
              v8 = &a1[v14];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v13 = v8[1];
                if (*v8 <= v13)
                {
                  v9 = v8[1];
                }

                if (*v8 >= v13)
                {
                  v7 = v14;
                }

                else
                {
                  ++v8;
                }

                if (v9 < v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v14;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v23 = v5-- <= 0;
    }

    while (!v23);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i < v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v18 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v18;
        v19 = a1[1];
        if (a2 - a1 == 8)
        {
          v20 = a1 + 1;
          v21 = 1;
          if (v19 >= v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v22 = a1[2];
          v23 = v19 < v22;
          if (v19 <= v22)
          {
            v19 = a1[2];
          }

          if (v23)
          {
            v20 = a1 + 2;
          }

          else
          {
            v20 = a1 + 1;
          }

          if (v23)
          {
            v21 = 2;
          }

          else
          {
            v21 = 1;
          }

          if (v19 >= v18)
          {
LABEL_48:
            v24 = a1;
            while (1)
            {
              *v24 = v19;
              v24 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v26 = (2 * v21) | 1;
              v20 = &a1[v26];
              v21 = 2 * v21 + 2;
              if (v21 < v3)
              {
                v19 = *v20;
                v25 = v20[1];
                if (*v20 <= v25)
                {
                  v19 = v20[1];
                }

                if (*v20 >= v25)
                {
                  v21 = v26;
                }

                else
                {
                  ++v20;
                }

                if (v19 < v18)
                {
                  break;
                }
              }

              else
              {
                v19 = *v20;
                v21 = v26;
                if (*v20 < v18)
                {
                  break;
                }
              }
            }

            *v24 = v18;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v28 = 0;
      v29 = *a1;
      v30 = (v3 - 2) >> 1;
      v31 = a1;
      do
      {
        while (1)
        {
          v38 = &v31[v28];
          v37 = v38 + 1;
          v39 = (2 * v28) | 1;
          v28 = 2 * v28 + 2;
          if (v28 < v3)
          {
            break;
          }

          v28 = v39;
          *v31 = *v37;
          v31 = v38 + 1;
          if (v39 > v30)
          {
            goto LABEL_73;
          }
        }

        v34 = v38[2];
        v33 = v38 + 2;
        v32 = v34;
        v35 = *(v33 - 1);
        v36 = v35 < v34;
        if (v35 > v34)
        {
          v32 = *(v33 - 1);
        }

        if (v36)
        {
          v37 = v33;
        }

        else
        {
          v28 = v39;
        }

        *v31 = v32;
        v31 = v37;
      }

      while (v28 <= v30);
LABEL_73:
      if (v37 == --a2)
      {
        *v37 = v29;
      }

      else
      {
        *v37 = *a2;
        *a2 = v29;
        v40 = (v37 - a1 + 4) >> 2;
        v23 = v40 < 2;
        v41 = v40 - 2;
        if (!v23)
        {
          v42 = v41 >> 1;
          v43 = &a1[v42];
          v44 = *v43;
          v45 = *v37;
          if (*v43 < *v37)
          {
            do
            {
              *v37 = v44;
              v37 = v43;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[v42];
              v44 = *v43;
            }

            while (*v43 < v45);
            *v37 = v45;
          }
        }
      }

      v23 = v3-- <= 2;
    }

    while (!v23);
  }

  return i;
}

uint64_t absl::lts_20240722::flags_internal::FlagOps<std::string>(int a1, const std::string *a2, std::string *__p)
{
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {

        operator new();
      }

      if (a1 == 1)
      {
        if (SHIBYTE(__p->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p->__r_.__value_.__l.__data_);
        }

        operator delete(__p);
      }
    }

    else if (a1 == 2)
    {
      std::string::operator=(__p, a2);
    }

    else
    {
      if (a1 != 3)
      {
        return 24;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(__p, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        v5 = *&a2->__r_.__value_.__l.__data_;
        __p->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
        *&__p->__r_.__value_.__l.__data_ = v5;
      }
    }

    return 0;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return &absl::lts_20240722::base_internal::FastTypeTag<std::string>::dummy_var;
    }

    else
    {
    }
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 == 8)
      {
        v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if (v6 >= 0)
        {
          v7 = a2;
        }

        else
        {
          v7 = a2->__r_.__value_.__r.__words[0];
        }

        if (v6 >= 0)
        {
          size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = a2->__r_.__value_.__l.__size_;
        }

        absl::lts_20240722::flags_internal::AbslUnparseFlag(v7, size, &__pa);
        if (SHIBYTE(__p->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p->__r_.__value_.__l.__data_);
        }

        *__p = __pa;
      }

      else if (a1 == 9)
      {
        return 80;
      }

      return 0;
    }

    if (SHIBYTE(__p->__r_.__value_.__r.__words[2]) < 0)
    {
      v9 = a2;
      std::string::__init_copy_ctor_external(&__pa, __p->__r_.__value_.__l.__data_, __p->__r_.__value_.__l.__size_);
      a2 = v9;
    }

    else
    {
      __pa = *__p;
    }

    if ((absl::lts_20240722::flags_internal::AbslParseFlag(a2->__r_.__value_.__r.__words[0], a2->__r_.__value_.__l.__size_, &__pa) & 1) == 0)
    {
      if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__pa.__r_.__value_.__l.__data_);
      }

      return 0;
    }

    if (SHIBYTE(__p->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p->__r_.__value_.__l.__data_);
    }

    *__p = __pa;
    return __p;
  }
}

void sub_23C9DD8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(uint64_t a1, uint64_t *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v6 = a1;
  v7[0] = v3;
  v7[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
  absl::lts_20240722::str_format_internal::FormatUntyped(&v6, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::log_internal::StringifySink>, "%v", 2, v7, 1uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Status,0>(uint64_t a1, unint64_t *a2)
{
  if (*a2 == 1)
  {
    v3 = 2;
    *(&__p.__r_.__value_.__s + 23) = 2;
    size = 19279;
    strcpy(&__p, "OK");
  }

  else
  {
    absl::lts_20240722::Status::ToStringSlow(*a2, -1, &__p);
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
  }

  if ((v3 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((v3 & 0x80u) == 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = size;
  }

  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(a1, p_p, v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23C9DDA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x38uLL);
    v3 = 0;
  }

  return operations_research::sat::IntegerVariableProto::IntegerVariableProto(v2, v3);
}

double google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x40uLL);
    v3 = 0;
  }

  return operations_research::sat::ConstraintProto::ConstraintProto(v2, v3);
}

void absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(uint64_t a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91C0](&v6, a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23C9DDC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearBooleanConstraint>(google::protobuf::Arena *a1)
{
  if (a1)
  {
    v2 = google::protobuf::Arena::Allocate(a1);
    v3 = a1;
  }

  else
  {
    v2 = operator new(0x50uLL);
    v3 = 0;
  }

  return operations_research::sat::LinearBooleanConstraint::LinearBooleanConstraint(v2, v3);
}

void operations_research::GraphSymmetryFinder::~GraphSymmetryFinder(operations_research::GraphSymmetryFinder *this)
{
  operations_research::GraphSymmetryFinder::Stats::~Stats((this + 560));
  v2 = *(this + 67);
  if (v2)
  {
    *(this + 68) = v2;
    operator delete(v2);
  }

  v3 = *(this + 64);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 61);
  if (v4)
  {
    *(this + 62) = v4;
    operator delete(v4);
  }

  v5 = *(this + 58);
  if (v5)
  {
    *(this + 59) = v5;
    operator delete(v5);
  }

  v6 = *(this + 55);
  if (v6)
  {
    v7 = *(this + 56);
    v8 = *(this + 55);
    if (v7 != v6)
    {
      v9 = *(this + 56);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 55);
    }

    *(this + 56) = v6;
    operator delete(v8);
  }

  v12 = *(this + 52);
  if (v12)
  {
    *(this + 53) = v12;
    operator delete(v12);
  }

  v13 = *(this + 49);
  if (v13)
  {
    *(this + 50) = v13;
    operator delete(v13);
  }

  v14 = *(this + 46);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 43);
  if (v15)
  {
    operator delete(v15);
  }

  std::__tree<int>::destroy(this + 320, *(this + 41));
  v16 = *(this + 37);
  if (v16)
  {
    *(this + 38) = v16;
    operator delete(v16);
  }

  v17 = *(this + 34);
  if (v17)
  {
    *(this + 35) = v17;
    operator delete(v17);
  }

  v18 = *(this + 31);
  if (v18)
  {
    *(this + 32) = v18;
    operator delete(v18);
  }

  v19 = *(this + 28);
  if (v19)
  {
    *(this + 29) = v19;
    operator delete(v19);
  }

  v20 = *(this + 25);
  if (v20)
  {
    v21 = *(this + 26);
    v22 = *(this + 25);
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 32);
        if (v23)
        {
          *(v21 - 24) = v23;
          operator delete(v23);
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(this + 25);
    }

    *(this + 26) = v20;
    operator delete(v22);
  }

  v24 = *(this + 12);
  if (v24)
  {
    *(this + 13) = v24;
    operator delete(v24);
  }

  v25 = *(this + 4);
  if (v25)
  {
    *(this + 5) = v25;
    operator delete(v25);
  }

  v26 = *(this + 1);
  if (v26)
  {
    *(this + 2) = v26;
    operator delete(v26);
  }
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(result + 24);
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 16 * result;
    *a3 = *(v22 + 16) + result;
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = (result + 16);
      if (*(result + 16) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = (result + 16);
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v7, a1);
}

uint64_t util::StaticGraph<int,int>::AddArc(uint64_t a1, int a2, int a3)
{
  v14 = a3;
  v15 = a2;
  if (a2 <= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if (*(a1 + 8) <= v4)
  {
    v5 = v4 + 1;
    *(a1 + 8) = v5;
    v6 = v5;
    __x = 0;
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = (*(a1 + 40) - v8) >> 2;
    v10 = v6 >= v9;
    v11 = v6 - v9;
    if (v11 != 0 && v10)
    {
      v12 = a2;
      std::vector<int>::__append(v7, v11, &__x);
      a2 = v12;
    }

    else if (!v10)
    {
      *(a1 + 40) = v8 + 4 * v6;
    }
  }

  if (*(a1 + 26) == 1)
  {
    if (*(a1 + 28) <= a2)
    {
      ++*(*(a1 + 32) + 4 * a2);
      *(a1 + 28) = a2;
    }

    else
    {
      *(a1 + 26) = 0;
    }
  }

  std::vector<int>::push_back[abi:ne200100](a1 + 80, &v15);
  std::vector<int>::push_back[abi:ne200100](a1 + 56, &v14);
  result = *(a1 + 16);
  *(a1 + 16) = result + 1;
  return result;
}