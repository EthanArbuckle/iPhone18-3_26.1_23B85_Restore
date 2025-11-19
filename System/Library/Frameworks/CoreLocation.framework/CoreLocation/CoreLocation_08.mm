void sub_19B9862D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  sub_19B966FCC(&a15);
  sub_19B966FCC(&a30);
  sub_19B966FCC(&a47);
  if (v47)
  {
    sub_19B8750F8(v47);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B9863AC(uint64_t a1, uint64_t *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (*(a1 + 3712) != 1 || *(a1 + 1224) >= 22.222 || *(a1 + 1248) < 2)
  {
    goto LABEL_24;
  }

  v26 = 0x4056800000000000;
  v4 = *(a1 + 1208);
  v5 = 0x4049000000000000;
  if (v4 <= 10.0)
  {
    goto LABEL_7;
  }

  if (v4 < 50.0)
  {
    v5 = 0x4052C00000000000;
LABEL_7:
    v26 = v5;
  }

  v25 = 1;
  *buf = 0x4024000000000000;
  if (!sub_19B979230(a1, &v26, buf, &v25) || (v25 & 1) != 0)
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  *a2 = *(a1 + 3720);
  *(a2 + 1) = *(a1 + 3744);
  a2[3] = 0x4059000000000000;
  a2[4] = *(a1 + 3784);
  a2[5] = *(a1 + 3768);
  if (*(a1 + 96) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      v11 = a2[4];
      v12 = a2[5];
      v13 = *(a1 + 1432);
      *buf = 134350593;
      *&buf[4] = v7;
      v42 = 2053;
      v43 = v8;
      v44 = 2053;
      v45 = v9;
      v46 = 2050;
      v47 = v10;
      v48 = 2050;
      v49 = v11;
      v50 = 2050;
      v51 = v12;
      v52 = 2050;
      v53 = v13;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMM,MMPA,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,a,%{public}.2lf,b,%{public}.2lf,az,%{public}.3lf,course,%{public}.3lf", buf, 0x48u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[3];
      v19 = a2[4];
      v20 = a2[5];
      v21 = *(a1 + 1432);
      v27 = 134350593;
      v28 = v15;
      v29 = 2053;
      v30 = v16;
      v31 = 2053;
      v32 = v17;
      v33 = 2050;
      v34 = v18;
      v35 = 2050;
      v36 = v19;
      v37 = 2050;
      v38 = v20;
      v39 = 2050;
      v40 = v21;
      v22 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMapMatcher::getPosAssistanceForGps(CLGpsAssistant_Type::MapMatchedPositionAssistance &)", "CoreLocation: %s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }
    }
  }

  result = 1;
LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9866E4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

BOOL sub_19B986730(uint64_t a1, void *a2, float64x2_t *a3, uint64_t a4, uint64_t *a5, int a6, double a7)
{
  v145 = *MEMORY[0x1E69E9840];
  sub_19B9866E4(a5);
  if (*(a4 + 16) == *(a4 + 8) || ((v14 = *(a4 + 40), v15 = vabdd_f64(*(a1 + 24), v14), v14 >= 0.0) ? (v16 = v15 <= 6.0) : (v16 = 0), !v16))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v17 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 8);
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349312;
      *&buf[4] = v18;
      v141 = 2050;
      v142 = v19;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routehint timed out or empty, segments,%{public}lu", buf, 0x16u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v21 = *(a1 + 8);
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v137 = 134349312;
      *&v137[4] = v21;
      *&v137[12] = 2050;
      *&v137[14] = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v24 = 0;
    *(a4 + 16) = *(a4 + 8);
    goto LABEL_188;
  }

  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v29 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v30;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected,invalid geometry pointer, determineRouteHintRoadVectors", buf, 0xCu);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_142;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v32 = *(a1 + 8);
    *v137 = 134349056;
    *&v137[4] = v32;
    v33 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v33);
    goto LABEL_140;
  }

  if (a6)
  {
    if (!sub_19B8B9318(a4))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v25 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 8);
        v27 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
        *buf = 134349312;
        *&buf[4] = v26;
        v141 = 2050;
        v142 = v27;
        _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHint road search,isConnectivityGood,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", buf, 0x16u);
      }

      v28 = sub_19B87DD40();
      if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
      {
        goto LABEL_142;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_139;
      }

LABEL_195:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
LABEL_139:
      v91 = *(a1 + 8);
      v92 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v137 = 134349312;
      *&v137[4] = v91;
      *&v137[12] = 2050;
      *&v137[14] = v92;
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v33);
LABEL_140:
      if (v33 != buf)
      {
        free(v33);
      }

LABEL_142:
      v24 = 0;
      goto LABEL_188;
    }
  }

  else if (!sub_19B8B95C8(a4))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v87 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v88 = *(a1 + 8);
      v89 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349312;
      *&buf[4] = v88;
      v141 = 2050;
      v142 = v89;
      _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,routeHint road search,getConnectedRouteSegments,poorConnectivity caused by radar:58817500,%{public}lu,file radar if 58817500 is already fixed", buf, 0x16u);
    }

    v90 = sub_19B87DD40();
    if ((*(v90 + 160) & 0x80000000) != 0 && (*(v90 + 164) & 0x80000000) != 0 && (*(v90 + 168) & 0x80000000) != 0 && !*(v90 + 152))
    {
      goto LABEL_142;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_139;
    }

    goto LABEL_195;
  }

  v130 = &v130;
  v131 = &v130;
  v132 = 0;
  if (((*(**a2 + 64))(*a2, &v130, a1, 1, a7) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v93 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v94 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v94;
      _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,search, roadsWithinDistance returned false", buf, 0xCu);
    }

    v95 = sub_19B87DD40();
    if (*(v95 + 160) <= 1 && *(v95 + 164) <= 1 && *(v95 + 168) <= 1 && !*(v95 + 152))
    {
      goto LABEL_166;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v96 = *(a1 + 8);
    *v137 = 134349056;
    *&v137[4] = v96;
    v97 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v97);
    goto LABEL_164;
  }

  if (!v132)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v98 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v99 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v99;
      _os_log_impl(&dword_19B873000, v98, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,Unexpected, empty road list", buf, 0xCu);
    }

    v100 = sub_19B87DD40();
    if ((*(v100 + 160) & 0x80000000) != 0 && (*(v100 + 164) & 0x80000000) != 0 && (*(v100 + 168) & 0x80000000) != 0 && !*(v100 + 152))
    {
      goto LABEL_166;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v101 = *(a1 + 8);
    *v137 = 134349056;
    *&v137[4] = v101;
    v97 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v97);
LABEL_164:
    if (v97 != buf)
    {
      free(v97);
    }

LABEL_166:
    v24 = 0;
    goto LABEL_187;
  }

  v114 = a1;
  v129[0] = 0;
  v129[1] = 0;
  v128 = v129;
  v34 = *(a4 + 8);
  v112 = *(a4 + 16);
  if (v34 == v112)
  {
    goto LABEL_186;
  }

  v113 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  do
  {
    v125 = &v125;
    v126 = &v125;
    v127 = 0;
    v122 = &v122;
    v123 = &v122;
    v124 = 0;
    v35 = v131;
    if (v131 != &v130)
    {
      do
      {
        v36 = v35[2];
        if (*v34 == *v36)
        {
          *v133 = 0;
          v120 = 0;
          v121 = 0;
          v37 = v34[1];
          v38 = v34[2];
          v39 = v35[3];
          v117 = v36;
          v118 = v39;
          v119 = 0;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = sub_19B988DE8(a3, &v117, &v120, v133, v37, v38);
          if (v118)
          {
            sub_19B8750F8(v118);
          }

          v41 = v34[3];
          v42 = v34[4];
          v43 = v35[3];
          v115 = v35[2];
          v116 = v43;
          if (v43)
          {
            atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = sub_19B988DE8(a3, &v115, &v119, &v121, v41, v42);
          if (v116)
          {
            sub_19B8750F8(v116);
          }

          if (v40)
          {
            sub_19B9117CC();
          }

          if (v44)
          {
            sub_19B9117CC();
          }
        }

        v35 = v35[1];
      }

      while (v35 != &v130);
      v45 = v126;
      if (v126 != &v125)
      {
        while (1)
        {
          v46 = v123;
          if (v123 != &v122)
          {
            break;
          }

LABEL_126:
          v45 = v45[1];
          if (v45 == &v125)
          {
            goto LABEL_129;
          }
        }

        v47 = 0;
        while (1)
        {
          while (1)
          {
            v48 = v45[2];
            if (v47)
            {
              goto LABEL_79;
            }

            v49 = *(v48 + 136);
            v50 = *(v48 + 144);
            v51 = 0uLL;
            v52 = 0uLL;
            if (v50 != v49)
            {
              v52 = v50[-1];
            }

            v54 = *(v46[2] + 136);
            v53 = *(v46[2] + 144);
            if (v53 != v54)
            {
              v51 = *v54;
            }

            v55 = vmovn_s64(vcgtq_f64(v113, vabdq_f64(v52, v51)));
            if ((vand_s8(v55, vdup_lane_s32(v55, 1)).u8[0] & 1) == 0)
            {
              break;
            }

            v56 = 1;
LABEL_71:
            v57 = 1;
LABEL_78:
            *(v45 + 36) = v56;
            *(v46 + 36) = v57;
LABEL_79:
            v61 = v45[3];
            if (v61)
            {
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
              v62 = *(v45 + 36);
              *v137 = 0;
              *&v137[8] = 0;
              v137[16] = 1;
              atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
              *v137 = *v48;
              v137[16] = v62;
              sub_19B8750F8(v61);
              sub_19B8750F8(v61);
            }

            else
            {
              v63 = *(v45 + 36);
              *v137 = 0;
              *&v137[8] = 0;
              *v137 = *v48;
              v137[16] = v63;
            }

            if (sub_19B98933C(&v128, v137))
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v64 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v65 = *(v114 + 8);
                v66 = *v45[2];
                *buf = 134349313;
                *&buf[4] = v65;
                v141 = 2049;
                v142 = v66;
                _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,road search,road already present,start,%{private}lld", buf, 0x16u);
              }

              v67 = sub_19B87DD40();
              if (*(v67 + 160) <= 1 && *(v67 + 164) <= 1 && *(v67 + 168) <= 1 && !*(v67 + 152))
              {
                goto LABEL_111;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v68 = *(v114 + 8);
              v69 = *v45[2];
              *v136 = 134349313;
              *&v136[4] = v68;
              *&v136[12] = 2049;
              *&v136[14] = v69;
              v70 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v70);
              goto LABEL_109;
            }

            *buf = v137;
            *(sub_19B9893AC(&v128, v137) + 56) = 1;
            sub_19B9892D4(a5, (v45 + 2));
            v71 = v46[2];
            v72 = v46[3];
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              v73 = *(v46 + 36);
              *v136 = 0;
              *&v136[8] = 0;
              v136[16] = 1;
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              *v136 = *v71;
              v136[16] = v73;
              sub_19B8750F8(v72);
              sub_19B8750F8(v72);
            }

            else
            {
              v74 = *(v46 + 36);
              *v136 = 0;
              *&v136[8] = 0;
              *v136 = *v71;
              v136[16] = v74;
            }

            if (!sub_19B98933C(&v128, v136))
            {
              *buf = v136;
              *(sub_19B9893AC(&v128, v136) + 56) = 1;
              sub_19B9892D4(a5, (v46 + 2));
              goto LABEL_129;
            }

            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
            }

            v75 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(v114 + 8);
              v77 = *v46[2];
              *buf = 134349313;
              *&buf[4] = v76;
              v141 = 2049;
              v142 = v77;
              _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,routeHints,road search,road already present,stop,%{private}lld", buf, 0x16u);
            }

            v78 = sub_19B87DD40();
            if (*(v78 + 160) > 1 || *(v78 + 164) > 1 || *(v78 + 168) > 1 || *(v78 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
              }

              v79 = *(v114 + 8);
              v80 = *v46[2];
              *v133 = 134349313;
              *&v133[4] = v79;
              v134 = 2049;
              v135 = v80;
              v70 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v70);
LABEL_109:
              if (v70 != buf)
              {
                free(v70);
              }
            }

LABEL_111:
            v46 = v46[1];
            v47 = 1;
            if (v46 == &v122)
            {
              goto LABEL_129;
            }
          }

          v58 = 0uLL;
          v59 = 0uLL;
          if (v50 != v49)
          {
            v59 = v50[-1];
          }

          if (v53 != v54)
          {
            v58 = v53[-1];
          }

          v60 = vmovn_s64(vcgtq_f64(v113, vabdq_f64(v59, v58)));
          if (vand_s8(v60, vdup_lane_s32(v60, 1)).u8[0])
          {
            v57 = 0;
            v56 = 1;
            goto LABEL_78;
          }

          v81 = 0uLL;
          v82 = 0uLL;
          if (v50 != v49)
          {
            v82 = *v49;
          }

          if (v53 != v54)
          {
            v81 = *v54;
          }

          v83 = vmovn_s64(vcgtq_f64(v113, vabdq_f64(v82, v81)));
          if (vand_s8(v83, vdup_lane_s32(v83, 1)).u8[0])
          {
            v56 = 0;
            goto LABEL_71;
          }

          v84 = 0uLL;
          v85 = 0uLL;
          if (v50 != v49)
          {
            v85 = *v49;
          }

          if (v53 != v54)
          {
            v84 = v53[-1];
          }

          v86 = vmovn_s64(vcgtq_f64(v113, vabdq_f64(v85, v84)));
          if (vand_s8(v86, vdup_lane_s32(v86, 1)).u8[0])
          {
            v56 = 0;
            v57 = 0;
            goto LABEL_78;
          }

          v47 = 0;
          v46 = v46[1];
          if (v46 == &v122)
          {
            goto LABEL_126;
          }
        }
      }
    }

LABEL_129:
    sub_19B916DC0(&v122);
    sub_19B916DC0(&v125);
    v34 += 5;
  }

  while (v34 != v112);
  v102 = *(a4 + 16) == *(a4 + 8) || v132 == 0;
  if (!v102 && a5[1] == *a5)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    v103 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v104 = *(v114 + 8);
      v105 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *buf = 134349568;
      *&buf[4] = v104;
      v141 = 2050;
      v142 = v105;
      v143 = 2050;
      v144 = v132;
      _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEBUG, "#Warning,CLMM,%{public}.1lf,routeHints,unable to find routeHints road,segments,%{public}lu,roadList,%{public}lu", buf, 0x20u);
    }

    v106 = sub_19B87DD40();
    if (*(v106 + 160) > 1 || *(v106 + 164) > 1 || *(v106 + 168) > 1 || *(v106 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
      }

      v107 = *(v114 + 8);
      v108 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 16) - *(a4 + 8)) >> 3);
      *v137 = 134349568;
      *&v137[4] = v107;
      *&v137[12] = 2050;
      *&v137[14] = v108;
      v138 = 2050;
      v139 = v132;
      v109 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::determineRouteHintRoadVectors(const CLMapCrumb &, const CLMapGeometryPtr, CLDistanceCalc &, CLMapsRouteHintData &, std::vector<CLMapGeometry::DistanceQueryResult> &, double, BOOL)", "CoreLocation: %s\n", v109);
      if (v109 != buf)
      {
        free(v109);
      }
    }
  }

LABEL_186:
  v24 = a5[1] != *a5;
  sub_19B8F3484(&v128, v129[0]);
LABEL_187:
  sub_19B916DC0(&v130);
LABEL_188:
  v110 = *MEMORY[0x1E69E9840];
  return v24;
}

void sub_19B988254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34, uint64_t a35, uint64_t a36)
{
  sub_19B8F3484(&a33, a34);
  sub_19B916DC0(&a36);
  _Unwind_Resume(a1);
}

void sub_19B9882F8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 264)
  {
    v4 = *(i - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
    }
  }

  a1[1] = v2;
}

void sub_19B988344(uint64_t a1, int a2)
{
  v24 = 0u;
  v25 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, 27);
  memset(&v32[32], 0, 48);
  *&v23[14] = 0u;
  *v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v16 = 0u;
  v13 = *(a1 + 80);
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v14 = *(a1 + 96);
  v15 = v3;
  *v23 = *(a1 + 160);
  v5 = *(a1 + 184);
  *&v23[16] = *(a1 + 176);
  v6 = *(a1 + 144);
  *(&v16 + 1) = *(a1 + 136);
  *&v17 = v2;
  *&v22 = v6;
  *(&v22 + 1) = v4;
  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0xBFF0000000000000;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v33 = 0;
  v34 = 0xBFF0000000000000;
  v23[28] = *(a1 + 152);
  v9 = v5;
  v8 = vextq_s8(*(a1 + 192), *(a1 + 192), 8uLL);
  sub_19B9C138C(a1, &v7, a2);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }
}

void sub_19B988438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B988454(double *a1)
{
  a1[7] = 0.0;
  a1[8] = 0.0;
  a1[9] = 0.0;
  v1 = *(a1 + 11);
  v2 = *(a1 + 12);
  if (v1 != v2)
  {
    v4 = 0.0;
    v5 = 0.0;
    v6 = *(a1 + 11);
    do
    {
      if (*(v6 + 64) == 2)
      {
        v7 = *(v6 + 24);
        v4 = v4 + *v6 * v7;
        v5 = v5 + *(v6 + 16) * v7;
      }

      v6 += 72;
    }

    while (v6 != v2);
    v8 = v5 + 0.0;
    a1[7] = v4;
    a1[9] = v5 + 0.0;
    do
    {
      if (*(v1 + 64) != 2)
      {
        v9 = *(v1 + 24);
        v10 = *v1 * v9;
        if (v4 > 0.0)
        {
          v11 = log(v4);
          v12 = log(v10);
          v10 = exp(v11 + v12);
        }

        a1[7] = v10;
        v8 = v8 + *(v1 + 16) * v9;
        a1[9] = v8;
        v4 = v10;
      }

      v1 += 72;
    }

    while (v1 != v2);
  }
}

uint64_t sub_19B988540@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 1024);
  *a2 = *(result + 1016);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

double sub_19B988568(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 136) = _Q1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0xBFF0000000000000;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 467) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 544) = 0xBFF0000000000000;
  *(a1 + 536) = 0;
  *(a1 + 552) = 0;
  *(a1 + 688) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 664) = 0;
  *(a1 + 692) = 1;
  *(a1 + 696) = 0;
  *(a1 + 752) = 0;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 334) = 0u;
  *(a1 + 639) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 822) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  return result;
}

os_log_t sub_19B98865C()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B98868C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B9882F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B9886E0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_19B9866E4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_19B988734(void ***a1)
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
        v4 -= 14;
        sub_19B988BB4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_19B9887B8(uint64_t a1)
{
  if (*(a1 + 631) < 0)
  {
    operator delete(*(a1 + 608));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  return a1;
}

uint64_t sub_19B9887FC(uint64_t a1)
{
  if (*(a1 + 5087) < 0)
  {
    operator delete(*(a1 + 5064));
  }

  if (*(a1 + 807) < 0)
  {
    operator delete(*(a1 + 784));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B98887C(uint64_t a1)
{
  if (*(a1 + 5063) < 0)
  {
    operator delete(*(a1 + 5040));
  }

  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_19B8750F8(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  return a1;
}

uint64_t sub_19B9888FC(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_19B8B8A40();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    sub_19B988AB4(a1, v6);
  }

  v7 = 112 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  v11 = *(a2 + 56);
  v12 = *(a2 + 65);
  *(v7 + 88) = 0;
  *(v7 + 65) = v12;
  *(v7 + 56) = v11;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  sub_19B96775C(v7 + 88, *(a2 + 88), *(a2 + 96), 0x8E38E38E38E38E39 * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  *&v21 = v21 + 112;
  v13 = *(a1 + 8);
  v14 = v20 + *a1 - v13;
  sub_19B988B10(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_19B988C08(&v19);
  return v18;
}

void sub_19B988A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B988C08(va);
  _Unwind_Resume(a1);
}

void sub_19B988AB4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B988B10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      v6[1] = 0;
      v7 = *(v6 + 1);
      v8 = *(v6 + 2);
      *(a4 + 48) = v6[6];
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v9 = *(v6 + 7);
      *(a4 + 65) = *(v6 + 65);
      *(a4 + 56) = v9;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 88) = 0;
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 104) = v6[13];
      v6[11] = 0;
      v6[12] = 0;
      v6[13] = 0;
      v6 += 14;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      sub_19B988BB4(v5);
      v5 += 14;
    }

    while (v5 != a3);
  }
}

void sub_19B988BB4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    sub_19B8750F8(v3);
  }
}

uint64_t sub_19B988C08(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_19B988BB4((i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_19B988C58(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_19B988D6C(result, a2);
  }

  return result;
}

void sub_19B988D50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B988D6C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_19B8F1D64(a1, a2);
  }

  sub_19B8B8A40();
}

float sub_19B988DA8(unsigned int a1, int a2)
{
  result = 7.4;
  if (a2)
  {
    result = 5.55;
  }

  if (a1 <= 7)
  {
    v3 = &unk_19BA8C964;
    if (a2)
    {
      v3 = &unk_19BA8C944;
    }

    return v3[a1];
  }

  return result;
}

