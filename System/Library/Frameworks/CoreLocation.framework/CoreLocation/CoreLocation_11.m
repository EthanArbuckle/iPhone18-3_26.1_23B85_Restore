void sub_19B9E4D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void ***a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  a41 = &a63;
  sub_19B8F0E84(&a41);
  a63 = a16;
  sub_19B8F0E84(&a63);
  a63 = (v63 - 160);
  sub_19B8F0E84(&a63);
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  *(v63 - 160) = &a25;
  sub_19B8F0E84((v63 - 160));
  _Unwind_Resume(a1);
}

void sub_19B9E4F38(void *a1, uint64_t *a2, char a3, void *a4, uint64_t **a5, __int128 ***a6, uint64_t *a7)
{
  v205 = *MEMORY[0x1E69E9840];
  if (*a7)
  {
    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v12 = [a4 countByEnumeratingWithState:&v156 objects:v183 count:16];
    if (v12)
    {
      v13 = *v157;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v157 != v13)
          {
            objc_enumerationMutation(a4);
          }

          v15 = *(*(&v156 + 1) + 8 * i);
          [v15 course];
          [v15 courseAccuracy];
          [v15 horizontalAccuracy];
          [v15 course];
          [v15 updateCourse:? andCourseAccuracy:?];
        }

        v12 = [a4 countByEnumeratingWithState:&v156 objects:v183 count:16];
      }

      while (v12);
    }

    v150 = 0;
    v151 = 0;
    v149 = xmmword_19BA89490;
    v152 = 0x3FF0000000000000;
    v153 = 0;
    v154 = 0;
    v155 = 0;
    sub_19B948DC0(&v149, a4);
    v146 = 0;
    v147 = 0;
    v148 = 0;
    if (v154 - v153 == 16)
    {
      v16 = *(*v153 + 22);
      v17 = v16 > 0xD;
      v18 = (1 << v16) & 0x2810;
      if (!v17 && v18 != 0)
      {
        v20 = *a5;
        v21 = a5[1];
        if (*a5 == v21)
        {
LABEL_18:
          *&buf[8] = 0;
          *buf = 0;
        }

        else
        {
          while (1)
          {
            v22 = *v20;
            if (*v20)
            {
              if (vabdd_f64(*(v22 + 16), **v153) < 0.001)
              {
                break;
              }
            }

            v20 += 2;
            if (v20 == v21)
            {
              goto LABEL_18;
            }
          }

          v46 = v20[1];
          *buf = v22;
          *&buf[8] = v46;
          if (v46)
          {
            atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
          }

          if (*v22)
          {
            sub_19B8EAB68(&v146, buf);
          }
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        if (v146 != v147)
        {
LABEL_91:
          v181 = 0uLL;
          v182 = 0;
          v47 = v146;
          v48 = v147;
          v49 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
          if (v146 == v147)
          {
            v87 = 0;
            v88 = a1;
            v90 = a6;
          }

          else
          {
            v50 = a1[6];
            v51 = -1.0;
            if (a1[5] != v50)
            {
              v53 = *(v50 - 24);
              v52 = *(v50 - 16);
              if (v53 != v52)
              {
                v54 = *(v52 - 16);
                if (v54)
                {
                  v51 = *(v54 + 16);
                }
              }
            }

            do
            {
              v55 = *v47;
              if (*v47)
              {
                if (*(v55 + 64) == 1 && (v56 = *(v55 + 16), v56 > 0.0) && *v55 && ((v57 = *(v55 + 32), v58 = fabs(*(v55 + 24)), v58 >= 0.00003) || fabs(v57) >= 0.00003))
                {
                  v85 = fmax(v56, 0.0) > v51;
                  v59 = -1;
                  if (v57 >= -180.0 && v58 <= 90.0 && v57 <= 180.0 && v85)
                  {
                    sub_19B8EAB68(&v181, v47);
                    v59 = *(**v47 + 20);
                  }
                }

                else
                {
                  v59 = -1;
                }

                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v60 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v61 = a2;
                  }

                  else
                  {
                    v61 = *a2;
                  }

                  v62 = *(*v47 + 16);
                  v63 = *(*v47 + 24);
                  v64 = *(*v47 + 32);
                  v65 = *(*v47 + 40);
                  v66 = *(*v47 + 48);
                  v67 = *(*v47 + 56);
                  v69 = *(*v47 + 72);
                  v68 = *(*v47 + 80);
                  v70 = *(*v47 + 88);
                  v71 = *(*v47 + 64);
                  *buf = 136449027;
                  *&buf[4] = v61;
                  *&buf[12] = 2050;
                  *&buf[14] = v62;
                  v185 = 2053;
                  v186 = v63;
                  v187 = 2053;
                  v188 = v64;
                  v189 = 2049;
                  v190 = v65;
                  v191 = 2050;
                  v192 = v66;
                  v193 = 2050;
                  v194 = v67;
                  v195 = 2050;
                  v196 = v68;
                  v197 = 2050;
                  v198 = v69;
                  v199 = 2050;
                  v200 = v70;
                  v201 = 1026;
                  v202 = v71;
                  v203 = 1026;
                  v204 = v59;
                  _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedGPSLocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                }

                v72 = sub_19B87DD40();
                if (*(v72 + 160) > 1 || *(v72 + 164) > 1 || *(v72 + 168) > 1 || *(v72 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  if (*(a2 + 23) >= 0)
                  {
                    v73 = a2;
                  }

                  else
                  {
                    v73 = *a2;
                  }

                  v74 = *(*v47 + 16);
                  v75 = *(*v47 + 24);
                  v76 = *(*v47 + 32);
                  v77 = *(*v47 + 40);
                  v78 = *(*v47 + 48);
                  v79 = *(*v47 + 56);
                  v81 = *(*v47 + 72);
                  v80 = *(*v47 + 80);
                  v82 = *(*v47 + 88);
                  v83 = *(*v47 + 64);
                  *v160 = 136449027;
                  *&v160[4] = v73;
                  *&v160[12] = 2050;
                  *&v160[14] = v74;
                  v161 = 2053;
                  v162 = v75;
                  v163 = 2053;
                  v164 = v76;
                  v165 = 2049;
                  v166 = v77;
                  v167 = 2050;
                  v168 = v78;
                  v169 = 2050;
                  v170 = v79;
                  v171 = 2050;
                  v172 = v80;
                  v173 = 2050;
                  v174 = v81;
                  v175 = 2050;
                  v176 = v82;
                  v177 = 1026;
                  v178 = v83;
                  v179 = 1026;
                  v180 = v59;
                  v84 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v84);
                  if (v84 != buf)
                  {
                    free(v84);
                  }
                }
              }

              ++v47;
            }

            while (v47 != v48);
            v87 = v181;
            v88 = a1;
            if (v181 != *(&v181 + 1))
            {
              v89 = 0;
              v90 = a6;
              v49 = "NSt3__110__function6__funcIZN36CLGeoFeatureAccess3dBuildingGeometry23buildingsWithinDistanceERNS_6vectorI25ExtrudedBuildingFootprintNS_9allocatorIS4_EEEERKdSA_SA_E3$_0NS5_ISB_EEFPU37objcproto26GEOMapFeatureAccessRequest11objc_objectU13block_pointerFvP7NSErrorEEEE" + 216;
              goto LABEL_136;
            }

            v90 = a6;
            v49 = "est11objc_objectU13block_pointerFvP7NSErrorEEEE";
          }

          if (*v90 == v90[1])
          {
            if (v154 != v153)
            {
              operator new();
            }

            goto LABEL_184;
          }

          v89 = 1;
LABEL_136:
          v136 = (v88 + 5);
          v91 = v88[6];
          v92 = -1.0;
          v93 = -1.0;
          if (v88[5] != v91)
          {
            v95 = *(v91 - 24);
            v94 = *(v91 - 16);
            if (v95 != v94)
            {
              v96 = *(v94 - 16);
              if (v96)
              {
                v93 = *(v96 + 16);
              }
            }
          }

          if ((v89 & 1) == 0)
          {
            v92 = *(*v87 + 16);
          }

          v97 = *v90;
          v139 = v90[1];
          if (*v90 != v139)
          {
            v140 = *(v49 + 50);
            do
            {
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v99 = *v97;
              v98 = v97[1];
              if (*v97 != v98)
              {
                do
                {
                  v100 = *v99;
                  if (*v99 && *v100)
                  {
                    v101 = *(v100 + 16);
                    v102 = v101 < v92 + -1.0 || v92 == -1.0;
                    v103 = v101 > v93 + 1.0 || v93 == -1.0;
                    if (v103 && v102)
                    {
                      if (qword_1EAFE46B8 != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                      }

                      v105 = qword_1EAFE46E8;
                      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                      {
                        if (*(a2 + 23) >= 0)
                        {
                          v106 = a2;
                        }

                        else
                        {
                          v106 = *a2;
                        }

                        v107 = *(*v99 + 16);
                        v108 = *(*v99 + 24);
                        v109 = *(*v99 + 32);
                        v110 = *(*v99 + 40);
                        v111 = *(*v99 + 48);
                        v112 = *(*v99 + 56);
                        v114 = *(*v99 + 72);
                        v113 = *(*v99 + 80);
                        v115 = *(*v99 + 88);
                        v116 = *(*v99 + 64);
                        v117 = *(**v99 + 20);
                        *buf = v140;
                        *&buf[4] = v106;
                        *&buf[12] = 2050;
                        *&buf[14] = v107;
                        v185 = 2053;
                        v186 = v108;
                        v187 = 2053;
                        v188 = v109;
                        v189 = 2049;
                        v190 = v110;
                        v191 = 2050;
                        v192 = v111;
                        v193 = 2050;
                        v194 = v112;
                        v195 = 2050;
                        v196 = v113;
                        v197 = 2050;
                        v198 = v114;
                        v199 = 2050;
                        v200 = v115;
                        v201 = 1026;
                        v202 = v116;
                        v203 = 1026;
                        v204 = v117;
                        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                      }

                      v118 = sub_19B87DD40();
                      if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46B8 != -1)
                        {
                          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                        }

                        if (*(a2 + 23) >= 0)
                        {
                          v119 = a2;
                        }

                        else
                        {
                          v119 = *a2;
                        }

                        v120 = *(*v99 + 16);
                        v121 = *(*v99 + 24);
                        v122 = *(*v99 + 32);
                        v123 = *(*v99 + 40);
                        v124 = *(*v99 + 48);
                        v125 = *(*v99 + 56);
                        v127 = *(*v99 + 72);
                        v126 = *(*v99 + 80);
                        v128 = *(*v99 + 88);
                        v129 = *(*v99 + 64);
                        v130 = *(**v99 + 20);
                        *v160 = v140;
                        *&v160[4] = v119;
                        *&v160[12] = 2050;
                        *&v160[14] = v120;
                        v161 = 2053;
                        v162 = v121;
                        v163 = 2053;
                        v164 = v122;
                        v165 = 2049;
                        v166 = v123;
                        v167 = 2050;
                        v168 = v124;
                        v169 = 2050;
                        v170 = v125;
                        v171 = 2050;
                        v172 = v126;
                        v173 = 2050;
                        v174 = v127;
                        v175 = 2050;
                        v176 = v128;
                        v177 = 1026;
                        v178 = v129;
                        v179 = 1026;
                        v180 = v130;
                        v131 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v131);
                        if (v131 != buf)
                        {
                          free(v131);
                        }
                      }

                      sub_19B8EAB68(&v141, v99);
                    }
                  }

                  ++v99;
                }

                while (v99 != v98);
                if (v141 != v142)
                {
                  v132 = *(v142 - 2);
                  if (v132)
                  {
                    v93 = *(v132 + 16);
                    v133 = a1[6];
                    if (v133 >= a1[7])
                    {
                      v134 = sub_19B9A2EF8(v136, &v141);
                    }

                    else
                    {
                      sub_19B9A2EA4(v136, &v141);
                      v134 = v133 + 24;
                    }

                    a1[6] = v134;
                  }
                }
              }

              *buf = &v141;
              sub_19B8F0E84(buf);
              v97 += 3;
            }

            while (v97 != v139);
          }

LABEL_184:
          *buf = &v181;
          sub_19B8F0E84(buf);
          *buf = &v146;
          sub_19B8F0E84(buf);
          *buf = &v153;
          sub_19B8F0E84(buf);
          goto LABEL_185;
        }
      }
    }

    if (a3)
    {
      v23 = a7[1];
      v144 = *a7;
      v145 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = sub_19B9AECDC(&v153, &v146, &v144);
      if (v145)
      {
        sub_19B8750F8(v145);
      }

      if ((v24 & 1) == 0)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v25 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v26 = **v153;
          *buf = 134349056;
          *&buf[4] = v26;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute snap using particle mapmatcher", buf, 0xCu);
        }

        v27 = sub_19B87DD40();
        if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v28 = **v153;
          *v160 = 134349056;
          *&v160[4] = v28;
          v29 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v29);
          if (v29 != buf)
          {
            free(v29);
          }
        }
      }

      goto LABEL_91;
    }

    v33 = v153;
    v34 = v154;
    if (v153 == v154)
    {
      goto LABEL_91;
    }

    while (1)
    {
      *v160 = 0;
      *&v160[8] = 0;
      if (!sub_19B8E8210(*a7, v160, 1, **v33, (*v33)[1], (*v33)[2], (*v33)[4], (*v33)[3], (*v33)[5]))
      {
        break;
      }

      v35 = *v160;
      if (!*v160)
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v41 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          v42 = **v33;
          *buf = 134349056;
          *&buf[4] = v42;
          _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,destination snap is nullptr", buf, 0xCu);
        }

        v43 = sub_19B87DD40();
        if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
        {
          goto LABEL_75;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 == -1)
        {
          goto LABEL_73;
        }

LABEL_83:
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
LABEL_73:
        v44 = **v33;
        LODWORD(v181) = 134349056;
        *(&v181 + 4) = v44;
        v45 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }

        goto LABEL_75;
      }

      v36 = *v33;
      v37 = -1.0;
      if ((*v33)[7] > 0.0)
      {
        v37 = v36[6];
      }

      *(*v160 + 104) = v37;
      *(v35 + 120) = *(v36 + 22);
      sub_19B8EAB68(&v146, v160);
LABEL_75:
      if (*&v160[8])
      {
        sub_19B8750F8(*&v160[8]);
      }

      v33 += 2;
      if (v33 == v34)
      {
        goto LABEL_91;
      }
    }

    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v38 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v39 = **v33;
      *buf = 134349056;
      *&buf[4] = v39;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute Snap", buf, 0xCu);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      goto LABEL_83;
    }

    goto LABEL_73;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v30 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,processLocationChunk", buf, 2u);
  }

  v31 = sub_19B87DD40();
  if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v160 = 0;
    v32 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "void CLTripLocationFilter::processLocationChunk(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, NSMutableArray<CLTripSegmentLocation *> * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>)", "CoreLocation: %s\n", v32);
    if (v32 != buf)
    {
      free(v32);
    }
  }

LABEL_185:
  v135 = *MEMORY[0x1E69E9840];
}

void sub_19B9E6114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (STACK[0x228])
  {
    sub_19B8750F8(STACK[0x228]);
  }

  STACK[0x220] = &a22;
  sub_19B8F0E84(&STACK[0x220]);
  STACK[0x220] = a11;
  sub_19B8F0E84(&STACK[0x220]);
  _Unwind_Resume(a1);
}

BOOL sub_19B9E61E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6, void *a7, void *a8, uint64_t *a9, uint64_t *a10)
{
  v419 = *MEMORY[0x1E69E9840];
  if (!*a9)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v22 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_ERROR, "CLTSP,Unexpected,invalid geometry pointer,makeSegmentsForRouteConstruction", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      LOWORD(v366[0]) = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    v21 = 0;
    goto LABEL_450;
  }

  v12 = *(a1 + 40);
  v318 = a1 + 40;
  v13 = *(a1 + 48);
  while (v13 != v12)
  {
    v13 -= 24;
    *buf = v13;
    sub_19B8F0E84(buf);
  }

  *(a1 + 48) = v12;
  v354 = 0;
  v353 = 0;
  v352 = xmmword_19BA89490;
  v355 = 0x3FF0000000000000;
  v356 = 0;
  v358 = 0;
  v357 = 0;
  if (a3 != 1)
  {
    v25 = *a9;
    v26 = a9[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9E2EF8(&v352, a2, a8, v25, v26, a3);
    if (v26)
    {
      sub_19B8750F8(v26);
    }

    v327 = [MEMORY[0x1E695DF70] array];
    v27 = 0;
    v362 = 0;
    v361 = 0;
    v363 = 0;
    v359 = 0uLL;
    v360 = 0;
    v344 = 0uLL;
    v345 = 0;
    v342 = 0uLL;
    v343 = 0;
    v340 = 0xBFF0000000000000;
    v341 = 0;
    while ([a7 count] > v27)
    {
      if (v27)
      {
        [a7 count];
      }

      v339 = [a7 objectAtIndexedSubscript:v27];
      if (v339)
      {
        [a7 objectAtIndexedSubscript:v27];
        if (!v27)
        {
          [v339 course];
          v32 = v31;
          [v339 courseAccuracy];
          v34 = v33;
          memset(v366, 0, sizeof(v366));
          v35 = [a7 countByEnumeratingWithState:v366 objects:buf count:16];
          if (!v35)
          {
            goto LABEL_77;
          }

          v36 = 0;
          v37 = **&v366[1];
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (**&v366[1] != v37)
              {
                objc_enumerationMutation(a7);
              }

              v39 = *(*(&v366[0] + 1) + 8 * i);
              if (!v36 && (v36 = *(*(&v366[0] + 1) + 8 * i), ([v36 isCourseValid] & 1) != 0) || objc_msgSend(v39, "isGPSLocationType") && objc_msgSend(v39, "isCourseValid") && (objc_msgSend(v39, "courseAccuracy"), v40 < 135.0))
              {
                [v39 course];
                v32 = v56;
                [v39 courseAccuracy];
                v34 = v57;
                goto LABEL_77;
              }

              [v36 latitude];
              v42 = v41;
              [v36 longitude];
              v44 = v43;
              [v39 latitude];
              v46 = v45;
              [v39 longitude];
              v48 = sub_19BA0C01C(a1, v42, v44, v46, v47, 0.0);
              if (v48 > 10.0)
              {
                [v36 latitude];
                v50 = v49;
                [v36 longitude];
                v52 = v51;
                [v39 latitude];
                v54 = v53;
                [v39 longitude];
                v32 = sub_19BA0C44C(a1, v50, v52, v54, v55);
                v34 = 90.0;
                if (v48 > 75.0)
                {
                  v34 = 90.0;
                  goto LABEL_77;
                }
              }
            }

            v35 = [a7 countByEnumeratingWithState:v366 objects:buf count:16];
          }

          while (v35);
LABEL_77:
          [v339 updateCourse:v32 andCourseAccuracy:v34];
        }

        sub_19B94948C();
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v28 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240448;
        *&buf[4] = v27;
        *&buf[8] = 1026;
        *&buf[10] = a3;
        _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_ERROR, "CLTSP,MI,loc is unexpectedly nil,i,%{public}d,mode,%{public}d", buf, 0xEu);
      }

      v29 = sub_19B87DD40();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        LODWORD(v366[0]) = 67240448;
        DWORD1(v366[0]) = v27;
        WORD4(v366[0]) = 1026;
        *(v366 + 10) = a3;
        v30 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      ++v27;
    }

    if (![v327 count])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v145 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v146 = *(a2 + 23);
        v147 = *a2;
        v148 = [a7 count];
        if (v146 >= 0)
        {
          v149 = a2;
        }

        else
        {
          v149 = v147;
        }

        *buf = 136446466;
        *&buf[4] = v149;
        *&buf[12] = 2048;
        *&buf[14] = v148;
        _os_log_impl(&dword_19B873000, v145, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,data not available for segment creation after filtering,id,%{public}s,count,%lu", buf, 0x16u);
      }

      v150 = sub_19B87DD40();
      if (*(v150 + 160) > 1 || *(v150 + 164) > 1 || *(v150 + 168) > 1 || *(v150 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v151 = *(a2 + 23);
        v152 = *a2;
        v153 = [a7 count];
        if (v151 >= 0)
        {
          v154 = a2;
        }

        else
        {
          v154 = v152;
        }

        LODWORD(v366[0]) = 136446466;
        *(v366 + 4) = v154;
        WORD6(v366[0]) = 2048;
        *(v366 + 14) = v153;
        v155 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v155);
        if (v155 != buf)
        {
          free(v155);
        }
      }

      v21 = 0;
      goto LABEL_262;
    }

    v319 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v337 = 0u;
    v338 = 0u;
    v335 = 0u;
    v336 = 0u;
    v58 = [v327 countByEnumeratingWithState:&v335 objects:v365 count:16];
    if (v58)
    {
      v59 = 0;
      v60 = -1;
      v61 = *v336;
      v62 = -1;
      do
      {
        v63 = 0;
        do
        {
          if (*v336 != v61)
          {
            objc_enumerationMutation(v327);
          }

          v64 = *(*(&v335 + 1) + 8 * v63);
          if (([v64 isGPSLocationType] & 1) == 0)
          {
            if (v62 < 0)
            {
              v62 = [v64 mapsRoadClass];
            }

            else
            {
              if (v60 != -1)
              {
                if ([v64 mapsRoadClass] == v62 || objc_msgSend(v64, "mapsRoadClass") != v60)
                {
                  [v319 addObject:v59];
                  v59 = 0;
                }

                else
                {
                  v59 = 0;
                  if ([v64 mapsRoadClass] == v60)
                  {
                    v62 = v60;
                  }
                }
              }

              if ([v64 mapsRoadClass] == v62)
              {
                v60 = -1;
              }

              else
              {
                v60 = [v64 mapsRoadClass];
                v59 = v64;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v65 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
              {
                [objc_msgSend(v64 "timestamp")];
                v67 = v66;
                v68 = [v64 mapsRoadClass];
                *buf = 134349824;
                *&buf[4] = v67;
                *&buf[12] = 1026;
                *&buf[14] = v68;
                *&buf[18] = 1026;
                *&buf[20] = v62;
                LOWORD(v391) = 1026;
                *(&v391 + 2) = v60;
                _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_INFO, "CLTSP,WiFiFiltering,%{public}.2lf,locFRC,%{public}d,currentFRC,%{public}d,outlierFRC,%{public}d", buf, 0x1Eu);
              }

              v69 = sub_19B87DD40();
              if (*(v69 + 160) > 1 || *(v69 + 164) > 1 || *(v69 + 168) > 1 || *(v69 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                [objc_msgSend(v64 "timestamp")];
                v71 = v70;
                v72 = [v64 mapsRoadClass];
                LODWORD(v366[0]) = 134349824;
                *(v366 + 4) = v71;
                WORD6(v366[0]) = 1026;
                *(v366 + 14) = v72;
                WORD1(v366[1]) = 1026;
                DWORD1(v366[1]) = v62;
                WORD4(v366[1]) = 1026;
                *(&v366[1] + 10) = v60;
                v73 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v73);
                if (v73 != buf)
                {
                  free(v73);
                }
              }
            }
          }

          ++v63;
        }

        while (v58 != v63);
        v58 = [v327 countByEnumeratingWithState:&v335 objects:v365 count:16];
      }

      while (v58);
    }

    v333 = 0u;
    v334 = 0u;
    v331 = 0u;
    v332 = 0u;
    v74 = [v319 countByEnumeratingWithState:&v331 objects:v364 count:16];
    if (v74)
    {
      v75 = *v332;
      do
      {
        v76 = 0;
        do
        {
          if (*v332 != v75)
          {
            objc_enumerationMutation(v319);
          }

          v77 = *(*(&v331 + 1) + 8 * v76);
          [v327 removeObject:v77];
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v78 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
          {
            [objc_msgSend(v77 "timestamp")];
            v80 = v79;
            v81 = [v77 mapsRoadClass];
            *buf = 134349312;
            *&buf[4] = v80;
            *&buf[12] = 1026;
            *&buf[14] = v81;
            _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_INFO, "CLTSP,WiFiFiltering,erased,%{public}.2lf,locFRC,%{public}d", buf, 0x12u);
          }

          v82 = sub_19B87DD40();
          if (*(v82 + 160) > 1 || *(v82 + 164) > 1 || *(v82 + 168) > 1 || *(v82 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            [objc_msgSend(v77 "timestamp")];
            v84 = v83;
            v85 = [v77 mapsRoadClass];
            LODWORD(v366[0]) = 134349312;
            *(v366 + 4) = v84;
            WORD6(v366[0]) = 1026;
            *(v366 + 14) = v85;
            v86 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v86);
            if (v86 != buf)
            {
              free(v86);
            }
          }

          ++v76;
        }

        while (v74 != v76);
        v74 = [v319 countByEnumeratingWithState:&v331 objects:v364 count:16];
      }

      while (v74);
    }

    v87 = [MEMORY[0x1E695DF70] array];
    v88 = 0;
    v89 = 0;
    while (1)
    {
      if ([v327 count] <= v88)
      {
        v118 = *(a1 + 48);
        if (*(a1 + 40) != v118)
        {
          v120 = *(v118 - 24);
          v119 = *(v118 - 16);
          if (v120 != v119)
          {
            v121 = *(v119 - 16);
            if (v121)
            {
              v122 = v356;
              v123 = v357;
              if (v356 != v357)
              {
                v124 = *(v121 + 16);
                do
                {
                  memset(buf, 0, sizeof(buf));
                  v125 = *v122;
                  v126 = v122[1];
                  if (*v122 != v126)
                  {
                    do
                    {
                      if (*v125 && *(*v125 + 16) > v124 + 1.0)
                      {
                        sub_19B8EAB68(buf, v125);
                      }

                      ++v125;
                    }

                    while (v125 != v126);
                    if (*buf != *&buf[8])
                    {
                      v127 = *(*&buf[8] - 16);
                      if (v127)
                      {
                        v124 = *(v127 + 16);
                        v128 = *(a1 + 48);
                        if (v128 >= *(a1 + 56))
                        {
                          v129 = sub_19B9A2EF8(v318, buf);
                        }

                        else
                        {
                          sub_19B9A2EA4(v318, buf);
                          v129 = v128 + 24;
                        }

                        *(a1 + 48) = v129;
                      }
                    }
                  }

                  *&v366[0] = buf;
                  sub_19B8F0E84(v366);
                  v122 += 3;
                }

                while (v122 != v123);
              }
            }
          }
        }

        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v130 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          if (*(a2 + 23) >= 0)
          {
            v131 = a2;
          }

          else
          {
            v131 = *a2;
          }

          v132 = [v327 count];
          v133 = [a7 count];
          v134 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 3);
          v135 = *(*a9 + 116);
          v136 = *(*a9 + 152);
          *buf = 136447490;
          *&buf[4] = v131;
          *&buf[12] = 2050;
          *&buf[14] = v132;
          *&buf[22] = 2048;
          v391 = v133;
          *v392 = 2050;
          *&v392[2] = v134;
          v393 = 1026;
          *v394 = v135;
          *&v394[4] = 1026;
          *&v394[6] = v136;
          _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_INFO, "CLTSP,MI,makeSegmentsForRouteConstruction,id,%{public}s,filteredCount,%{public}lu,inputCount,%lu,segments,%{public}lu,mapsAPICalls,%{public}d,geometry,%{public}d", buf, 0x36u);
        }

        v137 = sub_19B87DD40();
        if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          if (*(a2 + 23) >= 0)
          {
            v138 = a2;
          }

          else
          {
            v138 = *a2;
          }

          v139 = [v327 count];
          v140 = [a7 count];
          v141 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 48) - *(a1 + 40)) >> 3);
          v142 = *(*a9 + 116);
          v143 = *(*a9 + 152);
          LODWORD(v366[0]) = 136447490;
          *(v366 + 4) = v138;
          WORD6(v366[0]) = 2050;
          *(v366 + 14) = v139;
          WORD3(v366[1]) = 2048;
          *(&v366[1] + 1) = v140;
          LOWORD(v366[2]) = 2050;
          *(&v366[2] + 2) = v141;
          WORD5(v366[2]) = 1026;
          HIDWORD(v366[2]) = v142;
          LOWORD(v366[3]) = 1026;
          *(&v366[3] + 2) = v143;
          v144 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v144);
          if (v144 != buf)
          {
            free(v144);
          }
        }

        v21 = *(a1 + 40) != *(a1 + 48);