BOOL sub_19B988DE8(float64x2_t *a1, uint64_t *a2, double *a3, double *a4, double a5, double a6)
{
  v48[204] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  v8 = *(*a2 + 144) - v7;
  *a3 = -1.0;
  *a4 = -1.0;
  if ((v8 >> 4) > 1)
  {
    v14 = *v7;
    v15 = v7[1];
    *buf = 0.0;
    v48[0] = 0.0;
    sub_19BA0BE88(a1, buf, v48, &v44, a5, a6, 0.0, v14, v15, 0.0);
    v16 = 0;
    v17 = *buf;
    v18 = v48[0];
    v19 = ((v8 >> 4) & 0x7FFFFFFF) - 1;
    v20 = 0.0;
    v21 = 0.0;
    while (1)
    {
      v22 = *(v6 + 136) + v16;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v44 = 0.0;
      v45[0] = 0.0;
      sub_19BA0BE88(a1, &v44, v45, &v46, a5, a6, 0.0, v23, v24, 0.0);
      v25 = v44;
      v26 = v45[0];
      v27 = (v17 - v44) * (v17 - v44) + (v18 - v45[0]) * (v18 - v45[0]);
      v28 = 0.0 - v17;
      if (v27 < 0.001)
      {
        break;
      }

      v30 = ((0.0 - v18) * (v45[0] - v18) + v28 * (v44 - v17)) / v27;
      if (v30 >= 0.0)
      {
        if (v30 <= 1.0)
        {
          v29 = (0.0 - (v17 + (v44 - v17) * v30)) * (0.0 - (v17 + (v44 - v17) * v30));
          v31 = 0.0 - (v18 + (v45[0] - v18) * v30);
          goto LABEL_5;
        }

        v32 = (0.0 - v44) * (0.0 - v44) + (0.0 - v45[0]) * (0.0 - v45[0]);
        v30 = 1.0;
      }

      else
      {
        v32 = v28 * v28 + (0.0 - v18) * (0.0 - v18);
        v30 = 0.0;
      }

LABEL_10:
      v33 = sqrt(v27);
      v34 = sqrt(v32);
      if (*a3 < 0.0 || v34 < *a3)
      {
        *a3 = v34;
        v21 = v20 + v33 * v30;
      }

      v20 = v20 + v33;
      v16 += 16;
      v18 = v26;
      v17 = v25;
      if (!--v19)
      {
        v42 = v21 / v20;
        if (v20 < 0.001)
        {
          v42 = 0.0;
        }

        *a4 = v42;
        result = *a3 < 0.03;
        goto LABEL_43;
      }
    }

    v29 = v28 * v28;
    v30 = 0.0;
    v31 = 0.0 - v18;
LABEL_5:
    v32 = v29 + v31 * v31;
    goto LABEL_10;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v35 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
  }

  v36 = sub_19B87DD40();
  if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v44) = 0;
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "CoreLocation: %s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
  }

  v38 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "#Warning CLMM, findClosestPointOnRoad returned false", buf, 2u);
  }

  v39 = sub_19B87DD40();
  if ((*(v39 + 160) & 0x80000000) == 0 || (*(v39 + 164) & 0x80000000) == 0 || (*(v39 + 168) & 0x80000000) == 0 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6D978);
    }

    LOWORD(v44) = 0;
    v40 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLGeoMapFeatureAccessGeometryCommon::isCoordinateOnRoadVector(CLDistanceCalc &, const double, const double, CLMapRoadPtr, double &, double &)", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  result = 0;
LABEL_43:
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B9892D4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_19B9894D8(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_19B98933C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    result = 1;
    v5 = *a2;
    v6 = a2[1];
    do
    {
      v7 = v2[4];
      if (v5 == v7)
      {
        v8 = *(v2 + 48);
        if (a2[2] & 1) != 0 && (v2[6])
        {
          v9 = v2[5];
          if (v6 >= v9)
          {
            if (v9 >= v6)
            {
              return result;
            }

LABEL_14:
            ++v2;
          }
        }

        else if ((a2[2] & 1) == 0)
        {
          if ((v2[6] & 1) == 0)
          {
            return result;
          }

          goto LABEL_14;
        }
      }

      else if (v5 >= v7)
      {
        if (v7 >= v5)
        {
          return result;
        }

        goto LABEL_14;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_19B9893AC(uint64_t a1, uint64_t *a2)
{
  v2 = *sub_19B989450(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_19B989450(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 16);
    v7 = *a3;
    v8 = a3[1];
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = v4[4];
        if (v7 == v10)
        {
          break;
        }

        if (v7 >= v10)
        {
          if (v10 >= v7)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_13:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_19;
        }
      }

      v11 = *(v9 + 48);
      if ((a3[2] & 1) == 0 || (v9[6] & 1) == 0)
      {
        if ((a3[2] & 1) == 0)
        {
          if ((v9[6] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v12 = v9[5];
      if (v8 < v12)
      {
        goto LABEL_13;
      }

      if (v12 >= v8)
      {
        goto LABEL_19;
      }

LABEL_16:
      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = result;
LABEL_19:
  *a2 = v9;
  return result;
}

uint64_t sub_19B9894D8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_19B8B8A40();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_19B989638(a1, v6);
  }

  v7 = 56 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(56 * v2 + 0x30) = *(a2 + 48);
  *(56 * v2 + 0x10) = v9;
  *(56 * v2 + 0x20) = v10;
  *&v19 = v7 + 56;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_19B989694(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_19B9897C4(&v17);
  return v16;
}

void sub_19B989624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B9897C4(va);
  _Unwind_Resume(a1);
}

void sub_19B989638(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B989694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        sub_19B8750F8(v9);
      }

      v5 += 56;
    }

    while (v5 != a3);
  }

  return sub_19B989748(v11);
}

uint64_t sub_19B989748(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B989780(a1);
  }

  return a1;
}

void sub_19B989780(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 48);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 56;
  }
}

void **sub_19B9897C4(void **a1)
{
  sub_19B9897F8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B9897F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 56;
    v4 = *(v1 - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 56;
    }
  }
}

void sub_19B98984C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_19B9899D0(a1);
    if (a4 <= 0xF83E0F83E0F83ELL)
    {
      v8 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
      {
        v9 = 0xF83E0F83E0F83ELL;
      }

      else
      {
        v9 = v8;
      }

      sub_19B989A10(a1, v9);
    }

    sub_19B8B8A40();
  }

  v10 = a1[1] - v7;
  if (0xF83E0F83E0F83E1 * (v10 >> 3) >= a4)
  {
    sub_19B989BAC(&v17, a2, a3, v7);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 48);
        if (v15)
        {
          sub_19B8750F8(v15);
        }

        v14 -= 264;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    v11 = sub_19B989BAC(&v16, a2, a2 + v10, v7);
    a1[1] = sub_19B989A60(a1, v11, a3, a1[1]);
  }
}

void sub_19B9899D0(uint64_t *a1)
{
  if (*a1)
  {
    sub_19B9882F8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_19B989A10(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    sub_19B989C6C(a1, a2);
  }

  sub_19B8B8A40();
}

uint64_t sub_19B989A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v21 = a4;
  v20 = a4;
  v18[0] = a1;
  v18[1] = &v20;
  v18[2] = &v21;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 64);
      *(v4 + 48) = *(a2 + 48);
      *(v4 + 64) = v7;
      *(v4 + 16) = v5;
      *(v4 + 32) = v6;
      v8 = *(a2 + 80);
      v9 = *(a2 + 96);
      v10 = *(a2 + 128);
      *(v4 + 112) = *(a2 + 112);
      *(v4 + 128) = v10;
      *(v4 + 80) = v8;
      *(v4 + 96) = v9;
      v11 = *(a2 + 144);
      v12 = *(a2 + 160);
      v13 = *(a2 + 192);
      *(v4 + 176) = *(a2 + 176);
      *(v4 + 192) = v13;
      *(v4 + 144) = v11;
      *(v4 + 160) = v12;
      v14 = *(a2 + 216);
      *(v4 + 208) = *(a2 + 208);
      *(v4 + 216) = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(a2 + 224);
      v16 = *(a2 + 240);
      *(v4 + 256) = *(a2 + 256);
      *(v4 + 224) = v15;
      *(v4 + 240) = v16;
      a2 += 264;
      v4 += 264;
    }

    while (a2 != a3);
    v21 = v4;
  }

  v19 = 1;
  sub_19B989B30(v18);
  return v4;
}

uint64_t sub_19B989B30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_19B989B68(a1);
  }

  return a1;
}

void sub_19B989B68(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 48);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v1 -= 264;
  }
}

uint64_t sub_19B989BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      v8 = *(v5 + 32);
      v9 = *(v5 + 64);
      *(a4 + 48) = *(v5 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v10 = *(v5 + 80);
      v11 = *(v5 + 96);
      v12 = *(v5 + 128);
      *(a4 + 112) = *(v5 + 112);
      *(a4 + 128) = v12;
      *(a4 + 80) = v10;
      *(a4 + 96) = v11;
      v13 = *(v5 + 144);
      v14 = *(v5 + 160);
      v15 = *(v5 + 192);
      *(a4 + 176) = *(v5 + 176);
      *(a4 + 192) = v15;
      *(a4 + 144) = v13;
      *(a4 + 160) = v14;
      v17 = *(v5 + 208);
      v16 = *(v5 + 216);
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v18 = *(a4 + 216);
      *(a4 + 208) = v17;
      *(a4 + 216) = v16;
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v19 = *(v5 + 224);
      v20 = *(v5 + 240);
      *(a4 + 256) = *(v5 + 256);
      *(a4 + 224) = v19;
      *(a4 + 240) = v20;
      v5 += 264;
      a4 += 264;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_19B989C6C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF83E0F83E0F83FLL)
  {
    operator new();
  }

  sub_19B8B8AB0();
}

uint64_t sub_19B989CC8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v16 = sub_19B989D6C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 64);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 64) = v6;
    *(v3 + 16) = v4;
    *(v3 + 32) = v5;
    v7 = *(a2 + 80);
    v8 = *(a2 + 96);
    v9 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v9;
    *(v3 + 80) = v7;
    *(v3 + 96) = v8;
    v10 = *(a2 + 144);
    v11 = *(a2 + 160);
    v12 = *(a2 + 192);
    *(v3 + 176) = *(a2 + 176);
    *(v3 + 192) = v12;
    *(v3 + 144) = v10;
    *(v3 + 160) = v11;
    v13 = *(a2 + 216);
    *(v3 + 208) = *(a2 + 208);
    *(v3 + 216) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 224);
    v15 = *(a2 + 240);
    *(v3 + 256) = *(a2 + 256);
    *(v3 + 224) = v14;
    *(v3 + 240) = v15;
    v16 = v3 + 264;
  }

  a1[1] = v16;
  return v16 - 264;
}

uint64_t sub_19B989D6C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF83E0F83E0F83E1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xF83E0F83E0F83ELL)
  {
    sub_19B8B8A40();
  }

  if (0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1F07C1F07C1F07C2 * ((a1[2] - *a1) >> 3);
  }

  if ((0xF83E0F83E0F83E1 * ((a1[2] - *a1) >> 3)) >= 0x7C1F07C1F07C1FLL)
  {
    v6 = 0xF83E0F83E0F83ELL;
  }

  else
  {
    v6 = v3;
  }

  v29 = a1;
  if (v6)
  {
    sub_19B989C6C(a1, v6);
  }

  v7 = 264 * v2;
  v26 = 0;
  v27 = v7;
  *(&v28 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  v11 = *(a2 + 128);
  v13 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 128) = v11;
  *(v7 + 80) = v13;
  *(v7 + 96) = v12;
  v14 = *(a2 + 192);
  v16 = *(a2 + 144);
  v15 = *(a2 + 160);
  *(v7 + 176) = *(a2 + 176);
  *(v7 + 192) = v14;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  *v7 = *a2;
  *(v7 + 16) = v8;
  v17 = *(a2 + 216);
  *(v7 + 208) = *(a2 + 208);
  *(v7 + 216) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *(a2 + 224);
  v19 = *(a2 + 240);
  *(264 * v2 + 0x100) = *(a2 + 256);
  *(264 * v2 + 0xE0) = v18;
  *(264 * v2 + 0xF0) = v19;
  *&v28 = v7 + 264;
  v20 = a1[1];
  v21 = v7 + *a1 - v20;
  sub_19B989F04(a1, *a1, v20, v21);
  v22 = *a1;
  *a1 = v21;
  v23 = a1[2];
  v25 = v28;
  *(a1 + 1) = v28;
  *&v28 = v22;
  *(&v28 + 1) = v23;
  v26 = v22;
  v27 = v22;
  sub_19B989FF0(&v26);
  return v25;
}

void sub_19B989EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B989FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B989F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v22 = a4;
  v20[0] = a1;
  v20[1] = &v22;
  v20[2] = &v23;
  if (a2 == a3)
  {
    v21 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      v10 = *(v6 + 80);
      v11 = *(v6 + 96);
      v12 = *(v6 + 128);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 128) = v12;
      *(a4 + 80) = v10;
      *(a4 + 96) = v11;
      v13 = *(v6 + 144);
      v14 = *(v6 + 160);
      v15 = *(v6 + 192);
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 192) = v15;
      *(a4 + 144) = v13;
      *(a4 + 160) = v14;
      *(a4 + 208) = *(v6 + 208);
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      v16 = *(v6 + 224);
      v17 = *(v6 + 240);
      *(a4 + 256) = *(v6 + 256);
      *(a4 + 224) = v16;
      *(a4 + 240) = v17;
      v6 += 264;
      a4 += 264;
    }

    while (v6 != a3);
    v23 = a4;
    v21 = 1;
    do
    {
      v18 = *(v5 + 216);
      if (v18)
      {
        sub_19B8750F8(v18);
      }

      v5 += 264;
    }

    while (v5 != a3);
  }

  return sub_19B989B30(v20);
}

void **sub_19B989FF0(void **a1)
{
  sub_19B98A024(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_19B98A024(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 264;
    v4 = *(v1 - 48);
    if (v4)
    {
      sub_19B8750F8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 264;
    }
  }
}

void sub_19B98A078(void *a1)
{
  *a1 = &unk_1F0E6D9A8;
  sub_19B98A184((a1 + 3));

  JUMPOUT(0x19EAE98C0);
}

void sub_19B98A0DC(char *a1)
{
  if (a1)
  {
    sub_19B98A0DC(*a1);
    sub_19B98A0DC(*(a1 + 1));
    if (a1[5119] < 0)
    {
      operator delete(*(a1 + 637));
    }

    if (a1[839] < 0)
    {
      operator delete(*(a1 + 102));
    }

    if (a1[407] < 0)
    {
      operator delete(*(a1 + 48));
    }

    v2 = *(a1 + 21);
    if (v2)
    {
      *(a1 + 22) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 11);
    if (v3)
    {
      sub_19B8750F8(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      sub_19B8750F8(v4);
    }

    operator delete(a1);
  }
}

uint64_t sub_19B98A184(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_19B98A250(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 16);
  v6 = v2;
  v8 = *a2;
  v7 = a2[1];
  do
  {
    v9 = *(v3 + 32);
    if (v9 == v8)
    {
      v10 = *(v3 + 48);
      if (v10 == 1 && (a2[2] & 1) != 0)
      {
        v10 = *(v3 + 40) < v7;
      }
    }

    else
    {
      v10 = v9 < v8;
    }

    v11 = v10 == 0;
    if (v10)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v6 = v3;
    }

    v3 = *(v3 + v12);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v13 = *(v6 + 32);
  if (v8 == v13)
  {
    if (a2[2] & 1) != 0 && (*(v6 + 48))
    {
      if (v7 >= *(v6 + 40))
      {
        return v6;
      }
    }

    else if ((a2[2] & 1) == 0)
    {
      return v6;
    }

    return v2;
  }

  if (v8 < v13)
  {
    return v2;
  }

  return v6;
}

void sub_19B98A2F4(std::string *a1)
{
  sub_19B8759E8(&v50, "{public}");
  sub_19B8759E8(&__p, "");
  v2 = 0;
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v5 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v6 = v52;
  }

  else
  {
    v6 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v7 = &v50;
  }

  else
  {
    v7 = v50;
  }

  while (!v6)
  {
LABEL_22:
    if (v2 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v15 = v49;
      }

      else
      {
        v15 = v48;
      }

      std::string::replace(a1, v2, v6, p_p, v15);
      v16 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v16 = v48;
      }

      v2 += v16;
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v4 = a1;
      }

      else
      {
        v4 = a1->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a1->__r_.__value_.__l.__size_;
      }

      v5 = v52;
      v7 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v6 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (size >= v2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

  v8 = size - v2;
  if ((size - v2) >= v6)
  {
    v9 = (v4 + size);
    v10 = (v4 + v2);
    v11 = *v7;
    do
    {
      if (v8 - v6 == -1)
      {
        break;
      }

      v12 = memchr(v10, v11, v8 - v6 + 1);
      if (!v12)
      {
        break;
      }

      v13 = v12;
      if (!memcmp(v12, v7, v6))
      {
        if (v13 == v9)
        {
          break;
        }

        v2 = &v13[-v4];
        goto LABEL_22;
      }

      v10 = v13 + 1;
      v8 = v9 - (v13 + 1);
    }

    while (v8 >= v6);
  }

LABEL_43:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_45;
    }

LABEL_135:
    operator delete(v50);
    goto LABEL_45;
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_135;
  }

LABEL_45:
  sub_19B8759E8(&v50, "{private}");
  sub_19B8759E8(&__p, "");
  v17 = 0;
  v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v18 & 0x80u) == 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v18 & 0x80u) != 0)
  {
    v18 = a1->__r_.__value_.__l.__size_;
  }

  v20 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v21 = v52;
  }

  else
  {
    v21 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v22 = &v50;
  }

  else
  {
    v22 = v50;
  }

  while (!v21)
  {
LABEL_66:
    if (v17 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v29 = &__p;
      }

      else
      {
        v29 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v30 = v49;
      }

      else
      {
        v30 = v48;
      }

      std::string::replace(a1, v17, v21, v29, v30);
      v31 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v31 = v48;
      }

      v17 += v31;
      v18 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v18 & 0x80u) == 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v18 & 0x80u) != 0)
      {
        v18 = a1->__r_.__value_.__l.__size_;
      }

      v20 = v52;
      v22 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v21 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v18 >= v17)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  v23 = v18 - v17;
  if ((v18 - v17) >= v21)
  {
    v24 = (v19 + v18);
    v25 = (v19 + v17);
    v26 = *v22;
    do
    {
      if (v23 - v21 == -1)
      {
        break;
      }

      v27 = memchr(v25, v26, v23 - v21 + 1);
      if (!v27)
      {
        break;
      }

      v28 = v27;
      if (!memcmp(v27, v22, v21))
      {
        if (v28 == v24)
        {
          break;
        }

        v17 = &v28[-v19];
        goto LABEL_66;
      }

      v25 = v28 + 1;
      v23 = v24 - (v28 + 1);
    }

    while (v23 >= v21);
  }

LABEL_87:
  if (v49 < 0)
  {
    operator delete(__p);
    if ((v52 & 0x80) == 0)
    {
      goto LABEL_89;
    }

LABEL_137:
    operator delete(v50);
    goto LABEL_89;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_137;
  }

LABEL_89:
  sub_19B8759E8(&v50, "{sensitive}");
  sub_19B8759E8(&__p, "");
  v32 = 0;
  v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v33 & 0x80u) == 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = a1->__r_.__value_.__r.__words[0];
  }

  if ((v33 & 0x80u) != 0)
  {
    v33 = a1->__r_.__value_.__l.__size_;
  }

  v35 = v52;
  if ((v52 & 0x80u) == 0)
  {
    v36 = v52;
  }

  else
  {
    v36 = v51;
  }

  if ((v52 & 0x80u) == 0)
  {
    v37 = &v50;
  }

  else
  {
    v37 = v50;
  }

  while (!v36)
  {
LABEL_110:
    if (v32 != -1)
    {
      if ((v49 & 0x80u) == 0)
      {
        v44 = &__p;
      }

      else
      {
        v44 = __p;
      }

      if ((v49 & 0x80u) == 0)
      {
        v45 = v49;
      }

      else
      {
        v45 = v48;
      }

      std::string::replace(a1, v32, v36, v44, v45);
      v46 = v49;
      if ((v49 & 0x80u) != 0)
      {
        v46 = v48;
      }

      v32 += v46;
      v33 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v33 & 0x80u) == 0)
      {
        v34 = a1;
      }

      else
      {
        v34 = a1->__r_.__value_.__r.__words[0];
      }

      if ((v33 & 0x80u) != 0)
      {
        v33 = a1->__r_.__value_.__l.__size_;
      }

      v35 = v52;
      v37 = (v52 & 0x80u) == 0 ? &v50 : v50;
      v36 = (v52 & 0x80u) == 0 ? v52 : v51;
      if (v33 >= v32)
      {
        continue;
      }
    }

    goto LABEL_131;
  }

  v38 = v33 - v32;
  if ((v33 - v32) >= v36)
  {
    v39 = (v34 + v33);
    v40 = (v34 + v32);
    v41 = *v37;
    do
    {
      if (v38 - v36 == -1)
      {
        break;
      }

      v42 = memchr(v40, v41, v38 - v36 + 1);
      if (!v42)
      {
        break;
      }

      v43 = v42;
      if (!memcmp(v42, v37, v36))
      {
        if (v43 == v39)
        {
          break;
        }

        v32 = &v43[-v34];
        goto LABEL_110;
      }

      v40 = v43 + 1;
      v38 = v39 - (v43 + 1);
    }

    while (v38 >= v36);
  }