LABEL_262:
        *buf = &v342;
        sub_19B8F0E84(buf);
        *buf = &v344;
        sub_19B8F0E84(buf);
        *buf = &v359;
        sub_19B8F0E84(buf);
        *buf = &v361;
        sub_19B8F0E84(buf);
        goto LABEL_449;
      }

      v90 = [v327 objectAtIndexedSubscript:v88];
      v91 = v90;
      if (v90)
      {
        if (!v89)
        {
          [v87 addObject:v90];
          v89 = v91;
          goto LABEL_194;
        }

        if ([v90 timestamp] && objc_msgSend(v89, "timestamp"))
        {
          [objc_msgSend(v91 "timestamp")];
          v93 = 1;
          if (v92 >= 0.0 && v92 < 3.0)
          {
            [v87 addObject:v91];
            if (v88 != [v327 count] - 1)
            {
              goto LABEL_193;
            }

            v93 = 0;
          }
        }

        else
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v97 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v98 = [v91 timestamp];
            v99 = [v89 timestamp];
            *buf = 67240448;
            *&buf[4] = v98 == 0;
            *&buf[8] = 1026;
            *&buf[10] = v99 == 0;
            _os_log_impl(&dword_19B873000, v97, OS_LOG_TYPE_ERROR, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,timeSincePrev cannot be set,loc.timestamp is nil,%{public}d,prevLocation.timestamp is nil,%{public}d", buf, 0xEu);
          }

          v100 = sub_19B87DD40();
          if ((*(v100 + 160) & 0x80000000) == 0 || (*(v100 + 164) & 0x80000000) == 0 || (*(v100 + 168) & 0x80000000) == 0 || *(v100 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v101 = [v91 timestamp];
            v102 = [v89 timestamp];
            LODWORD(v366[0]) = 67240448;
            DWORD1(v366[0]) = v101 == 0;
            WORD4(v366[0]) = 1026;
            *(v366 + 10) = v102 == 0;
            v103 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v103);
            if (v103 != buf)
            {
              free(v103);
            }
          }

          v93 = 1;
        }

        if (![v87 count])
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v106 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v107 = *(a2 + 23);
            v108 = *a2;
            v109 = [a7 count];
            *buf = 136446466;
            if (v107 >= 0)
            {
              v110 = a2;
            }

            else
            {
              v110 = v108;
            }

            *&buf[4] = v110;
            *&buf[12] = 2050;
            *&buf[14] = v109;
            _os_log_impl(&dword_19B873000, v106, OS_LOG_TYPE_ERROR, "CLTSP,MI,unexpected,location chunk empty,id,%{public}s,sparseCount,%{public}lu", buf, 0x16u);
          }

          v111 = sub_19B87DD40();
          if ((*(v111 + 160) & 0x80000000) == 0 || (*(v111 + 164) & 0x80000000) == 0 || (*(v111 + 168) & 0x80000000) == 0 || *(v111 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v112 = *(a2 + 23);
            v113 = *a2;
            v114 = [a7 count];
            LODWORD(v366[0]) = 136446466;
            if (v112 >= 0)
            {
              v115 = a2;
            }

            else
            {
              v115 = v113;
            }

            *(v366 + 4) = v115;
            WORD6(v366[0]) = 2050;
            *(v366 + 14) = v114;
            v116 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v116);
            if (v116 != buf)
            {
              free(v116);
            }
          }

LABEL_193:
          v89 = v91;
          goto LABEL_194;
        }

        v104 = a9[1];
        v330[0] = *a9;
        v330[1] = v104;
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B9E4F38(a1, a2, a5, v87, &v342, &v356, v330);
        if (v104)
        {
          sub_19B8750F8(v104);
        }

        [v87 removeAllObjects];
        [v87 addObject:v91];
        v105 = [v91 isGPSLocationType];
        if ((v93 & v105) == 1)
        {
          if (v88 != [v327 count] - 1)
          {
            goto LABEL_193;
          }
        }

        else if (v105)
        {
          goto LABEL_193;
        }

        v89 = v91;
        if ([v87 count])
        {
          v117 = a9[1];
          v329[0] = *a9;
          v329[1] = v117;
          if (v117)
          {
            atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_19B9E4F38(a1, a2, a5, v87, &v342, &v356, v329);
          if (v117)
          {
            sub_19B8750F8(v117);
          }

          [v87 removeAllObjects];
          v89 = 0;
        }
      }

      else
      {
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v94 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v94, OS_LOG_TYPE_ERROR, "CLTSP,CLTripLocationFilter,makeSegmentsForRouteConstruction,loc is nil", buf, 2u);
        }

        v95 = sub_19B87DD40();
        if ((*(v95 + 160) & 0x80000000) == 0 || (*(v95 + 164) & 0x80000000) == 0 || (*(v95 + 168) & 0x80000000) == 0 || *(v95 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          LOWORD(v366[0]) = 0;
          v96 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v96);
          if (v96 != buf)
          {
            free(v96);
          }
        }
      }