LABEL_131:
  if ((v49 & 0x80000000) == 0)
  {
    if ((v35 & 0x80) == 0)
    {
      return;
    }

LABEL_139:
    operator delete(v50);
    return;
  }

  operator delete(__p);
  if ((v52 & 0x80) != 0)
  {
    goto LABEL_139;
  }
}

void *sub_19B98A790(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_19B98A894(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_19B98A894(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_19B8B8AB0();
}

void sub_19B98A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98C400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B98C420()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v0 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "Simulation connection interrupted", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B98C5E0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v2 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_DEFAULT, "Simulation connection invalidated", buf, 2u);
  }

  v3 = sub_19B87DD40();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  result = [*(*(*(a1 + 32) + 8) + 40) setConnection:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B98C7A4()
{
  v5 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4720 != -1)
  {
    dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
  }

  v0 = qword_1EAFE46F0;
  if (os_log_type_enabled(qword_1EAFE46F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v0, OS_LOG_TYPE_DEFAULT, "Error fetching remoteObjectProxy", buf, 2u);
  }

  v1 = sub_19B87DD40();
  if (*(v1 + 160) > 1 || *(v1 + 164) > 1 || *(v1 + 168) > 1 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4720 != -1)
    {
      dispatch_once(&qword_1EAFE4720, &unk_1F0E6DA28);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLSimulationManager daemonProxy]_block_invoke", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B98C980()
{
  result = os_log_create("com.apple.locationd.Core", "Simulation");
  qword_1EAFE46F0 = result;
  return result;
}

void *sub_19B98D0E4(uint64_t a1)
{
  *a1 = &unk_1F0E6DA78;
  sub_19B98D158(a1, 0, 0);
  dispatch_release(*(a1 + 208));
  v2 = *(a1 + 224);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  return sub_19BA4EBD8(a1);
}

uint64_t sub_19B98D158(uint64_t a1, FILE *a2, char a3)
{
  v6 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v7 = v6[18];
  if (v7 != a2)
  {
    *(a1 + 184) = a2;
    if (v7 && *(a1 + 156) == 1)
    {
      fclose(v7);
    }

    *(a1 + 156) = a3;
  }

  return (*(*v6 + 24))(v6);
}

void sub_19B98D20C(uint64_t a1)
{
  sub_19B98D0E4(a1);

  JUMPOUT(0x19EAE98C0);
}

uint64_t sub_19B98D244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  sub_19B885B60(a1, "Generic", 0, 2, "void CLLog::logHeader()", "%s\n", &a9);
  return (*(*v10 + 24))(v10);
}

void sub_19B98D304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B98D318(uint64_t a1, const char *a2, int a3, signed int a4, const char *a5, char *__src, va_list a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = strncpy(__dst, __src, 0x65CuLL);
  sub_19B98D3D0(v13, __dst);
  result = sub_19B885B60(a1, a2, a3, a4, a5, __dst, a7);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B98D3D0(int a1, char *__s)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = strlen(__s);
  if (v3 < 1)
  {
LABEL_18:
    result = 1;
    goto LABEL_23;
  }

  v4 = &__s[v3];
  v5 = __s;
  while (1)
  {
    if (*v5 != 37)
    {
      v11 = v5;
      goto LABEL_17;
    }

    v6 = v5 + 1;
    v7 = v5[1];
    if (v7 == 123)
    {
      break;
    }

LABEL_10:
    v11 = v5 + 1;
    v12 = v5 + 1;
    if (v7 != 64)
    {
      if (v7 != 46)
      {
        goto LABEL_17;
      }

      if (v5[2] != 42)
      {
        goto LABEL_17;
      }

      v12 = v5 + 3;
      if (v5[3] != 80)
      {
        goto LABEL_17;
      }

      *(v5 + 1) = 9572;
    }

    *v12 = 112;
LABEL_17:
    v5 = v11 + 1;
    if (v11 + 1 >= v4)
    {
      goto LABEL_18;
    }
  }

  if (v6 != v4)
  {
    v8 = 0;
    while (1)
    {
      v9 = &v5[v8 + 2];
      if (v9 == v4)
      {
        break;
      }

      ++v8;
      if (*v9 == 125)
      {
        v10 = &v5[v8];
        memmove(v5, v6, v8 + 1);
        *++v10 = 37;
        v7 = v10[1];
        v5 = v10;
        goto LABEL_10;
      }
    }
  }

  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6DB50);
  }

  v14 = qword_1ED519080;
  result = os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136446210;
    v17 = __s;
    _os_log_error_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "Failed parse os_log format specifier for shimming:missing closing brace,format,%{public}s", &v16, 0xCu);
    result = 0;
  }

LABEL_23:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B98D58C(uint64_t a1, int a2, FILE *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v16 = a1 + 40;
  (*(v5 + 16))(a1 + 40);
  v17 = 256;
  CFAbsoluteTimeGetCurrent();
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  v7 = backtrace(v18, 128);
  v8 = a2 + 1;
  if (a2 + 1 < v7)
  {
    v9 = &v18[v8];
    do
    {
      if (dladdr(*v9, &v15))
      {
        if (v15.dli_sname)
        {
          basename(v15.dli_fname);
          v10 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx %s + %lu\n", "STATUS");
        }

        else
        {
          basename(v15.dli_fname);
          v12 = *v9;
          fprintf(a3, "%s,%s,Time,%08.3f,%d\t%s\t0x%08lx 0x%08lx + %lu\n", "STATUS");
        }
      }

      else
      {
        v11 = *v9;
        fprintf(a3, "%s,%s,Time,%08.3f,%d\t0x%08lx\n");
      }

      ++v8;
      ++v9;
    }

    while (v7 != v8);
  }

  result = (*(*v6 + 24))(v6);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B98D7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_19B890AB0(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98D7E0(uint64_t a1)
{
  v38[2] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 48) + 64) assertInside];
  pthread_self();
  sub_19B8767CC(*(a1 + 24), "ShowError", (a1 + 154));
  sub_19B8767CC(*(a1 + 24), "LogShowUI", (a1 + 155));
  sub_19B876178(*(a1 + 24), "LogFileLevel", (a1 + 160));
  sub_19B876178(*(a1 + 24), "LogBufferLevel", (a1 + 164));
  sub_19B876178(*(a1 + 24), "LogConsoleLevel", (a1 + 168));
  sub_19B876178(*(a1 + 24), "LogStackLevel", (a1 + 172));
  sub_19B92B010(*(a1 + 24), "LogFileDirectory", (a1 + 56));
  sub_19B92B010(*(a1 + 24), "LogFilePrefix", (a1 + 80));
  sub_19B8767CC(*(a1 + 24), "LogFileFlush", (a1 + 157));
  sub_19B8767CC(*(a1 + 24), "LogFence", (a1 + 153));
  v37 = 0;
  sub_19B876178(*(a1 + 24), "LogBufferSize", &v37);
  if ((*(a1 + 160) & 0x80000000) != 0)
  {
    sub_19B98D158(a1, 0, 0);
    goto LABEL_75;
  }

  v2 = *(a1 + 184);
  memset(&__p, 0, sizeof(__p));
  if (!sub_19B92B010(*(a1 + 24), "LogFile", &__p))
  {
    goto LABEL_6;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
LABEL_6:
    v4 = *(a1 + 79);
    if (v4 < 0)
    {
      if (!*(a1 + 64))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 79))
    {
      goto LABEL_43;
    }

    if ((*(a1 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_43;
      }
    }

    else if (!*(a1 + 103))
    {
      goto LABEL_43;
    }

    if (v4 >= 0)
    {
      v5 = *(a1 + 79);
    }

    else
    {
      v5 = *(a1 + 64);
    }

    v6 = &v34;
    sub_19B8D78C0(&v34, v5 + 1);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v34.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a1 + 79) >= 0)
      {
        v7 = (a1 + 56);
      }

      else
      {
        v7 = *(a1 + 56);
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 47;
    v8 = *(a1 + 103);
    if (v8 >= 0)
    {
      v9 = (a1 + 80);
    }

    else
    {
      v9 = *(a1 + 80);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 103);
    }

    else
    {
      v10 = *(a1 + 88);
    }

    v11 = std::string::append(&v34, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = *(a1 + 127);
    if (v13 >= 0)
    {
      v14 = (a1 + 104);
    }

    else
    {
      v14 = *(a1 + 104);
    }

    if (v13 >= 0)
    {
      v15 = *(a1 + 127);
    }

    else
    {
      v15 = *(a1 + 112);
    }

    v16 = std::string::append(&v35, v14, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v38[0] = v16->__r_.__value_.__l.__size_;
    *(v38 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v17;
    __p.__r_.__value_.__l.__size_ = v38[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v38 + 7);
    *(&__p.__r_.__value_.__s + 23) = v18;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

LABEL_43:
  v19 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = __p.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    if (v2)
    {
      v21 = *(a1 + 151);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a1 + 136);
      }

      v23 = __p.__r_.__value_.__r.__words[0];
      if (v20 == v21)
      {
        v24 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v25 = v22 >= 0 ? (a1 + 128) : *(a1 + 128);
        if (!memcmp(v24, v25, v20))
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v23;
    }

    sub_19B98DE08(a1, p_p);
    if (!v2)
    {
      v27 = *(a1 + 216);
      if (v27)
      {
        sub_19B994440(v27, *(a1 + 184));
      }
    }

LABEL_67:
    sub_19B98E3B0(a1, *(a1 + 157));
    v28 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = __p.__r_.__value_.__r.__words[0];
    }

    if (*(a1 + 157))
    {
      v29 = " and flushing immediately";
    }

    else
    {
      v29 = " no flush";
    }

    syslog(5, "%s,%s,logging locations to %s%s\n", "NOTICE", "CLLog", v28, v29);
    goto LABEL_73;
  }

  sub_19B98D158(a1, 0, 0);
LABEL_73:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_75:
  if ((*(a1 + 164) & 0x80000000) != 0 || (v30 = v37, v37 < 1))
  {
    v32 = *(a1 + 224);
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    if (v32)
    {
      sub_19B8750F8(v32);
    }

    *(a1 + 192) = 0;
  }

  else
  {
    if (v37 > 0xA00000)
    {
      v30 = 10485760;
      v37 = 10485760;
    }

    v31 = *(a1 + 216);
    if (!v31 || *(v31 + 16) != v30)
    {
      operator new();
    }

    *(a1 + 192) = sub_19B9941CC(v31);
    syslog(5, "%s,%s,logging locations to an internal buffer with capacity %d\n", "NOTICE", "CLLog", v37);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_19B98DD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B98DE08(uint64_t a1, char *a2)
{
  *&v70[1526] = *MEMORY[0x1E69E9840];
  v4 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  if (a2)
  {
    v5 = getuid();
    v6 = getgid();
    sub_19B8B6834(a2, v5, v6);
    v7 = fopen(a2, "a");
    if (v7)
    {
      sub_19B8D7878((a1 + 128), a2);
      sub_19B98D158(a1, v7, 1);
      sub_19B98E3B0(a1, *(a1 + 157));
      v8 = *(a1 + 184);
      if (v8)
      {
        sub_19B8B7FE8(v8);
      }

      sub_19B87BBB4();
      sub_19B93BA28(__p);
      if (__p[23] >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      sub_19B8759E8(&v65, v9);
      if (__p[23] < 0)
      {
        operator delete(*__p);
      }

      v10 = v67;
      v11 = v67;
      if (v67 < 0)
      {
        v10 = v66;
      }

      if (!v10)
      {
        if (v67 < 0)
        {
          v66 = 10;
          v12 = v65;
        }

        else
        {
          v67 = 10;
          v12 = &v65;
        }

        strcpy(v12, "Unplugged!");
        v11 = v67;
      }

      bzero(__p, 0x65CuLL);
      v14 = &v65;
      if (v11 < 0)
      {
        v14 = v65;
      }

      snprintf(__p, 0x65CuLL, "CoreLocation-%s\n", v14);
      sub_19B98D244(a1, v15, 0, v16, v17, v18, v19, v20, __p);
      bzero(__p, 0x65CuLL);
      snprintf(__p, 0x65CuLL, "locationd was compiled on %s at %s\n", "Oct 22 2025", "21:28:52");
      sub_19B98D244(a1, v21, 0, v22, v23, v24, v25, v26, __p);
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize))
      {
        bzero(__p, 0x65CuLL);
        v27 = sub_19B87BBB4();
        v28 = v62;
        sub_19B93B830(v27, v62);
        if (v63 < 0)
        {
          v28 = v62[0];
        }

        sub_19B87BBB4();
        sub_19B93B2E8(v60);
        if (v61 >= 0)
        {
          v29 = v60;
        }

        else
        {
          v29 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "/usr/libexec/locationd @ system model %s / version %s\n", v28, v29);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      else
      {
        bzero(__p, 0x65CuLL);
        v36 = sub_19B87BBB4();
        v37 = v62;
        sub_19B93B830(v36, v62);
        if (v63 < 0)
        {
          v37 = v62[0];
        }

        sub_19B87BBB4();
        sub_19B93B2E8(v60);
        if (v61 >= 0)
        {
          v38 = v60;
        }

        else
        {
          v38 = v60[0];
        }

        snprintf(__p, 0x65CuLL, "%s @ system model %s / version %s\n", buf, v37, v38);
        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (v63 < 0)
        {
          operator delete(v62[0]);
        }
      }

      sub_19B98D244(a1, v30, 0, v31, v32, v33, v34, v35, __p);
      bzero(__p, 0x65CuLL);
      sub_19B87BBB4();
      sub_19B93BC88(v62);
      if (v63 >= 0)
      {
        v39 = v62;
      }

      else
      {
        v39 = v62[0];
      }

      snprintf(__p, 0x65CuLL, "IOPlatformSerialNumber: %s\n", v39);
      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      sub_19B98D244(a1, v40, 0, v41, v42, v43, v44, v45, __p);
      bzero(v70, 0x5EAuLL);
      strcpy(__p, "Begin settings dump (read at construction of CLSettings or upon darwin notification 'com.apple.locationd/prefs')\n");
      sub_19B98D244(a1, v46, 0, v47, v48, v49, v50, v51, __p);
      (*(**(a1 + 24) + 792))(*(a1 + 24));
      bzero(&__p[19], 0x649uLL);
      strcpy(__p, "End settings dump\n");
      sub_19B98D244(a1, v52, 0, v53, v54, v55, v56, v57, __p);
      if (v67 < 0)
      {
        operator delete(v65);
      }
    }

    else
    {
      v13 = __error();
      syslog(3, "%s,%s,could not open locations log %s, errno %d\n", "ERROR", "CLLog", a2, *v13);
    }
  }

  result = (*(*v4 + 24))(v4);
  v59 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B98E31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_19B888D7C(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B98E3B0(uint64_t a1, int a2)
{
  v3 = a1 + 40;
  (*(*(a1 + 40) + 16))(a1 + 40);
  *(v3 + 117) = a2 != 0;
  v4 = *(v3 + 144);
  if (v4)
  {
    setvbuf(v4, 0, a2 != 0, 0);
  }

  return (*(*v3 + 24))(v3);
}

uint64_t sub_19B98E450(uint64_t a1)
{
  v1 = (a1 + 40);
  (*(*(a1 + 40) + 16))(a1 + 40);
  v2 = v1[18];
  if (v2)
  {
    fflush(v2);
  }

  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B98E4D0(uint64_t a1, char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  sub_19B8759E8(v22, a2);
  if (*(a1 + 71) >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = v20;
  sub_19B8D78C0(v20, v5 + 1);
  if (v21 < 0)
  {
    v6 = v20[0];
  }

  if (v5)
  {
    if (*(a1 + 71) >= 0)
    {
      v7 = (a1 + 48);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    memmove(v6, v7, v5);
  }

  *(v6 + v5) = 95;
  if (sub_19BA4F4EC(v4, v22, v20))
  {
    sub_19B8759E8(v18, a2);
    sub_19B8759E8(v16, ".log.bz2");
    if (sub_19BA4F5B8(v4, v18, v16))
    {
      v8 = 1;
    }

    else
    {
      sub_19B8759E8(v14, a2);
      sub_19B8759E8(__p, ".log");
      v8 = sub_19BA4F5B8(v4, v14, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
    if (!v8)
    {
      goto LABEL_36;
    }
  }

  else if (!v8)
  {
    goto LABEL_36;
  }

  if (++*(*(*(a1 + 32) + 8) + 24) > *(a1 + 96))
  {
    LOBYTE(v22[0]) = 0;
    v9 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    if (snprintf(v22, 0x400uLL, "%s/%s", v9, a2) > 1023)
    {
      syslog(3, "%s,%s,Rotation path is too long, could not delete old logs.\n", "ERROR", "CLLog");
    }

    else if (unlink(v22))
    {
      perror("Failed to delete log");
    }
  }

LABEL_36:
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_19B98E73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_19B98E7C0(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_19B874C9C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    return sub_19B874C9C(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  v5 = *(a2 + 72);
  *(v3 + 11) = *(a2 + 88);
  *(v3 + 72) = v5;
  return result;
}

void sub_19B98E834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98E850(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_19B98E8A8(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    goto LABEL_7;
  }

  v2 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v2 = *v2;
  }

  v3 = (a1 + 64);
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v3;
  }

  if (!sub_19B8B6FE4(v2, v4))
  {
    if (*(a1 + 87) < 0)
    {
      v3 = *v3;
    }

    syslog(3, "%s,%s,Failed to write %s\n", "ERROR", "CLLog", v3);
  }

  else
  {
LABEL_7:
    v5 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v5 = *v5;
    }

    unlink(v5);
  }

  if ((*(a1 + 112) & 0x80000000) == 0)
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 32);

    sub_19B9952B0(v6, v7);
  }
}

char *sub_19B98E98C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B874C9C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_19B874C9C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_19B874C9C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_19B98EA28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98EA5C(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_19B98EAC4(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v73 = a1 + 40;
  (*(v2 + 16))(a1 + 40);
  v74 = 256;
  v4 = sub_19BA4F4E0();
  if (*(a1 + 79) < 0)
  {
    sub_19B874C9C(&__dst, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __dst = *(a1 + 56);
    v72 = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_19B874C9C(&v69, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    v69 = *(a1 + 80);
    v70 = *(a1 + 96);
  }

  if (*(a1 + 216))
  {
    syslog(5, "%s,%s,dumping internal buffer\n", "NOTICE", "CLLog");
    sub_19BA4F410(a1, &v75);
    if ((v75.st_gid & 0x80000000) == 0)
    {
      v5 = &v75;
    }

    else
    {
      v5 = *&v75.st_dev;
    }

    v6 = fopen(v5, "a");
    v7 = v6;
    if (SHIBYTE(v75.st_gid) < 0)
    {
      operator delete(*&v75.st_dev);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else if (v6)
    {
LABEL_13:
      sub_19B994440(*(a1 + 216), v7);
      fclose(v7);
      v8 = 1;
      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  if (v72 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (!stat(p_dst, &v75))
  {
    v10 = HIBYTE(v72);
    if (v72 >= 0)
    {
      v11 = &__dst;
    }

    else
    {
      v11 = __dst;
    }

    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3321888768;
    v64[2] = sub_19B98F69C;
    v64[3] = &unk_1F0E6DB08;
    v64[4] = a1;
    if (SHIBYTE(v70) < 0)
    {
      sub_19B874C9C(&v65, v69, *(&v69 + 1));
      v10 = HIBYTE(v72);
    }

    else
    {
      v65 = v69;
      v66 = v70;
    }

    if (v10 < 0)
    {
      sub_19B874C9C(&__p, __dst, *(&__dst + 1));
    }

    else
    {
      __p = __dst;
      v68 = v72;
    }

    sub_19B9952B0(v11, v64);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }
  }

  sub_19B98E450(a1);
  v12 = (a1 + 128);
  v13 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v13 = *v12;
  }

  if (!stat(v13, &v75))
  {
    sub_19BA4F410(a1, &v75);
    v15 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v15 = *v12;
    }

    if ((v75.st_gid & 0x80000000) == 0)
    {
      v16 = &v75;
    }

    else
    {
      v16 = *&v75.st_dev;
    }

    rename(v15, v16, v14);
    if ((v75.st_gid & 0x80000000) == 0)
    {
      v17 = &v75;
    }

    else
    {
      v17 = *&v75.st_dev;
    }

    sub_19B8B67E0(v17);
    if (*(a1 + 151) < 0)
    {
      v12 = *v12;
    }

    sub_19B98DE08(a1, v12);
    if (SHIBYTE(v75.st_gid) < 0)
    {
      operator delete(*&v75.st_dev);
    }

    v8 = 1;
  }

  v63 = 0;
  sub_19B9415F0(&v75);
  if (sub_19B8767CC(*&v75.st_dev, "LogNatalimetry", &v63))
  {
    v18 = 1;
  }

  else
  {
    sub_19B9415F0(v61);
    v18 = sub_19B8767CC(v61[0], "LogCalorimetry", &v63);
    if (v61[1])
    {
      sub_19B8750F8(v61[1]);
    }
  }

  if (v75.st_ino)
  {
    sub_19B8750F8(v75.st_ino);
  }

  if (v18)
  {
    if (v63)
    {
      sub_19B9535D8(0, &v60);
      v19 = std::string::append(&v60, "userinfo", 8uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      *&v75.st_uid = *(&v19->__r_.__value_.__l + 2);
      *&v75.st_dev = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(&v75, ".plist", 6uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v62 = v21->__r_.__value_.__r.__words[2];
      *v61 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v75.st_gid) < 0)
      {
        operator delete(*&v75.st_dev);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (v62 >= 0)
      {
        v23 = v61;
      }

      else
      {
        v23 = v61[0];
      }

      if (!stat(v23, &v75))
      {
        sub_19BA4EF9C(&v58);
        v24 = std::string::append(&v58, "/", 1uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        v26 = std::string::append(&v59, "userinfo", 8uLL);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v60.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v60.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v60, ".log", 4uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        *&v75.st_uid = *(&v28->__r_.__value_.__l + 2);
        *&v75.st_dev = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        if (v62 >= 0)
        {
          v30 = v61;
        }

        else
        {
          v30 = v61[0];
        }

        if ((v75.st_gid & 0x80000000) == 0)
        {
          v31 = &v75;
        }

        else
        {
          v31 = *&v75.st_dev;
        }

        sub_19B8B6930(v30, v31);
        if ((v75.st_gid & 0x80000000) == 0)
        {
          v32 = &v75;
        }

        else
        {
          v32 = *&v75.st_dev;
        }

        sub_19B8B67E0(v32);
        if (SHIBYTE(v75.st_gid) < 0)
        {
          operator delete(*&v75.st_dev);
        }
      }

      sub_19B9535D8(0, &v59);
      v33 = std::string::append(&v59, "cache", 5uLL);
      v34 = *&v33->__r_.__value_.__l.__data_;
      *&v75.st_uid = *(&v33->__r_.__value_.__l + 2);
      *&v75.st_dev = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v75, ".plist", 6uLL);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v75.st_gid) < 0)
      {
        operator delete(*&v75.st_dev);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v60;
      }

      else
      {
        v37 = v60.__r_.__value_.__r.__words[0];
      }

      if (!stat(v37, &v75))
      {
        sub_19BA4EF9C(&v57);
        v38 = std::string::append(&v57, "/", 1uLL);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        v40 = std::string::append(&v58, "cache", 5uLL);
        v41 = *&v40->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v59, ".log", 4uLL);
        v43 = *&v42->__r_.__value_.__l.__data_;
        *&v75.st_uid = *(&v42->__r_.__value_.__l + 2);
        *&v75.st_dev = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &v60;
        }

        else
        {
          v44 = v60.__r_.__value_.__r.__words[0];
        }

        if ((v75.st_gid & 0x80000000) == 0)
        {
          v45 = &v75;
        }

        else
        {
          v45 = *&v75.st_dev;
        }

        sub_19B8B6930(v44, v45);
        if ((v75.st_gid & 0x80000000) == 0)
        {
          v46 = &v75;
        }

        else
        {
          v46 = *&v75.st_dev;
        }

        sub_19B8B67E0(v46);
        if (SHIBYTE(v75.st_gid) < 0)
        {
          operator delete(*&v75.st_dev);
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v62) < 0)
      {
        operator delete(v61[0]);
      }
    }
  }

  else
  {
    v63 = 0;
  }

  sub_19BA4EDC4(&v59);
  v47 = std::string::append(&v59, "/", 1uLL);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  v49 = std::string::append(&v60, "com.apple.timed", 0xFuLL);
  v50 = *&v49->__r_.__value_.__l.__data_;
  *&v75.st_uid = *(&v49->__r_.__value_.__l + 2);
  *&v75.st_dev = v50;
  v49->__r_.__value_.__l.__size_ = 0;
  v49->__r_.__value_.__r.__words[2] = 0;
  v49->__r_.__value_.__r.__words[0] = 0;
  v51 = std::string::append(&v75, ".plist", 6uLL);
  v52 = *&v51->__r_.__value_.__l.__data_;
  v62 = v51->__r_.__value_.__r.__words[2];
  *v61 = v52;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v75.st_gid) < 0)
  {
    operator delete(*&v75.st_dev);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (v62 >= 0)
  {
    v53 = v61;
  }

  else
  {
    v53 = v61[0];
  }

  if (stat(v53, &v75))
  {
    goto LABEL_137;
  }

  sub_19BA4ECC4(&v60);
  sub_19B8759E8(&v59, "com.apple.timed");
  sub_19B8759E8(&v58, ".plist.log");
  sub_19BA4F174(&v60.__r_.__value_.__l.__data_, &v59, &v58, v4, &v75);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (v62 >= 0)
  {
    v54 = v61;
  }

  else
  {
    v54 = v61[0];
  }

  if ((v75.st_gid & 0x80000000) == 0)
  {
    v55 = &v75;
  }

  else
  {
    v55 = *&v75.st_dev;
  }

  if (sub_19B8B6930(v54, v55) == 1)
  {
    syslog(5, "%s,%s,could not copy %s log\n", "WARNING", "CLLog", "com.apple.timed");
  }

  if ((SHIBYTE(v75.st_gid) & 0x80000000) == 0)
  {
LABEL_137:
    if (v8)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  operator delete(*&v75.st_dev);
  if ((v8 & 1) == 0)
  {
LABEL_138:
    syslog(5, "%s,%s,could not dump log file\n", "WARNING", "CLLog");
  }

LABEL_139:
  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69);
  }

  if (SHIBYTE(v72) < 0)
  {
    operator delete(__dst);
  }

  return (*(*v3 + 24))(v3);
}

void sub_19B98F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  sub_19B888D7C((v63 - 232));
  _Unwind_Resume(a1);
}

uint64_t sub_19B98F69C(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  sub_19B8759E8(&v33, a2);
  if (*(a1 + 63) >= 0)
  {
    v5 = *(a1 + 63);
  }

  else
  {
    v5 = *(a1 + 48);
  }

  v6 = &v32;
  sub_19B8D78C0(&v32, v5 + 1);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v32.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a1 + 63) >= 0)
    {
      v7 = (a1 + 40);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  if (sub_19BA4F4EC(v4, &v33, &v32))
  {
    sub_19B8759E8(&v31, a2);
    sub_19B8759E8(v29, ".log.bz2");
    if (sub_19BA4F5B8(v4, &v31, v29))
    {
      v8 = 1;
    }

    else
    {
      sub_19B8759E8(v27, a2);
      sub_19B8759E8(__p, ".log");
      v8 = sub_19BA4F5B8(v4, v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
    if (!v8)
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  sub_19BA4EF9C(&v31);
  v9 = std::string::append(&v31, "/", 1uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = strlen(a2);
  v12 = std::string::append(&v32, a2, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34 = v12->__r_.__value_.__r.__words[2];
  v33 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 87) >= 0)
  {
    v14 = *(a1 + 87);
  }

  else
  {
    v14 = *(a1 + 72);
  }

  v15 = &v31;
  sub_19B8D78C0(&v31, v14 + 1);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v31.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 87) >= 0)
    {
      v16 = (a1 + 64);
    }

    else
    {
      v16 = *(a1 + 64);
    }

    memmove(v15, v16, v14);
  }

  *(&v15->__r_.__value_.__l.__data_ + v14) = 47;
  v17 = strlen(a2);
  v18 = std::string::append(&v31, a2, v17);
  v32 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v20 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v21 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v32;
  }

  else
  {
    v22 = v32.__r_.__value_.__r.__words[0];
  }

  if (v34 >= 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  rename(v22, v23, v19);
  sub_19B8B67E0(v23);
  if (v20 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  return 1;
}

void sub_19B98F9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

char *sub_19B98FA88(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_19B874C9C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_19B874C9C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_19B98FAFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_19B98FB18(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

os_log_t sub_19B98FB70()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

FILE ***sub_19B98FBA0(FILE ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_19B9940B8(v2);
    MEMORY[0x19EAE98C0](v3, 0x10B0C403E4C181ELL);
  }

  return a1;
}

void sub_19B98FBEC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE98C0);
}

FILE **sub_19B98FC24(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_19B9940B8(result);

    JUMPOUT(0x19EAE98C0);
  }

  return result;
}

uint64_t sub_19B98FC68(uint64_t a1, uint64_t a2)
{
  if (sub_19B916FBC(a2, &unk_1F0E6DBD0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B98FCA8(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yy-MM-dd"];

  return [v2 stringFromDate:a1];
}

uint64_t sub_19B98FD00(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"HH-mm-ss"];

  return [v2 stringFromDate:a1];
}

void sub_19B98FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77[152] = *MEMORY[0x1E69E9840];
  sub_19B87BBB4();
  if (!sub_19B93CCA4() || *a1 != 1)
  {
    goto LABEL_128;
  }

  v8 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (v8 <= 0x3B9AC9FF)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v9 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "CLTSP,Recorder,unable to write data as device doesn't have enough disk space,%lu", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      *__dst = 134217984;
      *&__dst[4] = v8;
      v11 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v11);
LABEL_126:
      if (v11 != buf)
      {
        free(v11);
      }

      goto LABEL_128;
    }

    goto LABEL_128;
  }

  if (a4)
  {
LABEL_16:
    v12 = sub_19B98FCA8(a3);
    v13 = sub_19B98FD00(a3);
    if (*(a1 + 1) == 1)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/tripSegment_%@_%@.cltsp", *(a1 + 8), v12, v13];
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/tripSegment_%@.cltsp", *(a1 + 8), v12, v60];
    }

    v31 = v14;
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v32 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v33 = [v12 UTF8String];
      v34 = [v13 UTF8String];
      *buf = 136446722;
      *&buf[4] = v33;
      *&buf[12] = 2082;
      *v74 = v34;
      *&v74[8] = 2114;
      v75 = v31;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_INFO, "CLTSP,Recorder,recording data for date,%{public}s,time,%{public}s to filename,%{public}@", buf, 0x20u);
    }

    v35 = sub_19B87DD40();
    if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v36 = [v12 UTF8String];
      v37 = [v13 UTF8String];
      *__dst = 136446722;
      *&__dst[4] = v36;
      v69 = 2082;
      v70 = v37;
      v71 = 2114;
      v72 = v31;
      v38 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "NSString * _Nonnull CLTripSegmentRecorder::getFileName(NSDate * _Nonnull)", "CoreLocation: %s\n", v38);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v39 = [v31 UTF8String];
    v40 = strlen(v39);
    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v41 = v40;
    if (v40 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v71) = v40;
    if (v40)
    {
      memmove(__dst, v39, v40);
    }

    __dst[v41] = 0;
    buf[0] = 0;
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      sub_19B8E3AF0(buf);
      if (!std::filebuf::close())
      {
        std::ios_base::clear(&buf[*(*buf - 24)], *&v76[*(*buf - 24)] | 4);
      }

      *buf = *MEMORY[0x1E69E54D0];
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x19EAE9740](&buf[8]);
      std::ostream::~ostream();
      MEMORY[0x19EAE9870](v77);
    }

    v42 = objc_autoreleasePoolPush();
    v43 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v31];
    if (!v43)
    {
      goto LABEL_102;
    }

    v62 = 0;
    v44 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v62];
    if ([v44 length])
    {
      [v43 seekToEndOfFile];
      [v43 writeData:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"cltspv1, %d, %d, AA", a4, objc_msgSend(v44, "length")), "dataUsingEncoding:", 4)}];
      [v43 writeData:v44];
      [v43 closeFile];
      ++dword_1EAFE5120;
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v45 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v46 = [v44 length];
        *buf = 67240704;
        *&buf[4] = a4;
        *&buf[8] = 1026;
        *&buf[10] = v46;
        *v74 = 2050;
        *&v74[2] = v8;
        _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_INFO, "CLTSP,Recorder,writeToFile,success,type,%{public}d,length,%{public}d,freeDiskSpace,%{public}lu", buf, 0x18u);
      }

      v47 = sub_19B87DD40();
      if (*(v47 + 160) <= 1 && *(v47 + 164) <= 1 && *(v47 + 168) <= 1 && !*(v47 + 152))
      {
        goto LABEL_102;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v48 = [v44 length];
      LODWORD(v63) = 67240704;
      HIDWORD(v63) = a4;
      v64 = 1026;
      v65 = v48;
      v66 = 2050;
      v67 = v8;
      v49 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v49);
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v50 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = a4;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_INFO, "CLTSP,Recorder,writeToFile,failed as date length is 0,type,%{public}d", buf, 8u);
      }

      v51 = sub_19B87DD40();
      if (*(v51 + 160) <= 1 && *(v51 + 164) <= 1 && *(v51 + 168) <= 1 && !*(v51 + 152))
      {
        goto LABEL_102;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      LODWORD(v63) = 67240192;
      HIDWORD(v63) = a4;
      v49 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v49);
    }

    if (v49 != buf)
    {
      free(v49);
    }

LABEL_102:
    objc_autoreleasePoolPop(v42);
    if (SHIBYTE(v71) < 0)
    {
      operator delete(*__dst);
    }

    goto LABEL_128;
  }

  sub_19B87BBB4();
  if (sub_19B93CCA4() && *a1 == 1)
  {
    v15 = *(a1 + 8);
    buf[0] = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
LABEL_34:
      v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
      sub_19B87BBB4();
      if (sub_19B93CCA4())
      {
        if (*a1 == 1)
        {
          v61 = [MEMORY[0x1E696AC08] defaultManager];
          v22 = [v61 enumeratorAtPath:*(a1 + 8)];
          for (i = [v22 nextObject]; i; i = objc_msgSend(v22, "nextObject"))
          {
            v63 = 0;
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", *(a1 + 8), i];
            v25 = [objc_msgSend(v61 attributesOfItemAtPath:v24 error:{0), "fileCreationDate"}];
            if ([v25 compare:v21] == -1)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
              }

              v26 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
              {
                [v25 timeIntervalSinceReferenceDate];
                *buf = 138543618;
                *&buf[4] = v24;
                *&buf[12] = 2050;
                *v74 = v27;
                _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_INFO, "CLTSP,Recorder,old file deleted,%{public}@,creationDate,%{public}.2lf", buf, 0x16u);
              }

              v28 = sub_19B87DD40();
              if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
                }

                [v25 timeIntervalSinceReferenceDate];
                *__dst = 138543618;
                *&__dst[4] = v24;
                v69 = 2050;
                v70 = v29;
                v30 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRecorder::removeFilesOlderThanThisDate(NSDate * _Nonnull)", "CoreLocation: %s\n", v30);
                if (v30 != buf)
                {
                  free(v30);
                }
              }

              [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
            }
          }
        }
      }

      goto LABEL_16;
    }

    v63 = 0;
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v16 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 8);
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_INFO, "CLTSP,Recorder,created directory at path,%{public}@", buf, 0xCu);
      }

      v18 = sub_19B87DD40();
      if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
        }

        v19 = *(a1 + 8);
        *__dst = 138543362;
        *&__dst[4] = v19;
        v20 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRecorder::createDirectory()", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      goto LABEL_34;
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    v52 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v53 = *(a1 + 8);
      *buf = 138543618;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *v74 = v63;
      _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_INFO, "CLTSP,Recorder,unable to create directory at path,%{public}@, error, %{public}@", buf, 0x16u);
    }

    v54 = sub_19B87DD40();
    if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
      }

      v55 = *(a1 + 8);
      *__dst = 138543618;
      *&__dst[4] = v55;
      v69 = 2114;
      v70 = v63;
      v56 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRecorder::createDirectory()", "CoreLocation: %s\n", v56);
      if (v56 != buf)
      {
        free(v56);
      }
    }
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
  }

  v57 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_ERROR, "CLTSP,Recorder,unable to write data of type,%{pubilc}d,as directory could not be created", buf, 8u);
  }

  v58 = sub_19B87DD40();
  if ((*(v58 + 160) & 0x80000000) == 0 || (*(v58 + 164) & 0x80000000) == 0 || (*(v58 + 168) & 0x80000000) == 0 || *(v58 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6DBE8);
    }

    *__dst = 67109120;
    v11 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRecorder::writeToFile(id _Nonnull, NSDate * _Nonnull, const CLTripSegmentRecorderLogEnum)", "CoreLocation: %s\n", v11);
    goto LABEL_126;
  }

LABEL_128:
  v59 = *MEMORY[0x1E69E9840];
}

void sub_19B990E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B990E90()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

id sub_19B9939EC()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696A3A0];
  v3[0] = *MEMORY[0x1E696A388];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  qword_1ED5192E0 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B993A78()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

char *sub_19B993FC8(char *a1, const __CFString *a2, char a3)
{
  v4 = sub_19B93866C(a1, a2, a3, 0x1F0E6FE80);
  *v4 = &unk_1F0E6DC78;
  if (*(v4 + 16) == 1)
  {
    sub_19B938FCC(a1, 1);
  }

  return a1;
}

void sub_19B994044(uint64_t a1)
{
  sub_19B938EFC(a1);

  JUMPOUT(0x19EAE98C0);
}

BOOL sub_19B994080(uint64_t a1, const __CFString *a2, const void *a3)
{
  sub_19B93AA98(a1, a2, a3);

  return sub_19B938E40(a1);
}

FILE **sub_19B9940B8(FILE **a1)
{
  sub_19B9940EC(a1);
  sub_19B93466C((a1 + 4));
  return a1;
}

uint64_t sub_19B9940EC(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  v3 = *a1;
  if (*a1)
  {
    *a1 = 0;
    fclose(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
    a1[1] = 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_19B9943C8(a1);
  (*(*v2 + 24))(v2);
  return v5;
}

void sub_19B9941B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

FILE *sub_19B9941CC(FILE **a1)
{
  v2 = a1 + 4;
  (*&a1[4]->_flags)(a1 + 4);
  if (!*a1)
  {
    v3 = malloc_type_malloc(*(a1 + 4), 0x100004077774924uLL);
    a1[1] = v3;
    if (v3)
    {
      *a1 = funopen(a1, 0, sub_19B9942E0, 0, sub_19B9943C4);
      sub_19B9943C8(a1);
    }
  }

  v4 = *a1;
  (a1[4]->_bf._base)(v2);
  return v4;
}

void sub_19B9942C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9942E0(uint64_t a1, const void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v7 = *(v6 - 24);
  if (v7)
  {
    v8 = *(a1 + 20);
    v9 = *(a1 + 16) - v8;
    if (v9 >= v3)
    {
      v3 = v3;
    }

    else
    {
      v3 = v9;
    }

    memcpy((v7 + v8), a2, v3);
    v10 = *(a1 + 16);
    v11 = (*(a1 + 20) + v3) % v10;
    if (*(a1 + 24) + v3 < v10)
    {
      v10 = *(a1 + 24) + v3;
    }

    *(a1 + 20) = v11;
    *(a1 + 24) = v10;
  }

  else
  {
    v3 = 0;
  }

  (*(*v6 + 24))(v6);
  return v3;
}

uint64_t sub_19B9943C8(uint64_t a1)
{
  v1 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  *(v1 - 12) = 0;
  return (*(*v1 + 24))(v1);
}

uint64_t sub_19B994440(uint64_t a1, FILE *a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 16))(a1 + 32);
  v5 = *(v4 - 24);
  if (v5)
  {
    if (*a1)
    {
      fflush(*a1);
      v5 = *(a1 + 8);
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      v8 = v5 + v7;
      v9 = *(v8 - 1);
      *(v8 - 1) = 0;
      fputs((*(a1 + 8) + *(a1 + 20)), a2);
      fputc(v9, a2);
      v5 = *(a1 + 8);
    }

    *(v5 + *(a1 + 20)) = 0;
    fputs(*(a1 + 8), a2);
    sub_19B9943C8(a1);
  }

  else
  {
    v6 = 0;
  }

  (*(*v4 + 24))(v4);
  return v6;
}

void sub_19B99455C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

double sub_19B994BF4(unint64_t a1)
{
  v2 = *&qword_1EAFE5B08;
  if (*&qword_1EAFE5B08 == 0.0)
  {
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_1EAFE5B08 = v2;
  }

  return v2 * a1;
}

void sub_19B9952B0(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [objc_msgSend(v4 contentsOfDirectoryAtPath:objc_msgSend(MEMORY[0x1E696AEC0] error:{"stringWithUTF8String:", a1), 0), "reverseObjectEnumerator", 0}];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(v5);
      }

      if (!(*(a2 + 16))(a2, [*(*(&v11 + 1) + 8 * v9) UTF8String]))
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