LABEL_194:
      ++v88;
    }
  }

  v14 = *a10;
  v15 = v318;
  if (*a10)
  {
    v16 = [a7 mutableCopy];
    v17 = a9[1];
    v350 = *a9;
    v351 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B99C3DC(v14, a2, 1, a4, v16, &v350);
    if (v351)
    {
      sub_19B8750F8(v351);
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if (sub_19B99F500(qword_1EAFE5B10, a2))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      v18 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after generateSnapCandidates", buf, 2u);
      }

      v19 = sub_19B87DD40();
      if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
        }

        LOWORD(v366[0]) = 0;
        v20 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v20);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      v21 = 0;
      goto LABEL_449;
    }

    v348 = 0u;
    v349 = 0u;
    v346 = 0u;
    v347 = 0u;
    v156 = [a7 countByEnumeratingWithState:&v346 objects:v389 count:16];
    if (v156)
    {
      v320 = 0;
      v157 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      v314 = *v347;
      do
      {
        v158 = 0;
        v312 = v156;
        do
        {
          if (*v347 != v314)
          {
            objc_enumerationMutation(a7);
          }

          v159 = *(*(&v346 + 1) + 8 * v158);
          if (v159)
          {
            if (v159 == [a7 objectAtIndexedSubscript:0])
            {
              v160 = *a10;
              [objc_msgSend(v159 "timestamp")];
              sub_19B9A27FC(v160, &v344, v161);
              if (v344)
              {
                v362 = 0;
                v361 = 0;
                v363 = 0;
                sub_19B8EAB68(&v361, &v344);
                v162 = *(a1 + 48);
                if (v162 >= *(a1 + 56))
                {
                  v163 = sub_19B9A2EF8(v15, &v361);
                }

                else
                {
                  sub_19B9A2EA4(v15, &v361);
                  v163 = v162 + 24;
                }

                v167 = v159;
                v315 = v158;
                *(a1 + 48) = v163;
                [objc_msgSend(objc_msgSend(a8 "firstObject")];
                v169 = v168;
                do
                {
                  v170 = *(v344 + 16);
                  if (v170 <= v169)
                  {
                    break;
                  }

                  sub_19B9A27FC(*a10, &v342, v170);
                  v171 = v342;
                  if (v342)
                  {
                    v359 = 0uLL;
                    v360 = 0;
                    sub_19B8EAB68(&v359, &v342);
                    v173 = *(a1 + 40);
                    v172 = *(a1 + 48);
                    v174 = *(a1 + 56);
                    if (v172 >= v174)
                    {
                      v178 = 1 - 0x5555555555555555 * ((v172 - v173) >> 3);
                      if (v178 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        v179 = 0xAAAAAAAAAAAAAAABLL * ((v174 - v173) >> 3);
                        if (2 * v179 > v178)
                        {
                          v178 = 2 * v179;
                        }

                        if (v179 >= 0x555555555555555)
                        {
                          v180 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v180 = v178;
                        }

                        *&v366[2] = v15;
                        if (v180)
                        {
                          sub_19B9A3170(v15, v180);
                        }

                        memset(v366, 0, 32);
                        *v392 = v15;
                        sub_19B9A3170(v15, 1uLL);
                      }

                      sub_19B8B8A40();
                    }

                    if (v173 == v172)
                    {
                      sub_19B9A2EA4(v15, &v359);
                    }

                    else
                    {
                      sub_19B9A3988(v15, *(a1 + 40), v172, (v173 + 3));
                      v175 = 24;
                      if (v173 > &v359 || *(a1 + 48) <= &v359)
                      {
                        v175 = 0;
                      }

                      v176 = (&v359 + v175);
                      if (v173 != v176)
                      {
                        v177 = 8;
                        if (v173 <= &v359 && *(a1 + 48) > &v359)
                        {
                          v177 = 32;
                        }

                        sub_19B9A3250(v173, *v176, *(&v359 + v177), (*(&v359 + v177) - *v176) >> 4);
                      }
                    }

                    v181 = v342;
                    if (*(&v342 + 1))
                    {
                      atomic_fetch_add_explicit((*(&v342 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    v182 = *(&v344 + 1);
                    v344 = v181;
                    if (v182)
                    {
                      sub_19B8750F8(v182);
                    }

                    if (*(v157 + 215) != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    v183 = qword_1EAFE46E8;
                    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                    {
                      v184 = *(v344 + 16);
                      *buf = 134349312;
                      *&buf[4] = v169;
                      *&buf[12] = 2050;
                      *&buf[14] = v184;
                      _os_log_impl(&dword_19B873000, v183, OS_LOG_TYPE_DEBUG, "CLTSP,makeSegmentsForRouteConstruction,prior snap added,firstUpsampledTime,%{public}.1lf,snapTime,%{public}.1lf", buf, 0x16u);
                    }

                    v185 = sub_19B87DD40();
                    if (*(v185 + 160) > 1 || *(v185 + 164) > 1 || *(v185 + 168) > 1 || *(v185 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (*(v157 + 215) != -1)
                      {
                        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                      }

                      v186 = *(v344 + 16);
                      LODWORD(v366[0]) = 134349312;
                      *(v366 + 4) = v169;
                      WORD6(v366[0]) = 2050;
                      *(v366 + 14) = v186;
                      v187 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v187);
                      if (v187 != buf)
                      {
                        free(v187);
                      }
                    }

                    *buf = &v359;
                    sub_19B8F0E84(buf);
                  }

                  if (*(&v342 + 1))
                  {
                    sub_19B8750F8(*(&v342 + 1));
                  }
                }

                while (v171);
                *buf = &v361;
                sub_19B8F0E84(buf);
                v158 = v315;
                v159 = v167;
                v156 = v312;
              }

              if (*(&v344 + 1))
              {
                sub_19B8750F8(*(&v344 + 1));
              }
            }

            if (([v159 isGPSLocationType] & 1) != 0 || (objc_msgSend(v159, "isWiFiLocationType") & 1) != 0 || objc_msgSend(v159, "isLoiLocationType"))
            {
              v188 = *a10;
              [objc_msgSend(v159 "timestamp")];
              sub_19B9A271C(v188, &v359, v189);
              if (!v320 || v159 == [a7 lastObject] || (objc_msgSend(v159, "distanceFromLocation:", v320), v190 >= 10.0))
              {
                if (v359)
                {
                  v362 = 0;
                  v361 = 0;
                  v363 = 0;
                  sub_19B8EAB68(&v361, &v359);
                  v191 = *(a1 + 48);
                  if (v191 >= *(a1 + 56))
                  {
                    v192 = sub_19B9A2EF8(v15, &v361);
                  }

                  else
                  {
                    sub_19B9A2EA4(v15, &v361);
                    v192 = v191 + 24;
                  }

                  *(a1 + 48) = v192;
                  if (*(v157 + 215) != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  v193 = qword_1EAFE46E8;
                  v316 = v158;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    v321 = v193;
                    v194 = [v159 isGPSLocationType];
                    v195 = "wifi";
                    if (v194)
                    {
                      v195 = "gps";
                    }

                    v310 = v195;
                    if (*(a2 + 23) >= 0)
                    {
                      v196 = a2;
                    }

                    else
                    {
                      v196 = *a2;
                    }

                    [objc_msgSend(v159 "timestamp")];
                    v198 = v197;
                    [v159 latitude];
                    v200 = v199;
                    [v159 longitude];
                    v202 = v201;
                    [v159 course];
                    v204 = v203;
                    v205 = *(v359 + 24);
                    v206 = *(v359 + 32);
                    v207 = *(v359 + 40);
                    [v159 horizontalAccuracy];
                    v209 = v208;
                    [v159 courseAccuracy];
                    v211 = v210;
                    v212 = *(v359 + 48);
                    v213 = *(v359 + 56);
                    v215 = *(v359 + 72);
                    v214 = *(v359 + 80);
                    v216 = *(v359 + 88);
                    v217 = [v159 locType];
                    *buf = 136450563;
                    *&buf[4] = v310;
                    *&buf[12] = 2082;
                    *&buf[14] = v196;
                    *&buf[22] = 2050;
                    v391 = v198;
                    *v392 = 2053;
                    *&v392[2] = v200;
                    v393 = 2053;
                    *v394 = v202;
                    *&v394[8] = 2049;
                    v395 = v204;
                    v396 = 2053;
                    v397 = v205;
                    v398 = 2053;
                    v399 = v206;
                    v400 = 2049;
                    v401 = v207;
                    v402 = 2049;
                    v403 = v209;
                    v404 = 2049;
                    *v405 = v211;
                    *&v405[8] = 2050;
                    v406 = v212;
                    v407 = 2050;
                    v408 = v213;
                    v409 = 2050;
                    v410 = v214;
                    v411 = 2050;
                    v412 = v215;
                    v413 = 2050;
                    v414 = v216;
                    v415 = 1026;
                    v416 = 1;
                    v417 = 1026;
                    v418 = v217;
                    _os_log_impl(&dword_19B873000, v321, OS_LOG_TYPE_DEBUG, "CLTSP,MI,%{public}sLocation,filtered,1,id,%{public}s,time,%{public}.3lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{private}.3lf,hunc,%{private}.3lf,cunc,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,mode,%{public}d,type,%{public}d", buf, 0xAEu);
                    v15 = v318;
                    v156 = v312;
                    v157 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
                    v158 = v316;
                  }

                  v218 = sub_19B87DD40();
                  if (*(v218 + 160) > 1 || *(v218 + 164) > 1 || *(v218 + 168) > 1 || *(v218 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (*(v157 + 215) != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    v219 = [v159 isGPSLocationType];
                    v220 = "wifi";
                    if (v219)
                    {
                      v220 = "gps";
                    }

                    v311 = v220;
                    if (*(a2 + 23) >= 0)
                    {
                      v221 = a2;
                    }

                    else
                    {
                      v221 = *a2;
                    }

                    [objc_msgSend(v159 "timestamp")];
                    v223 = v222;
                    [v159 latitude];
                    v225 = v224;
                    [v159 longitude];
                    v227 = v226;
                    [v159 course];
                    v229 = v228;
                    v230 = *(v359 + 24);
                    v231 = *(v359 + 32);
                    v232 = *(v359 + 40);
                    [v159 horizontalAccuracy];
                    v234 = v233;
                    [v159 courseAccuracy];
                    v236 = v235;
                    v238 = *(v359 + 48);
                    v237 = *(v359 + 56);
                    v239 = *(v359 + 72);
                    v240 = *(v359 + 80);
                    v241 = *(v359 + 88);
                    v242 = [v159 locType];
                    LODWORD(v366[0]) = 136450563;
                    *(v366 + 4) = v311;
                    WORD6(v366[0]) = 2082;
                    *(v366 + 14) = v221;
                    WORD3(v366[1]) = 2050;
                    *(&v366[1] + 1) = v223;
                    LOWORD(v366[2]) = 2053;
                    *(&v366[2] + 2) = v225;
                    WORD5(v366[2]) = 2053;
                    *(&v366[2] + 12) = v227;
                    WORD2(v366[3]) = 2049;
                    *(&v366[3] + 6) = v229;
                    HIWORD(v366[3]) = 2053;
                    v367 = v230;
                    v368 = 2053;
                    v369 = v231;
                    v370 = 2049;
                    v371 = v232;
                    v372 = 2049;
                    v373 = v234;
                    v374 = 2049;
                    *v375 = v236;
                    *&v375[8] = 2050;
                    v376 = v238;
                    v377 = 2050;
                    v378 = v237;
                    v379 = 2050;
                    v380 = v240;
                    v381 = 2050;
                    v382 = v239;
                    v383 = 2050;
                    v384 = v241;
                    v385 = 1026;
                    v386 = 1;
                    v387 = 1026;
                    v388 = v242;
                    v243 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v243);
                    v15 = v318;
                    v156 = v312;
                    v157 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
                    v158 = v316;
                    if (v243 != buf)
                    {
                      free(v243);
                    }
                  }

                  *buf = &v361;
                  sub_19B8F0E84(buf);
                  v320 = v159;
                }
              }

              if (*(&v359 + 1))
              {
                sub_19B8750F8(*(&v359 + 1));
              }
            }
          }

          else
          {
            if (*(v157 + 215) != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v164 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19B873000, v164, OS_LOG_TYPE_ERROR, "CLTSP,MI,makeSegmentsForRouteConstruction,loc is unexpectedly nil", buf, 2u);
            }

            v165 = sub_19B87DD40();
            if ((*(v165 + 160) & 0x80000000) == 0 || (*(v165 + 164) & 0x80000000) == 0 || (*(v165 + 168) & 0x80000000) == 0 || *(v165 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v157 + 215) != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              LOWORD(v366[0]) = 0;
              v166 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripLocationFilter::makeSegmentsForRouteConstruction(const std::string &, const CLTripSegmentModeOfTransport, const BOOL, const BOOL, const BOOL, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull, std::shared_ptr<CLGeoMapFeatureRoadGeometryBuffer>, std::shared_ptr<CLTripSegmentRouteBuilder>)", "CoreLocation: %s\n", v166);
              if (v166 != buf)
              {
                free(v166);
              }
            }
          }

          ++v158;
        }

        while (v158 != v156);
        v244 = [a7 countByEnumeratingWithState:&v346 objects:v389 count:16];
        v156 = v244;
      }

      while (v244);
    }
  }

  if (a6)
  {
    v245 = *a9;
    v246 = a9[1];
    if (v246)
    {
      atomic_fetch_add_explicit(&v246->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_19B9E2EF8(&v352, a2, a8, v245, v246, 1);
    if (v246)
    {
      sub_19B8750F8(v246);
    }
  }

  v247 = *(a1 + 40);
  v248 = *(a1 + 48);
  if (v356 == v357)
  {
    goto LABEL_448;
  }

  v362 = 0;
  v361 = 0;
  v363 = 0;
  v249 = v248 - v247;
  if (v248 == v247)
  {
    v291 = 0;
    v250 = 0;
    goto LABEL_428;
  }

  v317 = v248 - v247;
  v250 = 0;
  v251 = -1.0;
  v322 = v248;
  do
  {
    v252 = v247[1];
    if (*v247 == v252)
    {
      goto LABEL_425;
    }

    if (v251 >= 0.0 || (v253 = *(v252 - 16)) == 0)
    {
      obja = v247;
      v254 = v356;
      v326 = v357;
      if (v356 != v357)
      {
        v255 = *(**v247 + 16);
        do
        {
          v359 = 0uLL;
          v360 = 0;
          v257 = *v254;
          v256 = v254[1];
          if (*v254 != v256)
          {
            do
            {
              v258 = *v257;
              if (*v257 && *v258)
              {
                v259 = *(v258 + 16);
                if (v259 > v251 && v259 < v255)
                {
                  if (qword_1EAFE46B8 != -1)
                  {
                    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                  }

                  v261 = qword_1EAFE46E8;
                  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v262 = a2;
                    }

                    else
                    {
                      v262 = *a2;
                    }

                    v263 = *(*v257 + 16);
                    v264 = *(*v257 + 24);
                    v265 = *(*v257 + 32);
                    v266 = *(*v257 + 40);
                    v267 = *(*v257 + 48);
                    v268 = *(*v257 + 56);
                    v270 = *(*v257 + 72);
                    v269 = *(*v257 + 80);
                    v271 = *(*v257 + 88);
                    v272 = *(*v257 + 64);
                    v273 = *(**v257 + 20);
                    *buf = 136449027;
                    *&buf[4] = v262;
                    *&buf[12] = 2050;
                    *&buf[14] = v263;
                    *&buf[22] = 2053;
                    v391 = v264;
                    *v392 = 2053;
                    *&v392[2] = v265;
                    v393 = 2049;
                    *v394 = v266;
                    *&v394[8] = 2050;
                    v395 = v267;
                    v396 = 2050;
                    v397 = v268;
                    v398 = 2050;
                    v399 = v269;
                    v400 = 2050;
                    v401 = v270;
                    v402 = 2050;
                    v403 = v271;
                    v404 = 1026;
                    *v405 = v272;
                    *&v405[4] = 1026;
                    *&v405[6] = v273;
                    _os_log_impl(&dword_19B873000, v261, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snappedIILocation,id,%{public}s,time,%{public}.3lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{private}.3lf,projection,%{public}.8lf,score,%{public}.12lf,dE,%{public}.2lf,dN,%{public}.2lf,dCourse,%{public}.2lf,valid,%{public}d,frc,%{public}d", buf, 0x72u);
                  }

                  v274 = sub_19B87DD40();
                  if (*(v274 + 160) > 1 || *(v274 + 164) > 1 || *(v274 + 168) > 1 || *(v274 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46B8 != -1)
                    {
                      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                    }

                    if (*(a2 + 23) >= 0)
                    {
                      v275 = a2;
                    }

                    else
                    {
                      v275 = *a2;
                    }

                    v276 = *(*v257 + 16);
                    v277 = *(*v257 + 24);
                    v278 = *(*v257 + 32);
                    v279 = *(*v257 + 40);
                    v280 = *(*v257 + 48);
                    v281 = *(*v257 + 56);
                    v283 = *(*v257 + 72);
                    v282 = *(*v257 + 80);
                    v284 = *(*v257 + 88);
                    v285 = *(*v257 + 64);
                    v286 = *(**v257 + 20);
                    LODWORD(v366[0]) = 136449027;
                    *(v366 + 4) = v275;
                    WORD6(v366[0]) = 2050;
                    *(v366 + 14) = v276;
                    WORD3(v366[1]) = 2053;
                    *(&v366[1] + 1) = v277;
                    LOWORD(v366[2]) = 2053;
                    *(&v366[2] + 2) = v278;
                    WORD5(v366[2]) = 2049;
                    *(&v366[2] + 12) = v279;
                    WORD2(v366[3]) = 2050;
                    *(&v366[3] + 6) = v280;
                    HIWORD(v366[3]) = 2050;
                    v367 = v281;
                    v368 = 2050;
                    v369 = v282;
                    v370 = 2050;
                    v371 = v283;
                    v372 = 2050;
                    v373 = v284;
                    v374 = 1026;
                    *v375 = v285;
                    *&v375[4] = 1026;
                    *&v375[6] = v286;
                    v287 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "void CLTripLocationFilter::insertUpsampledFilteredSnap(const std::string &, const std::vector<std::vector<CLGeoMapSnapDataPtr>> &)", "CoreLocation: %s\n", v287);
                    if (v287 != buf)
                    {
                      free(v287);
                    }
                  }

                  sub_19B8EAB68(&v359, v257);
                }
              }

              ++v257;
            }

            while (v257 != v256);
            if (v359 != *(&v359 + 1))
            {
              v251 = *(*(*(&v359 + 1) - 16) + 16);
              v288 = v362;
              if (v362 >= v363)
              {
                v289 = sub_19B9A2EF8(&v361, &v359);
              }

              else
              {
                *v362 = 0;
                *(v288 + 8) = 0;
                *(v288 + 16) = 0;
                sub_19B9A3028(v288, v359, *(&v359 + 1), (*(&v359 + 1) - v359) >> 4);
                v289 = v288 + 24;
              }

              v362 = v289;
            }
          }

          *buf = &v359;
          sub_19B8F0E84(buf);
          v254 += 3;
        }

        while (v254 != v326);
        v250 = v362;
      }

      v248 = v322;
      v247 = obja;
      if (v250 < v363)
      {
        goto LABEL_420;
      }

      v290 = sub_19B9A2EF8(&v361, obja);
LABEL_423:
      v250 = v290;
      goto LABEL_424;
    }

    v251 = *(v253 + 16);
    if (v250 >= v363)
    {
      v290 = sub_19B9A2EF8(&v361, v247);
      goto LABEL_423;
    }

LABEL_420:
    *v250 = 0;
    *(v250 + 8) = 0;
    *(v250 + 16) = 0;
    sub_19B9A3028(v250, *v247, v247[1], (v247[1] - *v247) >> 4);
    v250 += 24;
LABEL_424:
    v362 = v250;
LABEL_425:
    v247 += 3;
  }

  while (v247 != v248);
  v291 = v361;
  v249 = v317;
LABEL_428:
  if (v318 != &v361)
  {
    v292 = v250 - v291;
    if (v250 - v291 > v249)
    {
      v293 = *(a1 + 56);
      v294 = *(a1 + 40);
      if (v293 - v294 < v292)
      {
        v295 = 0xAAAAAAAAAAAAAAABLL * (v292 >> 3);
        if (v294)
        {
          v296 = *(a1 + 48);
          v297 = *(a1 + 40);
          if (v296 != v294)
          {
            do
            {
              v296 -= 24;
              *buf = v296;
              sub_19B8F0E84(buf);
            }

            while (v296 != v294);
            v297 = *v318;
          }

          *(a1 + 48) = v294;
          operator delete(v297);
          v293 = 0;
          *v318 = 0;
          *(v318 + 8) = 0;
          *(v318 + 16) = 0;
        }

        if (v295 <= 0xAAAAAAAAAAAAAAALL)
        {
          v298 = 0xAAAAAAAAAAAAAAABLL * (v293 >> 3);
          v299 = 2 * v298;
          if (2 * v298 <= v295)
          {
            v299 = v295;
          }

          if (v298 >= 0x555555555555555)
          {
            v300 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v300 = v299;
          }

          if (v300 <= 0xAAAAAAAAAAAAAAALL)
          {
            sub_19B9A3170(v318, v300);
          }
        }

        sub_19B8B8A40();
      }

      v301 = *(a1 + 48) - v294;
      if (v301 >= v292)
      {
        sub_19B9A3BB4(v366, v291, v250, *(a1 + 40));
        v303 = v306;
        v307 = *(a1 + 48);
        while (v307 != v303)
        {
          v307 -= 3;
          *buf = v307;
          sub_19B8F0E84(buf);
        }
      }

      else
      {
        v302 = sub_19B9A3BB4(v366, v291, (v291 + v301), *(a1 + 40));
        v303 = sub_19B9A3A08(v318, v302, v250, *(a1 + 48));
      }

      *(a1 + 48) = v303;
    }
  }

  *buf = &v361;
  sub_19B8F1C84(buf);
  v247 = *(a1 + 40);
  v248 = *(a1 + 48);
LABEL_448:
  v21 = v247 != v248;
LABEL_449:
  *buf = &v356;
  sub_19B8F1C84(buf);
LABEL_450:
  v304 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19B9E9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  *(a36 + 48) = v36;
  STACK[0x4E0] = &STACK[0x298];
  sub_19B8F1C84(&STACK[0x4E0]);
  STACK[0x298] = a13;
  sub_19B8F1C84(&STACK[0x298]);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9E9E38(uint64_t a1, uint64_t *a2, void *a3, int a4)
{
  v180 = *MEMORY[0x1E69E9840];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  result = [a3 countByEnumeratingWithState:&v99 objects:v179 count:16];
  v88 = result;
  if (result)
  {
    v87 = *v100;
    do
    {
      v6 = 0;
      do
      {
        if (*v100 != v87)
        {
          objc_enumerationMutation(a3);
        }

        v7 = *(*(&v99 + 1) + 8 * v6);
        [objc_msgSend(v7 "timestamp")];
        v9 = v8;
        for (i = *(a1 + 48); ; i += 2)
        {
          if (i == *(a1 + 56))
          {
            v11 = 0;
            v12 = 0;
            goto LABEL_12;
          }

          v11 = *i;
          if (*i)
          {
            if (vabdd_f64(v11[2], v8) < 0.001)
            {
              break;
            }
          }
        }

        v12 = i[1];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_12:
        [v7 latitude];
        v93 = v13;
        [v7 longitude];
        v92 = v14;
        [v7 course];
        v91 = v15;
        [v7 latitude];
        v96 = v16;
        [v7 longitude];
        v94 = v17;
        [v7 course];
        v19 = v18;
        if (!v11 || *(v11 + 64) != 1)
        {
          [*(a1 + 40) addObject:v7];
          v90 = 0;
          goto LABEL_34;
        }

        v20 = [CLTripSegmentLocation alloc];
        v21 = [v7 timestamp];
        v95 = v11[4];
        v97 = v11[3];
        [v7 horizontalAccuracy];
        v23 = v22;
        v24 = v11[5];
        [v7 courseAccuracy];
        v26 = v25;
        [v7 speed];
        v28 = v27;
        [v7 speedAccuracy];
        v30 = v29;
        [v7 altitude];
        v32 = v31;
        [v7 altitudeAccuracy];
        v34 = -[CLTripSegmentLocation initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:](v20, "initWithTime:latitude:longitude:horizontalAccuracy:course:courseAccuracy:speed:speedAccuracy:altitude:altitudeAccuracy:locType:referenceFrame:", v21, [v7 locType], objc_msgSend(v7, "referenceFrame"), v97, v95, v23, v24, v26, v28, v30, v32, v33);
        v35 = v34;
        v94 = *(v11 + 4);
        v96 = *(v11 + 3);
        v19 = *(v11 + 5);
        v36 = *v11;
        if (*v11)
        {
          v90 = *(*&v36 + 8);
          [(CLTripSegmentLocation *)v34 setMapsRoadClass:*(*&v36 + 20)];
          [(CLTripSegmentLocation *)v35 setMapsFormOfWay:*(*v11 + 24)];
          [(CLTripSegmentLocation *)v35 setCLRoadID:*(*v11 + 8)];
        }

        else
        {
          v90 = 0;
        }

        [v7 rawLatitude];
        v38 = v37;
        [v7 rawLongitude];
        -[CLTripSegmentLocation setRawLatitude:longitude:referenceFrame:](v35, "setRawLatitude:longitude:referenceFrame:", [v7 rawReferenceFrame], v38, v39);
        if ([v7 isOriginalLocationType])
        {
          [(CLTripSegmentLocation *)v35 setLocationReconstructionType:1];
        }

        if ([v7 isInertialIntegrated])
        {
          [(CLTripSegmentLocation *)v35 setLocationReconstructionType:2];
        }

        if ([v7 isLinearInterpolated])
        {
          [(CLTripSegmentLocation *)v35 setLocationReconstructionType:4];
        }

        if (![(CLTripSegmentLocation *)v35 isOriginalLocationType]|| ![(CLTripSegmentLocation *)v35 isGPSLocationType]|| ([(CLTripSegmentLocation *)v35 altitudeAccuracy], v40 <= 0.0))
        {
          if (*v11)
          {
            v41 = v11[6] * *(*v11 + 128) + *(*v11 + 120) * (1.0 - v11[6]);
            v42 = 50.0;
LABEL_32:
            [(CLTripSegmentLocation *)v35 updateAltitude:v41 andAltitudeAccuracy:v42];
            goto LABEL_33;
          }
        }

        [(CLTripSegmentLocation *)v35 altitudeAccuracy];
        v44 = v43;
        v41 = 0.0;
        v45 = v44 > 0.0;
        v42 = 250.0;
        if (!v45)
        {
          goto LABEL_32;
        }

LABEL_33:
        [(CLTripSegmentLocation *)v35 setLocationReconstructionType:8, v41, v42];
        [(CLTripSegmentLocation *)v35 setSignalEnvironmentType:*(v11 + 42)];
        -[CLTripSegmentLocation setStartLocationType:](v35, "setStartLocationType:", [v7 locTypeStart]);
        -[CLTripSegmentLocation setStopLocationType:](v35, "setStopLocationType:", [v7 locTypeStop]);
        [*(a1 + 40) addObject:v35];
LABEL_34:
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v46 = qword_1EAFE46E8;
        v47 = v12;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
        {
          [v7 horizontalAccuracy];
          v49 = v48;
          [v7 courseAccuracy];
          v51 = v50;
          [v7 speed];
          v53 = v52;
          [v7 speedAccuracy];
          v55 = v54;
          [v7 altitude];
          v57 = v56;
          [v7 altitudeAccuracy];
          v59 = v58;
          v60 = [v7 locType];
          v61 = *(a2 + 23);
          v62 = *a2;
          v63 = [v7 reconstructionType];
          *buf = 134353667;
          v64 = a2;
          if (v61 < 0)
          {
            v64 = v62;
          }

          v142 = v9;
          v143 = 2053;
          v144 = v96;
          v145 = 2053;
          v146 = v94;
          v147 = 2050;
          v148 = v19;
          v149 = 2053;
          v150 = v93;
          v151 = 2053;
          v152 = v92;
          v153 = 2050;
          v154 = v91;
          v155 = 2050;
          v156 = v49;
          v157 = 2050;
          v158 = v51;
          v159 = 2050;
          v160 = v53;
          v161 = 2050;
          v162 = v55;
          v163 = 2050;
          v164 = v57;
          v165 = 2050;
          v166 = v59;
          v167 = 2049;
          v168 = v90;
          v169 = 1026;
          v170 = v11 != 0;
          v171 = 1026;
          v172 = v60;
          v173 = 2082;
          v174 = v64;
          v175 = 1026;
          v176 = a4;
          v177 = 1026;
          v178 = v63;
          _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_DEBUG, "CLTSP,MI,snapSolution,time,%{public}.1lf,snapLL,%{sensitive}.7lf,%{sensitive}.7lf,snapCourse,%{public}.2lf,rawLL,%{sensitive}.7lf,%{sensitive}.7lf,rawCourse,%{public}.2lf,hunc,%{public}.2lf,cunc,%{public}.2lf,speed,%{public}.2lf,sunc,%{public}.2lf,alt,%{public}.2lf,vunc,%{public}.2lf,roadID,%{private}lld,snapValid,%{public}d,type,%{public}d,id,%{public}s,mode,%{public}d,reconstructedType,%{public}d", buf, 0xB0u);
          v12 = v47;
        }

        v65 = sub_19B87DD40();
        if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          [v7 horizontalAccuracy];
          v67 = v66;
          [v7 courseAccuracy];
          v69 = v68;
          [v7 speed];
          v71 = v70;
          [v7 speedAccuracy];
          v73 = v72;
          [v7 altitude];
          v75 = v74;
          [v7 altitudeAccuracy];
          v77 = v76;
          v78 = v11 != 0;
          v79 = [v7 locType];
          v80 = *(a2 + 23);
          v81 = *a2;
          v82 = [v7 reconstructionType];
          v103 = 134353667;
          v83 = a2;
          if (v80 < 0)
          {
            v83 = v81;
          }

          v104 = v9;
          v105 = 2053;
          v106 = v96;
          v107 = 2053;
          v108 = v94;
          v109 = 2050;
          v110 = v19;
          v111 = 2053;
          v112 = v93;
          v113 = 2053;
          v114 = v92;
          v115 = 2050;
          v116 = v91;
          v117 = 2050;
          v118 = v67;
          v119 = 2050;
          v120 = v69;
          v121 = 2050;
          v122 = v71;
          v123 = 2050;
          v124 = v73;
          v125 = 2050;
          v126 = v75;
          v127 = 2050;
          v128 = v77;
          v129 = 2049;
          v130 = v90;
          v131 = 1026;
          v132 = v78;
          v133 = 1026;
          v134 = v79;
          v135 = 2082;
          v136 = v83;
          v137 = 1026;
          v138 = a4;
          v139 = 1026;
          v140 = v82;
          v84 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "void CLTripSegmentMapIntegrationBase::updateOutputLocations(const std::string &, NSArray<CLTripSegmentLocation *> * _Nonnull, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v84);
          v12 = v47;
          if (v84 != buf)
          {
            free(v84);
          }
        }

        if (v12)
        {
          sub_19B8750F8(v12);
        }

        ++v6;
      }

      while (v6 != v88);
      result = [a3 countByEnumeratingWithState:&v99 objects:v179 count:16];
      v88 = result;
    }

    while (result);
  }

  v85 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9EA6AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9EA700(double a1, double a2, double a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v85 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  v10 = a5[1];
  if (v9 == v10 || a1 > 1.0 || ((v12 = *a6, v11 = a6[1], a1 >= 0.0) ? (v13 = v12 == v11) : (v13 = 1), v13))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v56 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v57 = (a5[1] - *a5) >> 4;
      v58 = (a6[1] - *a6) >> 4;
      *buf = 67240704;
      *&buf[4] = v57;
      v83 = 1026;
      *v84 = v58;
      *&v84[4] = 2050;
      *&v84[6] = a1;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_ERROR, "CLTSP,MI,snapLocationsOnRoads,invalid input,inputLocations,%{public}d,roadVectors,%{public}d,firstSnapProjection,%{public}.3lf", buf, 0x18u);
    }

    v59 = sub_19B87DD40();
    if ((*(v59 + 160) & 0x80000000) == 0 || (*(v59 + 164) & 0x80000000) == 0 || (*(v59 + 168) & 0x80000000) == 0 || *(v59 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v77 = (a5[1] - *a5) >> 4;
      v78 = (a6[1] - *a6) >> 4;
      v60 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v60);
      if (v60 != buf)
      {
        free(v60);
      }
    }

    v15 = 0;
    goto LABEL_124;
  }

  v79 = 0;
  v80 = 0;
  v81 = 0;
  if (&v79 != a5)
  {
    sub_19B9F1EC8(&v79, v9, v10, (v10 - v9) >> 4);
    v12 = *a6;
    v11 = a6[1];
    v9 = *a5;
    v10 = a5[1];
  }

  v15 = 1;
  if (v10 == v9)
  {
    goto LABEL_123;
  }

  v16 = 0;
  v17 = (v11 - v12) >> 4;
  while (1)
  {
    v18 = &v9[2 * v16];
    if (*v18)
    {
      if (*v9)
      {
        break;
      }
    }

    ++v16;
    v9 = *a5;
    if (v16 >= (a5[1] - *a5) >> 4)
    {
      v15 = 1;
      goto LABEL_123;
    }
  }

  v19 = v79;
  v20 = 0.0;
  for (i = 0.0; v19 != v80; v19 += 2)
  {
    v22 = *v19;
    if (*v19)
    {
      if (*v22 > **v9 && *v22 <= **v18)
      {
        i = i + v22[10];
      }
    }
  }

  v24 = 0;
  v25 = i * a2;
  v26 = a1;
  do
  {
    v27 = *a6;
    if (v25 <= 0.0)
    {
      goto LABEL_84;
    }

    v28 = *(v27 + 16 * v24);
    v30 = *v28;
    v29 = v28[1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *(*a6 + 16 * v24);
    }

    v31 = sub_19B96D7D8(v28, 1);
    v32 = v31;
    if (((a6[1] - *a6) >> 4) - 1 > v24)
    {
      v31 = sub_19B96D7D8(*(*a6 + 16 * v24 + 16), 0);
    }

    v33 = 0.0;
    if (a3 != 0.0)
    {
      v34 = fmod(v32 + -90.0 + 90.0 - v31 + 180.0, 360.0);
      if (v34 < 0.0)
      {
        v34 = v34 + 360.0;
      }

      if (v34 > 180.0)
      {
        v34 = v34 + -360.0;
      }

      v35 = fabs(v34);
      if (v35 > 5.0 && v35 < 180.0)
      {
        v33 = a3 / tan(v34 * 0.0174532925 * 0.5);
      }
    }

    if (v30)
    {
      sub_19B9F5AA8(v30);
      v36 = *(v30 + 40);
      v37 = 1.0 - v26;
      if (!*(*(*a6 + 16 * v24) + 24))
      {
        v37 = v26;
      }

      v38 = v36 * v37;
      if (v25 <= v36 * v37 - v33 + 0.000000001)
      {
        v41 = 12;
        if (v29)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v39 = v24 + 1;
        if (v24 + 1 >= v17)
        {
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v46 = qword_1EAFE46E8;
          if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
          {
            v47 = **v18;
            *buf = 67240448;
            *&buf[4] = v17;
            v83 = 2050;
            *v84 = v47;
            _os_log_impl(&dword_19B873000, v46, OS_LOG_TYPE_ERROR, "CLTSP,currentRoadIndex over candidate road size,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
          }

          v48 = sub_19B87DD40();
          if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v76 = **v18;
            v49 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v49);
            if (v49 != buf)
            {
              free(v49);
            }
          }

          sub_19B9F5AA8(v30);
          v41 = 0;
          v20 = v33 / *(v30 + 40);
          if (*(*(*a6 + 16 * v24) + 24))
          {
            v26 = 1.0 - v20;
          }

          else
          {
            v26 = v33 / *(v30 + 40);
          }

          v25 = 0.0;
          if (v29)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v40 = **(*a6 + 16 * v39);
          sub_19B9F5AA8(v40);
          v41 = 0;
          v25 = v25 - v38;
          v20 = v33 / *(v40 + 40);
          if (*(*(*a6 + 16 * v39) + 24))
          {
            v26 = v33 / *(v40 + 40);
          }

          else
          {
            v26 = 1.0 - v20;
          }

          ++v24;
          if (v29)
          {
            goto LABEL_57;
          }
        }
      }
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v42 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v43 = **v18;
        *buf = 67240448;
        *&buf[4] = v17;
        v83 = 2050;
        *v84 = v43;
        _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,MI,road pointer invalid,count,%{public}d,locationTime,%{public}.3lf", buf, 0x12u);
      }

      v44 = sub_19B87DD40();
      if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v75 = **v18;
        v45 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      v41 = 1;
      if (v29)
      {
LABEL_57:
        sub_19B8750F8(v29);
      }
    }
  }

  while (!v41);
  if (v41 != 12)
  {
    goto LABEL_126;
  }

  v27 = *a6;