id sub_19B9964DC(void *a1, uint64_t a2, void *a3)
{
  v39.receiver = a1;
  v39.super_class = &off_1F0EA52A0;
  v4 = objc_msgSendSuper2(&v39, sel_init);
  if (v4)
  {
    v37 = 0.0;
    v38 = 0.0;
    [a3 center];
    v6 = v5;
    [a3 center];
    [a3 radius];
    v7 = v6 * 0.0174532925;
    v9 = v8 / 6378137.0;
    v10 = __sincos_stret(v7);
    v11 = __sincos_stret(v9);
    v12 = asin(v10.__cosval * v11.__sinval + v10.__sinval * v11.__cosval) / 0.0174532925;
    [a3 center];
    v14 = v13;
    [a3 center];
    v16 = v15;
    [a3 radius];
    v17 = v14 * 0.0174532925;
    v19 = v18 / 6378137.0;
    v20 = __sincos_stret(v17);
    v21 = __sincos_stret(v19);
    v22 = asin(v20.__cosval * v21.__sinval * 6.123234e-17 + v20.__sinval * v21.__cosval);
    v23 = sin(v22);
    v24 = (v16 * 0.0174532925 + atan2(v20.__cosval * v21.__sinval, v21.__cosval - v20.__sinval * v23)) / 0.0174532925;
    [a3 center];
    v26 = v25;
    [a3 center];
    v28 = v27;
    [a3 radius];
    [a3 center];
    v31 = v30;
    [a3 center];
    v33 = v32;
    [a3 radius];
    sub_19B8B7A88(&v36, &v37, v31, v33, 270.0, v34);
    [v4 setSouthLat:v38];
    [v4 setWestLng:v37];
    [v4 setNorthLat:v12];
    [v4 setEastLng:v24];
  }

  return v4;
}

void sub_19B996888(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isGeocoding] & 1) == 0)
  {
    v2 = *(*(*(a1 + 32) + 8) + 8);
    if (v2)
    {
      v3 = v2;
    }

    *(*(*(a1 + 32) + 8) + 8) = [*(a1 + 56) copy];
    v4 = *(a1 + 40);
    if (!v4 || ([v4 coordinate], !CLLocationCoordinate2DIsValid(v34)))
    {
      v18 = *(a1 + 32);
      v19 = *(*(v18 + 8) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B996CF8;
      block[3] = &unk_1E753CC90;
      block[4] = v18;
      dispatch_async(v19, block);
      goto LABEL_32;
    }

    v5 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
    v6 = v5;
    if (*(a1 + 48))
    {
      [v5 clearDeviceDisplayLanguages];
      v7 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:{objc_msgSend(*(a1 + 48), "localeIdentifier")}];
      if (v7)
      {
        [v6 addDeviceDisplayLanguage:v7];
      }
    }

    memset(v27, 0, 156);
    v8 = *(a1 + 40);
    if (v8)
    {
      [v8 clientLocation];
    }

    v9 = [objc_alloc(MEMORY[0x1E69A1E70]) _initWithCLClientLocation:v27];
    v10 = v9;
    v11 = *(a1 + 64);
    if (v11 < 0.0 || v11 >= 360.0)
    {
      v11 = -1.0;
    }

    [v9 setHeading:v11];
    v13 = [*(a1 + 40) coarseMetaData];
    v26 = 0;
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v26];
    if (v26)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v26;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "Coarse MetaData cannot be decoded while reverse geocoding location, error, %@", buf, 0xCu);
      }

      v16 = sub_19B87DD40();
      if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
        }

        v29 = 138412290;
        v30 = v26;
        v17 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "[CLGeocoder reverseGeocodeLocation:preferredLocale:heading:localResultsOnly:completionHandler:]_block_invoke", "CoreLocation: %s\n", v17);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    if (v14)
    {
      [v10 setCoarseMetadata:v14];
    }

    else
    {
LABEL_33:
      [*(a1 + 40) horizontalAccuracy];
      if (v21 > 1000.0)
      {
        v22 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
        goto LABEL_36;
      }
    }

    v22 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
LABEL_36:
    v23 = v22;
    *(*(*(a1 + 32) + 8) + 16) = v22;
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) _ticket:v23 didReturnError:0 partialResultForLocation:*(a1 + 40)];
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B996D00;
      v25[3] = &unk_1E753D0E8;
      v24 = *(a1 + 40);
      v25[4] = *(a1 + 32);
      v25[5] = v23;
      v25[6] = v24;
      [v23 submitWithHandler:v25 networkActivity:0];
    }
  }

LABEL_32:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B996D00(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  if (a3)
  {
    return [v4 _ticket:a1[5] didReturnError:a3 partialResultForLocation:a1[6]];
  }

  else
  {
    return MEMORY[0x1EEE66B58](v4, sel__ticket_didReturnGeoMapItems_);
  }
}

void sub_19B996DAC(uint64_t a1)
{
  if (([*(a1 + 32) isGeocoding] & 1) == 0)
  {
    v2 = *(*(*(a1 + 32) + 8) + 8);
    if (v2)
    {
      v3 = v2;
    }

    *(*(*(a1 + 32) + 8) + 8) = [*(a1 + 56) copy];
    v4 = *(a1 + 40);
    if (v4 && [v4 count])
    {
      v5 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
      v6 = v5;
      if (*(a1 + 48))
      {
        [v5 clearDeviceDisplayLanguages];
        v7 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:{objc_msgSend(*(a1 + 48), "localeIdentifier")}];
        if (v7)
        {
          [v6 addDeviceDisplayLanguage:v7];
        }
      }

      v8 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
      *(*(*(a1 + 32) + 8) + 16) = v8;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_19B996F60;
      v11[3] = &unk_1E753E220;
      v11[4] = *(a1 + 32);
      v11[5] = v8;
      [v8 submitWithRefinedHandler:v11 networkActivity:0];
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = *(*(v9 + 8) + 24);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B996F58;
      block[3] = &unk_1E753CC90;
      block[4] = v9;
      dispatch_async(v10, block);
    }
  }
}

uint64_t sub_19B996F60(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v5, sel__ticket_didReturnError_);
  }

  else
  {
    if (![a2 count])
    {
      [a3 count];
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v8, sel__ticket_didReturnGeoMapItems_);
  }
}

void sub_19B99715C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  if ([*(a1 + 40) isGeocoding])
  {
    return;
  }

  v4 = *(*(*(a1 + 40) + 8) + 8);
  if (v4)
  {
    v5 = v4;
  }

  *(*(*(a1 + 40) + 8) + 8) = [*(a1 + 64) copy];
  v6 = *(a1 + 48);
  if (!v6 || ![v6 length])
  {
    goto LABEL_14;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  [v3 center];
  if (!CLLocationCoordinate2DIsValid(v20))
  {
LABEL_14:
    v9 = *(a1 + 40);
    v10 = *(*(v9 + 8) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B997458;
    block[3] = &unk_1E753CC90;
    block[4] = v9;
    dispatch_async(v10, block);
    return;
  }

  v3 = [objc_alloc(MEMORY[0x1E69A2200]) _initWithCircularRegion:v3];
LABEL_12:
  v7 = *MEMORY[0x1E69E9BD0];
  getpid();
  v15 = "com.apple.locationd.registration";
  if (sandbox_check() || (memset(v18, 0, 156), !CLClientRetrieveLocationWithDynamicAccuracyReductionAndAlteredAccessoryLocations(0, 0, 0, v18)))
  {
    v8 = 0;
  }

  else
  {
    memset(v17, 0, 156);
    CLClientSnapLocationToResolution();
    v8 = [objc_alloc(MEMORY[0x1E69A1E70]) _initWithCLClientLocation:{v17, "com.apple.locationd.registration"}];
  }

  v11 = [objc_msgSend(MEMORY[0x1E69A2208] sharedService];
  v12 = v11;
  if (*(a1 + 56))
  {
    [v11 clearDeviceDisplayLanguages];
    v13 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:{objc_msgSend(*(a1 + 56), "localeIdentifier")}];
    if (v13)
    {
      [v12 addDeviceDisplayLanguage:v13];
    }
  }

  if (v8 | v3)
  {
    if (v8)
    {
      [v12 setDeviceLocation:v8];
    }

    if (v3)
    {
      [v12 setMapRegion:v3];
    }
  }

  v14 = [objc_msgSend(MEMORY[0x1E69A2208] "sharedService")];
  *(*(*(a1 + 40) + 8) + 16) = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B997460;
  v16[3] = &unk_1E753E220;
  v16[4] = *(a1 + 40);
  v16[5] = v14;
  [v14 submitWithRefinedHandler:v16 networkActivity:0];
}

uint64_t sub_19B997460(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v5, sel__ticket_didReturnError_);
  }

  else
  {
    if (![a2 count])
    {
      [a3 count];
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v8, sel__ticket_didReturnGeoMapItems_);
  }
}

uint64_t sub_19B997568(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E69A2208] sharedService];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B99764C;
    v6[3] = &unk_1E753E298;
    v3 = *(a1 + 32);
    v6[4] = *(a1 + 40);
    return [v2 resolveMapItemLocallyFromHandle:v3 completionHandler:v6];
  }

  else
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"kCLErrorDomain" code:8 userInfo:0];
    v5 = *(*(a1 + 40) + 16);

    return v5();
  }
}

void sub_19B99764C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9976C8;
  block[3] = &unk_1E753CD30;
  v3 = *(a1 + 32);
  block[5] = a3;
  block[6] = v3;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_19B997758(uint64_t a1)
{
  result = [*(a1 + 32) isGeocoding];
  if (result)
  {
    [*(*(*(a1 + 32) + 8) + 16) cancel];

    *(*(*(a1 + 32) + 8) + 16) = 0;
    v3 = *(a1 + 32);

    return MEMORY[0x1EEE66B58](v3, sel__notifyCancel);
  }

  return result;
}

uint64_t sub_19B99784C(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(result + 32) + 8) + 16);
  if (v1 == *(result + 40))
  {
    v2 = result;

    *(*(*(v2 + 32) + 8) + 16) = 0;
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(v2 + 48);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [CLPlacemark placemarkWithGEOMapItem:*(*(&v13 + 1) + 8 * i)];
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = [v3 count];
    v11 = *(v2 + 32);
    if (v10)
    {
      result = [v11 _notifyResult:v3];
    }

    else
    {
      result = [v11 _notifyNoResult];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B997A2C(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(*(result + 32) + 8) + 16);
  if (v1 == *(result + 40))
  {
    v2 = result;

    *(*(*(v2 + 32) + 8) + 16) = 0;
    if (*(v2 + 48))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
      }

      v3 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(v2 + 48) description];
        *buf = 138477827;
        v9 = v4;
        _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Geocode error: %{private}@", buf, 0xCu);
      }

      v5 = sub_19B87DD40();
      if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E068);
        }

        [*(v2 + 48) description];
        v6 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "[CLGeocoder _ticket:didReturnError:partialResultForLocation:]_block_invoke", "CoreLocation: %s\n", v6);
        if (v6 != buf)
        {
          free(v6);
        }
      }
    }

    if ([objc_msgSend(*(v2 + 48) "domain")] && objc_msgSend(*(v2 + 48), "code") == -8)
    {
      result = [*(v2 + 32) _notifyNoResult];
    }

    else
    {
      result = [*(v2 + 32) _notifyError:*(v2 + 48)];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19B997EB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 initWithGEOCoordinate:{*(a3 + 4), *(a3 + 12)}];
  v5 = v4;
  if (v4)
  {
    [v4 setTimestamp:*(a3 + 76)];
    [v5 setAltitude:*(a3 + 28)];
    [v5 setHorizontalAccuracy:*(a3 + 20)];
    [v5 setVerticalAccuracy:*(a3 + 36)];
    v6 = *(a3 + 132);
    if (v6 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v6 == 1;
    }

    [v5 setReferenceFrame:v7];
    if (*(a3 + 44) > -1.0)
    {
      [v5 setSpeed:?];
    }

    v8 = *(a3 + 60);
    if (v8 < 360.0 && v8 >= 0.0)
    {
      [v5 setCourse:?];
    }
  }

  return v5;
}

BOOL sub_19B99815C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v2 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v2, OS_LOG_TYPE_ERROR, "CLTSP,isRestrictedRoadForWiFiFix,null road", buf, 2u);
    }

    v3 = sub_19B87DD40();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL isRestrictedRoadForWiFiFix(CLMapRoadPtr)", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    goto LABEL_15;
  }

  if ((*(a1 + 20) & 0xFFFFFFFE) == 8)
  {
LABEL_15:
    result = 1;
    goto LABEL_16;
  }

  result = (*(a1 + 24) & 0xFFFFFFFE) == 6;
LABEL_16:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B998324(uint64_t a1, std::__shared_weak_count *a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = !sub_19B99815C(a1);
  if (a2)
  {
    sub_19B8750F8(a2);
  }

  return v3;
}

void sub_19B998378(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B998390(char a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a3;
  if (!*a3)
  {
    return 0;
  }

  result = *v4;
  if (!*v4)
  {
    return result;
  }

  v7 = *(a2 + 88);
  if (v7 != 11 && v7 != 4)
  {
    return 1;
  }

  v9 = *(result + 20);
  if (v9 >= 3 && (*(result + 24) - 1) >= 2)
  {
    v11 = v9 == 3 || *(result + 76) == 2;
    v10 = v11;
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a2 + 24);
  if (v12 >= 80.0)
  {
    v13 = (v12 < 240.0) & v10;
  }

  else
  {
    v13 = 1;
  }

  v14 = v4[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_19B998324(result, v14, a1);
  if (v14)
  {
    sub_19B8750F8(v14);
  }

  if (v13)
  {
    return v15 & ((*(*a3 + 11) < 75.0) | v10);
  }

  else
  {
    return 0;
  }
}

void sub_19B9984A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9984C0(uint64_t result, void **a2, void **a3)
{
  if (result)
  {
    v3 = *result;
    if (*result)
    {
      while (a2 != a3)
      {
        v4 = *a2;
        if (*a2 && *v3 == *v4 && v3[1] == v4[1])
        {
          return 1;
        }

        a2 += 2;
      }
    }

    return 0;
  }

  return result;
}

void sub_19B998514(uint64_t **a1, unint64_t ****a2, uint64_t *a3, void **a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1)
  {
    memset(v31, 0, 24);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v11 = *a3;
    v13 = *v5;
    v12 = v5[1];
    v26 = v13;
    v27 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = sub_19B8EB824(v11, &v26, v31, &v28, 0, 200.0);
    if (v27)
    {
      sub_19B8750F8(v27);
    }

    if ((v14 & 1) != 0 && v28 != v29)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      if (sub_19B8EAC7C(*a3, v28, &v23, 0))
      {
        sub_19B8F1A28(&v28, v29, v23, v24, (v24 - v23) >> 4);
      }

      v15 = v28;
      for (i = v29; v15 != i; v15 += 2)
      {
        v17 = *v15;
        if (*v15)
        {
          v18 = **a1;
          if (*v17 != *v18 || v17[1] != v18[1])
          {
            v19 = *a2;
            v20 = a2[1];
            while (v19 != v20)
            {
              v21 = *v19;
              if (*v19)
              {
                if (*v21)
                {
                  if (!sub_19B8F07E0(a5, *v21))
                  {
                    v22 = **v19;
                    if (*v22 == **v15 && v22[1] == *(*v15 + 1))
                    {
                      v31[4] = **v19;
                      *(sub_19B8F3760(a5, v22) + 48) = 1;
                      sub_19B8EAB68(a4, v19);
                    }
                  }
                }
              }

              v19 += 2;
            }
          }
        }
      }

      v32 = &v23;
      sub_19B8F0E84(&v32);
    }

    v23 = &v28;
    sub_19B8F0E84(&v23);
    v28 = v31;
    sub_19B8F0E84(&v28);
  }
}

void sub_19B99871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 88) = &a9;
  sub_19B8F0E84((v17 - 88));
  a9 = &a14;
  sub_19B8F0E84(&a9);
  a14 = &a17;
  sub_19B8F0E84(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_19B998774(char *a1, char *a2)
{
  if (a1 == a2)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1;
    if ((a2 - a1) >= 0x40)
    {
      v5 = 0;
      v6 = 0;
      v7 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
      v8 = 1;
      v9 = 1;
      v10 = 1;
      v17 = v7;
      do
      {
        v11 = *v3;
        if (*v3)
        {
          v12 = *(v11 + 48) <= 2.22;
          v13 = *(v11 + 40) >= 179.0;
          if (v5)
          {
            v14 = v6;
            v11 = v5;
          }

          else
          {
            v14 = *(v3 + 1);
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v6)
            {
              sub_19B8750F8(v6);
              v7 = v17;
            }
          }

          v8 &= v12;
          v15 = vmovn_s64(vcgtq_f64(v7, vabdq_f64(*(*v3 + 8), *(v11 + 8))));
          v10 &= v13;
          v9 &= vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0];
          v6 = v14;
          v5 = v11;
        }

        v3 += 16;
      }

      while (v3 != a2);
      v4 = v8 | v9 | v10;
      if (v6)
      {
        sub_19B8750F8(v6);
      }
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

double *sub_19B9988CC(double *result, double a2)
{
  v2 = result;
  v12 = a2;
  v3 = *(result + 6);
  if (v3)
  {
    v4 = result[1];
  }

  else
  {
    result[1] = a2;
    result[2] = a2;
    v4 = a2;
  }

  v5 = fabs(a2);
  if (v5 > fabs(v4))
  {
    result[1] = a2;
  }

  if (v5 < fabs(result[2]))
  {
    result[2] = a2;
  }

  v6 = v3 + 1;
  *(result + 6) = v6;
  v7 = result[4];
  v8 = a2 - v7;
  v9 = v7 + (a2 - v7) / v6;
  v10 = result[5] + (a2 - v9) * v8;
  result[4] = v9;
  result[5] = v10;
  result[6] = a2 * a2 / v6 + result[6] - result[6] / v6;
  if (*result >= 1)
  {
    result = sub_19B9A2A88(result + 7, *(result + 7), &v12);
    v11 = *(v2 + 8);
    if (*v2 < ((v11 - *(v2 + 7)) >> 3))
    {
      *(v2 + 8) = v11 - 8;
    }
  }

  return result;
}

void sub_19B9989BC(uint64_t *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v3 = v1 - v2;
  if (v1 != v2)
  {
    v34 = v1 - v2;
    v5 = &dword_19B873000;
    v6 = "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid snap pointer";
    v7 = -1.0;
    while (1)
    {
      v8 = *v2;
      v9 = *(v2 + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v8)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v17 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v7;
          _os_log_impl(v5, v17, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
        }

        v18 = sub_19B87DD40();
        if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 == -1)
          {
            goto LABEL_35;
          }

          goto LABEL_52;
        }

LABEL_37:
        v2 += 16;
        if (!v9)
        {
          goto LABEL_39;
        }

LABEL_38:
        sub_19B8750F8(v9);
        goto LABEL_39;
      }

      v7 = *(v8 + 16);
      v10 = *v8;
      if (!v10)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v19 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349056;
          *&buf[4] = v7;
          _os_log_impl(v5, v19, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,invalid road in snap pointer", buf, 0xCu);
        }

        v20 = sub_19B87DD40();
        if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 == -1)
          {
LABEL_35:
            *v37 = 134349056;
            *&v37[4] = v7;
            v21 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::removeDuplicateSnapsOnSameRoad(std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v21);
            if (v21 != buf)
            {
              free(v21);
            }

            goto LABEL_37;
          }

LABEL_52:
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      *buf = *v10;
      v11 = v36[0];
      if (!v36[0])
      {
LABEL_17:
        *v37 = buf;
        *(sub_19B8F3760(&v35, buf) + 48) = 1;
        goto LABEL_37;
      }

      while (1)
      {
        v12 = v11[4];
        v13 = v11[5];
        v14 = *&buf[8] < v13;
        if (*buf != v12)
        {
          v14 = *buf < v12;
        }

        if (v14)
        {
          goto LABEL_16;
        }

        v15 = v13 < *&buf[8];
        v16 = *buf == v12 ? v15 : v12 < *buf;
        if (v16 != 1)
        {
          break;
        }

        ++v11;
LABEL_16:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      v22 = v5;
      v23 = v6;
      sub_19B8F1CF8(v37, (v2 + 16), a1[1], v2);
      v25 = v24;
      for (i = a1[1]; i != v25; i -= 16)
      {
        v27 = *(i - 8);
        if (v27)
        {
          sub_19B8750F8(v27);
        }
      }

      a1[1] = v25;
      v6 = v23;
      v5 = v22;
      if (v9)
      {
        goto LABEL_38;
      }

LABEL_39:
      if (v2 == a1[1])
      {
        v1 = *a1;
        v3 = v34;
        goto LABEL_54;
      }
    }
  }

  v7 = -1.0;
  v2 = v1;
LABEL_54:
  v28 = v3 >> 4;
  v29 = (v2 - v1) >> 4;
  if (v29 != v3 >> 4)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v30 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349568;
      *&buf[4] = v7;
      *&buf[12] = 2050;
      *&buf[14] = v28;
      v43 = 2050;
      v44 = v29;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,removeDuplicateSnapsOnSameRoad,prevSize,%{public}lu,newSize,%{public}lu", buf, 0x20u);
    }

    v31 = sub_19B87DD40();
    if (*(v31 + 160) > 1 || *(v31 + 164) > 1 || *(v31 + 168) > 1 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      *v37 = 134349568;
      *&v37[4] = v7;
      v38 = 2050;
      v39 = v28;
      v40 = 2050;
      v41 = v29;
      v32 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::removeDuplicateSnapsOnSameRoad(std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }

  sub_19B8F3484(&v35, v36[0]);
  v33 = *MEMORY[0x1E69E9840];
}

void sub_19B999008(float64x2_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v9 = a3[1];
  while (v9 != v8)
  {
    v9 -= 24;
    *&buf = v9;
    sub_19B8F0E84(&buf);
  }

  a3[1] = v8;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v12 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLTSP,processLocationSeries,empty GPS section", &buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      LOWORD(p_buf) = 0;
      v14 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL &)", "CoreLocation: %s\n", v14);
      if (v14 != &buf)
      {
        free(v14);
      }
    }
  }

  else
  {
    if (v11 - v10 == 16)
    {
      *(*v10 + 88) = 4;
    }

    v71 = 0;
    v72 = 0;
    v73 = 0;
    if (sub_19B998774(v10, v11))
    {
      sub_19B999C3C(&v71, a2);
    }

    else
    {
      buf = 0uLL;
      v92 = 0;
      v16 = *a2;
      v15 = a2[1];
      if (*a2 == v15)
      {
        p_buf = &buf;
        sub_19B8F0E84(&p_buf);
      }

      else
      {
        v17 = a5;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          if (v18)
          {
            v20 = *(v18 + 48);
            if ((v20 >= 2.22 || *(*v16 + 48) >= 2.22) && (v20 < 2.22 || *(*v16 + 48) < 2.22))
            {
              sub_19B999C3C(&v71, &buf);
              v22 = *(&buf + 1);
              v21 = buf;
              while (v22 != v21)
              {
                v23 = *(v22 - 8);
                if (v23)
                {
                  sub_19B8750F8(v23);
                }

                v22 -= 16;
              }

              *(&buf + 1) = v21;
            }
          }

          sub_19B8EAB68(&buf, v16);
          v18 = *v16;
          if (*v16 == *(a2[1] - 16))
          {
            break;
          }

          v24 = *(v16 + 8);
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            sub_19B8750F8(v19);
          }

          v16 += 16;
          v19 = v24;
          if (v16 == v15)
          {
            goto LABEL_42;
          }
        }

        sub_19B999C3C(&v71, &buf);
        v24 = v19;
LABEL_42:
        p_buf = &buf;
        sub_19B8F0E84(&p_buf);
        a5 = v17;
        if (v24)
        {
          sub_19B8750F8(v24);
        }
      }
    }

    v26 = v71;
    v25 = v72;
    if (v71 != v72)
    {
      v68 = a2;
      v65 = a5;
      v66 = v72;
      v67 = a4;
      do
      {
        v27 = *a4;
        v28 = a4[1];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v29 = *v26;
        v30 = v26[1];
        if (*v26 == v30)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v35 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "CLTSP,processLocationSeries,empty GPS section", &buf, 2u);
          }

          v36 = sub_19B87DD40();
          if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
          {
            bzero(&buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            LOWORD(p_buf) = 0;
            v37 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSplitLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL)", "CoreLocation: %s\n", v37);
            if (v37 != &buf)
            {
              free(v37);
            }
          }
        }

        else
        {
          v31 = *a5;
          if (v30 - v29 == 16 || (v32 = sub_19B998774(v29, v30), v29 = *v26, v32))
          {
            buf = 0uLL;
            v92 = 0;
            v74 = *(*v29 + 32);
            p_buf = 0;
            v86 = 0;
            *&v89 = v27;
            *(&v89 + 1) = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              v29 = *v26;
            }

            v33 = v26[1] - 16;
            if (v31)
            {
              v34 = v29;
            }

            else
            {
              v34 = (v26[1] - 16);
            }

            sub_19B999DC8(a1, &v89, 1, v34, &p_buf, &v74, &buf);
            if (v28)
            {
              sub_19B8750F8(v28);
            }

            if (buf != *(&buf + 1))
            {
              sub_19B9989BC(&buf);
              sub_19B99BD08(a3, &buf);
            }

            sub_19B8EBC04(v26);
            if (v86)
            {
              sub_19B8750F8(v86);
            }

            p_buf = &buf;
            sub_19B8F0E84(&p_buf);
          }

          else
          {
            v38 = **v29;
            p_buf = 0;
            v86 = 0;
            v87 = 0;
            v83 = v27;
            v84 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v39 = sub_19B9AEA5C(v26, &p_buf, &v83);
            if (v84)
            {
              sub_19B8750F8(v84);
            }

            if (v39)
            {
              v40 = *(v27 + 152);
              if (v40 == 3)
              {
                v41 = 20.0;
              }

              else
              {
                v41 = 30.0;
              }

              if (v40 == 2)
              {
                v42 = 8.0;
              }

              else
              {
                v42 = v41;
              }

              *(&buf + 1) = 0;
              v92 = 0;
              *&buf = &buf + 8;
              v82 = 0xBFF0000000000000;
              v44 = p_buf;
              v43 = v86;
              if (p_buf == v86)
              {
                v25 = v66;
                a4 = v67;
              }

              else
              {
                v45 = 0;
                v46 = 0;
                do
                {
                  v47 = v44->__vftable;
                  if (v44->__vftable)
                  {
                    if (v45)
                    {
                      shared_owners = v46;
                      v47 = v45;
                    }

                    else
                    {
                      shared_owners = v44->__shared_owners_;
                      if (shared_owners)
                      {
                        atomic_fetch_add_explicit(&shared_owners->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v46)
                      {
                        sub_19B8750F8(v46);
                      }
                    }

                    v49 = v44->__vftable;
                    if (v44->__vftable == p_buf->__vftable && (v31 & 1) != 0 || v49 == v86[-1].__shared_owners_ || ((v86 - p_buf) < 0x1E1 || vabdd_f64(v47[2], v49[2]) >= 5.0) && sub_19BA0C01C(a1 + 5, v49[3], v49[4], v47[3], v47[4], 0.0) >= v42)
                    {
                      v80 = 0;
                      v81 = 0;
                      v78 = 0;
                      v79 = 0;
                      for (i = *v26; ; i += 2)
                      {
                        if (i == v26[1])
                        {
                          v89 = 0uLL;
                          v90 = 0;
                          goto LABEL_107;
                        }

                        v51 = *i;
                        if (*i)
                        {
                          if (vabdd_f64(*v51, *&v44->__on_zero_shared) < 0.001)
                          {
                            break;
                          }
                        }
                      }

                      v60 = i[1];
                      if (v60)
                      {
                        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v80 = v51;
                      v81 = v60;
                      v89 = 0uLL;
                      v90 = 0;
                      v82 = *(v51 + 32);
                      v77[0] = v27;
                      v77[1] = v28;
                      if (v28)
                      {
                        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      sub_19B999DC8(a1, v77, 1, &v80, &v78, &v82, &v89);
                      if (v28)
                      {
                        sub_19B8750F8(v28);
                      }

LABEL_107:
                      v74 = 0;
                      v75 = 0;
                      v76 = 0;
                      v53 = *(&v89 + 1);
                      for (j = v89; j != v53; ++j)
                      {
                        v54 = *j;
                        if (*j)
                        {
                          v55 = *v54;
                          if (*v54)
                          {
                            v56 = v44->~__shared_weak_count;
                            if (v56)
                            {
                              if (*v55 != *v56 || v55[1] != *(v56 + 1))
                              {
                                v57 = sqrt(*(v54 + 72) * *(v54 + 72) + *(v54 + 80) * *(v54 + 80));
                                v58 = sqrt(*&v44->__vftable[1].__on_zero_shared_weak * *&v44->__vftable[1].__on_zero_shared_weak + *&v44->__vftable[2].~__shared_weak_count * *&v44->__vftable[2].~__shared_weak_count) * 1.5;
                                if (v57 < 35.0 || v57 < v58)
                                {
                                  sub_19B8EAB68(&v74, j);
                                }
                              }
                            }
                          }
                        }
                      }

                      sub_19B8EAB68(&v74, v44);
                      if (v74 != v75)
                      {
                        sub_19B9989BC(&v74);
                        sub_19B99BD08(a3, &v74);
                      }

                      v45 = v44->__vftable;
                      v46 = v44->__shared_owners_;
                      if (v46)
                      {
                        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (shared_owners)
                      {
                        sub_19B8750F8(shared_owners);
                      }

                      v88 = &v74;
                      sub_19B8F0E84(&v88);
                      v74 = &v89;
                      sub_19B8F0E84(&v74);
                      if (v79)
                      {
                        sub_19B8750F8(v79);
                      }

                      if (v81)
                      {
                        sub_19B8750F8(v81);
                      }
                    }

                    else
                    {
                      v46 = shared_owners;
                      v45 = v47;
                    }
                  }

                  v44 = (v44 + 16);
                }

                while (v44 != v43);
                sub_19B8F3484(&buf, *(&buf + 1));
                a5 = v65;
                v25 = v66;
                a4 = v67;
                if (v46)
                {
                  sub_19B8750F8(v46);
                }
              }
            }

            else
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v61 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 134349056;
                *(&buf + 4) = v38;
                _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,processLocationSeries,unable to snap solution", &buf, 0xCu);
              }

              v62 = sub_19B87DD40();
              if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
              {
                bzero(&buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                LODWORD(v89) = 134349056;
                *(&v89 + 4) = v38;
                v63 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSplitLocationSeries(std::vector<CLGeoMapLocationPtr> &, std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL)", "CoreLocation: %s\n", v63);
                if (v63 != &buf)
                {
                  free(v63);
                }
              }
            }

            sub_19B8EBC04(v26);
            *&buf = &p_buf;
            sub_19B8F0E84(&buf);
            a2 = v68;
          }
        }

        if (v28)
        {
          sub_19B8750F8(v28);
        }

        v26 += 3;
      }

      while (v26 != v25);
    }

    *a5 = 0;
    sub_19B8EBC04(a2);
    *&buf = &v71;
    sub_19B8F1C84(&buf);
  }

  v64 = *MEMORY[0x1E69E9840];
}