LABEL_84:
  v50 = *(v27 + 16 * v24);
  v51 = *v50;
  if (*v50)
  {
    sub_19B9F5AA8(*v50);
    if (*(v51 + 40) != 0.0)
    {
      v52 = 16 * v24;
      v53 = **(*a6 + v52);
      sub_19B9F5AA8(v53);
      v54 = v20 + v25 / *(v53 + 40);
      if (*(*(*a6 + v52) + 24))
      {
        v55 = v20 + v25 / *(v53 + 40);
      }

      operator new();
    }
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v61 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    v62 = **v18;
    v63 = *(*a6 + 16 * v24);
    v64 = *v63;
    if (*v63)
    {
      sub_19B9F5AA8(*v63);
      v65 = *(v64 + 40);
    }

    else
    {
      v65 = 0xBFF0000000000000;
    }

    *buf = 67240704;
    *&buf[4] = v17;
    v83 = 2050;
    *v84 = v62;
    *&v84[8] = 2050;
    *&v84[10] = v65;
    _os_log_impl(&dword_19B873000, v61, OS_LOG_TYPE_ERROR, "CLTSP,MI,road pointer invalid or zero length,count,%{public}d,locationTime,%{public}.3lf,roadLength,%{public}.2lf", buf, 0x1Cu);
  }

  v66 = sub_19B87DD40();
  if ((*(v66 + 160) & 0x80000000) != 0 && (*(v66 + 164) & 0x80000000) != 0 && (*(v66 + 168) & 0x80000000) != 0 && !*(v66 + 152))
  {
LABEL_126:
    v15 = 0;
    goto LABEL_123;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v67 = **v18;
  v68 = *(*a6 + 16 * v24);
  v69 = *v68;
  if (*v68)
  {
    sub_19B9F5AA8(*v68);
    v70 = *(v69 + 40);
  }

  v71 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegrationBase::snapLocationsOnRoads(const std::vector<CLGeoMapLocationPtr> &, const std::vector<CLRouteRoadPtr> &, const double, std::vector<CLGeoMapSnapDataPtr> &, double, double) const", "CoreLocation: %s\n", v71);
  if (v71 != buf)
  {
    free(v71);
  }

  v15 = 0;
LABEL_123:
  *buf = &v79;
  sub_19B8F0E84(buf);
LABEL_124:
  v72 = *MEMORY[0x1E69E9840];
  return v15;
}

void sub_19B9EC1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33)
{
  a33 = a14;
  sub_19B8F0E84(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9EC27C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t *a5, void *a6, void *a7)
{
  v162 = *MEMORY[0x1E69E9840];
  if (*(a1 + 136))
  {
    v14 = mach_continuous_time();
    v15 = sub_19B994BF4(v14);
    sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
    if (![a6 count])
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v30 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v31 = [a7 count];
        v32 = __p;
        if (v143 < 0)
        {
          v32 = __p[0];
        }

        *buf = 134349314;
        v154 = v31;
        v155 = 2082;
        *v156 = v32;
        _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_INFO, "CLTSP,MI,integrateWithMapData,empty sparseLocations,upsampledLocations,%{public}lu,id,%{public}s", buf, 0x16u);
      }

      v33 = sub_19B87DD40();
      if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
      {
        goto LABEL_72;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v34 = [a7 count];
      v35 = __p;
      if (v143 < 0)
      {
        v35 = __p[0];
      }

      v144 = 134349314;
      v145 = v34;
      v146 = 2082;
      *v147 = v35;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v25);
      goto LABEL_53;
    }

    sub_19B8E5AC0(*(a1 + 136));
    v16 = *(a1 + 176);
    v17 = *(a1 + 177);
    v18 = *(a1 + 144);
    v141[0] = *(a1 + 136);
    v141[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = *a5;
    v20 = a5[1];
    v140[0] = v19;
    v140[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = sub_19B9E61E4(a1 + 184, __p, a3, a4, v16, v17, a6, a7, v141, v140);
    if (v20)
    {
      sub_19B8750F8(v20);
    }

    if (v18)
    {
      sub_19B8750F8(v18);
    }

    if (!v21)
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v36 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v37 = [a6 count];
        v38 = [a7 count];
        v39 = __p;
        if (v143 < 0)
        {
          v39 = __p[0];
        }

        v40 = *(a1 + 136);
        v41 = *(v40 + 116);
        v42 = *(v40 + 320);
        LODWORD(v40) = *(v40 + 152);
        *buf = 134350338;
        v154 = v37;
        v155 = 2050;
        *v156 = v38;
        *&v156[8] = 2082;
        *v157 = v39;
        *&v157[8] = 1026;
        *v158 = v41;
        *&v158[4] = 2050;
        *&v158[6] = v42;
        LOWORD(v159) = 1026;
        *(&v159 + 2) = v40;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_INFO, "CLTSP,MI,integrateWithMapData,segments not available for reconstruction,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s,mapsAPICalls,%{public}d,connectionBufferUsedCount,%{public}lu,geometry,%{public}d", buf, 0x36u);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) > 1 || *(v43 + 164) > 1 || *(v43 + 168) > 1 || *(v43 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v44 = [a6 count];
        v45 = [a7 count];
        v46 = __p;
        if (v143 < 0)
        {
          v46 = __p[0];
        }

        v47 = *(a1 + 136);
        v48 = *(v47 + 116);
        v49 = *(v47 + 320);
        LODWORD(v47) = *(v47 + 152);
        v144 = 134350338;
        v145 = v44;
        v146 = 2050;
        *v147 = v45;
        *&v147[8] = 2082;
        *v148 = v46;
        *&v148[8] = 1026;
        *v149 = v48;
        *&v149[4] = 2050;
        *&v149[6] = v49;
        LOWORD(v150) = 1026;
        *(&v150 + 2) = v47;
        v50 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v50);
        if (v50 != buf)
        {
          free(v50);
        }
      }

      sub_19B8E5C90(*(a1 + 136));
      goto LABEL_72;
    }

    p_cb = &OBJC_PROTOCOL___CLHarvesterServerInterface.cb;
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    if (sub_19B9EDDA0(qword_1EAFE5B10, a2))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      v23 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,after makeSegmentsForRouteConstruction", buf, 2u);
      }

      v24 = sub_19B87DD40();
      if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
      {
        goto LABEL_72;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
      }

      LOWORD(v144) = 0;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v25);
LABEL_53:
      if (v25 != buf)
      {
        free(v25);
      }

LABEL_72:
      v29 = 0;
LABEL_73:
      if (v143 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_75;
    }

    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9EDE20(qword_1EAFE5B10, a2, &v138);
    if (v138)
    {
      *(v138 + 72) -= 1431655765 * ((*(a1 + 232) - *(a1 + 224)) >> 3);
    }

    v53 = *(*(a1 + 136) + 88);
    if (v53)
    {
      [v53 clearRoadTiles];
    }

    if (sub_19B948DC0(a1 + 72, a7) && **(a1 + 112))
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v54 = qword_1EAFE46E8;
      v137 = a3;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v56 = *(a1 + 224);
        v55 = *(a1 + 232);
        v57 = [a6 count];
        v58 = [a7 count];
        v59 = __p;
        *buf = 134349826;
        if (v143 < 0)
        {
          v59 = __p[0];
        }

        v154 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 3);
        v155 = 2050;
        *v156 = v57;
        *&v156[8] = 2050;
        *v157 = v58;
        *&v157[8] = 2082;
        *v158 = v59;
        _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,integrateWithMapData,segments,%{public}lu,sparseLocations,%{public}lu,upsampledLocations,%{public}lu,id,%{public}s", buf, 0x2Au);
        p_cb = &OBJC_PROTOCOL___CLHarvesterServerInterface.cb;
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v62 = *(a1 + 224);
        v61 = *(a1 + 232);
        v63 = [a6 count];
        v64 = [a7 count];
        v65 = __p;
        v144 = 134349826;
        if (v143 < 0)
        {
          v65 = __p[0];
        }

        v145 = 0xAAAAAAAAAAAAAAABLL * ((v61 - v62) >> 3);
        v146 = 2050;
        *v147 = v63;
        *&v147[8] = 2050;
        *v148 = v64;
        *&v148[8] = 2082;
        *v149 = v65;
        v66 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }

      v67 = *(a1 + 224);
      v68 = *(a1 + 232);
      if (0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3) >= 2)
      {
        v135 = a7;
        v69 = 1;
        v70 = 1;
        while (1)
        {
          if (*(p_cb + 352) != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          if (sub_19B9EDDA0(qword_1EAFE5B10, a2))
          {
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
            }

            v109 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
            {
              *buf = 67240192;
              LODWORD(v154) = v70;
              _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_INFO, "CLTSP,CLTripSegmentMapIntegratorSparse,processingTime exceeded max allowed,constructSegment loop,iteration,%{public}d", buf, 8u);
            }

            v110 = sub_19B87DD40();
            if (*(v110 + 160) > 1 || *(v110 + 164) > 1 || *(v110 + 168) > 1 || *(v110 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
              }

              v144 = 67240192;
              LODWORD(v145) = v70;
              v111 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v111);
              if (v111 != buf)
              {
                free(v111);
              }
            }

            goto LABEL_198;
          }

          a3 = p_cb;
          v71 = *(a1 + 224);
          v72 = v71 + 24 * v70;
          v73 = (v72 - 24);
          v74 = v71 + 24 * v69;
          if (*(v72 - 24) == *(v72 - 16) || *v74 == *(v74 + 8))
          {
            if (qword_1EAFE46B8 != -1)
            {
              dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
            }

            v76 = qword_1EAFE46E8;
            if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
            {
              v77 = (*(v72 - 16) - *(v72 - 24)) >> 4;
              v78 = (*(v74 + 8) - *v74) >> 4;
              *buf = 134349312;
              v154 = v77;
              v155 = 2050;
              *v156 = v78;
              _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
            }

            v79 = sub_19B87DD40();
            if ((*(v79 + 160) & 0x80000000) == 0 || (*(v79 + 164) & 0x80000000) == 0 || (*(v79 + 168) & 0x80000000) == 0 || *(v79 + 152))
            {
              bzero(buf, 0x65CuLL);
              LODWORD(a3) = v137;
              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v80 = (*(v72 - 16) - *(v72 - 24)) >> 4;
              v81 = (*(v74 + 8) - *v74) >> 4;
              v144 = 134349312;
              v145 = v80;
              v146 = 2050;
              *v147 = v81;
              v82 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v82);
              if (v82 == buf)
              {
                goto LABEL_165;
              }

LABEL_164:
              free(v82);
              goto LABEL_165;
            }
          }

          else
          {
            v75 = -1 - 0x5555555555555555 * ((*(a1 + 232) - v71) >> 3);
            if (!sub_19B9EDEA0(a1, a2, v73, v74, v75 == v69, v137))
            {
              if (v137 != 1)
              {
                goto LABEL_150;
              }

              v136 = v70 + 1;
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 232) - *(a1 + 224)) >> 3) <= v136)
              {
                goto LABEL_150;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              log = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v83 = __p;
                if (v143 < 0)
                {
                  v83 = __p[0];
                }

                *buf = 136446210;
                v154 = v83;
                _os_log_impl(&dword_19B873000, log, OS_LOG_TYPE_DEBUG, "CLTSP,MI,integrateWithMapDataSparse,errorReported,trying with next snap,%{public}s", buf, 0xCu);
              }

              v84 = sub_19B87DD40();
              if (*(v84 + 160) > 1 || *(v84 + 164) > 1 || *(v84 + 168) > 1 || *(v84 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v85 = __p;
                if (v143 < 0)
                {
                  v85 = __p[0];
                }

                v144 = 136446210;
                v145 = v85;
                v86 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v86);
                if (v86 != buf)
                {
                  free(v86);
                }
              }

              if (!sub_19B9EDEA0(a1, a2, v73, (*(a1 + 224) + 24 * v136), v75 == v69, 1))
              {
LABEL_150:
                sub_19B9F22AC((a1 + 48), *(a1 + 56), *(v72 - 24), *(v72 - 16), (*(v72 - 16) - *(v72 - 24)) >> 4);
                sub_19B9F22AC((a1 + 48), *(a1 + 56), *v74, *(v74 + 8), (*(v74 + 8) - *v74) >> 4);
                p_cb = a3;
                LODWORD(a3) = v137;
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v90 = qword_1EAFE46E8;
                if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
                {
                  v91 = __p;
                  if (v143 < 0)
                  {
                    v91 = __p[0];
                  }

                  *buf = 136446210;
                  v154 = v91;
                  _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapDataSparse,errorReported,id,%{public}s", buf, 0xCu);
                }

                v92 = sub_19B87DD40();
                if ((*(v92 + 160) & 0x80000000) != 0 && (*(v92 + 164) & 0x80000000) != 0 && (*(v92 + 168) & 0x80000000) != 0 && !*(v92 + 152))
                {
                  goto LABEL_165;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v93 = __p;
                if (v143 < 0)
                {
                  v93 = __p[0];
                }

                v144 = 136446210;
                v145 = v93;
                v82 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v82);
                if (v82 == buf)
                {
                  goto LABEL_165;
                }

                goto LABEL_164;
              }

              if (qword_1EAFE46B8 != -1)
              {
                dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
              }

              v87 = qword_1EAFE46E8;
              if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEBUG))
              {
                v88 = __p;
                if (v143 < 0)
                {
                  v88 = __p[0];
                }

                *buf = 136446466;
                v154 = v88;
                v155 = 1026;
                *v156 = v70 + 1;
                _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLTSP,MI,integrateWithMapDataSparse,constructSegment with next snap success,%{public}s,nextIndex,%{public}d", buf, 0x12u);
              }

              v89 = sub_19B87DD40();
              p_cb = a3;
              if (*(v89 + 160) > 1 || *(v89 + 164) > 1 || *(v89 + 168) > 1 || *(v89 + 152))
              {
                bzero(buf, 0x65CuLL);
                LODWORD(a3) = 1;
                if (qword_1EAFE46B8 != -1)
                {
                  dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
                }

                v94 = __p;
                if (v143 < 0)
                {
                  v94 = __p[0];
                }

                v144 = 136446466;
                v145 = v94;
                v146 = 1026;
                *v147 = v70 + 1;
                v95 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v95);
                if (v95 != buf)
                {
                  free(v95);
                }

                ++v70;
                goto LABEL_165;
              }

              ++v70;
            }
          }

          LODWORD(a3) = v137;