void sub_19B999B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a35 = &a43;
  sub_19B8F0E84(&a35);
  if (v43)
  {
    sub_19B8750F8(v43);
  }

  a35 = &a20;
  sub_19B8F1C84(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_19B999C3C(const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19B8B8A40();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19B8B8AB0();
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    sub_19B9A2D5C(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = sub_19B8F22C8(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = sub_19B9A2D5C(v4, *a2, a2[1], (a2[1] - *a2) >> 4);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_19B999DA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B8F22C8(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B999DC8(float64x2_t *a1, uint64_t *a2, char a3, uint64_t *a4, uint64_t *a5, double *a6, uint64_t a7)
{
  v219 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  if (*a4)
  {
    v13 = *v7;
    if (!*a5)
    {
      v14 = a4[1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = a5[1];
      *a5 = v7;
      a5[1] = v14;
      if (v15)
      {
        sub_19B8750F8(v15);
      }
    }

    v190 = 0;
    v191 = 0;
    v192 = 0;
    v16 = *a4;
    v17 = *(*a4 + 32);
    if (v17 >= 0.0)
    {
      v18 = *(v16 + 5);
      if (v18 > 0.0)
      {
        v19 = *(v16 + 3);
        if (v18 < v19)
        {
          v18 = v19 + 10.0;
        }

        if (v18 <= 179.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 135.0;
        }

        *(v16 + 5) = v20;
        v21 = *(v16 + 22);
        v22 = v21 > 9;
        v23 = (1 << v21) & 0x20A;
        if (v22 || v23 == 0)
        {
          v20 = fmax(v20, 60.0);
          *(v16 + 5) = v20;
        }

        if (!sub_19B8E83FC(*a2, *(v16 + 24), &v190, 0, *v16, *(v16 + 1), *(v16 + 2), v17, v19, v20))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v25 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates", buf, 0xCu);
          }

          v26 = sub_19B87DD40();
          if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v27 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v27);
            if (v27 != buf)
            {
              free(v27);
            }
          }
        }

        v16 = *a4;
        v28 = v190;
        v29 = v191;
        while (v28 != v29)
        {
          v30 = *v28;
          if (*v28)
          {
            *(v30 + 30) = *(v16 + 22);
            v30[13] = v16[6];
          }

          v28 += 2;
        }
      }
    }

    v188 = 0;
    v189 = 0;
    v187 = 0;
    v31 = sub_19BA0C01C(a1 + 5, *(v16 + 1), *(v16 + 2), *(*a5 + 8), *(*a5 + 16), 0.0);
    if (v31 > 70.0 || v31 > 50.0 && *(*a4 + 24) <= 30.0 || (v32 = *a6, *a6 < 0.0))
    {
      v32 = sub_19BA0C44C(a1 + 5, *(*a5 + 8), *(*a5 + 16), *(*a4 + 8), *(*a4 + 16));
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v33 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        v34 = *a6;
        *buf = 134349824;
        *&buf[4] = v13;
        v207 = 2050;
        v208 = v34;
        v209 = 2050;
        v210 = v32;
        v211 = 2050;
        v212 = v31;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,processSparseLocations,distance,lastAzimuthChangedfrom,%{public}.1lf,to,%{public}.1lf,distance,%{public}.2lf", buf, 0x2Au);
      }

      v35 = sub_19B87DD40();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        v36 = *a6;
        *v193 = 134349824;
        *&v193[4] = v13;
        v194 = 2050;
        v195 = v36;
        v196 = 2050;
        v197 = v32;
        v198 = 2050;
        v199 = v31;
        v37 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      v39 = *a4;
      v38 = a4[1];
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v40 = a5[1];
      *a5 = v39;
      a5[1] = v38;
      if (v40)
      {
        sub_19B8750F8(v40);
      }

      *a6 = v32;
    }

    v41 = *a4;
    if (v32 >= 0.0)
    {
      v70 = *(v41 + 32);
      v69 = *(v41 + 40);
      if (v69 <= 0.0 || v70 < 0.0)
      {
        goto LABEL_151;
      }

      v71 = fmod(v70 - v32, 360.0);
      if (v71 < 0.0)
      {
        v71 = v71 + 360.0;
      }

      if (v71 > 180.0)
      {
        v71 = v71 + -360.0;
      }

      if (fabs(v71) > 5.0)
      {
LABEL_151:
        v72 = *(v41 + 24);
        if (v70 >= 0.0)
        {
          v73 = v72 + 10.0;
          if (v69 >= v72)
          {
            v73 = v69;
          }

          if (v73 <= 179.0)
          {
            v69 = v73;
          }

          else
          {
            v69 = 135.0;
          }
        }

        v74 = fmax(v69, 60.0);
        *(v41 + 40) = v74;
        if (!sub_19B8E83FC(*a2, *(v41 + 96), &v187, 0, *v41, *(v41 + 8), *(v41 + 16), *a6, v72, v74))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v75 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateWiFiSnapCandidates,unable to compute candidates based on alternate course", buf, 0xCu);
          }

          v76 = sub_19B87DD40();
          if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v77 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v77);
            if (v77 != buf)
            {
              free(v77);
            }
          }
        }

        v41 = *a4;
        v78 = v187;
        v79 = v188;
        while (v78 != v79)
        {
          v80 = *v78;
          if (*v78)
          {
            *(v80 + 30) = *(v41 + 88);
            v80[13] = *(v41 + 48);
          }

          v78 += 2;
        }
      }
    }

    v184 = 0;
    v185 = 0;
    v186 = 0;
    if (!sub_19B8E83FC(*a2, *(v41 + 96), &v184, 0, *v41, *(v41 + 8), *(v41 + 16), -1.0, *(v41 + 24), -1.0))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v42 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to compute candidates with just position", buf, 0xCu);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v44 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }
      }
    }

    v45 = v184;
    v46 = v185;
    if (v184 != v185)
    {
      v47 = *a4;
      do
      {
        v48 = *v45;
        if (*v45)
        {
          *(v48 + 30) = *(v47 + 88);
          v48[13] = *(v47 + 48);
        }

        v45 += 2;
      }

      while (v45 != v46);
    }

    v183 = 0uLL;
    if (v190 != v191 && (sub_19B8ED57C(*a2, &v190, &v183, -1.0) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v49 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score", buf, 0xCu);
      }

      v50 = sub_19B87DD40();
      if ((*(v50 + 160) & 0x80000000) == 0 || (*(v50 + 164) & 0x80000000) == 0 || (*(v50 + 168) & 0x80000000) == 0 || *(v50 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v51 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }
    }

    v182 = 0uLL;
    if (v187 != v188 && (sub_19B8ED57C(*a2, &v187, &v182, -1.0) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v52 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for alternate course", buf, 0xCu);
      }

      v53 = sub_19B87DD40();
      if ((*(v53 + 160) & 0x80000000) == 0 || (*(v53 + 164) & 0x80000000) == 0 || (*(v53 + 168) & 0x80000000) == 0 || *(v53 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v54 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v54);
        if (v54 != buf)
        {
          free(v54);
        }
      }
    }

    v181 = 0uLL;
    if (v184 != v185 && (sub_19B8ED57C(*a2, &v184, &v181, *(*a4 + 32)) & 1) == 0)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v55 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v13;
        _os_log_impl(&dword_19B873000, v55, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine snap with highest score for position only", buf, 0xCu);
      }

      v56 = sub_19B87DD40();
      if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v193 = 134349056;
        *&v193[4] = v13;
        v57 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v57);
        if (v57 != buf)
        {
          free(v57);
        }
      }
    }

    v58 = v183;
    if (*(&v183 + 1))
    {
      atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v59 = v182;
    if (*(&v182 + 1))
    {
      atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v60 = v181;
    if (*(&v181 + 1))
    {
      atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (!v58 || (v61 = *v58) == 0)
    {
      v64 = 0;
      v63 = 0;
      if (!v59)
      {
        goto LABEL_183;
      }

LABEL_178:
      v81 = *v59;
      if (*v59)
      {
        v82 = *(v59 + 8);
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v83 = (*(v81 + 20) & 0xFFFFFFFE) == 8 || (*(v81 + 24) & 0xFFFFFFFE) == 6;
        v84 = a7;
        ++v64;
        v63 += v83;
        if (v82)
        {
          sub_19B8750F8(v82);
        }

LABEL_187:
        if (v60)
        {
          v85 = *v60;
          if (*v60)
          {
            v86 = *(v60 + 8);
            if (v86)
            {
              atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v87 = (*(v85 + 20) & 0xFFFFFFFE) == 8 || (*(v85 + 24) & 0xFFFFFFFE) == 6;
            ++v64;
            v63 += v87;
            if (v86)
            {
              sub_19B8750F8(v86);
            }
          }
        }

        if (*(&v60 + 1))
        {
          sub_19B8750F8(*(&v60 + 1));
        }

        if (*(&v59 + 1))
        {
          sub_19B8750F8(*(&v59 + 1));
        }

        if (*(&v58 + 1))
        {
          sub_19B8750F8(*(&v58 + 1));
        }

        v180[0] = 0;
        v180[1] = 0;
        v178 = 0;
        v179 = v180;
        v176 = 0;
        v177 = 0;
        v88 = v183;
        if (v183)
        {
          if (!*v183 || (a3 & 1) != 0)
          {
            if (!*v183)
            {
              goto LABEL_237;
            }
          }

          else
          {
            v89 = *a4;
            v90 = a4[1];
            if (v90)
            {
              atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v91 = *(&v183 + 1);
            v175[0] = v88;
            v175[1] = *(&v183 + 1);
            if (*(&v183 + 1))
            {
              atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v92 = sub_19B998390(v64 == v63, v89, v175);
            if (v91)
            {
              sub_19B8750F8(v91);
            }

            if (v90)
            {
              sub_19B8750F8(v90);
              if ((v92 & 1) == 0)
              {
                goto LABEL_237;
              }
            }

            else if (!v92)
            {
              goto LABEL_237;
            }
          }

          sub_19B8EAB68(v84, &v183);
          *v193 = *v183;
          *(sub_19B8F3760(&v179, *v193) + 48) = 1;
          v93 = *(&v183 + 1);
          v174 = v183;
          if (*(&v183 + 1))
          {
            atomic_fetch_add_explicit((*(&v183 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v94 = a2[1];
          v173[0] = *a2;
          v173[1] = v94;
          if (v94)
          {
            atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v174, &v190, v173, v84, &v179);
          if (v94)
          {
            sub_19B8750F8(v94);
          }

          if (v93)
          {
            sub_19B8750F8(v93);
          }

          sub_19B8EAC7C(*a2, v183, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v95 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v96 = *(*a4 + 8);
            v97 = *(*a4 + 16);
            v98 = *(*a4 + 32);
            v99 = *(v183 + 24);
            v100 = *(v183 + 32);
            v101 = *(v183 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v96;
            v209 = 2053;
            v210 = v97;
            v211 = 2050;
            v212 = v98;
            v213 = 2053;
            v214 = v99;
            v215 = 2053;
            v216 = v100;
            v217 = 2050;
            v218 = v101;
            _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v102 = sub_19B87DD40();
          if (*(v102 + 160) > 1 || *(v102 + 164) > 1 || *(v102 + 168) > 1 || *(v102 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v103 = *(*a4 + 8);
            v104 = *(*a4 + 16);
            v105 = *(*a4 + 32);
            v106 = *(v183 + 24);
            v107 = *(v183 + 32);
            v108 = *(v183 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v103;
            v196 = 2053;
            v197 = v104;
            v198 = 2050;
            v199 = v105;
            v200 = 2053;
            v201 = v106;
            v202 = 2053;
            v203 = v107;
            v204 = 2050;
            v205 = v108;
            v109 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v109);
            if (v109 != buf)
            {
              free(v109);
            }
          }
        }

LABEL_237:
        if (v182 && *v182 && !sub_19B8F07E0(&v179, *v182))
        {
          v119 = v182;
          if (*(&v182 + 1))
          {
            atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v120 = sub_19B9984C0(v119, v176, v177);
          v121 = v120 ^ 1;
          if ((v120 & 1) == 0 && (a3 & 1) == 0)
          {
            v122 = *a4;
            v123 = a4[1];
            if (v123)
            {
              atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v124 = *(&v182 + 1);
            v172[0] = v119;
            v172[1] = *(&v182 + 1);
            if (*(&v182 + 1))
            {
              atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v121 = sub_19B998390(v64 == v63, v122, v172);
            if (v124)
            {
              sub_19B8750F8(v124);
            }

            if (v123)
            {
              sub_19B8750F8(v123);
            }
          }

          if (*(&v119 + 1))
          {
            sub_19B8750F8(*(&v119 + 1));
            v84 = a7;
            if ((v121 & 1) == 0)
            {
              goto LABEL_240;
            }
          }

          else
          {
            v84 = a7;
            if (!v121)
            {
              goto LABEL_240;
            }
          }

          sub_19B8EAB68(v84, &v182);
          *v193 = *v182;
          *(sub_19B8F3760(&v179, *v193) + 48) = 1;
          v131 = *(&v182 + 1);
          v171 = v182;
          if (*(&v182 + 1))
          {
            atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v132 = a2[1];
          v170[0] = *a2;
          v170[1] = v132;
          if (v132)
          {
            atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v171, &v187, v170, v84, &v179);
          if (v132)
          {
            sub_19B8750F8(v132);
          }

          if (v131)
          {
            sub_19B8750F8(v131);
          }

          sub_19B8EAC7C(*a2, v182, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v133 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v134 = *(*a4 + 8);
            v135 = *(*a4 + 16);
            v136 = *(*a4 + 32);
            v137 = *(v182 + 24);
            v138 = *(v182 + 32);
            v139 = *(v182 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v134;
            v209 = 2053;
            v210 = v135;
            v211 = 2050;
            v212 = v136;
            v213 = 2053;
            v214 = v137;
            v215 = 2053;
            v216 = v138;
            v217 = 2050;
            v218 = v139;
            _os_log_impl(&dword_19B873000, v133, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added alternate course based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v140 = sub_19B87DD40();
          if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v141 = *(*a4 + 8);
            v142 = *(*a4 + 16);
            v143 = *(*a4 + 32);
            v144 = *(v182 + 24);
            v145 = *(v182 + 32);
            v146 = *(v182 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v141;
            v196 = 2053;
            v197 = v142;
            v198 = 2050;
            v199 = v143;
            v200 = 2053;
            v201 = v144;
            v202 = 2053;
            v203 = v145;
            v204 = 2050;
            v205 = v146;
            v147 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v147);
            if (v147 != buf)
            {
              free(v147);
            }
          }
        }

LABEL_240:
        if (!v181 || !*v181 || sub_19B8F07E0(&v179, *v181))
        {
          goto LABEL_243;
        }

        v125 = v182;
        if (*(&v182 + 1))
        {
          atomic_fetch_add_explicit((*(&v182 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v126 = sub_19B9984C0(v125, v176, v177);
        v127 = v126 ^ 1;
        if ((v126 & 1) == 0 && (a3 & 1) == 0)
        {
          v128 = *a4;
          v129 = a4[1];
          if (v129)
          {
            atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v130 = *(&v181 + 1);
          v169 = v181;
          if (*(&v181 + 1))
          {
            atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v127 = sub_19B998390(v64 == v63, v128, &v169);
          if (v130)
          {
            sub_19B8750F8(v130);
          }

          if (v129)
          {
            sub_19B8750F8(v129);
          }
        }

        if (*(&v125 + 1))
        {
          sub_19B8750F8(*(&v125 + 1));
          if (v127)
          {
            goto LABEL_321;
          }
        }

        else if (v127)
        {
LABEL_321:
          sub_19B8EAB68(v84, &v181);
          *v193 = *v181;
          *(sub_19B8F3760(&v179, *v193) + 48) = 1;
          v148 = *(&v181 + 1);
          v168 = v181;
          if (*(&v181 + 1))
          {
            atomic_fetch_add_explicit((*(&v181 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v149 = a2[1];
          v167[0] = *a2;
          v167[1] = v149;
          if (v149)
          {
            atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B998514(&v168, &v184, v167, v84, &v179);
          if (v149)
          {
            sub_19B8750F8(v149);
          }

          if (v148)
          {
            sub_19B8750F8(v148);
          }

          sub_19B8EAC7C(*a2, v181, &v176, 1);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v150 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
          {
            v151 = *(*a4 + 8);
            v152 = *(*a4 + 16);
            v153 = *(*a4 + 32);
            v154 = *(v181 + 24);
            v155 = *(v181 + 32);
            v156 = *(v181 + 40);
            *buf = 134350593;
            *&buf[4] = v13;
            v207 = 2053;
            v208 = v151;
            v209 = 2053;
            v210 = v152;
            v211 = 2050;
            v212 = v153;
            v213 = 2053;
            v214 = v154;
            v215 = 2053;
            v216 = v155;
            v217 = 2050;
            v218 = v156;
            _os_log_impl(&dword_19B873000, v150, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,generateSnapCandidates,added position based snap as primary snap,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf", buf, 0x48u);
          }

          v157 = sub_19B87DD40();
          if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            v158 = *(*a4 + 8);
            v159 = *(*a4 + 16);
            v160 = *(*a4 + 32);
            v161 = *(v181 + 24);
            v162 = *(v181 + 32);
            v163 = *(v181 + 40);
            *v193 = 134350593;
            *&v193[4] = v13;
            v194 = 2053;
            v195 = v158;
            v196 = 2053;
            v197 = v159;
            v198 = 2050;
            v199 = v160;
            v200 = 2053;
            v201 = v161;
            v202 = 2053;
            v203 = v162;
            v204 = 2050;
            v205 = v163;
            v164 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v164);
            if (v164 != buf)
            {
              free(v164);
            }
          }
        }

LABEL_243:
        if (*v84 == *(v84 + 8))
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
          }

          v113 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            *buf = 134349056;
            *&buf[4] = v13;
            _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_INFO, "CLTSP,%{public}.2lf,generateSnapCandidates,unable to determine primary snap", buf, 0xCu);
          }

          v114 = sub_19B87DD40();
          if (*(v114 + 160) > 1 || *(v114 + 164) > 1 || *(v114 + 168) > 1 || *(v114 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
            }

            *v193 = 134349056;
            *&v193[4] = v13;
            v115 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v115);
            if (v115 != buf)
            {
              free(v115);
            }
          }

          v68 = 0;
        }

        else
        {
          v110 = v190;
          v111 = v191;
          if (v190 == v191)
          {
            sub_19B9A3250(&v190, v187, v188, (v188 - v187) >> 4);
            v112 = a1;
            v110 = v190;
            v111 = v191;
          }

          else
          {
            v112 = a1;
          }

          v116 = v112;
          sub_19B99BD48(v112, v110, v111, (*(*a2 + 152) & 0xFFFFFFFE) == 2, v84, &v179, &v176);
          sub_19B99BD48(v116, v184, v185, (*(*a2 + 152) & 0xFFFFFFFE) == 2, v84, &v179, &v176);
          v68 = *v84 != *(v84 + 8);
        }

        *buf = &v176;
        sub_19B8F0E84(buf);
        sub_19B8F3484(&v179, v180[0]);
        if (*(&v181 + 1))
        {
          sub_19B8750F8(*(&v181 + 1));
        }

        if (*(&v182 + 1))
        {
          sub_19B8750F8(*(&v182 + 1));
        }

        if (*(&v183 + 1))
        {
          sub_19B8750F8(*(&v183 + 1));
        }

        *buf = &v184;
        sub_19B8F0E84(buf);
        *buf = &v187;
        sub_19B8F0E84(buf);
        *buf = &v190;
        sub_19B8F0E84(buf);
        goto LABEL_268;
      }

LABEL_183:
      v84 = a7;
      goto LABEL_187;
    }

    v62 = *(v58 + 8);
    if (v62)
    {
      atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v61 + 20) & 0xFFFFFFFE) == 8)
    {
      v63 = 1;
      if (!v62)
      {
LABEL_177:
        v64 = 1;
        if (!v59)
        {
          goto LABEL_183;
        }

        goto LABEL_178;
      }
    }

    else
    {
      v63 = (*(v61 + 24) & 0xFFFFFFFE) == 6;
      if (!v62)
      {
        goto LABEL_177;
      }
    }

    sub_19B8750F8(v62);
    goto LABEL_177;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v65 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_ERROR, "CLTSP,addLocationToGPSSectionAndProcess,null location", buf, 2u);
  }

  v66 = sub_19B87DD40();
  if ((*(v66 + 160) & 0x80000000) == 0 || (*(v66 + 164) & 0x80000000) == 0 || (*(v66 + 168) & 0x80000000) == 0 || *(v66 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v193 = 0;
    v67 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentRouteBuilder::processSingleLocation(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, BOOL, const CLGeoMapLocationPtr &, CLGeoMapLocationPtr &, double &, std::vector<CLGeoMapSnapDataPtr> &)", "CoreLocation: %s\n", v67);
    if (v67 != buf)
    {
      free(v67);
    }
  }

  v68 = 0;
LABEL_268:
  v117 = *MEMORY[0x1E69E9840];
  return v68;
}

void sub_19B99BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, void *a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, std::__shared_weak_count *a42, char a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  a63 = &a31;
  sub_19B8F0E84(&a63);
  sub_19B8F3484(&a34, a35);
  if (a38)
  {
    sub_19B8750F8(a38);
  }

  if (a40)
  {
    sub_19B8750F8(a40);
  }

  if (a42)
  {
    sub_19B8750F8(a42);
  }

  a63 = &a43;
  sub_19B8F0E84(&a63);
  a63 = &a46;
  sub_19B8F0E84(&a63);
  a63 = &a49;
  sub_19B8F0E84(&a63);
  _Unwind_Resume(a1);
}

uint64_t sub_19B99BD08(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_19B9A2EF8(a1, a2);
  }

  else
  {
    sub_19B9A2EA4(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_19B99BD48(float64x2_t *a1, unint64_t ***a2, unint64_t ***a3, int a4, void **a5, uint64_t a6, void ***a7)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v11 = a2;
    if (a4)
    {
      v13 = 0.01;
    }

    else
    {
      v13 = 0.5;
    }

    while (1)
    {
      v14 = *v11;
      if (*v11)
      {
        v15 = *v14;
        if (*v14)
        {
          v16 = *(v14 + 30);
          if ((v16 == 11 || v16 == 4) && (*(v15 + 24) & 0xFFFFFFFE) != 6)
          {
            if (**a5)
            {
              v18 = sub_19B8F07E0(a6, v15);
              v14 = *v11;
              if (!v18)
              {
                v19 = **a5;
                v20 = v19[5];
                v21 = fmod(v20 - *(v14 + 5), 360.0);
                if (v21 < 0.0)
                {
                  v21 = v21 + 360.0;
                }

                if (v21 > 180.0)
                {
                  v21 = v21 + -360.0;
                }

                if (fabs(v21) < 20.0)
                {
                  v55 = 0.0;
                  v56 = 0.0;
                  sub_19BA0C3BC(a1 + 5, &v56, &v55, v19[3], v19[4], 0.0, v20, *(v14 + 3), *(v14 + 4));
                  if (fabs(v56) >= 50.0)
                  {
                    v14 = *v11;
                  }

                  else
                  {
                    v14 = *v11;
                    if (fabs(v55) < 10.0 && *(v14 + 14) > 0.1)
                    {
                      v22 = *a5;
                      v23 = a5[1];
                      while (v22 != v23)
                      {
                        v24 = **v22;
                        if (v24 && (sub_19B9F6534(v24, v14) & 1) != 0)
                        {
                          goto LABEL_29;
                        }

                        v22 += 2;
                      }

                      sub_19B8EAB68(a5, v11);
                      *buf = **v11;
                      *(sub_19B8F3760(a6, *buf) + 48) = 1;
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                      }

                      v35 = qword_1EAFE46E8;
                      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                      {
                        v36 = **a5;
                        v37 = v36[2];
                        v38 = v36[3];
                        v40 = v36[4];
                        v39 = v36[5];
                        v41 = (*v11)[3];
                        v42 = (*v11)[4];
                        v43 = (*v11)[5];
                        *buf = 134350593;
                        *&buf[4] = v37;
                        v72 = 2053;
                        v73 = v38;
                        v74 = 2053;
                        v75 = v40;
                        v76 = 2050;
                        v77 = v39;
                        v78 = 2053;
                        v79 = v41;
                        v80 = 2053;
                        v81 = v42;
                        v82 = 2050;
                        v83 = v43;
                        _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.2lf,added snap on parallel road,primaryLL,%{sensitive}.7lf,%{sensitive}.7lf,primaryCourse,%{public}.2lf,candLL,%{sensitive}.7lf,%{sensitive}.7lf,candCourse,%{public}.2lf", buf, 0x48u);
                      }

                      v44 = sub_19B87DD40();
                      if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46B8 != -1)
                        {
                          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                        }

                        v45 = **a5;
                        v46 = v45[2];
                        v47 = v45[3];
                        v49 = v45[4];
                        v48 = v45[5];
                        v50 = (*v11)[3];
                        v51 = (*v11)[4];
                        v52 = (*v11)[5];
                        v57 = 134350593;
                        v58 = v46;
                        v59 = 2053;
                        v60 = v47;
                        v61 = 2053;
                        v62 = v49;
                        v63 = 2050;
                        v64 = v48;
                        v65 = 2053;
                        v66 = v50;
                        v67 = 2053;
                        v68 = v51;
                        v69 = 2050;
                        v70 = v52;
                        v53 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::addAdditionalCandidates(const std::vector<CLGeoMapSnapDataPtr> &, BOOL, std::vector<CLGeoMapSnapDataPtr> &, std::map<CLMapRoadKey, BOOL> &, std::vector<CLMapRoadPtr> &)", "CoreLocation: %s\n", v53);
                        if (v53 != buf)
                        {
                          free(v53);
                        }
                      }

                      goto LABEL_48;
                    }
                  }
                }
              }
            }
          }

LABEL_29:
          v25 = *v14;
          v26 = v14[1];
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (sub_19B998324(v25, v26, 0))
          {
            if (v26)
            {
              sub_19B8750F8(v26);
            }
          }

          else
          {
            v27 = *(*v11 + 14);
            if (v26)
            {
              sub_19B8750F8(v26);
            }

            if (v27 < 0.7)
            {
              goto LABEL_48;
            }
          }

          v28 = **v11;
          if (v28)
          {
            if (!sub_19B8F07E0(a6, v28))
            {
              break;
            }
          }
        }
      }

LABEL_48:
      v11 += 2;
      if (v11 == a3)
      {
        goto LABEL_70;
      }
    }

    v30 = *v11;
    v29 = v11[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = sub_19B9984C0(v30, *a7, a7[1]);
      sub_19B8750F8(v29);
      v30 = *v11;
      if (!v31)
      {
        goto LABEL_45;
      }
    }

    else if ((sub_19B9984C0(*v11, *a7, a7[1]) & 1) == 0)
    {
      goto LABEL_45;
    }

    if (sqrt(v30[9] * v30[9] + v30[10] * v30[10]) < 7.0 && v30[14] > 0.25)
    {
      goto LABEL_47;
    }

LABEL_45:
    v32 = *v30;
    v33 = *(*v30 + 20);
    if (v33 < 3 || (*(v32 + 24) - 1) <= 1)
    {
      goto LABEL_47;
    }

    if (v33 == 3 || v33 == 5 || *(v32 + 76) == 2)
    {
      v34 = v30[14];
      if (v34 > 0.05)
      {
LABEL_47:
        sub_19B8EAB68(a5, v11);
        *buf = **v11;
        *(sub_19B8F3760(a6, *buf) + 48) = 1;
        goto LABEL_48;
      }
    }

    else
    {
      v34 = v30[14];
    }

    if (v34 <= v13)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_70:
  v54 = *MEMORY[0x1E69E9840];
}

void sub_19B99C3BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B99C3DC(uint64_t a1, std::string *a2, uint64_t a3, int a4, void *a5, uint64_t *a6)
{
  v8 = a3 == 1;
  v245 = *MEMORY[0x1E69E9840];
  sub_19B99EE80(a1, a2);
  ++*(a1 + 76);
  v218 = a1;
  *(a1 + 128) = sub_19B99F158(@"UsePreferredSnapCandidatesInRouteBuilder", *(a1 + 128));
  v9 = [MEMORY[0x1E695DF70] array];
  v219 = a5;
  sub_19B9A338C(a5, v9);
  v216 = [MEMORY[0x1E695DF70] array];
  v212 = [v9 lastObject];
  if ([v9 count])
  {
    v10 = 0;
    v11 = dbl_19BA8CB00[v8];
    v12 = 1;
    do
    {
      v13 = [v9 objectAtIndexedSubscript:v10];
      if (([v13 isWiFiLocationType] & 1) != 0 || objc_msgSend(v13, "isLoiLocationType"))
      {
        [objc_msgSend(v13 "timestamp")];
        if (([v216 containsObject:v13] & 1) == 0)
        {
          if (v10)
          {
            [v9 count];
          }

          [v212 distanceFromLocation:v13];
          if (v14 >= 120.0)
          {
            v15 = 60.0;
          }

          else
          {
            v15 = 120.0;
          }

          [v13 latitude];
          v17 = v16;
          [v13 longitude];
          sub_19B8F1EE8(&v225, v17, v18, v15);
          v19 = [MEMORY[0x1E695DF70] array];
          [v19 addObject:v13];
          if ([v9 count] - 1 > v10 + 1)
          {
            for (i = v12; [v9 count] - 1 > i; ++i)
            {
              v21 = [v9 objectAtIndexedSubscript:i];
              if (([v21 isWiFiLocationType] & 1) == 0 && !objc_msgSend(v21, "isLoiLocationType"))
              {
                continue;
              }

              [objc_msgSend(v21 "timestamp")];
              v23 = v22;
              [objc_msgSend(v21 "timestamp")];
              if (v24 > v11)
              {
                break;
              }

              [v21 latitude];
              v26 = v25;
              [v21 longitude];
              if (v225 > v26 || v227 < v26)
              {
                continue;
              }

              if (v228 <= v226)
              {
                if (v228 < v226 && (v228 > v27 || v226 < v27))
                {
LABEL_21:
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                  }

                  v28 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    [v21 latitude];
                    v30 = v29;
                    [v21 longitude];
                    v32 = v31;
                    [v21 horizontalAccuracy];
                    v34 = v33;
                    [v21 speed];
                    v36 = v35;
                    [v21 course];
                    *buf = 134350593;
                    *&buf[4] = v23;
                    *&buf[12] = 2053;
                    *&buf[14] = v30;
                    *&buf[22] = 2053;
                    *&buf[24] = v32;
                    *&buf[32] = 2050;
                    *&buf[34] = v34;
                    *&buf[42] = 2050;
                    *&buf[44] = v36;
                    *&buf[52] = 2050;
                    *&buf[54] = v37;
                    *&buf[62] = 2050;
                    *&v244 = v15;
                    _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEBUG, "CLTSP,filterWiFiFixes,boundingBoxCheck removed,time,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,hunc,%{public}.3lf,speed,%{public}.3lf,course,%{public}.3lf,distThreshold,%{public}.1lf", buf, 0x48u);
                  }

                  v38 = sub_19B87DD40();
                  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                    }

                    [v21 latitude];
                    v40 = v39;
                    [v21 longitude];
                    v42 = v41;
                    [v21 horizontalAccuracy];
                    v44 = v43;
                    [v21 speed];
                    v46 = v45;
                    [v21 course];
                    LODWORD(v234[0]) = 134350593;
                    *(v234 + 4) = v23;
                    WORD2(v234[1]) = 2053;
                    *(&v234[1] + 6) = v40;
                    HIWORD(v234[2]) = 2053;
                    v234[3] = v42;
                    v235 = 2050;
                    v236 = v44;
                    v237 = 2050;
                    v238 = v46;
                    v239 = 2050;
                    v240 = v47;
                    v241 = 2050;
                    v242 = v15;
                    v48 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::filterWiFiFixes(const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double, double)", "CoreLocation: %s\n", v48);
                    if (v48 != buf)
                    {
                      free(v48);
                    }
                  }

                  [v216 addObject:v21];
                  [v19 addObject:v21];
                }
              }

              else if (v228 >= v27 && v226 <= v27)
              {
                goto LABEL_21;
              }
            }
          }

          v223 = 0u;
          v224 = 0u;
          v221 = 0u;
          v222 = 0u;
          v49 = [v19 countByEnumeratingWithState:&v221 objects:v229 count:16];
          if (v49)
          {
            v50 = *v222;
            v51 = 0.0;
            v52 = 0.0;
            v53 = 0.0;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v222 != v50)
                {
                  objc_enumerationMutation(v19);
                }

                v55 = *(*(&v221 + 1) + 8 * j);
                [v55 horizontalAccuracy];
                if (v56 >= 0.0)
                {
                  [v55 horizontalAccuracy];
                  if ((v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                  {
                    [v55 horizontalAccuracy];
                    v59 = v58;
                    [v55 horizontalAccuracy];
                    v61 = v60;
                    [v55 latitude];
                    v63 = v62;
                    [v55 longitude];
                    v64 = 1.0 / (v59 * v61);
                    v51 = v51 + v64 * v63;
                    v52 = v52 + v64 * v65;
                    v53 = v53 + v64;
                  }
                }
              }

              v49 = [v19 countByEnumeratingWithState:&v221 objects:v229 count:16];
            }

            while (v49);
            if (v53 > 0.0 && [v19 count] >= 2)
            {
              [v13 updateLatitude:objc_msgSend(v13 longitude:"referenceFrame") horizontalAccuracy:v51 / v53 referenceFrame:{v52 / v53, sqrt(1.0 / v53)}];
              [v13 updateCourse:-1.0 andCourseAccuracy:-1.0];
            }
          }
        }
      }

      ++v10;
      ++v12;
    }

    while ([v9 count] > v10);
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
  }

  v66 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v67 = [v219 count];
    v68 = [v216 count];
    *buf = 67240448;
    *&buf[4] = v67;
    *&buf[8] = 1026;
    *&buf[10] = v68;
    _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_INFO, "CLTSP,filterWiFiFixes,locationCountIn,%{public}d,locationsRemoved,%{public}d", buf, 0xEu);
  }

  v69 = sub_19B87DD40();
  if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v70 = [v219 count];
    v71 = [v216 count];
    LODWORD(v234[0]) = 67240448;
    HIDWORD(v234[0]) = v70;
    LOWORD(v234[1]) = 1026;
    *(&v234[1] + 2) = v71;
    v72 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "static void CLTripSegmentUtilities::filterWiFiFixes(const CLTripSegmentModeOfTransport, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, double, double)", "CoreLocation: %s\n", v72);
    if (v72 != buf)
    {
      free(v72);
    }
  }

  [v219 removeObjectsInArray:v216];
  [v216 removeAllObjects];
  if ([v219 count])
  {
    v73 = 0;
    v74 = 0;
    do
    {
      v75 = [v219 objectAtIndexedSubscript:v73];
      if ([v75 isWiFiLocationType])
      {
        if (v74 && ([objc_msgSend(v75 "timestamp")], v76 < 15.0))
        {
          [v216 addObject:v75];
        }

        else
        {
          v74 = v75;
        }
      }

      ++v73;
    }

    while ([v219 count] > v73);
  }

  [v219 removeObjectsInArray:v216];
  v77 = 0;
  v225 = 0.0;
  v226 = 0.0;
  v227 = 0.0;
  while ([v219 count] > v77)
  {
    *(v218 + 76);
    if (a4)
    {
      [v219 count];
    }

    v220 = [v219 objectAtIndexedSubscript:v77];
    if (v220)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if (sub_19B99F500(qword_1EAFE5B10, &a2->__r_.__value_.__l.__data_))
      {
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
        }

        v166 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v166, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateSnapCandidates,processingTime exceeded max allowed", buf, 2u);
        }

        v167 = sub_19B87DD40();
        if (*(v167 + 160) > 1 || *(v167 + 164) > 1 || *(v167 + 168) > 1 || *(v167 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
          }

          *v229 = 0;
          v168 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v168);
          if (v168 != buf)
          {
            free(v168);
          }
        }

        goto LABEL_366;
      }

      v78 = *(v218 + 32);
      if (*(v218 + 24) == v78 || (v79 = *(v78 - 24), v79 == *(v78 - 16)) || (v80 = *(*v79 + 16), [v220 iOSTime], vabdd_f64(v80, v81) >= 0.0001))
      {
        sub_19B94948C();
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v82 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
      {
        [v220 iOSTime];
        *buf = 134349056;
        *&buf[4] = v83;
        _os_log_impl(&dword_19B873000, v82, OS_LOG_TYPE_DEBUG, "CLTSP,duplicate location at time,%{public}.1lf,snap already exists!", buf, 0xCu);
      }

      v84 = sub_19B87DD40();
      if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        [v220 iOSTime];
        *v229 = 134349056;
        *&v229[4] = v85;
        v86 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v86);
LABEL_105:
        if (v86 != buf)
        {
          free(v86);
        }
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
      }

      v87 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_ERROR, "CLTSP,generateSnapCandidates,null location", buf, 2u);
      }

      v88 = sub_19B87DD40();
      if ((*(v88 + 160) & 0x80000000) == 0 || (*(v88 + 164) & 0x80000000) == 0 || (*(v88 + 168) & 0x80000000) == 0 || *(v88 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
        }

        *v229 = 0;
        v86 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::generateSnapCandidates(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v86);
        goto LABEL_105;
      }
    }

    ++v77;
  }

  v89 = a6[1];
  v214 = *a6;
  if (v89)
  {
    atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = *(v218 + 24);
  v91 = *(v218 + 32);
  v210 = v89;
  if (v90 == v91)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    v169 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = 0;
      _os_log_impl(&dword_19B873000, v169, OS_LOG_TYPE_ERROR, "CLTSP,generateAndCombineRoute called with 0 snaps,runIndex,%{public}d", buf, 8u);
    }

    v170 = sub_19B87DD40();
    if ((*(v170 + 160) & 0x80000000) != 0 && (*(v170 + 164) & 0x80000000) != 0 && (*(v170 + 168) & 0x80000000) != 0 && !*(v170 + 152))
    {
      goto LABEL_312;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
    }

    *v229 = 67240192;
    v171 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v171);
    goto LABEL_310;
  }

  v92 = *(v218 + 72);
  if (0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) > v92)
  {
    v93 = v92;
    v217 = (v218 + 48);
    v94 = -1;
    v95 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v96 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    while (1)
    {
      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      if (sub_19B99F500(qword_1EAFE5B10, v218))
      {
        break;
      }

      *(v218 + 72) = v92;
      v97 = *(v218 + 24);
      v98 = v97 + 24 * v93;
      if (*v98 == *(v98 + 8))
      {
        if (*(v95 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
        }

        v111 = *(v96 + 225);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = v92;
          _os_log_impl(&dword_19B873000, v111, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateAndCombineRoute,snap empty,index,%{public}d", buf, 8u);
        }

        v112 = sub_19B87DD40();
        if (*(v112 + 160) > 1 || *(v112 + 164) > 1 || *(v112 + 168) > 1 || *(v112 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v95 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
          }

          v113 = *(v96 + 225);
          *v229 = 67240192;
          *&v229[4] = v92;
          v114 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v114);
          if (v114 != buf)
          {
            free(v114);
          }
        }
      }

      else if ((v94 & 0x80000000) != 0)
      {
        v94 = v92;
      }

      else
      {
        v99 = *(**v98 + 16);
        memset(v234, 0, 24);
        v221 = 0uLL;
        *&v222 = 0;
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v100 = (v97 + 24 * v94);
        v101 = sub_19B99F8CC(v218, v92 == 1, v214, v89, v100, (v97 + 24 * v93), &v221, v234);
        if (v89)
        {
          sub_19B8750F8(v89);
        }

        if (v101)
        {
          v102 = *(v218 + 48);
          v103 = *(v218 + 56);
          v104 = v234[0];
          v105 = v234[1];
          if (v103 == v102)
          {
            goto LABEL_181;
          }

          if (v234[0] == v234[1] && v94)
          {
            v106 = *(&v221 + 1);
            v107 = v221;
            if (*(&v221 + 1) != v221)
            {
              do
              {
                v108 = *(v106 - 8);
                if (v108)
                {
                  sub_19B8750F8(v108);
                }

                v106 -= 16;
              }

              while (v106 != v107);
              v102 = *(v218 + 48);
              v103 = *(v218 + 56);
            }

            *(&v221 + 1) = v107;
            v109 = *(v218 + 24);
            memset(buf, 0, 24);
            *v229 = buf;
            v229[8] = 0;
            if (v103 != v102)
            {
              v110 = 0xCCCCCCCCCCCCCCCDLL * ((v103 - v102) >> 4);
              if (v110 < 0x333333333333334)
              {
                sub_19B9A3C74(v110);
              }

              sub_19B8B8A40();
            }

            v115 = v109;
            while (v102 != v103)
            {
              v116 = *(v102 + 1);
              v117 = *(v116 - 8);
              if (v117)
              {
                sub_19B8750F8(v117);
              }

              *(v102 + 1) = v116 - 16;
              v118 = *(v102 + 4);
              v119 = *(v118 - 8);
              if (v119)
              {
                sub_19B8750F8(v119);
              }

              *(v102 + 4) = v118 - 16;
              v120 = *(v102 + 7);
              v121 = *(v120 - 8);
              if (v121)
              {
                sub_19B8750F8(v121);
              }

              *(v102 + 7) = v120 - 16;
              v102 += 80;
            }

            if (v210)
            {
              atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_19B99F8CC(v218, v92 == 1, v214, v210, (v115 + 24 * v94 - 24), v98, &v221, v234);
            if (v210)
            {
              sub_19B8750F8(v210);
            }

            if (v217 != buf && v234[0] == v234[1])
            {
              sub_19B9A3ED0(v217, *buf, *&buf[8], 0xCCCCCCCCCCCCCCCDLL * ((*&buf[8] - *buf) >> 4));
            }

            *v229 = buf;
            sub_19B9A3E4C(v229);
            v102 = *(v218 + 48);
            v103 = *(v218 + 56);
            v104 = v234[0];
            v105 = v234[1];
          }

          if (v103 == v102)
          {
LABEL_181:
            v89 = v210;
          }

          else
          {
            v89 = v210;
            if (v104 == v105)
            {
              v122 = *(v218 + 24);
              if (0xAAAAAAAAAAAAAAABLL * ((*(v218 + 32) - v122) >> 3) > v92 + 1)
              {
                v123 = *(&v221 + 1);
                v124 = v221;
                if (*(&v221 + 1) != v221)
                {
                  do
                  {
                    v125 = *(v123 - 8);
                    if (v125)
                    {
                      sub_19B8750F8(v125);
                    }

                    v123 -= 16;
                  }

                  while (v123 != v124);
                  v122 = *(v218 + 24);
                }

                *(&v221 + 1) = v124;
                if (v210)
                {
                  atomic_fetch_add_explicit(&v210->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_19B99F8CC(v218, v92 == 1, v214, v210, v100, (v122 + 24 * (v92 + 1)), &v221, v234);
                if (v210)
                {
                  sub_19B8750F8(v210);
                }

                v104 = v234[0];
                v105 = v234[1];
                if (v234[0] != v234[1])
                {
                  ++v92;
                }
              }
            }
          }

          if (v104 == v105)
          {
            v126 = *(&v221 + 1);
            for (k = v221; k != v126; ++k)
            {
              if (*k && *(*k + 48) != *(*k + 56))
              {
                v244 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_19B9A48B0(buf, k);
                sub_19B9A18F8(v217, buf);
                *v229 = &buf[48];
                sub_19B8F0E84(v229);
                *v229 = &buf[24];
                sub_19B8F0E84(v229);
                *v229 = buf;
                sub_19B8F0E84(v229);
              }
            }

            if (*(v218 + 48) != *(v218 + 56) && v92 == 1)
            {
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
              }

              v129 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v130 = 0xCCCCCCCCCCCCCCCDLL * ((*(v218 + 56) - *(v218 + 48)) >> 4);
                *buf = 134349568;
                *&buf[4] = v99;
                *&buf[12] = 2050;
                *&buf[14] = v130;
                *&buf[22] = 1026;
                *&buf[24] = 0;
                _os_log_impl(&dword_19B873000, v129, OS_LOG_TYPE_DEBUG, "CLTSP,%{public}.1lf,combined candidates initialized using routeCandidateVector,%{public}lu,runIndex,%{public}d", buf, 0x1Cu);
              }

              v131 = sub_19B87DD40();
              if (*(v131 + 160) > 1 || *(v131 + 164) > 1 || *(v131 + 168) > 1 || *(v131 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E088);
                }

                v132 = 0xCCCCCCCCCCCCCCCDLL * ((*(v218 + 56) - *(v218 + 48)) >> 4);
                *v229 = 134349568;
                *&v229[4] = v99;
                v230 = 2050;
                v231 = v132;
                v232 = 1026;
                v233 = 0;
                v133 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v133);
                if (v133 != buf)
                {
                  free(v133);
                }
              }
            }
          }

          else if (v217 != v234)
          {
            sub_19B9A3ED0(v217, v104, v105, 0xCCCCCCCCCCCCCCCDLL * ((v105 - v104) >> 4));
          }

          v134 = *(v218 + 24);
          v135 = *(v218 + 32);
          if (-1 - 0x5555555555555555 * (v135 - v134) == v92 && a4 != 0)
          {
            v138 = *(&v221 + 1);
            v137 = v221;
            *&buf[8] = 0;
            *&buf[16] = 0;
            *buf = &buf[8];
            while (v137 != v138)
            {
              if (*v137)
              {
                v139 = *(*v137 + 32);
                if (v139)
                {
                  v140 = *v139;
                  if (*v139)
                  {
                    *v229 = *v139;
                    *(sub_19B8F3760(buf, v140) + 48) = 1;
                  }
                }
              }

              v137 += 16;
            }

            v141 = *v98;
LABEL_220:
            for (m = *(v98 + 8); ; *(v98 + 8) = m)
            {
              if (v141 == m)
              {
                sub_19B8F3484(buf, *&buf[8]);
                v134 = *(v218 + 24);
                v135 = *(v218 + 32);
                break;
              }

              v143 = **v141;
              if (v143)
              {
                if (sub_19B8F07E0(buf, v143))
                {
                  v141 += 2;
                  goto LABEL_220;
                }

                m = *(v98 + 8);
              }

              sub_19B8F1CF8(v229, v141 + 1, m, v141);
              m = v144;
              for (n = *(v98 + 8); n != m; --n)
              {
                v146 = *(n - 1);
                if (v146)
                {
                  sub_19B8750F8(v146);
                }
              }
            }
          }

          while (v134 != v135)
          {
            v147 = v134[1];
            if (v147 != *v134)
            {
              v148 = *(v147 - 16);
              if (v148)
              {
                if (*(v148 + 16) >= v99)
                {
                  break;
                }

                *&buf[8] = 0;
                *&buf[16] = 0;
                *buf = &buf[8];
                v149 = *(v218 + 48);
                v150 = *(v218 + 56);
                if (v149 != v150)
                {
                  do
                  {
                    for (ii = *(v149 + 24); ii != *(v149 + 32); ii += 2)
                    {
                      v152 = *ii;
                      if (*ii)
                      {
                        v153 = *v134;
                        v154 = v134[1];
                        if (*v134 != v154)
                        {
                          v155 = -1.0;
                          while (1)
                          {
                            if (*v153)
                            {
                              v156 = vabdd_f64(*(v152 + 16), *(*v153 + 16));
                              if (v156 < v155 || v155 < 0.0)
                              {
                                v155 = v156;
                              }

                              if (v155 < 0.0001)
                              {
                                break;
                              }
                            }

                            v153 += 16;
                            if (v153 == v154)
                            {
                              goto LABEL_251;
                            }
                          }

                          v158 = *v152;
                          if (*v152)
                          {
                            *v229 = *v152;
                            *(sub_19B8F3760(buf, v158) + 48) = 1;
                          }

                          break;
                        }
                      }

LABEL_251:
                      ;
                    }

                    v149 += 80;
                  }

                  while (v149 != v150);
                  if (*&buf[16])
                  {
                    v159 = *v134;
                    v160 = v134[1];
                    if (*&buf[16] != (v160 - *v134) >> 4 && v159 != v160)
                    {
                      while (1)
                      {
                        v162 = **v159;
                        if (!v162)
                        {
                          goto LABEL_264;
                        }

                        if (!sub_19B8F07E0(buf, v162))
                        {
                          break;
                        }

                        v159 += 16;
                        v160 = v134[1];
LABEL_270:
                        if (v159 == v160)
                        {
                          goto LABEL_271;
                        }
                      }

                      v160 = v134[1];
LABEL_264:
                      sub_19B8F1CF8(v229, (v159 + 16), v160, v159);
                      v160 = v163;
                      for (jj = v134[1]; jj != v160; --jj)
                      {
                        v165 = *(jj - 1);
                        if (v165)
                        {
                          sub_19B8750F8(v165);
                        }
                      }

                      v134[1] = v160;
                      goto LABEL_270;
                    }
                  }
                }

LABEL_271:
                sub_19B8F3484(buf, *&buf[8]);
              }
            }

            v134 += 3;
          }

          v94 = v92;
        }

        else
        {
          sub_19B8EBC04((*(v218 + 24) + 24 * v93));
        }

        *buf = &v221;
        sub_19B8F0E84(buf);
        *buf = v234;
        sub_19B9A3E4C(buf);
        v96 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        v95 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }

      v93 = ++v92;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v218 + 32) - *(v218 + 24)) >> 3) <= v92)
      {
        goto LABEL_312;
      }
    }

    if (*(v95 + 218) != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
    }

    v172 = *(v96 + 225);
    if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v172, OS_LOG_TYPE_INFO, "CLTSP,RouteBuilder,generateAndCombineRoute for loop,processingTime exceeded max allowed", buf, 2u);
    }

    v173 = sub_19B87DD40();
    if (*(v173 + 160) > 1 || *(v173 + 164) > 1 || *(v173 + 168) > 1 || *(v173 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (*(v95 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6E0A8);
      }

      v174 = *(v96 + 225);
      *v229 = 0;
      v171 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentRouteBuilder::generateAndCombineRoute(std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, const BOOL, int)", "CoreLocation: %s\n", v171);
LABEL_310:
      if (v171 != buf)
      {
        free(v171);
      }
    }
  }