LABEL_165:
          v69 = ++v70;
          v67 = *(a1 + 224);
          v68 = *(a1 + 232);
          if (0xAAAAAAAAAAAAAAABLL * ((v68 - v67) >> 3) <= v70)
          {
            a7 = v135;
            break;
          }
        }
      }

      if (v68 - v67 == 24)
      {
        sub_19B9F22AC((a1 + 48), *(a1 + 56), *v67, v67[1], (v67[1] - *v67) >> 4);
      }

      v112 = *(a1 + 136);
      if (*(v112 + 88))
      {
        [*(v112 + 88) clearRoadTiles];
        v112 = *(a1 + 136);
      }

      sub_19B8E5C90(v112);
      sub_19B9E9E38(a1, __p, a7, a3);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v113 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
      {
        v114 = 0.0;
        if (v15 >= 0.0)
        {
          v115 = mach_continuous_time();
          v114 = vabdd_f64(sub_19B994BF4(v115), v15) * 1000.0;
        }

        v116 = [a7 count];
        v117 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v118 = __p;
        if (v143 < 0)
        {
          v118 = __p[0];
        }

        v119 = *(a1 + 136);
        v121 = *(v119 + 112);
        v120 = *(v119 + 116);
        v122 = *(v119 + 320);
        LODWORD(v119) = *(v119 + 152);
        *buf = 134350850;
        v154 = *&v114;
        v155 = 1026;
        *v156 = v116;
        *&v156[4] = 1026;
        *&v156[6] = v117;
        *v157 = 2082;
        *&v157[2] = v118;
        *v158 = 1026;
        *&v158[2] = v120;
        *&v158[6] = 1026;
        *&v158[8] = v121;
        *&v158[12] = 2050;
        v159 = v122;
        v160 = 1026;
        v161 = v119;
        _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,integrateWithMapDataSparse,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s,mapsAPICalls,%{public}d,bufferCalls,%{public}d,connectionUsed,%{public}lu,geometry,%{public}d", buf, 0x3Eu);
      }

      v123 = sub_19B87DD40();
      if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v124 = 0.0;
        if (v15 >= 0.0)
        {
          v125 = mach_continuous_time();
          v124 = vabdd_f64(sub_19B994BF4(v125), v15) * 1000.0;
        }

        v126 = [a7 count];
        v127 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v128 = __p;
        if (v143 < 0)
        {
          v128 = __p[0];
        }

        v129 = *(a1 + 136);
        v131 = *(v129 + 112);
        v130 = *(v129 + 116);
        v132 = *(v129 + 320);
        LODWORD(v129) = *(v129 + 152);
        v144 = 134350850;
        v145 = *&v124;
        v146 = 1026;
        *v147 = v126;
        *&v147[4] = 1026;
        *&v147[6] = v127;
        *v148 = 2082;
        *&v148[2] = v128;
        *v149 = 1026;
        *&v149[2] = v130;
        *&v149[6] = 1026;
        *&v149[8] = v131;
        *&v149[12] = 2050;
        v150 = v132;
        v151 = 1026;
        v152 = v129;
        v133 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v133);
        if (v133 != buf)
        {
          free(v133);
        }
      }

      sub_19B9E008C(*(a1 + 136));
      v29 = 1;
    }

    else
    {
      sub_19B9E9E38(a1, __p, a7, a3);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v96 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v97 = 0.0;
        if (v15 >= 0.0)
        {
          v98 = mach_continuous_time();
          v97 = vabdd_f64(sub_19B994BF4(v98), v15) * 1000.0;
        }

        v99 = [a7 count];
        v100 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v101 = __p;
        if (v143 < 0)
        {
          v101 = __p[0];
        }

        *buf = 134349826;
        v154 = *&v97;
        v155 = 1026;
        *v156 = v99;
        *&v156[4] = 1026;
        *&v156[6] = v100;
        *v157 = 2082;
        *&v157[2] = v101;
        _os_log_impl(&dword_19B873000, v96, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapDataSparse failed, tripLocations count not be initialized,timeTakenInMS,%{public}.3lf,inputLocations,%{public}d,snapLocations,%{public}d,id,%{public}s", buf, 0x22u);
      }

      v102 = sub_19B87DD40();
      if ((*(v102 + 160) & 0x80000000) == 0 || (*(v102 + 164) & 0x80000000) == 0 || (*(v102 + 168) & 0x80000000) == 0 || *(v102 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v103 = 0.0;
        if (v15 >= 0.0)
        {
          v104 = mach_continuous_time();
          v103 = vabdd_f64(sub_19B994BF4(v104), v15) * 1000.0;
        }

        v105 = [a7 count];
        v106 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        v107 = __p;
        if (v143 < 0)
        {
          v107 = __p[0];
        }

        v144 = 134349826;
        v145 = *&v103;
        v146 = 1026;
        *v147 = v105;
        *&v147[4] = 1026;
        *&v147[6] = v106;
        *v148 = 2082;
        *&v148[2] = v107;
        v108 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v108);
        if (v108 != buf)
        {
          free(v108);
        }
      }

      sub_19B8E5C90(*(a1 + 136));
LABEL_198:
      v29 = 0;
    }

    if (v139)
    {
      sub_19B8750F8(v139);
    }

    goto LABEL_73;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v26 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_ERROR, "CLTSP,MI,integrateWithMapData,geometry pointer is nullptr", buf, 2u);
  }

  v27 = sub_19B87DD40();
  if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v144) = 0;
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::integrateWithMapData(NSUUID * _Nonnull, const CLTripSegmentModeOfTransport, const BOOL, std::shared_ptr<CLTripSegmentRouteBuilder> &, NSArray<CLTripSegmentLocation *> * _Nonnull, NSArray<CLTripSegmentLocation *> * _Nonnull)", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v29 = 0;
LABEL_75:
  v51 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_19B9EDCD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a25)
  {
    sub_19B8750F8(a25);
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9EDDA0(std::mutex *a1, void *a2)
{
  sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
  v3 = sub_19B99F500(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_19B9EDE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9EDE20(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
  sub_19B9F2000(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B9EDE84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19B9EDEA0(uint64_t a1, void *a2, double ***a3, uint64_t **a4, int a5, uint64_t a6)
{
  v272 = *MEMORY[0x1E69E9840];
  v8 = a3[1];
  if (*a3 == v8 || *a4 == a4[1])
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v31 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v32 = (a3[1] - *a3) >> 4;
      v33 = (a4[1] - *a4) >> 4;
      *buf = 134349312;
      *&buf[4] = v32;
      *&buf[12] = 2050;
      *&buf[14] = v33;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) != 0 && (*(v34 + 164) & 0x80000000) != 0 && (*(v34 + 168) & 0x80000000) != 0 && !*(v34 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

  v9 = *(v8 - 2);
  if (!v9 || (v10 = **a4) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v38 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v39 = (a3[1] - *a3) >> 4;
      v40 = (a4[1] - *a4) >> 4;
      *buf = 134349312;
      *&buf[4] = v39;
      *&buf[12] = 2050;
      *&buf[14] = v40;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_ERROR, "CLTSP,MI,constructSegment,null pointers,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v41 = sub_19B87DD40();
    if ((*(v41 + 160) & 0x80000000) != 0 && (*(v41 + 164) & 0x80000000) != 0 && (*(v41 + 168) & 0x80000000) != 0 && !*(v41 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_53;
    }

LABEL_107:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
LABEL_53:
    v35 = (a3[1] - *a3) >> 4;
    v36 = (a4[1] - *a4) >> 4;
    *v233 = 134349312;
    *&v233[4] = v35;
    *&v233[12] = 2050;
    *&v233[14] = v36;
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v37);
    goto LABEL_73;
  }

  v13 = *(v9 + 16);
  v14 = *(v10 + 16);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v15 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134349312;
    *&buf[4] = v13;
    *&buf[12] = 2050;
    *&buf[14] = v14;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_INFO, "CLTSP,MI,constructSegment,start,%{public}.3lf,end,%{public}.3lf", buf, 0x16u);
  }

  v16 = sub_19B87DD40();
  if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v233 = 134349312;
    *&v233[4] = v13;
    *&v233[12] = 2050;
    *&v233[14] = v14;
    v17 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v18 = a3[1];
  if (*a3 == v18 || (v19 = *a4, *a4 == a4[1]))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v42 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,start or stop snap road is empty", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    *v233 = 134349056;
    *&v233[4] = v13;
    v37 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v37);
LABEL_73:
    if (v37 != buf)
    {
      free(v37);
    }

LABEL_75:
    v30 = 0;
    goto LABEL_76;
  }

  v20 = *(v18 - 2);
  v21 = *(v18 - 1);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = *a4;
  }

  v23 = *v19;
  v22 = v19[1];
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v185 = v22;
  if (*(v20 + 64) != 1 || v20[2] <= 0.0 || (v24 = *v20) == 0 || (v25 = v20[4], v26 = fabs(v20[3]), v26 < 0.00003) && fabs(v25) < 0.00003 || v25 < -180.0 || v26 > 90.0 || v25 > 180.0 || *(v23 + 64) != 1 || *(v23 + 16) <= 0.0 || (v46 = *v23, !*v23) || (v47 = *(v23 + 32), v48 = fabs(*(v23 + 24)), v48 < 0.00003) && fabs(v47) < 0.00003 || v47 < -180.0 || v48 > 90.0 || v47 > 180.0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v27 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = v13;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "CLTSP,MI,%{public}.1lf,start or destination snap is not valid. Skipping constructing this segment", buf, 0xCu);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      *v233 = 134349056;
      *&v233[4] = v13;
      v29 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    v30 = 0;
    goto LABEL_41;
  }

  v183 = v23;
  v180 = v21;
  v49 = *(v24 + 144);
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  if (v49 != *(v24 + 136))
  {
    v51 = *(v49 - 16);
    v52 = *(v49 - 8);
  }

  v53 = *(*&v46 + 136);
  v54 = 0.0;
  if (*(*&v46 + 144) != v53)
  {
    v50 = *v53;
    v54 = v53[1];
  }

  v55 = sub_19BA0C01C(a1, v51, v52, v50, v54, 0.0);
  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9EDE20(qword_1EAFE5B10, a2, &v219);
  if (!v219)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v60 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_19B8759E8(buf, [objc_msgSend(a2 "UUIDString")]);
      v61 = v254 >= 0 ? buf : *buf;
      *v233 = 136446210;
      *&v233[4] = v61;
      _os_log_impl(&dword_19B873000, v60, OS_LOG_TYPE_DEFAULT, "CLTSP,constructSegment,tripID,%{public}s is not in CLTripSegmentSharedData", v233, 0xCu);
      if (SHIBYTE(v254) < 0)
      {
        operator delete(*buf);
      }
    }

    v62 = sub_19B87DD40();
    if (*(v62 + 160) > 1 || *(v62 + 164) > 1 || *(v62 + 168) > 1 || *(v62 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      sub_19B8759E8(v233, [objc_msgSend(a2 "UUIDString")]);
      if ((v233[23] & 0x80u) == 0)
      {
        v63 = v233;
      }

      else
      {
        v63 = *v233;
      }

      LODWORD(v245) = 136446210;
      *(&v245 + 4) = v63;
      v64 = _os_log_send_and_compose_impl();
      if (v233[23] < 0)
      {
        operator delete(*v233);
      }

      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    v30 = 0;
    goto LABEL_370;
  }

  ++*(v219 + 76);
  v248 = 0.0;
  v252 = 0;
  v245 = 0u;
  v246 = 0u;
  v247 = 0;
  v251 = 0;
  v250 = 0;
  v249 = *(a1 + 178);
  if (a6 == 2)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v56 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v57 = *(*v20 + 144);
      if (v57 == *(*v20 + 136))
      {
        v58 = 0;
        v59 = 0;
      }

      else
      {
        v58 = *(v57 - 16);
        v59 = *(v57 - 8);
      }

      v81 = *(*v183 + 136);
      if (*(*v183 + 144) == v81)
      {
        v82 = 0;
        v83 = 0;
      }

      else
      {
        v82 = *v81;
        v83 = v81[1];
      }

      *buf = 134350593;
      *&buf[4] = v13;
      *&buf[12] = 2053;
      *&buf[14] = v58;
      v254 = 2053;
      v255 = v59;
      v256 = 2053;
      v257 = v82;
      v258 = 2053;
      v259 = v83;
      v260 = 2050;
      v261 = v55;
      v262 = 2050;
      v263 = v14;
      _os_log_impl(&dword_19B873000, v56, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf", buf, 0x48u);
    }

    v87 = sub_19B87DD40();
    if (*(v87 + 160) > 1 || *(v87 + 164) > 1 || *(v87 + 168) > 1 || *(v87 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v88 = *(*v20 + 144);
      if (v88 == *(*v20 + 136))
      {
        v89 = 0;
        v90 = 0;
      }

      else
      {
        v89 = *(v88 - 16);
        v90 = *(v88 - 8);
      }

      v91 = *(*v183 + 136);
      if (*(*v183 + 144) == v91)
      {
        v92 = 0;
        v93 = 0;
      }

      else
      {
        v92 = *v91;
        v93 = v91[1];
      }

      *v233 = 134350593;
      *&v233[4] = v13;
      *&v233[12] = 2053;
      *&v233[14] = v89;
      *&v233[22] = 2053;
      v234 = v90;
      *v235 = 2053;
      *&v235[2] = v92;
      *&v235[10] = 2053;
      *&v235[12] = v93;
      *&v235[20] = 2050;
      *&v235[22] = v55;
      *&v235[30] = 2050;
      v236 = v14;
      v94 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v94);
      if (v94 != buf)
      {
        free(v94);
      }
    }

    *buf = *(v183 + 3);
    if (qword_1EAFE5B00 != -1)
    {
      dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
    }

    sub_19B9F081C(qword_1EAFE5B10, a2, &v217);
    v95 = *(a1 + 144);
    v215 = *(a1 + 136);
    v216 = v95;
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v96 = sub_19B9A95C8(&v245, v13, v20[6], v183[6], a1, &v217, v20, v183, &v215);
    if (v216)
    {
      sub_19B8750F8(v216);
    }

    if (v218)
    {
      sub_19B8750F8(v218);
    }

    if ((v96 & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_301;
  }

  v65 = *v20;
  v66 = 53.0;
  if (*v20)
  {
    v67 = *(v65 + 20);
    if (v67 >= 4 && (*(v65 + 24) - 1) >= 2)
    {
      v66 = dbl_19BA8D180[v67 - 5 < 2];
    }
  }

  v68 = v20[13];
  v69 = v183[13];
  if (v68 >= 0.0)
  {
    if (v69 < 0.0)
    {
      v70 = v68 * 2.5;
      goto LABEL_142;
    }

    v69 = (v68 + v69) * 0.5;
    goto LABEL_141;
  }

  v70 = v66;
  if (v69 >= 0.0)
  {
LABEL_141:
    v70 = v69 * 2.5;
  }

LABEL_142:
  if (v66 >= v70)
  {
    v66 = v70;
  }

  if (v70 >= 20.0)
  {
    v71 = v66;
  }

  else
  {
    v71 = 20.0;
  }

  v72 = fabs(v14 - v13) * v71;
  if (v72 >= 250.0)
  {
    v73 = v72;
  }

  else
  {
    v73 = 250.0;
  }

  v74 = sub_19BA0C01C(a1, v20[3], v20[4], v183[3], v183[4], 0.0);
  v75 = v74 + v74;
  if (v74 + v74 >= v73)
  {
    v76 = v74 + v74;
  }

  else
  {
    v76 = v73;
  }

  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v77 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    v78 = *(*v20 + 144);
    if (v78 == *(*v20 + 136))
    {
      v79 = 0;
      v80 = 0;
    }

    else
    {
      v79 = *(v78 - 16);
      v80 = *(v78 - 8);
    }

    v84 = *(*v183 + 136);
    if (*(*v183 + 144) == v84)
    {
      v85 = 0;
      v86 = 0;
    }

    else
    {
      v85 = *v84;
      v86 = v84[1];
    }

    *buf = 134351617;
    *&buf[4] = v13;
    *&buf[12] = 2053;
    *&buf[14] = v79;
    v254 = 2053;
    v255 = v80;
    v256 = 2053;
    v257 = v85;
    v258 = 2053;
    v259 = v86;
    v260 = 2050;
    v261 = v55;
    v262 = 2050;
    v263 = v14;
    v264 = 2050;
    v265 = v76;
    v266 = 2050;
    v267 = v71;
    v268 = 2050;
    v269 = v73;
    v270 = 2050;
    v271 = v75;
    _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,constructing astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,speed,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf", buf, 0x70u);
  }

  v109 = sub_19B87DD40();
  if (*(v109 + 160) > 1 || *(v109 + 164) > 1 || *(v109 + 168) > 1 || *(v109 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v110 = *(*v20 + 144);
    if (v110 == *(*v20 + 136))
    {
      v111 = 0;
      v112 = 0;
    }

    else
    {
      v111 = *(v110 - 16);
      v112 = *(v110 - 8);
    }

    v113 = *(*v183 + 136);
    if (*(*v183 + 144) == v113)
    {
      v114 = 0;
      v115 = 0;
    }

    else
    {
      v114 = *v113;
      v115 = v113[1];
    }

    *v233 = 134351617;
    *&v233[4] = v13;
    *&v233[12] = 2053;
    *&v233[14] = v111;
    *&v233[22] = 2053;
    v234 = v112;
    *v235 = 2053;
    *&v235[2] = v114;
    *&v235[10] = 2053;
    *&v235[12] = v115;
    *&v235[20] = 2050;
    *&v235[22] = v55;
    *&v235[30] = 2050;
    v236 = v14;
    v237 = 2050;
    v238 = v76;
    v239 = 2050;
    v240 = v71;
    v241 = 2050;
    v242 = v73;
    v243 = 2050;
    v244 = v75;
    v116 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v116);
    if (v116 != buf)
    {
      free(v116);
    }
  }

  if (qword_1EAFE5B00 != -1)
  {
    dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
  }

  sub_19B9F081C(qword_1EAFE5B10, a2, &v213);
  v211 = v20;
  v212 = v180;
  if (v180)
  {
    atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v209 = v183;
  v210 = v185;
  if (v185)
  {
    atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v117 = *(a1 + 144);
  v207 = *(a1 + 136);
  v208 = v117;
  if (v117)
  {
    atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v205 = 0;
  v206 = 0;
  v118 = sub_19B9A4AC0(&v245, a1, &v213, &v211, &v209, &v207, v13, v76);
  if (v208)
  {
    sub_19B8750F8(v208);
  }

  if (v210)
  {
    sub_19B8750F8(v210);
  }

  if (v212)
  {
    sub_19B8750F8(v212);
  }

  if (v214)
  {
    sub_19B8750F8(v214);
  }

  if ((v118 & 1) == 0)
  {
    v184 = *a3;
    v119 = a4[1];
    v120 = v119 - *a4;
    v121 = v120 >= 0x11 || (a3[1] - *a3) >= 0x11;
    if (!v121 || v119 == *a4)
    {
LABEL_189:
      v97 = v219;
      v98.i32[0] = 1;
      v98.i32[1] = DWORD2(v246);
      *(v219 + 80) = vadd_s32(*(v219 + 80), v98);
      v99 = v247;
      *(v97 + 88) += HIDWORD(v246);
      sub_19B9988CC((v97 + 128), v99);
      *(v219 + 96) = v248 + *(v219 + 96);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v100 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v101 = (a3[1] - *a3) >> 4;
        v102 = (a4[1] - *a4) >> 4;
        v103 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        *buf = 134350080;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v14;
        v254 = 2050;
        v255 = v101;
        v256 = 2050;
        v257 = v102;
        v258 = 2050;
        v259 = v103;
        _os_log_impl(&dword_19B873000, v100, OS_LOG_TYPE_INFO, "CLTSP,MI,unable to construct route,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,0,endSnap,%{public}lu,total,%{public}lu", buf, 0x34u);
      }

      v104 = sub_19B87DD40();
      if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v105 = (a3[1] - *a3) >> 4;
        v106 = (a4[1] - *a4) >> 4;
        v107 = (*(a1 + 56) - *(a1 + 48)) >> 4;
        *v233 = 134350080;
        *&v233[4] = v13;
        *&v233[12] = 2050;
        *&v233[14] = v14;
        *&v233[22] = 2050;
        v234 = v105;
        *v235 = 2050;
        *&v235[2] = v106;
        *&v235[10] = 2050;
        *&v235[12] = v107;
        v108 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v108);
        if (v108 != buf)
        {
          free(v108);
        }
      }

      v30 = 0;
      goto LABEL_369;
    }

    v122 = 0;
    v181 = 0;
    v123 = v120 >> 4;
    if (v123 >= 0x1E)
    {
      v123 = 30;
    }

    if (v123 <= 1)
    {
      v123 = 1;
    }

    v179 = 16 * v123;
    while (1)
    {
      v124 = *a4;
      v125 = sub_19BA0C01C(a1, (*v184)[3], (*v184)[4], *((*a4)[v122 / 8] + 24), *((*a4)[v122 / 8] + 32), 0.0);
      v126 = v125;
      v127 = v125 + v125;
      if (v125 + v125 >= v73)
      {
        v128 = v125 + v125;
      }

      else
      {
        v128 = v73;
      }

      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v129 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        v130 = *(**v184 + 144);
        if (v130 == *(**v184 + 136))
        {
          v131 = 0;
          v132 = 0;
        }

        else
        {
          v131 = *(v130 - 16);
          v132 = *(v130 - 8);
        }

        v133 = *v124[v122 / 8];
        v134 = *(v133 + 136);
        if (*(v133 + 144) == v134)
        {
          v135 = 0;
          v136 = 0;
        }

        else
        {
          v135 = *v134;
          v136 = v134[1];
        }

        *buf = 134351617;
        *&buf[4] = v13;
        *&buf[12] = 2053;
        *&buf[14] = v131;
        v254 = 2053;
        v255 = v132;
        v256 = 2053;
        v257 = v135;
        v258 = 2053;
        v259 = v136;
        v260 = 2050;
        v261 = v126;
        v262 = 2050;
        v263 = v14;
        v264 = 2050;
        v265 = v128;
        v266 = 2050;
        v267 = v73;
        v268 = 2050;
        v269 = v127;
        v270 = 1026;
        LODWORD(v271) = v181;
        _os_log_impl(&dword_19B873000, v129, OS_LOG_TYPE_INFO, "CLTSP,MI,%{public}.3lf,try alternate astar route between,startPoint,%{sensitive}.7lf,%{sensitive}.7lf,endPoint,%{sensitive}.7lf,%{sensitive}.7lf,distance,%{public}.3lf,endTime,%{public}.3lf,maxDistance,%{public}.3lf,maxSpeedBasedDistance,%{public}.1lf,maxLOSBasedDistance,%{public}.1lf,tryCount,%{public}d", buf, 0x6Cu);
      }

      v137 = sub_19B87DD40();
      if (*(v137 + 160) > 1 || *(v137 + 164) > 1 || *(v137 + 168) > 1 || *(v137 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v138 = *(**v184 + 144);
        if (v138 == *(**v184 + 136))
        {
          v139 = 0;
          v140 = 0;
        }

        else
        {
          v139 = *(v138 - 16);
          v140 = *(v138 - 8);
        }

        v141 = *v124[v122 / 8];
        v142 = *(v141 + 136);
        if (*(v141 + 144) == v142)
        {
          v143 = 0;
          v144 = 0;
        }

        else
        {
          v143 = *v142;
          v144 = v142[1];
        }

        *v233 = 134351617;
        *&v233[4] = v13;
        *&v233[12] = 2053;
        *&v233[14] = v139;
        *&v233[22] = 2053;
        v234 = v140;
        *v235 = 2053;
        *&v235[2] = v143;
        *&v235[10] = 2053;
        *&v235[12] = v144;
        *&v235[20] = 2050;
        *&v235[22] = v126;
        *&v235[30] = 2050;
        v236 = v14;
        v237 = 2050;
        v238 = v128;
        v239 = 2050;
        v240 = v73;
        v241 = 2050;
        v242 = v127;
        v243 = 1026;
        LODWORD(v244) = v181;
        v145 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v145);
        if (v145 != buf)
        {
          free(v145);
        }
      }

      if (qword_1EAFE5B00 != -1)
      {
        dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
      }

      sub_19B9F081C(qword_1EAFE5B10, a2, &v203);
      v146 = v184[1];
      v201 = *v184;
      v202 = v146;
      if (v146)
      {
        atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v199 = v124[v122 / 8];
      v147 = v124[v122 / 8 + 1];
      v200 = v147;
      if (v147)
      {
        atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v148 = *(a1 + 144);
      v197 = *(a1 + 136);
      v198 = v148;
      if (v148)
      {
        atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v195 = 0;
      v196 = 0;
      v149 = sub_19B9A4AC0(&v245, a1, &v203, &v201, &v199, &v197, v13, v128);
      if (v198)
      {
        sub_19B8750F8(v198);
      }

      if (v200)
      {
        sub_19B8750F8(v200);
      }

      if (v202)
      {
        sub_19B8750F8(v202);
      }

      if (v204)
      {
        sub_19B8750F8(v204);
      }

      if (v149)
      {
        break;
      }

      ++v181;
      v122 += 16;
      if (v179 == v122)
      {
        goto LABEL_189;
      }
    }

    v20 = *v184;
    v182 = v184[1];
    if (v182)
    {
      atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v180)
    {
      sub_19B8750F8(v180);
    }

    v183 = v124[v122 / 8];
    v150 = v124[v122 / 8 + 1];
    if (v150)
    {
      atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v185)
    {
      sub_19B8750F8(v185);
    }

    v180 = v182;
    v185 = v150;
  }

LABEL_301:
  v151 = v219;
  *(v219 + 96) = v248 + *(v219 + 96);
  sub_19B9988CC((v151 + 128), v247);
  v152 = *a3;
  v153 = a3[1];
  if ((v153 - *a3) >= 0x11 && v20 != *v152)
  {
    memset(v233, 0, sizeof(v233));
    if (sub_19B9F03E4(a1, a2, v152, v153, v233))
    {
      sub_19B8F1A28((a1 + 152), *(a1 + 160), *v233, *&v233[8], (*&v233[8] - *v233) >> 4);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v154 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
      {
        *buf = 67240192;
        *&buf[4] = (*&v233[8] - *v233) >> 4;
        _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_INFO, "CLTSP,route appended at start using startSnaps,numRoads,%{public}d", buf, 8u);
      }

      v155 = sub_19B87DD40();
      if (*(v155 + 160) > 1 || *(v155 + 164) > 1 || *(v155 + 168) > 1 || *(v155 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v221 = 67240192;
        LODWORD(v222) = (*&v233[8] - *v233) >> 4;
        v156 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v156);
        if (v156 != buf)
        {
          free(v156);
        }
      }
    }

    *buf = v233;
    sub_19B8F0E84(buf);
  }

  if (a5)
  {
    v157 = *a4;
    v158 = a4[1];
    if ((v158 - *a4) >= 0x11 && v183 != *(v158 - 16))
    {
      memset(v233, 0, sizeof(v233));
      if (sub_19B9F03E4(a1, a2, v157, v158, v233))
      {
        sub_19B8F1A28((a1 + 152), *(a1 + 160), *v233, *&v233[8], (*&v233[8] - *v233) >> 4);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v159 = qword_1EAFE46E8;
        if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
        {
          *buf = 67240192;
          *&buf[4] = (*&v233[8] - *v233) >> 4;
          _os_log_impl(&dword_19B873000, v159, OS_LOG_TYPE_INFO, "CLTSP,route appended at end using stopSnaps,numRoads,%{public}d", buf, 8u);
        }

        v160 = sub_19B87DD40();
        if (*(v160 + 160) > 1 || *(v160 + 164) > 1 || *(v160 + 168) > 1 || *(v160 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46B8 != -1)
          {
            dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
          }

          v221 = 67240192;
          LODWORD(v222) = (*&v233[8] - *v233) >> 4;
          v161 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v161);
          if (v161 != buf)
          {
            free(v161);
          }
        }
      }

      *buf = v233;
      sub_19B8F0E84(buf);
    }
  }

  v193 = 0uLL;
  v194 = 0;
  v163 = *(&v245 + 1);
  v162 = v245;
  if (v245 != *(&v245 + 1))
  {
    do
    {
      sub_19B8EAB68(&v193, *v162);
      v162 += 2;
    }

    while (v162 != v163);
    if (v193 != *(&v193 + 1))
    {
      v165 = *(a1 + 160);
      v164 = (a1 + 152);
      if (*(a1 + 152) == v165)
      {
        sub_19B8F1A28(v164, *(a1 + 152), v193, *(&v193 + 1), (*(&v193 + 1) - v193) >> 4);
      }

      else
      {
        v166 = *(v165 - 2);
        if (*v166 == **v193 && v166[1] == *(*v193 + 8))
        {
          sub_19B8F1A28(v164, v165, (v193 + 16), *(&v193 + 1), (*(&v193 + 1) - (v193 + 16)) >> 4);
        }

        else
        {
          sub_19B8F1A28(v164, v165, v193, *(&v193 + 1), (*(&v193 + 1) - v193) >> 4);
        }
      }
    }
  }

  v190 = 0;
  v191 = 0;
  v192 = 0;
  *&v233[16] = 0;
  v234 = 0;
  *v233 = xmmword_19BA89490;
  *v235 = 0x3FF0000000000000;
  memset(&v235[8], 0, 24);
  sub_19B948EFC(a1 + 72, &v235[8], 1, 0, v20[2], v183[2]);
  if (a6 == 1)
  {
    if ((sub_19B9F1380(a1, &v245, &v190, a3, a4, v233) & 1) == 0)
    {
      goto LABEL_368;
    }

LABEL_356:
    sub_19B9F22AC((a1 + 48), *(a1 + 56), *a3, a3[1], (a3[1] - *a3) >> 4);
    sub_19B9F2604((a1 + 48), *(a1 + 56), v190, v191, (v191 - v190) >> 4);
    sub_19B9F22AC((a1 + 48), *(a1 + 56), *a4, a4[1], (a4[1] - *a4) >> 4);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v168 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
    {
      v169 = (a3[1] - *a3) >> 4;
      v170 = (a4[1] - *a4) >> 4;
      v171 = (*(a1 + 56) - *(a1 + 48)) >> 4;
      *buf = 134350336;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = v14;
      v254 = 2050;
      v255 = v169;
      v256 = 2050;
      v257 = (v191 - v190) >> 4;
      v258 = 2050;
      v259 = v170;
      v260 = 2050;
      v261 = *&v171;
      _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_INFO, "CLTSP,MI,added snap solutions,startTime,%{public}.3lf,endTime,%{public}.3lf,startSnap,%{public}lu,constructed,%{public}lu,endSnap,%{public}lu,total,%{public}lu", buf, 0x3Eu);
    }

    v172 = sub_19B87DD40();
    if (*(v172 + 160) > 1 || *(v172 + 164) > 1 || *(v172 + 168) > 1 || *(v172 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v173 = (a3[1] - *a3) >> 4;
      v174 = (a4[1] - *a4) >> 4;
      v175 = (*(a1 + 56) - *(a1 + 48)) >> 4;
      v221 = 134350336;
      v222 = v13;
      v223 = 2050;
      v224 = v14;
      v225 = 2050;
      v226 = v173;
      v227 = 2050;
      v228 = (v191 - v190) >> 4;
      v229 = 2050;
      v230 = v174;
      v231 = 2050;
      v232 = v175;
      v176 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::constructSegment(NSUUID * _Nonnull, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, BOOL, BOOL, const CLTripSegmentModeOfTransport)", "CoreLocation: %s\n", v176);
      if (v176 != buf)
      {
        free(v176);
      }
    }

    goto LABEL_368;
  }

  v189[0] = v20;
  v189[1] = v180;
  if (v180)
  {
    atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v188[0] = v183;
  v188[1] = v185;
  if (v185)
  {
    atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v167 = sub_19B9F089C(a1, &v245, &v190, v189, v188, v233);
  if (v185)
  {
    sub_19B8750F8(v185);
  }

  if (v180)
  {
    sub_19B8750F8(v180);
    if ((v167 & 1) == 0)
    {
      goto LABEL_368;
    }

    goto LABEL_356;
  }

  if (v167)
  {
    goto LABEL_356;
  }

LABEL_368:
  v177 = *(a1 + 136);
  *(v219 + 104) += *(v177 + 116);
  Current = CFAbsoluteTimeGetCurrent();
  sub_19B8E62BC(v177 + 288, Current, 0.5, 0.5);
  v30 = v190 != v191;
  *buf = &v235[8];
  sub_19B8F0E84(buf);
  *buf = &v190;
  sub_19B8F0E84(buf);
  *buf = &v193;
  sub_19B8F0E84(buf);
LABEL_369:
  *buf = &v245;
  sub_19B8F0E84(buf);
LABEL_370:
  if (v220)
  {
    sub_19B8750F8(v220);
  }

  v21 = v180;
LABEL_41:
  if (v185)
  {
    sub_19B8750F8(v185);
  }

  if (v21)
  {
    sub_19B8750F8(v21);
  }

LABEL_76:
  v44 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_19B9F020C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58)
{
  STACK[0x290] = &a29;
  sub_19B8F0E84(&STACK[0x290]);
  STACK[0x290] = &STACK[0x240];
  sub_19B8F0E84(&STACK[0x290]);
  if (a58)
  {
    sub_19B8750F8(a58);
  }

  if (a19)
  {
    sub_19B8750F8(a19);
  }

  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(a1);
}

BOOL sub_19B9F03E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 - a3) < 0x11)
  {
    return 1;
  }

  v8 = a3;
  if (a3 == a4)
  {
    return *a5 != *(a5 + 8);
  }

  v11 = 0;
  v12 = 0;
  v13 = *(*(a4 - 16) + 16);
  do
  {
    v14 = *v8;
    if (!*v8)
    {
      goto LABEL_60;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_60;
    }

    v16 = v14[1];
    *&v50 = v15;
    *(&v50 + 1) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    v17 = *(a5 + 8);
    if (*a5 == v17)
    {
      sub_19B8EAB68(a5, &v50);
      v11 = *v8;
      v20 = *(v8 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v12;
      if (!v12)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*v18 != *v15 || v18[1] != v15[1])
      {
        if (sub_19B9F6278(v18, &v50))
        {
          sub_19B8EAB68(a5, &v50);
        }

        else
        {
          v45 = 0;
          v49 = 0;
          memset(v43, 0, sizeof(v43));
          v44 = 0;
          v48 = 0;
          v47 = 0;
          v46 = 1;
          if (qword_1EAFE5B00 != -1)
          {
            dispatch_once(&qword_1EAFE5B00, &unk_1F0E6D570);
          }

          sub_19B9F081C(qword_1EAFE5B10, a2, &v41);
          v39 = v11;
          v40 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = *(v8 + 8);
          v37 = *v8;
          v38 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = *(a1 + 144);
          v35 = *(a1 + 136);
          v36 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v33 = 0;
          v34 = 0;
          v23 = sub_19B9A4AC0(v43, a1, &v41, &v39, &v37, &v35, v13, -1.0);
          if (v34)
          {
            sub_19B8750F8(v34);
          }

          if (v36)
          {
            sub_19B8750F8(v36);
          }

          if (v38)
          {
            sub_19B8750F8(v38);
          }

          if (v40)
          {
            sub_19B8750F8(v40);
          }

          if (v42)
          {
            sub_19B8750F8(v42);
          }

          if (v23)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v25 = *(&v43[0] + 1);
            v24 = *&v43[0];
            if (*&v43[0] == *(&v43[0] + 1))
            {
              v26 = 0;
            }

            else
            {
              do
              {
                sub_19B8EAB68(&v30, *v24);
                v24 += 2;
              }

              while (v24 != v25);
              v26 = v30;
            }

            v27 = *(a5 + 8);
            if (*a5 != v27 && (v28 = *(v27 - 2), *v28 == **v26) && v28[1] == *(*v26 + 8))
            {
              sub_19B8F1A28(a5, v27, v26 + 2, v31, (v31 - (v26 + 2)) >> 4);
            }

            else
            {
              sub_19B8F1A28(a5, v27, v26, v31, (v31 - v26) >> 4);
            }

            v51 = &v30;
            sub_19B8F0E84(&v51);
          }

          else
          {
            sub_19B8EAB68(a5, &v50);
          }

          v30 = v43;
          sub_19B8F0E84(&v30);
        }
      }

      v11 = *v8;
      v20 = *(v8 + 8);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      if (!v19)
      {
        goto LABEL_57;
      }
    }

    sub_19B8750F8(v19);
LABEL_57:
    if (*(&v50 + 1))
    {
      sub_19B8750F8(*(&v50 + 1));
    }

    v12 = v20;
LABEL_60:
    v8 += 16;
  }

  while (v8 != a4);
  v5 = *a5 != *(a5 + 8);
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  return v5;
}

void sub_19B9F0768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v25 - 112) = &a10;
  sub_19B8F0E84((v25 - 112));
  a10 = &a23;
  sub_19B8F0E84(&a10);
  if (v23)
  {
    sub_19B8750F8(v23);
  }

  v27 = *(v25 - 120);
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  if (v24)
  {
    sub_19B8750F8(v24);
  }

  _Unwind_Resume(a1);
}

void sub_19B9F081C(std::mutex *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_19B8759E8(__p, [objc_msgSend(a2 "UUIDString")]);
  sub_19B9A26B0(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_19B9F0880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9F089C(float64x2_t *a1, uint64_t *a2, uint64_t a3, double **a4, double **a5, uint64_t a6)
{
  v81 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  if (!*a4 || (v8 = *a5) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v19 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentPedestrian,null pointers", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_18;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LOWORD(v68) = 0;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v21);
LABEL_16:
    if (v21 != buf)
    {
      free(v21);
    }

    goto LABEL_18;
  }

  v10 = *a2;
  v11 = a2[1];
  if (v11 == *a2)
  {
    goto LABEL_100;
  }

  v15 = *(*v10 + 24);
  v16 = *(v11 - 16);
  v17 = *(v16 + 24);
  if ((v11 - *a2) < 0x11)
  {
    v18 = v8[6] > v6[6];
    *(*v10 + 24) = v18;
  }

  else
  {
    sub_19B9AC9F0(a2, a1);
    v10 = *a2;
    v11 = a2[1];
    v18 = *(**a2 + 24);
    v6 = *a4;
    v8 = *a5;
    v16 = *(v11 - 16);
  }

  v23 = *(v16 + 24);
  v24 = v6[20];
  if (v18 != v15)
  {
    v24 = -v24;
  }

  v6[20] = v24;
  v25 = v8[20];
  if (v23 != v17)
  {
    v25 = -v25;
  }

  v8[20] = v25;
  if (v10 == v11)
  {
    goto LABEL_100;
  }

  if (v18)
  {
    v26 = v6[6];
  }

  else
  {
    v26 = 1.0 - v6[6];
  }

  v27 = *v6;
  sub_19B9F5AA8(*v6);
  v28 = *(*&v27 + 40);
  v29 = *a5;
  if (*(*(a2[1] - 16) + 24))
  {
    v30 = 1.0 - (*a5)[6];
  }

  else
  {
    v30 = (*a5)[6];
  }

  v31 = *v29;
  sub_19B9F5AA8(*v29);
  v32 = v30 * *(v31 + 40) + v26 * v28;
  v33 = sub_19B9B0CAC(a2, (*a4)[20]) - v32;
  v34 = sub_19B9B0CAC(a2, (*a5)[20]) - v32;
  v35 = *a4;
  v36 = (*a4)[13];
  v37 = (*a5)[13];
  if (v36 <= 0.5)
  {
    v36 = -1.0;
    if (v37 > 0.5)
    {
      v36 = (*a5)[13];
    }
  }

  else if (v37 > 0.5 && v36 < v37)
  {
    v36 = (*a5)[13];
  }

  v38 = (v33 + v34) * 0.5;
  v39 = (*a5)[2] - (*a4)[2];
  v40 = *(a6 + 40);
  v41 = *(a6 + 48);
  v42 = 0.0;
  if (v40 != v41)
  {
    v43 = *(a6 + 40);
    do
    {
      if (*v43)
      {
        v42 = v42 + *(*v43 + 80);
      }

      v43 += 16;
    }

    while (v43 != v41);
  }

  v44 = 0;
  v45 = v38 / v39;
  if (v36 >= 0.0 && v45 > 0.0)
  {
    v46 = fabs(v39) * -0.0833333333 + 4.5;
    v47 = 4.0;
    if (v46 <= 4.0)
    {
      v47 = v46;
    }

    if (v46 >= 2.0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 2.0;
    }

    v44 = v45 > v48 * v36;
  }

  v49 = v42 * 1.2;
  if (v44 || v38 > v49)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v51 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = v38 > v49;
      *&buf[14] = 2050;
      v78 = v45;
      *v79 = 2050;
      *&v79[2] = v36;
      *&v79[10] = 2048;
      *&v79[12] = (v33 + v34) * 0.5;
      *&v79[20] = 2048;
      *&v79[22] = v42;
      _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEFAULT, "CLTSP,Warning,cannot interpolate along route,speed_check_failed,%d,distance_check_failed,%d,route_speed_mps,%{public}.1lf,max_start_destination_speed_mps,%{public}.1lf,routeLength_m,%.1lf,li_distance_m,%.1lf", buf, 0x36u);
    }

    v52 = sub_19B87DD40();
    if (*(v52 + 160) <= 1 && *(v52 + 164) <= 1 && *(v52 + 168) <= 1 && !*(v52 + 152))
    {
      goto LABEL_18;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LODWORD(v68) = 67110400;
    HIDWORD(v68) = v44;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = v38 > v49;
    HIWORD(v69) = 2050;
    v70 = v45;
    v71 = 2050;
    v72 = v36;
    v73 = 2048;
    v74 = (v33 + v34) * 0.5;
    v75 = 2048;
    v76 = v42;
    v21 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v21);
    goto LABEL_16;
  }

  v50 = 0.0;
  while (v40 != v41)
  {
    if (*v40)
    {
      v50 = v50 + *(*v40 + 80);
    }

    v40 += 16;
  }

  v68 = 0;
  v69 = 0;
  v70 = 0.0;
  if (sub_19B9EA700(v35[6], v33 / v50, v35[20], a1, (a6 + 40), a2))
  {
    v66 = 0uLL;
    v67 = 0;
    v53 = sub_19B9EA700((*a4)[6], v34 / v50, (*a5)[20], a1, (a6 + 40), a2);
    if (v53)
    {
      v78 = 0.0;
      *v79 = 0;
      *buf = xmmword_19BA89490;
      *&v79[8] = 0x3FF0000000000000;
      *&v79[16] = 0;
      *&v79[24] = 0;
      v80 = 0;
      if (buf != a6)
      {
        sub_19B9F1EC8(&v79[16], *(a6 + 40), *(a6 + 48), (*(a6 + 48) - *(a6 + 40)) >> 4);
      }

      v65[0] = &v79[16];
      sub_19B8F0E84(v65);
    }

    else
    {
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v59 = qword_1EAFE46E8;
      if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
      {
        v60 = *(*a4 + 2);
        *buf = 134349056;
        *&buf[4] = v60;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
      }

      v61 = sub_19B87DD40();
      if ((*(v61 + 160) & 0x80000000) == 0 || (*(v61 + 164) & 0x80000000) == 0 || (*(v61 + 168) & 0x80000000) == 0 || *(v61 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46B8 != -1)
        {
          dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
        }

        v62 = *(*a4 + 2);
        LODWORD(v65[0]) = 134349056;
        *(v65 + 4) = v62;
        v63 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }
    }

    *buf = &v66;
    sub_19B8F0E84(buf);
    *buf = &v68;
    sub_19B8F0E84(buf);
    if (v53)
    {
LABEL_100:
      result = 1;
      goto LABEL_101;
    }
  }

  else
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v54 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v55 = *(*a4 + 2);
      *buf = 134349056;
      *&buf[4] = v55;
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "CLTSP,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
    }

    v56 = sub_19B87DD40();
    if ((*(v56 + 160) & 0x80000000) == 0 || (*(v56 + 164) & 0x80000000) == 0 || (*(v56 + 168) & 0x80000000) == 0 || *(v56 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v57 = *(*a4 + 2);
      LODWORD(v66) = 134349056;
      *(&v66 + 4) = v57;
      v58 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentPedestrian(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapSnapDataPtr, const CLGeoMapSnapDataPtr, const CLGeoMapLocationArray &) const", "CoreLocation: %s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }
    }

    *buf = &v68;
    sub_19B8F0E84(buf);
  }

LABEL_18:
  result = 0;
LABEL_101:
  v64 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9F1324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  sub_19B8F0E84(&a11);
  a25 = &a13;
  sub_19B8F0E84(&a25);
  a25 = &a17;
  sub_19B8F0E84(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_19B9F1380(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t **a5, uint64_t a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = a4[1];
  if (*a4 == v8 || (v9 = *a5, *a5 == a5[1]))
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v21 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v22 = (a4[1] - *a4) >> 4;
      v23 = (a5[1] - *a5) >> 4;
      *buf = 134349312;
      *&buf[4] = v22;
      v57 = 2050;
      v58 = v23;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,invalid size,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

  if (!*(v8 - 16) || !*v9)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v25 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      v26 = (a4[1] - *a4) >> 4;
      v27 = (a5[1] - *a5) >> 4;
      *buf = 134349312;
      *&buf[4] = v26;
      v57 = 2050;
      v58 = v27;
      _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_ERROR, "CLTSP,MI,interpolateLocationsAlongSegmentVehicular,null pointers,start,%{public}lu,end,%{public}lu", buf, 0x16u);
    }

    v28 = sub_19B87DD40();
    if ((*(v28 + 160) & 0x80000000) != 0 && (*(v28 + 164) & 0x80000000) != 0 && (*(v28 + 168) & 0x80000000) != 0 && !*(v28 + 152))
    {
      goto LABEL_37;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 == -1)
    {
LABEL_35:
      v29 = (a4[1] - *a4) >> 4;
      v30 = (a5[1] - *a5) >> 4;
      LODWORD(v51[0]) = 134349312;
      *(v51 + 4) = v29;
      WORD2(v51[1]) = 2050;
      *(&v51[1] + 6) = v30;
      v31 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }

LABEL_37:
      v32 = 0;
      goto LABEL_38;
    }

LABEL_73:
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    goto LABEL_35;
  }

  v47 = *(v8 - 16);
  v13 = *(v8 - 8);
  v48 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *a5;
  }

  v15 = *v9;
  v14 = v9[1];
  v45 = v15;
  v46 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_19B9AEA00(a2, &v47, &v45);
  if (v46)
  {
    sub_19B8750F8(v46);
  }

  if (v48)
  {
    sub_19B8750F8(v48);
  }

  v17 = *(a6 + 40);
  v18 = *(a6 + 48);
  v19 = (a6 + 40);
  v20 = 0.0;
  while (v17 != v18)
  {
    if (*v17)
    {
      v20 = v20 + *(*v17 + 80);
    }

    v17 += 16;
  }

  v35 = *(*(a4[1] - 16) + 16);
  v36 = *(**a5 + 16);
  if (qword_1EAFE46B8 != -1)
  {
    dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
  }

  v37 = qword_1EAFE46E8;
  if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_INFO))
  {
    *buf = 134350080;
    *&buf[4] = v35;
    v57 = 2050;
    v58 = v36;
    v59 = 2050;
    v60 = v16;
    v61 = 2050;
    v62 = v20;
    v63 = 2050;
    v64 = v16 / v20;
    _os_log_impl(&dword_19B873000, v37, OS_LOG_TYPE_INFO, "CLTSP,MI,construct route distances,startTime,%{public}.3lf,endTime,%{public}.3lf,routeConstructed,%{public}.3lf,routeExpected,%{public}.3lf,distanceScale,%{public}.3lf", buf, 0x34u);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    LODWORD(v51[0]) = 134350080;
    *(v51 + 4) = v35;
    WORD2(v51[1]) = 2050;
    *(&v51[1] + 6) = v36;
    HIWORD(v51[2]) = 2050;
    v51[3] = *&v16;
    v52 = 2050;
    v53 = v20;
    v54 = 2050;
    v55 = v16 / v20;
    v39 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  memset(v51, 0, 24);
  v40 = *a2;
  v41 = a2[1];
  while (v40 != v41)
  {
    sub_19B8EAB68(v51, *v40);
    v40 += 2;
  }

  v32 = sub_19B9EA700(*(*(a4[1] - 16) + 48), v16 / v20, 0.0, a1, v19, a2);
  if ((v32 & 1) == 0)
  {
    if (qword_1EAFE46B8 != -1)
    {
      dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
    }

    v42 = qword_1EAFE46E8;
    if (os_log_type_enabled(qword_1EAFE46E8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v35;
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "CLTSP,MI,%{public}.1lf,unable to compute snap on constructed route", buf, 0xCu);
    }

    v43 = sub_19B87DD40();
    if ((*(v43 + 160) & 0x80000000) == 0 || (*(v43 + 164) & 0x80000000) == 0 || (*(v43 + 168) & 0x80000000) == 0 || *(v43 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46B8 != -1)
      {
        dispatch_once(&qword_1EAFE46B8, &unk_1F0E6E9F0);
      }

      v49 = 134349056;
      v50 = v35;
      v44 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLTripSegmentMapIntegratorSparse::interpolateLocationsAlongSegmentVehicular(CLAStarRouteConstructor &, std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const std::vector<CLGeoMapSnapDataPtr> &, const CLGeoMapLocationArray &, BOOL)", "CoreLocation: %s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }

  *buf = v51;
  sub_19B8F0E84(buf);
LABEL_38:
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void sub_19B9F1B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a17;
  sub_19B8F0E84(&a25);
  _Unwind_Resume(a1);
}

os_log_t sub_19B9F1BE4()
{
  result = os_log_create("com.apple.locationd.Position", "TripSegmentProcessor");
  qword_1EAFE46E8 = result;
  return result;
}

void sub_19B9F1C14(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 4;
  v7 = 3;
  if (a3 == 1)
  {
    v7 = 14;
  }

  if (v6 > v7 && (a3 != 1 || (3 * v6) < a4))
  {
    v11 = a2[1];
    if (*a2 == v11)
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v13 = *(v11 - 16);
      v12 = *(v11 - 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = -1.0;
      if (v13)
      {
        v15 = *v13;
        if (*v13)
        {
          if (*(*&v15 + 20) < 3u || (*(*&v15 + 24) - 1) <= 1)
          {
            v14 = v13[2];
          }
        }
      }

      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v4 = *a1;
      v5 = *(a1 + 8);
      if (v14 > 0.0 && v4 != v5)
      {
        v16 = 60.0;
        v17 = *a1;
        do
        {
          v18 = *v17;
          if (*v17)
          {
            v16 = v16 + 1.0;
            if (sub_19B9E2ED8(*(*v18 + 20)) == 2 && vabdd_f64(v14, v18[2]) < v16 && v18[13] > 18.0)
            {
              goto LABEL_37;
            }
          }

          v17 += 2;
        }

        while (v17 != v5);
      }
    }

    if (v4 == v5)
    {
      v22 = 0;
      v21 = 0;
    }

    else
    {
      do
      {
        v19 = *v4;
        if (*v4)
        {
          v20 = 0.0;
          if (a3 != 1 || (v20 = 3.0, !*v19) || (*(*v19 + 24) & 0xFFFFFFFE) != 6)
          {
            if (v19[13] >= v20)
            {
              sub_19B8EAB68(&v23, v4);
            }
          }
        }

        ++v4;
      }

      while (v4 != v5);
      v21 = v23;
      v22 = v24;
    }

    sub_19B9F2604(a2, a2[1], v21, v22, (v22 - v21) >> 4);
LABEL_37:
    v26 = &v23;
    sub_19B8F0E84(&v26);
  }
}

void sub_19B9F1E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_19B8F0E84(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B9F1E2C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_19B8F0FC8(a3);
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

os_log_t sub_19B9F1E98()
{
  result = os_log_create("com.apple.locationd.Position", "MapMatcher");
  off_1EAFE4708 = result;
  return result;
}

void sub_19B9F1EC8(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 4)
  {
    if (v8)
    {
      sub_19B8EBC04(a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_19B8F0CFC(a1, v10);
    }

    sub_19B8B8A40();
  }

  v11 = a1[1] - v8;
  if (a4 <= v11 >> 4)
  {
    sub_19B8F3078(a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_19B8750F8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    v12 = sub_19B8F3078(a2, (a2 + v11), v8);
    a1[1] = sub_19B9A2DE4(a1, v12, a3, a1[1]);
  }
}

void sub_19B9F2000(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  if (sub_19B95D1AC(a1, a2))
  {
    *buf = a2;
    v6 = sub_19B95D310(a1 + 64, a2);
    v8 = *(v6 + 56);
    v7 = *(v6 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v8)
      {
        *a3 = v8 + 48;
        a3[1] = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_19B8750F8(v7);
        goto LABEL_25;
      }

      sub_19B8750F8(v7);
    }

    else if (v8)
    {
      *a3 = v8 + 48;
      a3[1] = 0;
      goto LABEL_25;
    }
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
  }

  v9 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = *(a1 + 80);
    *buf = 136446466;
    *&buf[4] = v10;
    v18 = 1026;
    v19 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLTSP,sharedData,tripID not present in CLTripSegmentSharedData array while accessing getAnalyticsInstance,%{public}s,arraySize,%{public}d", buf, 0x12u);
  }

  v12 = sub_19B87DD40();
  if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EA10);
    }

    if (*(a2 + 23) < 0)
    {
      v13 = *a2;
    }

    v16 = *(a1 + 80);
    v14 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "std::shared_ptr<CLTripSegmentAnalytics> CLTripSegmentSharedData::getAnalyticsInstance(const std::string &)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  *a3 = 0;
  a3[1] = 0;