LABEL_312:
  if (v89)
  {
    sub_19B8750F8(v89);
  }

  v175 = *(v218 + 24);
  v176 = *(v218 + 32) - v175;
  if (v176)
  {
    v177 = 0xAAAAAAAAAAAAAAABLL * (v176 >> 3);
    if (v177 <= 1)
    {
      v177 = 1;
    }

    v178 = (v175 + 8);
    v179 = -1.0;
    do
    {
      v180 = *(v178 - 1);
      if (*v178 != v180 && (*v178 - v180) <= 0x10)
      {
        v179 = *(*v180 + 16);
      }

      v178 += 3;
      --v177;
    }

    while (v177);
    if (*(v218 + 76) == 1)
    {
      v182 = *(v218 + 48);
      v183 = *(v218 + 56);
      if (v182 != v183)
      {
        v184 = 0;
        v185 = -1.0;
        do
        {
          v186 = sub_19B9A4798(v182, 1);
          v187 = v185 < 0.0;
          if (v186 < v185)
          {
            v187 = 1;
          }

          if (v187)
          {
            v185 = v186;
            v184 = v182;
          }

          v182 += 10;
        }

        while (v182 != v183);
        v188 = *(v218 + 24);
        if ((v188[1] - *v188) >= 0x11 && v184 != 0)
        {
          v190 = *(v184 + 3);
          if (v190 != *(v184 + 4))
          {
            v191 = *v190;
            v192 = v190[1];
            *buf = v191;
            *&buf[8] = v192;
            if (v192)
            {
              atomic_fetch_add_explicit((v192 + 8), 1uLL, memory_order_relaxed);
            }

            if (v191 && vabdd_f64(*(v191 + 16), *(**v188 + 16)) < 0.0001)
            {
              sub_19B8EBC04(v188);
              sub_19B8EAB68(v188, buf);
            }

            if (*&buf[8])
            {
              sub_19B8750F8(*&buf[8]);
            }
          }
        }
      }
    }
  }

  else
  {
    v179 = -1.0;
  }

  if (a4)
  {
    if (*(v218 + 24) != *(v218 + 32))
    {
      v194 = *(v218 + 48);
      v193 = *(v218 + 56);
      if (v194 != v193)
      {
        v195 = 0;
        v196 = -1.0;
        do
        {
          v197 = sub_19B9A4798(v194, 1);
          v198 = v196 < 0.0;
          if (v197 < v196)
          {
            v198 = 1;
          }

          if (v198)
          {
            v196 = v197;
            v195 = v194;
          }

          v194 += 10;
        }

        while (v194 != v193);
        v199 = *(v218 + 32);
        v200 = *(v199 - 24);
        v201 = *(v199 - 16);
        v202 = (v199 - 24);
        if ((v201 - v200) >= 0x11 && v195 != 0)
        {
          v204 = *(v195 + 7);
          if (*(v195 + 6) != v204)
          {
            v205 = *(v204 - 16);
            *buf = v205;
            v206 = *(v204 - 8);
            *&buf[8] = v206;
            if (v206)
            {
              atomic_fetch_add_explicit(&v206->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v205 && vabdd_f64(*(v205 + 16), *(**v202 + 16)) < 0.0001)
            {
              sub_19B8EBC04(v202);
              sub_19B8EAB68(v202, buf);
              v206 = *&buf[8];
            }

            if (v206)
            {
              sub_19B8750F8(v206);
            }
          }
        }
      }
    }
  }

  else
  {
    v209 = *(v218 + 48);
    v208 = *(v218 + 56);
    while (v209 != v208)
    {
      sub_19B9A4698(v209, v179);
      v209 += 80;
    }
  }

LABEL_366:
  *buf = &v225;
  sub_19B8F0E84(buf);
  v207 = *MEMORY[0x1E69E9840];
}