LABEL_25:
  std::mutex::unlock(a1);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_19B9F22AC(unint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B9F250C(a1, a2, a1[1], &a2[2 * a5]);

        sub_19B9F2594(v6, &v6[2 * a5], a2);
      }

      else
      {
        v18 = (a3 + v16);
        v38 = a1[1];
        v39 = v10;
        v33 = a1;
        v34 = &v38;
        v19 = v10;
        v35 = &v39;
        if ((a3 + v16) != a4)
        {
          v19 = v10;
          v20 = v10;
          v21 = (a3 + v16);
          do
          {
            *v20 = *v21;
            v22 = v21[1];
            v20[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            }

            v21 += 2;
            v20 += 2;
            v19 += 16;
          }

          while (v21 != a4);
          v39 = v20;
        }

        LOBYTE(v36) = 1;
        sub_19B9A3138(&v33);
        a1[1] = v19;
        if (v17 >= 1)
        {
          sub_19B9F250C(a1, a2, v10, &a2[2 * a5]);
          sub_19B9F2594(v6, v18, a2);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + ((v10 - *a1) >> 4);
      if (v12 >> 60)
      {
        sub_19B8B8A40();
      }

      v13 = a2 - v11;
      v14 = v9 - v11;
      if (v14 >> 3 > v12)
      {
        v12 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      v37 = a1;
      if (v15)
      {
        sub_19B8F0D38(a1, v15);
      }

      v23 = 16 * (v13 >> 4);
      v36 = 0;
      v24 = (v23 + 16 * a5);
      v25 = v23;
      do
      {
        *v25 = *v6;
        v26 = v6[1];
        *(v25 + 1) = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        v25 += 16;
        v6 += 2;
      }

      while (v25 != v24);
      memcpy(v24, a2, a1[1] - a2);
      v27 = *a1;
      v28 = &v24[a1[1] - a2];
      a1[1] = a2;
      v29 = a2 - v27;
      v30 = (v23 - (a2 - v27));
      memcpy(v30, v27, v29);
      v31 = *a1;
      *a1 = v30;
      a1[1] = v28;
      v32 = a1[2];
      a1[2] = v36;
      v35 = v31;
      v36 = v32;
      v33 = v31;
      v34 = v31;
      sub_19B8F10D0(&v33);
    }
  }
}

void sub_19B9F250C(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = &v5[v9];
      v11 = *&v5[v9];
      *v10 = 0;
      *(v10 + 1) = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        sub_19B8750F8(v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void sub_19B9F2594(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_19B8750F8(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

uint64_t *sub_19B9F2604(uint64_t *result, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_19B9F250C(result, a2, result[1], &a2[2 * a5]);
        v18 = &v6[2 * a5];
      }

      else
      {
        result = sub_19B9A30B0(result, (a3 + v16), a4, result[1]);
        v8[1] = result;
        if (v17 < 1)
        {
          return result;
        }

        sub_19B9F250C(v8, a2, v10, &a2[2 * a5]);
        v18 = (v6 + v16);
      }

      return sub_19B8F1C0C(v29, v6, v18, a2);
    }

    v11 = *result;
    v12 = a5 + ((v10 - *result) >> 4);
    if (v12 >> 60)
    {
      sub_19B8B8A40();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v31 = result;
    if (v15)
    {
      sub_19B8F0D38(result, v15);
    }

    v19 = 16 * (v13 >> 4);
    v30 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v6;
      v22 = v6[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v6 += 2;
    }

    while (v21 != v20);
    memcpy(v20, a2, result[1] - a2);
    v23 = *v8;
    v24 = &v20[v8[1] - a2];
    v8[1] = a2;
    v25 = a2 - v23;
    v26 = (v19 - (a2 - v23));
    memcpy(v26, v23, v25);
    v27 = *v8;
    *v8 = v26;
    v8[1] = v24;
    v28 = v8[2];
    v8[2] = v30;
    v29[2] = v27;
    v30 = v28;
    v29[0] = v27;
    v29[1] = v27;
    return sub_19B8F10D0(v29);
  }

  return result;
}

void sub_19B9F3234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_19B9F3290(uint64_t a1, uint64_t *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [Weak handleMessage:&v5];
  if (v6)
  {
    sub_19B8750F8(v6);
  }
}

void sub_19B9F32EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9F3304(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak handleInterruption];
}

void sub_19B9F46A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F4994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F4C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F5390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9F56C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B9F5758()
{
  result = os_log_create("com.apple.locationd.Position", "Proximity");
  qword_1EAFE4700 = result;
  return result;
}

void sub_19B9F5A50(uint64_t a1, float64x2_t *a2, int a3)
{
  if (!a3 || (v3 = *(a1 + 144), *(a1 + 136) == v3) || (v4 = vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v3 - 16), *a2)))), (vorr_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) != 0))
  {
    sub_19B8F1158(a1 + 136, a2);
  }
}

uint64_t sub_19B9F5AA8(void *a1)
{
  v1 = (a1 + 20);
  if (a1[20] == a1[21])
  {
    a1[5] = 0;
    v4 = a1[17];
    v5 = a1[18];
    if (v4 == v5)
    {
      return 0;
    }

    ++qword_1EAFE5B20;
    v11 = 0;
    v12 = 0;
    v10 = xmmword_19BA89490;
    v13 = 0x3FF0000000000000;
    sub_19B9CA9C0(a1 + 20, ((v5 - v4) >> 4) - 1);
    v6 = a1[17];
    if ((a1[18] - v6) >= 0x11)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = sub_19BA0C01C(&v10, *(v6 + v7), *(v6 + v7 + 8), *(v6 + v7 + 16), *(v6 + v7 + 24), 0.0);
        sub_19B8F518C(v1, &v9);
        *(a1 + 5) = v9 + *(a1 + 5);
        ++v8;
        v6 = a1[17];
        v7 += 16;
      }

      while (v8 < (a1[18] - v6) >> 4);
    }
  }

  return 1;
}

uint64_t sub_19B9F5BAC(void *a1)
{
  v1 = (a1 + 23);
  if (a1[23] == a1[24])
  {
    v4 = a1[17];
    v5 = a1[18];
    if (v4 == v5)
    {
      return 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = xmmword_19BA89490;
    v13 = 0x3FF0000000000000;
    sub_19B9CA9C0(a1 + 23, ((v5 - v4) >> 4) - 1);
    ++qword_1EAFE5B28;
    v6 = a1[17];
    if ((a1[18] - v6) >= 0x11)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = sub_19BA0C44C(&v10, *(v6 + v7), *(v6 + v7 + 8), *(v6 + v7 + 16), *(v6 + v7 + 24));
        sub_19B8F518C(v1, &v9);
        ++v8;
        v6 = a1[17];
        v7 += 16;
      }

      while (v8 < (a1[18] - v6) >> 4);
    }
  }

  return 1;
}

double sub_19B9F5C98(void *a1, signed int a2)
{
  sub_19B9F5BAC(a1);
  v4 = a1[23];
  if (a2 < ((a1[24] - v4) >> 3))
  {
    return *(v4 + 8 * a2);
  }

  result = -1.0;
  if (((a1[18] - a1[17]) >> 4) - 1 > a2)
  {

    return sub_19B9F5D20(a1, a2, a2 + 1);
  }

  return result;
}

double sub_19B9F5D20(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = -1.0;
  if ((a2 & 0x80000000) == 0)
  {
    v6 = *(a1 + 136);
    v7 = (*(a1 + 144) - v6) >> 4;
    if (v7 > a2 && (a3 & 0x80000000) == 0 && v6 && v7 > a3)
    {
      v12 = v3;
      v13 = v4;
      v9 = 0;
      v10 = 0;
      v8 = xmmword_19BA89490;
      v11 = 0x3FF0000000000000;
      return sub_19BA0C44C(&v8, *(v6 + 16 * a2), *(v6 + 16 * a2 + 8), *(v6 + 16 * a3), *(v6 + 16 * a3 + 8));
    }
  }

  return result;
}

uint64_t sub_19B9F5D9C(void *a1)
{
  v1 = (a1[18] - a1[17]) >> 4;
  if (v1 < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = v1 - 1;
  v6 = -1.0;
  do
  {
    v7 = sub_19B9F5C98(a1, v4);
    if (v7 >= 0.0)
    {
      v8 = v7;
      if (v6 >= 0.0)
      {
        v9 = fmod(v7 - v6, 360.0);
        if (v9 < 0.0)
        {
          v9 = v9 + 360.0;
        }

        if (v9 > 180.0)
        {
          v9 = v9 + -360.0;
        }

        if (fabs(v9) <= 7.5)
        {
          v3 = v3;
        }

        else
        {
          v3 = (v3 + 1);
        }
      }
    }

    else
    {
      v8 = v6;
    }

    ++v4;
    v6 = v8;
  }

  while (v5 != v4);
  return v3;
}

BOOL sub_19B9F5E90(uint64_t a1, int a2, double a3, double a4)
{
  if (((*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0) == 0x20)
  {
    return 0;
  }

  sub_19B9F5AA8(a1);
  v9 = *(a1 + 160);
  v10 = *(a1 + 168) - v9;
  if (!v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = v10 >> 3;
  v13 = *(a1 + 40) * a3;
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v14 = -v12;
  while (1)
  {
    v13 = v13 - *v9;
    if (v13 <= 0.0)
    {
      break;
    }

    --v11;
    ++v9;
    if (v14 == v11)
    {
      return 0;
    }
  }

  if (!v11)
  {
    v23 = sub_19B9F5C98(a1, 0);
    v24 = sub_19B9F5C98(a1, 1);
    v17 = v24;
    if (v23 >= 0.0 && v24 >= 0.0)
    {
      v25 = fmod(v23 - v24, 360.0);
      if (v25 < 0.0)
      {
        v25 = v25 + 360.0;
      }

      if (v25 > 180.0)
      {
        v25 = v25 + -360.0;
      }

      if (fabs(v25) > a4)
      {
        return 1;
      }
    }

    if (a2)
    {
      v22 = a1;
      v21 = 2;
      goto LABEL_36;
    }

    return 0;
  }

  v15 = sub_19B9F5C98(a1, ~v11);
  v16 = sub_19B9F5C98(a1, -v11);
  v17 = v16;
  if (v15 >= 0.0 && v16 >= 0.0)
  {
    v18 = fmod(v15 - v16, 360.0);
    if (v18 < 0.0)
    {
      v18 = v18 + 360.0;
    }

    if (v18 > 180.0)
    {
      v18 = v18 + -360.0;
    }

    if (fabs(v18) > a4)
    {
      return 1;
    }
  }

  if (!a2)
  {
    return 0;
  }

  v19 = sub_19B9F5C98(a1, -2 - v11);
  if (v15 >= 0.0 && v19 >= 0.0)
  {
    v20 = fmod(v19 - v15, 360.0);
    if (v20 < 0.0)
    {
      v20 = v20 + 360.0;
    }

    if (v20 > 180.0)
    {
      v20 = v20 + -360.0;
    }

    if (fabs(v20) > a4)
    {
      return 1;
    }
  }

  v21 = 1 - v11;
  v22 = a1;
LABEL_36:
  v26 = sub_19B9F5C98(v22, v21);
  if (v17 < 0.0 || v26 < 0.0)
  {
    return 0;
  }

  v27 = fmod(v17 - v26, 360.0);
  if (v27 < 0.0)
  {
    v27 = v27 + 360.0;
  }

  if (v27 > 180.0)
  {
    v27 = v27 + -360.0;
  }

  return fabs(v27) > a4;
}

uint64_t sub_19B9F6128(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  result = sub_19B9F6214(a1, a2);
  if (result)
  {
    result = sub_19B9F6278(a1, a2);
    if (result)
    {
      v6 = *(a1 + 136);
      v7 = *(a1 + 144) - v6;
      v8 = v7 >> 4;
      v9 = *(v2 + 136);
      if ((v7 >> 4) == ((*(v2 + 144) - v9) >> 4))
      {
        if (v8 < 3)
        {
          return 1;
        }

        v10 = (v7 >> 4) & 0x7FFFFFFF;
        v11 = v9 + 1;
        v12 = (v8 - 1) - 1;
        v13 = v10 - 2;
        v14 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        result = 1;
        while (1)
        {
          if (v6)
          {
            if ((v13 & 0x8000000000000000) == 0)
            {
              v15 = vmovn_s64(vcgtq_f64(v14, vabdq_f64(*v11, *(v6 + 16 * v13))));
              if ((vand_s8(v15, vdup_lane_s32(v15, 1)).u8[0] & 1) == 0)
              {
                break;
              }
            }
          }

          ++v11;
          --v13;
          if (!--v12)
          {
            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_19B9F6214(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_19B9F6278(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_19B9F62DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 136);
    v4 = 0uLL;
    v5 = 0uLL;
    if (*(a1 + 144) != v3)
    {
      v5 = *v3;
    }

    v7 = v2 + 136;
    v6 = *(v2 + 136);
    if (*(v7 + 8) != v6)
    {
      v4 = *v6;
    }

    v8 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v8, vdup_lane_s32(v8, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_19B9F6340(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(a1 + 144);
    v4 = 0uLL;
    v5 = 0uLL;
    if (v3 != *(a1 + 136))
    {
      v5 = *(v3 - 16);
    }

    v6 = *(v2 + 144);
    if (v6 != *(v2 + 136))
    {
      v4 = *(v6 - 16);
    }

    v7 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v5, v4)));
    LOBYTE(v2) = vand_s8(v7, vdup_lane_s32(v7, 1)).u8[0];
  }

  return v2 & 1;
}

uint64_t sub_19B9F63A4(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F62DC(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6278(a1, a2);
}

uint64_t sub_19B9F6408(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F6340(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6214(a1, a2);
}

uint64_t sub_19B9F646C(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F62DC(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6214(a1, a2);
}

uint64_t sub_19B9F64D0(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F6340(a1, a2))
  {
    return 1;
  }

  return sub_19B9F6278(a1, a2);
}

uint64_t sub_19B9F6534(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (sub_19B9F646C(a1, a2))
  {
    return 1;
  }

  return sub_19B9F64D0(a1, a2);
}

uint64_t sub_19B9F6598(uint64_t a1)
{
  v2 = *(a1 + 136);
  v1 = *(a1 + 144);
  if ((v1 - v2) >= 0x11)
  {
    if (v1 - v2 != 32)
    {
      return 1;
    }

    v4 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v1 - 16), *v2)));
    if ((vand_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }
  }

  result = 0;
  ++qword_1EAFE5B60;
  return result;
}

BOOL sub_19B9F6608(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  if ([a3 valueForKey:@"roadID"])
  {
    *a1 = [objc_msgSend(a3 valueForKey:{@"roadID", "longLongValue"}];
  }

  if ([a3 valueForKey:@"roadClass"])
  {
    *(a1 + 20) = [objc_msgSend(a3 valueForKey:{@"roadClass", "intValue"}];
  }

  if ([a3 valueForKey:@"formOfWay"])
  {
    *(a1 + 24) = [objc_msgSend(a3 valueForKey:{@"formOfWay", "intValue"}];
  }

  if ([a3 valueForKey:@"travelDirection"])
  {
    *(a1 + 72) = [objc_msgSend(a3 valueForKey:{@"travelDirection", "intValue"}];
  }

  if ([a3 valueForKey:@"rampType"])
  {
    *(a1 + 76) = [objc_msgSend(a3 valueForKey:{@"rampType", "intValue"}];
  }

  if ([a3 valueForKey:@"speedLimit"])
  {
    *(a1 + 32) = [objc_msgSend(a3 valueForKey:{@"speedLimit", "intValue"}];
  }

  if ([a3 valueForKey:@"isDrivable"])
  {
    *(a1 + 81) = [objc_msgSend(a3 valueForKey:{@"isDrivable", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"isRoadPedestrianNavigable"])
  {
    v26 = [objc_msgSend(a3 valueForKey:{@"isRoadPedestrianNavigable", "BOOLValue"}];
  }

  else
  {
    v26 = 0;
  }

  if ([a3 valueForKey:@"isTunnel"])
  {
    *(a1 + 18) = [objc_msgSend(a3 valueForKey:{@"isTunnel", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"isBridge"])
  {
    *(a1 + 19) = [objc_msgSend(a3 valueForKey:{@"isBridge", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"isRail"])
  {
    *(a1 + 17) = [objc_msgSend(a3 valueForKey:{@"isRail", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"startJunction"])
  {
    *(a1 + 108) = [objc_msgSend(a3 valueForKey:{@"startJunction", "intValue"}];
  }

  if ([a3 valueForKey:@"stopJunction"])
  {
    *(a1 + 112) = [objc_msgSend(a3 valueForKey:{@"stopJunction", "intValue"}];
  }

  if ([a3 valueForKey:@"startTileBorder"])
  {
    *(a1 + 116) = [objc_msgSend(a3 valueForKey:{@"startTileBorder", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"endTileBorder"])
  {
    *(a1 + 117) = [objc_msgSend(a3 valueForKey:{@"endTileBorder", "BOOLValue"}];
  }

  if ([a3 valueForKey:@"bikeableSide"])
  {
    *(a1 + 88) = [objc_msgSend(a3 valueForKey:{@"bikeableSide", "intValue"}];
  }

  if ([a3 valueForKey:@"walkableSide"])
  {
    *(a1 + 84) = [objc_msgSend(a3 valueForKey:{@"walkableSide", "intValue"}];
  }

  if ([a3 valueForKey:@"coordinateCount"] && (v7 = objc_msgSend(objc_msgSend(a3, "valueForKey:", @"coordinateCount"), "intValue"), v7 >= 1))
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = [objc_msgSend(a3 valueForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"coord%i", v9)), "componentsSeparatedByString:", @", "}];
      if ([v11 count] != 3)
      {
        break;
      }

      [objc_msgSend(v11 objectAtIndexedSubscript:{0), "doubleValue"}];
      v13 = v12;
      [objc_msgSend(v11 objectAtIndexedSubscript:{1), "doubleValue"}];
      v28.f64[0] = v13;
      v28.f64[1] = v14;
      sub_19B9F5A50(a1, &v28, 1);
      v15 = (*(a1 + 144) - *(a1 + 136)) & 0xFFFFFFFF0;
      [objc_msgSend(v11 objectAtIndexedSubscript:{2), "doubleValue"}];
      if (v15 == 16)
      {
        v17 = 120;
      }

      else
      {
        v17 = 128;
      }

      *(a1 + v17) = v16;
      objc_autoreleasePoolPop(v10);
      v9 = (v9 + 1);
      if (v8 == v9)
      {
        goto LABEL_46;
      }
    }

    objc_autoreleasePoolPop(v10);
    return 0;
  }

  else
  {
LABEL_46:
    v18 = *(a1 + 17);
    if ((*(a1 + 84) - 1) < 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = v26;
    }

    *(a1 + 80) = v19 & (v18 ^ 1);
    if (v19 & (v18 ^ 1))
    {
      v20 = 1;
    }

    else
    {
      v20 = ((*(a1 + 88) - 1) < 3) & (v18 ^ 1);
    }

    *(a1 + 82) = v20;
    *(a1 + 96) = sub_19B988DA8(*(a1 + 20), *(a1 + 72) != 0);
    v21 = (*(a1 + 17) & 1) == 0 && *(a1 + 72) != 0;
    v24 = *(a1 + 136);
    v23 = a1 + 136;
    v22 = v24;
    *(v23 - 120) = v21;
    v25 = *(v23 + 8) - v24;
    if (a4)
    {
      return (v25 >> 4) > 1;
    }

    else
    {
      result = 1;
      if (v22)
      {
        if ((v25 & 0xFFFFFFFF0) == 0x10)
        {
          v28 = *v22;
          sub_19B8F1158(v23, &v28);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19B9F6B4C(uint64_t a1, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (a3)
  {
    if ([a2 coordinateCount] < 2)
    {
      return 0;
    }
  }

  if ([a2 internalRoadName])
  {
    v7 = [objc_msgSend(a2 "internalRoadName")];
    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_19B890AD4();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v8)
    {
      memmove(&__dst, v7, v8);
    }

    __dst.__r_.__value_.__s.__data_[v9] = 0;
    std::string::operator=((a1 + 48), &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v10 = [a2 roadID];
  v11 = sub_19B964678(a2);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 17) = [a2 isRail];
  *(a1 + 18) = [a2 isTunnel];
  *(a1 + 19) = [a2 isBridge];
  *(a1 + 20) = [a2 roadClass];
  *(a1 + 24) = [a2 formOfWay];
  v12 = [a2 travelDirection];
  *(a1 + 72) = v12;
  *(a1 + 16) = (v12 != 0) & ~*(a1 + 17);
  *(a1 + 76) = [a2 rampType];
  v13 = [a2 isRoadPedestrianNavigable];
  v14 = [a2 walkableSide];
  v15 = [a2 isRail];
  if ((v14 - 1) < 3)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  *(a1 + 80) = v16 & (v15 ^ 1);
  *(a1 + 81) = [a2 isDrivable];
  v17 = [a2 isRoadPedestrianNavigable];
  v18 = [a2 walkableSide];
  v19 = [a2 isRail];
  if ((((v18 - 1) > 2) & ~v17) != 0 || v19)
  {
    v21 = [a2 bikeableSide];
    v20 = [a2 isRail] ^ 1;
    if ((v21 - 1) >= 3)
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  *(a1 + 82) = v20;
  *(a1 + 84) = [a2 walkableSide];
  *(a1 + 108) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 112) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 116) = [objc_msgSend(a2 "startJunction")];
  *(a1 + 117) = [objc_msgSend(a2 "endJunction")];
  *(a1 + 96) = sub_19B988DA8([a2 roadClass], objc_msgSend(a2, "travelDirection") != 0);
  if ([a2 speedLimitIsMPH])
  {
    v22 = 0.44704;
  }

  else
  {
    v22 = 0.277778;
  }

  *(a1 + 32) = v22 * [a2 speedLimit];
  *(a1 + 104) = [a2 laneCount];
  *(a1 + 88) = [a2 bikeableSide];
  if ([a2 coordinateCount])
  {
    v23 = 0;
    v24 = 0;
    do
    {
      sub_19B9F5A50(a1, ([a2 coordinates] + v23), 1);
      ++v24;
      v23 += 16;
    }

    while ([a2 coordinateCount] > v24);
  }

  if ((v3 & 1) == 0 && [a2 coordinateCount] == 1)
  {
    sub_19B8F1158(a1 + 136, [a2 coordinates]);
  }

  if ([a2 coordinateCount])
  {
    *(a1 + 120) = *([a2 coordinates3d] + 16);
    v25 = [a2 coordinates3d];
    *(a1 + 128) = *(v25 + 24 * [a2 coordinateCount] - 8);
  }

  return 1;
}

void sub_19B9F6F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9F6F2C(void *a1)
{
  v2 = [a1 objectForKey:@"Authorization"];
  if (v2)
  {
    v3 = [v2 integerValue];
    if (v3 < 5)
    {
      return qword_19BA8D310[v3];
    }

    return 0;
  }

  v5 = [a1 objectForKey:@"Authorized"];
  if (!v5)
  {
    v6 = sub_19B9F7A74(a1, 1) - 3;
    if (v6 < 6)
    {
      return qword_19BA8D338[v6];
    }

    return 0;
  }

  if ([v5 BOOLValue])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_19B9F6FCC(void *a1, double a2)
{
  v4 = 0;
  v5 = 0;
  v6 = off_1E753EA18;
  do
  {
    v7 = dbl_19BA8D298[v4];
    v8 = *v6;
    v9 = [a1 objectForKey:*(v6 - 1)];
    v10 = [a1 objectForKey:v8];
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      [v9 doubleValue];
      v14 = v13;
      [v11 doubleValue];
      if (v14 <= v15)
      {
        v16 = 1;
        goto LABEL_15;
      }

      v11 = 0;
    }

    v16 = v11 != 0;
    if (v9)
    {
      v17 = v11 == 0;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
LABEL_20:
      v5 = dword_19BA8D2E8[v4] | v5;
      goto LABEL_21;
    }

LABEL_15:
    v18 = a2 - v7;
    if (v18 > 0.0 && v16)
    {
      [objc_msgSend(MEMORY[0x1E695DF00] "date")];
      v21 = v20;
      [v11 doubleValue];
      if (vabdd_f64(v22, v21) < v18)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    ++v4;
    v6 += 2;
  }

  while (v4 != 10);
  return v5;
}

id sub_19B9F7100(id a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = [a1 allKeys];
  v3 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v3)
  {
    goto LABEL_31;
  }

  v5 = v3;
  v6 = 0;
  v7 = *v25;
  *&v4 = 68289282;
  v22 = v4;
  do
  {
    v8 = 0;
    do
    {
      if (*v25 != v7)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v24 + 1) + 8 * v8);
      [a1 objectForKeyedSubscript:{v9, v22}];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v11 = [a1 objectForKeyedSubscript:v9];
      if (isKindOfClass)
      {
        v12 = [v11 objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v23 setObject:v12 forKeyedSubscript:v9];
        }

        else
        {
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
          }

          v13 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
          {
            *buf = v22;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2114;
            v33 = v12;
            _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519078 != -1)
            {
              dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
            }
          }

          v14 = qword_1ED519080;
          if (os_signpost_enabled(qword_1ED519080))
          {
            *buf = v22;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2114;
            v33 = v12;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found NSArray value where index 1 is not a timestamp, arr[1]:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        v6 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v23 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", v9), v9}];
        }

        else
        {
          if (qword_1ED519078 != -1)
          {
            dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
          }

          v15 = qword_1ED519080;
          if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
          {
            v16 = [a1 objectForKeyedSubscript:v9];
            *buf = v22;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2114;
            v33 = v16;
            _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519078 != -1)
            {
              dispatch_once(&qword_1ED519078, &unk_1F0E6EA70);
            }
          }

          v17 = qword_1ED519080;
          if (os_signpost_enabled(qword_1ED519080))
          {
            v18 = [a1 objectForKeyedSubscript:v9];
            *buf = v22;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2114;
            v33 = v18;
            _os_signpost_emit_with_name_impl(&dword_19B873000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp", "{msg%{public}.0s:Invalid RemoteUsageDictionary. Found non-NSArray value which is not a timestamp, value:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      ++v8;
    }

    while (v5 != v8);
    v19 = [v2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    v5 = v19;
  }

  while (v19);
  if (v6)
  {
    a1 = v23;
  }

  else
  {
LABEL_31:
  }

  v20 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B9F756C(void *a1, int a2)
{
  v4 = sub_19B9F6F2C(a1);
  v5 = 60.0;
  if (a2 != 2)
  {
    v5 = 0.0;
  }

  if (a2 == 1)
  {
    v5 = 10.0;
  }

  if ((v4 & 6) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = -1.0;
  }

  v7 = sub_19B9F6FCC(a1, v6);
  v8 = sub_19B9F7100([a1 objectForKeyedSubscript:0x1F0E73D40]);
  if (v8)
  {
    LODWORD(v8) = sub_19B9F6FCC(v8, v6);
  }

  if (((v8 | v7) & 0x240) != 0)
  {
    return 2;
  }

  if (!(v8 | v7))
  {
    return 0;
  }

  v10 = [a1 objectForKeyedSubscript:0x1F0E73840];
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && [v10 intValue] != 0;
  v12 = [a1 objectForKeyedSubscript:0x1F0E73D20];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 BOOLValue] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  return (v11 | v13) & 1;
}

BOOL sub_19B9F76B4(void *a1)
{
  v2 = sub_19B9F7100([a1 objectForKeyedSubscript:0x1F0E73D40]);
  if ([a1 objectForKey:@"FenceTimeStarted"] || objc_msgSend(v2, "objectForKeyedSubscript:", @"FenceTimeStarted"))
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 11)
    {
      break;
    }

    v6 = off_1E753E9B0[v4 + 1];
    if ([a1 objectForKey:v6])
    {
      break;
    }

    v7 = [v2 objectForKeyedSubscript:v6];
    v4 = v5 + 1;
  }

  while (!v7);
  return v5 < 0xB;
}

uint64_t sub_19B9F7774(void *a1)
{
  v1 = [a1 objectForKey:@"SupportedAuthorizationMask"];
  if (v1)
  {
    return [v1 integerValue] & 7;
  }

  else
  {
    return 5;
  }
}

void *sub_19B9F77D4(void *a1)
{
  result = [a1 objectForKey:@"IncidentalUseMode"];
  if (result)
  {
    result = [result integerValue];
    if (result >= 4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_19B9F7810(void *a1)
{
  result = [a1 objectForKey:@"Relevant"];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

uint64_t sub_19B9F784C(void *a1)
{
  v1 = [a1 objectForKey:@"BackgroundIndicatorEnabled"];
  if (!v1)
  {
    return 1;
  }

  return [v1 BOOLValue];
}

uint64_t sub_19B9F788C(void *a1)
{
  v2 = sub_19B9F7904(a1);
  v3 = sub_19B9F7100([a1 objectForKeyedSubscript:0x1F0E73D40]);
  if (!v3)
  {
    v4 = 0;
    if (v2)
    {
      goto LABEL_3;
    }

    return v4;
  }

  v4 = sub_19B9F7904(v3);
  if (!v2)
  {
    return v4;
  }

LABEL_3:

  return MEMORY[0x1EEE66B58](v2, sel_laterDate_);
}

uint64_t sub_19B9F7904(void *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 2.22507386e-308;
  while (2)
  {
    v5 = &off_1E753EA10[v2 + 1];
    v6 = v2;
    while ((v6 | 8) == 0xA)
    {
LABEL_11:
      v5 += 2;
      v11 = v6 > 0x11;
      v6 += 2;
      if (v11)
      {
        if ((v3 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    v7 = [a1 objectForKey:*(v5 - 1)];
    v8 = [a1 objectForKey:*v5];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (v7)
      {
        break;
      }

      if (v8)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    [v7 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    if (v13 <= v14)
    {
LABEL_15:
      [v9 doubleValue];
      if (v15 > v4)
      {
        v4 = v15;
      }

      v2 = v6 + 2;
      v3 = 1;
      if (v6 > 0x11)
      {
LABEL_20:
        v16 = MEMORY[0x1E695DF00];

        return [v16 dateWithTimeIntervalSinceReferenceDate:v4];
      }

      continue;
    }

    break;
  }

  v18 = MEMORY[0x1E695DF00];

  return [v18 date];
}

uint64_t sub_19B9F7A74(void *a1, int a2)
{
  v4 = [a1 objectForKey:@"BundleId"];
  v5 = [a1 objectForKey:@"BundlePath"];
  if (v4)
  {
    if (!a2)
    {
      return 1;
    }

    if ([a1 objectForKey:@"Registered"])
    {
      return 1;
    }

    if ([a1 objectForKey:@"Authorized"])
    {
      return 1;
    }

    result = [a1 objectForKey:@"Authorization"];
    if (result)
    {
      return 1;
    }
  }

  else
  {
    v7 = v5;
    if (v5)
    {
      if (sub_19B8B866C(v5))
      {
        return 4;
      }

      else if (sub_19B8B86FC(v7))
      {
        return 5;
      }

      else if (sub_19B8B8754(v7))
      {
        return 7;
      }

      else if (sub_19B8B8414(v7))
      {
        return 8;
      }

      else if (sub_19B8B83AC(v7))
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

os_log_t sub_19B9F7B80()
{
  result = os_log_create("com.apple.locationd.Core", "Core");
  qword_1ED519080 = result;
  return result;
}

BOOL sub_19B9F7DBC(uint64_t a1, const __CFString *a2)
{
  v4 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v5 = sub_19B9F7EA8(*a1, a2, @"CLSystemService");
  v6 = v5;
  if (v5)
  {
    v7 = CFBooleanGetValue(v5) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_19B9F7E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void *sub_19B9F7EA8(CFMutableDictionaryRef theDict, const __CFString *key, const __CFString *a3)
{
  value = 0;
  if (!key)
  {
    goto LABEL_10;
  }

  if (CFDictionaryGetValueIfPresent(theDict, key, &value))
  {
    if (value)
    {
      CFRetain(value);
      goto LABEL_7;
    }

LABEL_10:
    v7 = *MEMORY[0x1E695E4C0];
    CFDictionarySetValue(theDict, key, *MEMORY[0x1E695E4C0]);
    return v7;
  }

  v6 = sub_19B8B8308(key, a3);
  value = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  CFDictionarySetValue(theDict, key, v6);
LABEL_7:
  v7 = value;
  if (!value)
  {
    goto LABEL_10;
  }

  v8 = CFGetTypeID(value);
  if (v8 != CFBooleanGetTypeID())
  {
    CFRelease(v7);
    goto LABEL_10;
  }

  return v7;
}

BOOL sub_19B9F7F78(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 32), a2, @"CLIsFindMyiPhone");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F804C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B9F8060(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 24), a2, @"CLIsCoreRoutine");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F8134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

BOOL sub_19B9F8148(uint64_t a1, const __CFString *a2)
{
  v3 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  v4 = sub_19B9F7EA8(*(v3 - 8), a2, @"CLEmergencyService");
  v5 = v4;
  if (v4)
  {
    v6 = CFBooleanGetValue(v4) != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(*v3 + 24))(v3);
  return v6;
}

void sub_19B9F821C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B888D7C(va);
  _Unwind_Resume(a1);
}

void sub_19B9FBE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B8750F8(a10);
  }

  if (v10)
  {
    sub_19B8750F8(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FBEA8(uint64_t a1, CLConnectionMessage **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received service event callback kCLConnectionMessageMiLoServiceEvent", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoServiceEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  result = [*(a1 + 32) _handleDaemonEvent:{CLConnectionMessage::getDictionaryOfClasses(*a2, v12)}];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9FC294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a11)
  {
    sub_19B8750F8(a11);
  }

  if (v20)
  {
    sub_19B8750F8(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FC434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FC458(uint64_t a1, CLConnectionMessage **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoPredictionEventUpdate", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _setHandlerForMiLoPredictionEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  result = [*(a1 + 32) _handlePredictionUpdateEvent:{CLConnectionMessage::getDictionaryOfClasses(*a2, v7)}];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9FC75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FC8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FC900(uint64_t a1, CLConnectionMessage **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoServiceDebugResponse", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoDebugResponseEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  result = [*(a1 + 32) _handleDebugResponseEvent:{CLConnectionMessage::getDictionaryOfClasses(*a2, v7)}];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9FCC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FCD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FCDA8(uint64_t a1, CLConnectionMessage **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoGenericEventResponse", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoGenericEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  result = [*(a1 + 32) _handleGenericEvent:{CLConnectionMessage::getDictionaryOfClasses(*a2, v7)}];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9FD0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B9FD308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FD32C(uint64_t a1, CLConnectionMessage **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received callback for kCLConnectionMessageMiLoConnectionStatusEvent", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _registerForMiLoConnectionStatusEvents]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  result = [*(a1 + 32) _handleMiLoConnectionStatusEvent:{CLConnectionMessage::getDictionaryOfClasses(*a2, v7)}];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B9FD630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B9FD6E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didUpdateMiLoConnectionStatus_);
}

uint64_t sub_19B9FD788(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didUpdateServiceStatus_);
}

uint64_t sub_19B9FD828(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didCreateServiceWithServiceIdentifier_);
}

uint64_t sub_19B9FD8C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_createServiceDidFailWithError_);
}

uint64_t sub_19B9FD978(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 40);
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_deleteServiceDidFailForServiceWithIdentifier_withError_);
}

uint64_t sub_19B9FDA20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didDeleteServiceWithServiceIdentifier_);
}

uint64_t sub_19B9FDAC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didFindMyServicesWithServiceDescriptors_);
}

uint64_t sub_19B9FDB70(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 40);
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_connectServiceDidFailWithServiceIdentifier_withError_);
}

uint64_t sub_19B9FDC18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didUpdatePrediction_);
}

uint64_t sub_19B9FDCB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_queryServiceDidFailWithError_);
}

uint64_t sub_19B9FDD68(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 40);
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_disconnectServiceDidFailWithServiceIdentifier_withError_);
}

uint64_t sub_19B9FDE20(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 40);
  v4 = a1[6];
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didCompleteClientRequest_withError_);
}

uint64_t sub_19B9FDEC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  [objc_msgSend(*(a1 + 40) "exportDatabaseTablesResult")];
  [objc_msgSend(*(a1 + 40) "exportDatabaseTablesResult")];
  [objc_msgSend(*(a1 + 40) "exportDatabaseTablesResult")];

  return MEMORY[0x1EEE66B58](v3, sel_miLoConnection_didExportMiLoDatabaseWithExportDir_withFileName_withSandboxExtensionToken_);
}

uint64_t sub_19B9FDFE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  [*(a1 + 40) eventType];
  [*(a1 + 40) genericEventDescription];
  [*(a1 + 40) error];

  return MEMORY[0x1EEE66B58](v3, sel_miLoConnection_didGetGenericEventNotificationWithEventType_withDescription_withError_);
}

uint64_t sub_19B9FE0EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_queryMiLoConnectionStatusDidFailWithError_);
}

uint64_t sub_19B9FE18C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 40);
  return MEMORY[0x1EEE66B58](*(v2 + 32), sel_miLoConnection_didCompleteObservationWithMetaInformation_);
}

__CFString *sub_19BA007C0(unint64_t a1)
{
  if (a1 > 0x24)
  {
    return @"No error";
  }

  else
  {
    return off_1E753EB78[a1];
  }
}

void sub_19BA01D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_19B8750F8(a15);
  }

  if (v15)
  {
    sub_19B8750F8(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA01DA0(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for creating a service}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to create a service, empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to create a service, empty response", "{msg%{public}.0s:SPI request, failed to create a service, empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientCreateServiceDidFailWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA0236C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_19B8750F8(a17);
  }

  if (v17)
  {
    sub_19B8750F8(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA02398(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for deleting a service}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to delete a service with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to delete a service with empty response", "{msg%{public}.0s:SPI request, failed to delete a service with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDeleteServiceDidFailWithServiceIdentifier:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA02980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  sub_19B8750F8(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA029D4(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received response message for query my services}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v8 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to query my services with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v9 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to query my services with empty response", "{msg%{public}.0s:SPI request, failed to query my services with empty response}", buf, 0x12u);
    }

    v11 = *MEMORY[0x1E696A578];
    v12 = @"Internal error";
    result = [*(a1 + 32) _notifyClientQueryServiceDidFailWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1))}];
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA03070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_19B8750F8(a18);
  }

  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA0309C(uint64_t a1, CLConnectionMessage **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "received response message for query MiLo connection status", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0)
  {
    result = [*(a1 + 32) _handleDaemonEvent:DictionaryOfClasses];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v10 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "SPI request, failed to query MiLo connection status with empty response", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLMiLoConnectionInternal _queryMiLoConnectionStatus]_block_invoke", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    result = [*(a1 + 32) _notifyClientQueryMiLoConnectionStatusDidFailWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1))}];
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA03978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  v18 = *(v16 - 72);
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA039A4(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received response message for connect to a service}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    v7 = DictionaryOfClasses;
    if (([objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E73DA0), "isEqualToNumber:", &unk_1F0E8CD90}] & 1) == 0)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v8 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:connect to service failed, set connectedServiceIdentifier to nil}", buf, 0x12u);
      }

      *(*(a1 + 32) + 48) = 0;
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v9 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:connect to service failed, unset handler for prediction updates}", buf, 0x12u);
      }

      [*(a1 + 32) _unsetHandlerForMiLoPredictionEvents];
    }

    result = [*(a1 + 32) _handleDaemonEvent:v7];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to connect to services with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to connect to services with empty response", "{msg%{public}.0s:SPI request, failed to connect to services with empty response}", buf, 0x12u);
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    result = [*(a1 + 32) _notifyClientConnectServiceDidFailWithServiceIdentifier:*(a1 + 40) withError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1))}];
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA0445C(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
  }

  v4 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received response message for disconnecting to a service}", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5)) != 0)
  {
    v7 = DictionaryOfClasses;
    if (([objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{0x1F0E73DA0), "isEqualToNumber:", &unk_1F0E8CD90}] & 1) == 0)
    {
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v8 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service failed, recover connectedServiceIdentifier}", buf, 0x12u);
      }

      *(*(a1 + 32) + 48) = [*(a1 + 40) copy];
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }

      v9 = qword_1EAFE4730;
      if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
      {
        *buf = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:disconnect to service failed, set handler for prediction updates}", buf, 0x12u);
      }

      [*(a1 + 32) _setHandlerForMiLoPredictionEvents];
    }

    result = [*(a1 + 32) _handleDaemonEvent:v7];
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
    }

    v11 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SPI request, failed to disconnect service with empty response}", buf, 0x12u);
      if (qword_1EAFE4728 != -1)
      {
        dispatch_once(&qword_1EAFE4728, &unk_1F0E6EAB0);
      }
    }

    v12 = qword_1EAFE4730;
    if (os_signpost_enabled(qword_1EAFE4730))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SPI request, failed to disconnect service with empty response", "{msg%{public}.0s:SPI request, failed to disconnect service with empty response}", buf, 0x12u);
    }

    v14 = *MEMORY[0x1E696A578];
    v15 = @"Internal error";
    result = [*(a1 + 32) _notifyClientDisconnectServiceDidFailWithError:objc_msgSend(MEMORY[0x1E696ABC0] serviceIdentifier:{"errorWithDomain:code:userInfo:", @"kCLErrorDomainPrivate", 0, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)), *(a1 + 40)}];
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}