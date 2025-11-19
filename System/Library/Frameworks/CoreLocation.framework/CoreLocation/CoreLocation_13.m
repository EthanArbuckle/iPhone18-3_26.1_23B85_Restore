void sub_19BA1C430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA1C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v254 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    goto LABEL_103;
  }

  v4 = *(a2 + 384);
  if (*(a2 + 881) == 1)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous check,already ambiguous", buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if (*(v6 + 160) <= 1 && *(v6 + 164) <= 1 && *(v6 + 168) <= 1 && !*(v6 + 152))
    {
      goto LABEL_16;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v232 = 134349056;
    *&v232[4] = v4;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
LABEL_14:
    if (v7 != buf)
    {
      free(v7);
    }

LABEL_16:
    v8 = 1;
    goto LABEL_104;
  }

  v11 = *(a2 + 792) - 2;
  v12 = 10.0;
  if (v11 <= 4)
  {
    v12 = dbl_19BA8D4B0[v11];
  }

  v13 = *(a2 + 456) + *(a2 + 456);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13 >= 7.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 7.0;
  }

  v15 = fabs(*(a2 + 632));
  if (*(a2 + 882) == 1)
  {
    sub_19B9988CC((a1 + 2120), *(a2 + 608));
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 2144);
      v18 = *(a2 + 608);
      v19 = *(a1 + 2152);
      v20 = *(a1 + 2176);
      v21 = *(a1 + 2184);
      v22 = *(a1 + 2176);
      v23 = v21 - v22;
      if (v21 == v22)
      {
        v35 = 0.0;
        v28 = 0.0;
        v37 = 0.0;
      }

      else
      {
        v24 = 0.0;
        v25 = *(a1 + 2176);
        do
        {
          v26 = *v25++;
          v24 = v24 + v26;
        }

        while (v25 != v21);
        v27 = v23;
        v28 = v24 / v23;
        v29 = 60;
        if (v23 < 0x3C)
        {
          v29 = v23;
        }

        v30 = 0.0;
        v31 = *(a1 + 2176);
        do
        {
          v32 = *v31++;
          v30 = v30 + v32;
          --v29;
        }

        while (v29);
        v33 = 30;
        if (v23 < 0x1E)
        {
          v33 = v23;
        }

        v34 = 0.0;
        v35 = v30 / v27;
        do
        {
          v36 = *v22++;
          v34 = v34 + v36;
          --v33;
        }

        while (v33);
        v37 = v34 / v27;
      }

      v38 = *(a2 + 640);
      v39 = fabs(*(a2 + 616));
      v40 = *(a1 + 2088) != 0;
      v41 = *(a1 + 2080) != 0;
      *buf = 134352384;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v17;
      *&buf[18] = 2050;
      *&buf[20] = v18;
      *&buf[28] = 2050;
      *&buf[30] = v19;
      *&buf[38] = 2050;
      *&buf[40] = v28;
      *&buf[48] = 2050;
      *&buf[50] = v23;
      *&buf[58] = 2050;
      *&buf[60] = v35;
      *&buf[68] = 2050;
      *&buf[70] = v37;
      *&buf[78] = 1026;
      *&buf[80] = v38;
      v244 = 2050;
      v245 = v39;
      v246 = 2050;
      v247 = v15;
      v248 = 2050;
      v249 = v14;
      v250 = 1026;
      v251 = v40;
      v252 = 1026;
      v253 = v41;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,AverageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf,avfBuffer,%{public}.4lf,avfBufferCnt,%{public}zu,avfBuffer60,%{public}.4lf,avfBuffer30,%{public}.4lf,isUsable,%{public}d,deltaAz,%{public}.2lf,fabsAT,%{public}.2lf,threshold,%{public}.2lf,usingAPI,%{public}d,usingBuffer,%{public}d", buf, 0x7Eu);
    }

    v42 = sub_19B87DD40();
    if (*(v42 + 160) > 1 || *(v42 + 164) > 1 || *(v42 + 168) > 1 || *(v42 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v43 = *(a1 + 2144);
      v44 = *(a2 + 608);
      v45 = *(a1 + 2152);
      v46 = *(a1 + 2176);
      v47 = *(a1 + 2184);
      v48 = *(a1 + 2176);
      v49 = v47 - v48;
      if (v47 == v48)
      {
        v61 = 0.0;
        v54 = 0.0;
        v63 = 0.0;
      }

      else
      {
        v50 = 0.0;
        v51 = *(a1 + 2176);
        do
        {
          v52 = *v51++;
          v50 = v50 + v52;
        }

        while (v51 != v47);
        v53 = v49;
        v54 = v50 / v49;
        v55 = 60;
        if (v49 < 0x3C)
        {
          v55 = v49;
        }

        v56 = 0.0;
        v57 = *(a1 + 2176);
        do
        {
          v58 = *v57++;
          v56 = v56 + v58;
          --v55;
        }

        while (v55);
        v59 = 30;
        if (v49 < 0x1E)
        {
          v59 = v49;
        }

        v60 = 0.0;
        v61 = v56 / v53;
        do
        {
          v62 = *v48++;
          v60 = v60 + v62;
          --v59;
        }

        while (v59);
        v63 = v60 / v53;
      }

      v64 = *(a2 + 640);
      v65 = fabs(*(a2 + 616));
      v66 = *(a1 + 2088) != 0;
      v67 = *(a1 + 2080) != 0;
      *v232 = 134352384;
      *&v232[4] = v4;
      *&v232[12] = 1026;
      *&v232[14] = v43;
      *&v232[18] = 2050;
      *&v232[20] = v44;
      *&v232[28] = 2050;
      *&v232[30] = v45;
      *&v232[38] = 2050;
      *&v232[40] = v54;
      *&v232[48] = 2050;
      *&v232[50] = v49;
      *&v232[58] = 2050;
      *&v232[60] = v61;
      *&v232[68] = 2050;
      *&v232[70] = v63;
      *&v232[78] = 1026;
      *&v232[80] = v64;
      v233 = 2050;
      v234 = v65;
      v235 = 2050;
      v236 = v15;
      v237 = 2050;
      v238 = v14;
      v239 = 1026;
      v240 = v66;
      v241 = 1026;
      v242 = v67;
      v68 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v68);
      if (v68 != buf)
      {
        free(v68);
      }
    }
  }

  if (!*(a1 + 2088) && !*(a1 + 2080))
  {
LABEL_103:
    v8 = 0;
    goto LABEL_104;
  }

  v69 = *(a1 + 1872);
  v70 = vabdd_f64(*(a2 + 400), v69);
  if (v69 >= 0.0 && v70 <= 6.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v75 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v75, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,routeHintsAvailable,1", buf, 0xCu);
    }

    v76 = sub_19B87DD40();
    if (*(v76 + 160) <= 1 && *(v76 + 164) <= 1 && *(v76 + 168) <= 1 && !*(v76 + 152))
    {
      goto LABEL_103;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_452;
  }

  if ((*(a2 + 640) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v77 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v77, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,isSnapUsable,0", buf, 0xCu);
    }

    v78 = sub_19B87DD40();
    if (*(v78 + 160) <= 1 && *(v78 + 164) <= 1 && *(v78 + 168) <= 1 && !*(v78 + 152))
    {
      goto LABEL_103;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_452;
  }

  v72 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(a2 + 432), *(a2 + 528))));
  if (vand_s8(v72, vdup_lane_s32(v72, 1)).u8[0])
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v73 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v4;
      _os_log_impl(&dword_19B873000, v73, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,sameAsRawGPS,1", buf, 0xCu);
    }

    v74 = sub_19B87DD40();
    if (*(v74 + 160) <= 1 && *(v74 + 164) <= 1 && *(v74 + 168) <= 1 && !*(v74 + 152))
    {
      goto LABEL_103;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_100;
    }

LABEL_452:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_100:
    *v232 = 134349056;
    *&v232[4] = v4;
    v79 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v79);
LABEL_101:
    if (v79 != buf)
    {
      free(v79);
    }

    goto LABEL_103;
  }

  v82 = *(a2 + 384);
  *(a2 + 898) = 0;
  v83 = fmod(*(a2 + 480) - *(a2 + 280), 360.0);
  if (v83 < 0.0)
  {
    v83 = v83 + 360.0;
  }

  if (v83 > 180.0)
  {
    v83 = v83 + -360.0;
  }

  if ((*(a2 + 792) - 1) >= 2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v90 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v91 = *(a2 + 792);
      *buf = 134349312;
      *&buf[4] = v82;
      *&buf[12] = 1026;
      *&buf[14] = v91;
      _os_log_impl(&dword_19B873000, v90, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,signalEnv,%{public}d", buf, 0x12u);
    }

    v92 = sub_19B87DD40();
    if (*(v92 + 160) > 1 || *(v92 + 164) > 1 || *(v92 + 168) > 1 || *(v92 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v93 = *(a2 + 792);
      *v232 = 134349312;
      *&v232[4] = v82;
      *&v232[12] = 1026;
      *&v232[14] = v93;
      v94 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v94);
      if (v94 != buf)
      {
        free(v94);
      }
    }

    if ((*(a2 + 898) & 1) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_139;
  }

  v84 = fabs(v83);
  if (v84 > 15.0 && fabs(*(a2 + 632)) >= 1.0)
  {
    if (!*(a2 + 256))
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v103 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v82;
        _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid road pointer,isHarshDigitizationCaseAtTurns", buf, 0xCu);
      }

      v104 = sub_19B87DD40();
      if ((*(v104 + 160) & 0x80000000) != 0 && (*(v104 + 164) & 0x80000000) != 0 && (*(v104 + 168) & 0x80000000) != 0 && !*(v104 + 152))
      {
        goto LABEL_238;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v232 = 134349056;
      *&v232[4] = v82;
      v89 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v89);
      goto LABEL_123;
    }

    v98 = *(a1 + 208);
    v97 = *(a1 + 216);
    if (v97)
    {
      atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v98)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v105 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        *&buf[4] = v82;
        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer,isHarshDigitizationCaseAtTurns", buf, 0xCu);
      }

      v106 = sub_19B87DD40();
      if ((*(v106 + 160) & 0x80000000) == 0 || (*(v106 + 164) & 0x80000000) == 0 || (*(v106 + 168) & 0x80000000) == 0 || *(v106 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v232 = 134349056;
        *&v232[4] = v82;
        v107 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v107);
        if (v107 != buf)
        {
          free(v107);
        }
      }

      v108 = 0;
LABEL_235:
      if (v97)
      {
        sub_19B8750F8(v97);
      }

      if ((v108 & 1) == 0)
      {
        goto LABEL_238;
      }

LABEL_139:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v95 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = v4;
        _os_log_impl(&dword_19B873000, v95, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,isHarshDigitizationCaseAtTurns,1", buf, 0xCu);
      }

      v96 = sub_19B87DD40();
      if (*(v96 + 160) <= 1 && *(v96 + 164) <= 1 && *(v96 + 168) <= 1 && !*(v96 + 152))
      {
        goto LABEL_16;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v232 = 134349056;
      *&v232[4] = v4;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
      goto LABEL_14;
    }

    v99 = v14;
    v100 = fmin(fmax(*(*(a2 + 256) + 96) + *(*(a2 + 256) + 96), 15.0), 45.0);
    v229 = &v229;
    v230 = &v229;
    v231 = 0;
    v228[0] = v98;
    v228[1] = v97;
    if (v97)
    {
      atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v101 = sub_19BA21C90(v228, (a2 + 256), *(a2 + 276), &v229, v100 + 0.5);
    v102 = v101;
    if (v97)
    {
      sub_19B8750F8(v97);
      if (v102)
      {
        v225 = &v225;
        v226 = &v225;
        v227 = 0;
        v223 = v98;
        v224 = v97;
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_183:
        v109 = sub_19BA21C90(&v223, (a2 + 256), (*(a2 + 276) & 1) == 0, &v225, v100 + 0.5);
        if (v97)
        {
          sub_19B8750F8(v97);
        }

        if (v109)
        {
          v110 = v231;
          v111 = v227;
          if (v231 > 1 || v227 > 1 || *(a3 + 762) == 1 && *(a3 + 120) && (sub_19B97106C(a2 + 256, buf), sub_19B97106C(a3 + 120, v232), *buf == *v232) && buf[16] == v232[16] && *&buf[8] == *&v232[8])
          {
            *(a2 + 898) = 1;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v112 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v113 = *(a2 + 256);
            v114 = *v113;
            v115 = v113[12];
            v116 = *(a2 + 632);
            v117 = *(a2 + 898);
            *buf = 134351617;
            *&buf[4] = v82;
            *&buf[12] = 2049;
            *&buf[14] = v114;
            *&buf[22] = 1026;
            *&buf[24] = v110 > 1;
            *&buf[28] = 1026;
            *&buf[30] = v111 > 1;
            *&buf[34] = 2050;
            *&buf[36] = v231;
            *&buf[44] = 2050;
            *&buf[46] = v227;
            *&buf[54] = 2050;
            *&buf[56] = v100;
            *&buf[64] = 2050;
            *&buf[66] = v115;
            *&buf[74] = 2050;
            *&buf[76] = v84;
            v244 = 2050;
            v245 = v116;
            v246 = 1026;
            LODWORD(v247) = v117;
            _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck,road,%{private}lld,isApproachingMulti,%{public}d,justCrossedMulti,%{public}d,nextList,%{public}lu,priorList,%{public}lu,threshold,%{public}.1lf,roadWidth,%{public}.1lf,courseDiff,%{public}.3lf,AT,%{public}.3lf,harshAmb,%{public}d", buf, 0x64u);
          }

          v118 = sub_19B87DD40();
          if (*(v118 + 160) > 1 || *(v118 + 164) > 1 || *(v118 + 168) > 1 || *(v118 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v119 = *(a2 + 256);
            v120 = *v119;
            v121 = v119[12];
            v122 = *(a2 + 632);
            v123 = *(a2 + 898);
            *v232 = 134351617;
            *&v232[4] = v82;
            *&v232[12] = 2049;
            *&v232[14] = v120;
            *&v232[22] = 1026;
            *&v232[24] = v110 > 1;
            *&v232[28] = 1026;
            *&v232[30] = v111 > 1;
            *&v232[34] = 2050;
            *&v232[36] = v231;
            *&v232[44] = 2050;
            *&v232[46] = v227;
            *&v232[54] = 2050;
            *&v232[56] = v100;
            *&v232[64] = 2050;
            *&v232[66] = v121;
            *&v232[74] = 2050;
            *&v232[76] = v84;
            v233 = 2050;
            v234 = v122;
            v235 = 1026;
            LODWORD(v236) = v123;
            v124 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v124);
            if (v124 != buf)
            {
              free(v124);
            }
          }

          v108 = *(a2 + 898);
          v14 = v99;
        }

        else
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v14 = v99;
          v128 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            *&buf[4] = v82;
            _os_log_impl(&dword_19B873000, v128, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for prior connected candidates", buf, 0xCu);
          }

          v129 = sub_19B87DD40();
          if (*(v129 + 160) > 1 || *(v129 + 164) > 1 || *(v129 + 168) > 1 || *(v129 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v232 = 134349056;
            *&v232[4] = v82;
            v130 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v130);
            if (v130 != buf)
            {
              free(v130);
            }
          }

          v108 = 0;
        }

        sub_19B941414(&v225);
LABEL_234:
        sub_19B941414(&v229);
        goto LABEL_235;
      }
    }

    else if (v101)
    {
      v225 = &v225;
      v226 = &v225;
      v227 = 0;
      v223 = v98;
      v224 = 0;
      goto LABEL_183;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = v99;
    v125 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v82;
      _os_log_impl(&dword_19B873000, v125, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,findMultiOutboundIntersection returned false, searching for next connected candidates", buf, 0xCu);
    }

    v126 = sub_19B87DD40();
    if (*(v126 + 160) > 1 || *(v126 + 164) > 1 || *(v126 + 168) > 1 || *(v126 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v232 = 134349056;
      *&v232[4] = v82;
      v127 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v127);
      if (v127 != buf)
      {
        free(v127);
      }
    }

    v108 = 0;
    goto LABEL_234;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v85 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v86 = *(a2 + 632);
    *buf = 134349568;
    *&buf[4] = v82;
    *&buf[12] = 2050;
    *&buf[14] = v84;
    *&buf[22] = 2050;
    *&buf[24] = v86;
    _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,harshDigitizationCheck skipped,courseDiff,%{public}.3lf,acrossTrack,%{public}.3lf", buf, 0x20u);
  }

  v87 = sub_19B87DD40();
  if (*(v87 + 160) <= 1 && *(v87 + 164) <= 1 && *(v87 + 168) <= 1 && !*(v87 + 152))
  {
    goto LABEL_238;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v88 = *(a2 + 632);
  *v232 = 134349568;
  *&v232[4] = v82;
  *&v232[12] = 2050;
  *&v232[14] = v84;
  *&v232[22] = 2050;
  *&v232[24] = v88;
  v89 = _os_log_send_and_compose_impl();
  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isHarshDigitizationCaseAtTurns(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v89);
LABEL_123:
  if (v89 != buf)
  {
    free(v89);
  }

LABEL_238:
  if (v15 <= v14)
  {
    v139 = *(a1 + 2200);
    if (v139 > 3.0 && v139 < 20.0 && *(a3 + 505) == 1 && v15 > v14 * 0.85)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v140 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v141 = *(a1 + 2200);
        *buf = 134349824;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        *&buf[22] = 2050;
        *&buf[24] = v14 * 0.85;
        *&buf[32] = 2050;
        *&buf[34] = v141;
        _os_log_impl(&dword_19B873000, v140, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1, previous solution was ambiguous and AT,%{public}.1lf,is over scaled threshold,%{public}.1lf,consecutiveAmbCnt,%{public}1lf", buf, 0x2Au);
      }

      v142 = sub_19B87DD40();
      if (*(v142 + 160) <= 1 && *(v142 + 164) <= 1 && *(v142 + 168) <= 1 && !*(v142 + 152))
      {
        goto LABEL_16;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v143 = *(a1 + 2200);
      *v232 = 134349824;
      *&v232[4] = v4;
      *&v232[12] = 2050;
      *&v232[14] = v15;
      *&v232[22] = 2050;
      *&v232[24] = v14 * 0.85;
      *&v232[32] = 2050;
      *&v232[34] = v143;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
      goto LABEL_14;
    }

    if (*(a2 + 640) != 1)
    {
      goto LABEL_312;
    }

    v149 = *(a1 + 2176);
    v150 = *(a1 + 2184);
    v151 = *(a1 + 2176);
    if (v150 == v151)
    {
      goto LABEL_312;
    }

    v152 = v150 - v151;
    v153 = 0.0;
    do
    {
      v154 = *v151++;
      v153 = v153 + v154;
    }

    while (v151 != v150);
    if (v153 / v152 <= 1.2)
    {
LABEL_312:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v164 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349568;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = v15;
        *&buf[22] = 2050;
        *&buf[24] = v14;
        _os_log_impl(&dword_19B873000, v164, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,lowAcrossTrack,%{public}.1lf,threshold,%{public}.2lf", buf, 0x20u);
      }

      v165 = sub_19B87DD40();
      if (*(v165 + 160) <= 1 && *(v165 + 164) <= 1 && *(v165 + 168) <= 1 && !*(v165 + 152))
      {
        goto LABEL_103;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v232 = 134349568;
      *&v232[4] = v4;
      *&v232[12] = 2050;
      *&v232[14] = v15;
      *&v232[22] = 2050;
      *&v232[24] = v14;
      v79 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v79);
      goto LABEL_101;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v155 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v156 = *(a1 + 2144);
      v157 = *(a2 + 608);
      v158 = *(a1 + 2152);
      *buf = 134349824;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v156;
      *&buf[18] = 2050;
      *&buf[20] = v157;
      *&buf[28] = 2050;
      *&buf[30] = v158;
      _os_log_impl(&dword_19B873000, v155, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,averageVarianceFactor,count,%{public}d,vf,%{public}.4lf,avf,%{public}.4lf", buf, 0x26u);
    }

    v159 = sub_19B87DD40();
    if (*(v159 + 160) > 1 || *(v159 + 164) > 1 || *(v159 + 168) > 1 || *(v159 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v160 = *(a1 + 2144);
      v161 = *(a2 + 608);
      v162 = *(a1 + 2152);
      *v232 = 134349824;
      *&v232[4] = v4;
      *&v232[12] = 1026;
      *&v232[14] = v160;
      *&v232[18] = 2050;
      *&v232[20] = v161;
      *&v232[28] = 2050;
      *&v232[30] = v162;
      v163 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v163);
      if (v163 != buf)
      {
        free(v163);
      }
    }

    v8 = 1;
    if (*(a3 + 504) != 1 || (*(a3 + 505) & 1) != 0)
    {
      goto LABEL_104;
    }
  }

  if (*(a2 + 568) > 0.0)
  {
    v131 = *(a2 + 480);
    if (v131 >= 0.0)
    {
      v132 = fmod(*(a2 + 680) - v131, 360.0);
      if (v132 < 0.0)
      {
        v132 = v132 + 360.0;
      }

      if (v132 > 180.0)
      {
        v132 = v132 + -360.0;
      }

      if ((*(a3 + 505) != 1 || *(a1 + 2200) < 5.0) && *(a2 + 456) < 10.0)
      {
        v133 = fabs(v132);
        if (v133 < 18.0 && v15 <= v14 * 1.5)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v135 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v136 = *(a2 + 456);
            *buf = 134350080;
            *&buf[4] = v4;
            *&buf[12] = 2050;
            *&buf[14] = v133;
            *&buf[22] = 2050;
            *&buf[24] = v15;
            *&buf[32] = 2050;
            *&buf[34] = v136;
            *&buf[42] = 2050;
            *&buf[44] = v14 * 1.5;
            _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,0,overridden based on course matching,%{public}.2lf,AT,%{public}.2lf,hunc,%{public}.2lf,threshold,%{public}.2lf", buf, 0x34u);
          }

          v137 = sub_19B87DD40();
          if (*(v137 + 160) <= 1 && *(v137 + 164) <= 1 && *(v137 + 168) <= 1 && !*(v137 + 152))
          {
            goto LABEL_103;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v138 = *(a2 + 456);
          *v232 = 134350080;
          *&v232[4] = v4;
          *&v232[12] = 2050;
          *&v232[14] = v133;
          *&v232[22] = 2050;
          *&v232[24] = v15;
          *&v232[32] = 2050;
          *&v232[34] = v138;
          *&v232[42] = 2050;
          *&v232[44] = v14 * 1.5;
          v79 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v79);
          goto LABEL_101;
        }
      }
    }
  }

  v144 = *(a2 + 256);
  if (v144 && ((*(a1 + 12) & 1) != 0 || (*(v144 + 20) & 0xFFFFFFFE) == 8))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v145 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v146 = *(*(a2 + 256) + 20);
      *buf = 134349312;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = v146;
      _os_log_impl(&dword_19B873000, v145, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,skipping building checks for unknown roads,%{public}d", buf, 0x12u);
    }

    v147 = sub_19B87DD40();
    if (*(v147 + 160) <= 1 && *(v147 + 164) <= 1 && *(v147 + 168) <= 1 && !*(v147 + 152))
    {
      goto LABEL_16;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v148 = *(*(a2 + 256) + 20);
    *v232 = 134349312;
    *&v232[4] = v4;
    *&v232[12] = 1026;
    *&v232[14] = v148;
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v7);
    goto LABEL_14;
  }

  if (*(a2 + 456) + 30.0 <= 45.0)
  {
    v166 = *(a2 + 456) + 30.0;
  }

  else
  {
    v166 = 45.0;
  }

  v229 = 0;
  v230 = 0;
  v231 = 0;
  v167 = *(a1 + 2080);
  if (!v167)
  {
    sub_19B9DDB5C(*(a1 + 2088), &v229, a2 + 376, v166);
  }

  memset(buf, 0, 24);
  sub_19B8EE770(v167, buf, *(a2 + 432), *(a2 + 440), v166);
  sub_19BA2F2D8(&v229, v229, *buf, *&buf[8], (*&buf[8] - *buf) >> 6);
  sub_19B8ED82C(*(a1 + 2080), 0, 1, v4, *(a2 + 432), *(a2 + 440), *(*(a1 + 2080) + 176));
  *v232 = buf;
  sub_19BA2F8A0(v232);
  v169 = v229;
  v168 = v230;
  if ((v230 - v229) <= 0x40)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v170 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = (v230 - v229) >> 6;
      _os_log_impl(&dword_19B873000, v170, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,fewerThan2Buildings,%{public}d", buf, 0x12u);
    }

    v171 = sub_19B87DD40();
    if (*(v171 + 160) > 1 || *(v171 + 164) > 1 || *(v171 + 168) > 1 || *(v171 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v232 = 134349312;
      *&v232[4] = v4;
      *&v232[12] = 1026;
      *&v232[14] = (v230 - v229) >> 6;
      v172 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v172);
      goto LABEL_430;
    }

    goto LABEL_432;
  }

  if (v229 == v230)
  {
    v173 = 0;
    v174 = 0;
    goto LABEL_419;
  }

  v221 = v15;
  v173 = 0;
  v174 = 0;
  v222 = v4;
  do
  {
    v176 = *(v169 + 8);
    v175 = *(v169 + 16);
    v177 = -1.0;
    if (v176 != v175)
    {
      v178 = 0.0;
      v179 = 0.0;
      v180 = 0.0;
      do
      {
        v181 = *v176;
        v182 = *(v176 + 1);
        v176 += 2;
        v183 = atan2(v181, v182);
        if (v183 < 0.0)
        {
          v183 = v183 + 6.28318531;
        }

        v184 = __sincos_stret(v183);
        v178 = v178 + v184.__cosval;
        v179 = v179 + v184.__sinval;
        v180 = v180 + 1.0;
      }

      while (v176 != v175);
      if (v180 > 0.0)
      {
        v185 = atan2(v179 / v180, v178 / v180);
        v186 = fmod(v185 * 57.2957795, 360.0);
        if (v186 >= 0.0)
        {
          v177 = v186;
        }

        else
        {
          v177 = v186 + 360.0;
        }
      }
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v187 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v188 = *(a2 + 432);
      v189 = *(a2 + 440);
      v190 = *(a2 + 480);
      *buf = 134351105;
      *&buf[4] = v4;
      *&buf[12] = 1026;
      *&buf[14] = (v230 - v229) >> 6;
      *&buf[18] = 2053;
      *&buf[20] = v188;
      *&buf[28] = 2053;
      *&buf[30] = v189;
      *&buf[38] = 2050;
      *&buf[40] = v190;
      *&buf[48] = 1026;
      *&buf[50] = v174;
      *&buf[54] = 1026;
      *&buf[56] = v173;
      *&buf[60] = 2050;
      *&buf[62] = v166;
      *&buf[70] = 2050;
      *&buf[72] = v177;
      _os_log_impl(&dword_19B873000, v187, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,-1,buildingCount,%{public}d,latitude,%{sensitive}.7lf,longitude,%{sensitive}.7lf,course,%{public}.2lf,rightSideCount,%{public}d,leftSideCount,%{public}d,searchDistance,%{public}.2lf,averageBuildingDirection,%{public}.2lf", buf, 0x50u);
    }

    v191 = sub_19B87DD40();
    if (*(v191 + 160) > 1 || *(v191 + 164) > 1 || *(v191 + 168) > 1 || *(v191 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v192 = *(a2 + 432);
      v193 = *(a2 + 440);
      v194 = *(a2 + 480);
      *v232 = 134351105;
      *&v232[4] = v4;
      *&v232[12] = 1026;
      *&v232[14] = (v230 - v229) >> 6;
      *&v232[18] = 2053;
      *&v232[20] = v192;
      *&v232[28] = 2053;
      *&v232[30] = v193;
      *&v232[38] = 2050;
      *&v232[40] = v194;
      *&v232[48] = 1026;
      *&v232[50] = v174;
      *&v232[54] = 1026;
      *&v232[56] = v173;
      *&v232[60] = 2050;
      *&v232[62] = v166;
      *&v232[70] = 2050;
      *&v232[72] = v177;
      v195 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v195);
      if (v195 != buf)
      {
        free(v195);
      }
    }

    v196 = v166;
    v197 = *(a2 + 480);
    v198 = fmod(v177, 360.0);
    if (v198 >= 0.0)
    {
      v199 = v198;
    }

    else
    {
      v199 = v198 + 360.0;
    }

    v200 = fmod(v197, 360.0);
    if (v200 >= 0.0)
    {
      v201 = v200;
    }

    else
    {
      v201 = v200 + 360.0;
    }

    v202 = fmod(v197 + 90.0, 360.0);
    if (v202 >= 0.0)
    {
      v203 = v202;
    }

    else
    {
      v203 = v202 + 360.0;
    }

    if (v201 >= v203)
    {
      v204 = v201 > v199 && v199 > v203;
    }

    else
    {
      v204 = v201 > v199 || v199 > v203;
    }

    if (v204)
    {
      v205 = fmod(v197 + 180.0, 360.0);
      if (v205 < 0.0)
      {
        v205 = v205 + 360.0;
      }

      v206 = v203 <= v199;
      if (v199 <= v205)
      {
        v206 = 1;
      }

      v207 = v203 <= v199;
      if (v199 > v205)
      {
        v207 = 0;
      }

      if (v203 < v205)
      {
        v208 = v207;
      }

      else
      {
        v208 = v206;
      }
    }

    else
    {
      v208 = 1;
    }

    v209 = v197 + 270.0;
    v210 = fmod(v197 + 180.0, 360.0);
    if (v210 >= 0.0)
    {
      v211 = v210;
    }

    else
    {
      v211 = v210 + 360.0;
    }

    v212 = fmod(v209, 360.0);
    if (v212 < 0.0)
    {
      v212 = v212 + 360.0;
    }

    if (v211 >= v212)
    {
      if (v211 <= v199 || v199 <= v212)
      {
LABEL_410:
        v214 = 1;
        goto LABEL_413;
      }
    }

    else if (v211 <= v199 && v199 <= v212)
    {
      goto LABEL_410;
    }

    if (v212 >= v201)
    {
      v214 = v199 <= v201;
      if (v212 <= v199)
      {
        v214 = 1;
      }
    }

    else
    {
      v214 = v199 <= v201;
      if (v212 > v199)
      {
        v214 = 0;
      }
    }

LABEL_413:
    v174 += v208;
    v173 += v214;
    v169 += 64;
    v166 = v196;
    v4 = v222;
  }

  while (v169 != v168);
  if (v174 && v173)
  {
    v216 = *(a2 + 792);
    if (v216 == 3)
    {
      v8 = 0;
      goto LABEL_433;
    }

    v8 = 0;
    if (v216 != 4 && v221 > v14 + v14)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v219 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134350080;
        *&buf[4] = v222;
        *&buf[12] = 1026;
        *&buf[14] = v174;
        *&buf[18] = 1026;
        *&buf[20] = v173;
        *&buf[24] = 2050;
        *&buf[26] = v221;
        *&buf[34] = 2050;
        *&buf[36] = v14 + v14;
        _os_log_impl(&dword_19B873000, v219, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingOnBothSides but AT too high,rightCount,%{public}d,leftCount,%{public}d,AT,%{public}.1lf,threshold,%{public}.1lf", buf, 0x2Cu);
      }

      v220 = sub_19B87DD40();
      if (*(v220 + 160) > 1 || *(v220 + 164) > 1 || *(v220 + 168) > 1 || *(v220 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        *v232 = 134350080;
        *&v232[4] = v222;
        *&v232[12] = 1026;
        *&v232[14] = v174;
        *&v232[18] = 1026;
        *&v232[20] = v173;
        *&v232[24] = 2050;
        *&v232[26] = v221;
        *&v232[34] = 2050;
        *&v232[36] = v14 + v14;
        v172 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v172);
        goto LABEL_430;
      }

      goto LABEL_432;
    }

    goto LABEL_433;
  }

LABEL_419:
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v217 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134349568;
    *&buf[4] = v4;
    *&buf[12] = 1026;
    *&buf[14] = v174;
    *&buf[18] = 1026;
    *&buf[20] = v173;
    _os_log_impl(&dword_19B873000, v217, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,isSolutionAmbiguous,1,buildingNotOnBothSides,rightCount,%{public}d,leftCount,%{public}d", buf, 0x18u);
  }

  v218 = sub_19B87DD40();
  if (*(v218 + 160) > 1 || *(v218 + 164) > 1 || *(v218 + 168) > 1 || *(v218 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v232 = 134349568;
    *&v232[4] = v4;
    *&v232[12] = 1026;
    *&v232[14] = v174;
    *&v232[18] = 1026;
    *&v232[20] = v173;
    v172 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isSolutionAmbiguous(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v172);
LABEL_430:
    if (v172 != buf)
    {
      free(v172);
    }
  }

LABEL_432:
  v8 = 1;
LABEL_433:
  *buf = &v229;
  sub_19BA2F8A0(buf);
LABEL_104:
  v80 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_19BA1F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_19B941414(&a23);
  sub_19B941414(&a28);
  if (v28)
  {
    sub_19B8750F8(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA1F280(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(a1 + 48) = a2[6];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 7);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v9;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 88), a2[11], a2[12], 0x8E38E38E38E38E39 * ((a2[12] - a2[11]) >> 3));
  }

  *(a1 + 112) = a2[14];
  v11 = a2[15];
  v10 = a2[16];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  if (v12)
  {
    sub_19B8750F8(v12);
  }

  v13 = *(a2 + 17);
  v14 = *(a2 + 19);
  *(a1 + 168) = a2[21];
  *(a1 + 152) = v14;
  *(a1 + 136) = v13;
  v15 = *(a2 + 11);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v15;
  if (a1 != a2)
  {
    sub_19B967884((a1 + 208), a2[26], a2[27], 0x8E38E38E38E38E39 * ((a2[27] - a2[26]) >> 3));
  }

  *(a1 + 232) = *(a2 + 232);
  v16 = *(a2 + 15);
  v17 = *(a2 + 16);
  v18 = *(a2 + 18);
  *(a1 + 272) = *(a2 + 17);
  *(a1 + 288) = v18;
  *(a1 + 240) = v16;
  *(a1 + 256) = v17;
  v19 = *(a2 + 19);
  v20 = *(a2 + 20);
  v21 = *(a2 + 22);
  *(a1 + 336) = *(a2 + 21);
  *(a1 + 352) = v21;
  *(a1 + 304) = v19;
  *(a1 + 320) = v20;
  std::string::operator=((a1 + 368), (a2 + 46));
  memcpy((a1 + 392), a2 + 49, 0x118uLL);
  v22 = *(a2 + 42);
  v23 = *(a2 + 43);
  v24 = *(a2 + 44);
  *(a1 + 720) = a2[90];
  *(a1 + 688) = v23;
  *(a1 + 704) = v24;
  *(a1 + 672) = v22;
  v25 = a2[91];
  v26 = a2[92];
  if (v26)
  {
    atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 728) = v25;
  v27 = *(a1 + 736);
  *(a1 + 736) = v26;
  if (v27)
  {
    sub_19B8750F8(v27);
  }

  v28 = *(a2 + 93);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v28;
  return a1;
}

uint64_t sub_19BA1F438(uint64_t a1)
{
  v2 = *(a1 + 872);
  if (v2)
  {
    sub_19B8750F8(v2);
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    *(a1 + 352) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {
    sub_19B8750F8(v4);
  }

  v5 = *(a1 + 224);
  if (v5)
  {
    *(a1 + 232) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  sub_19BA2E9A8(*(a1 + 120));
  v7 = *(a1 + 64);
  if (v7)
  {
    *(a1 + 72) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 40);
  sub_19B988734(&v9);
  return a1;
}

uint64_t sub_19BA1F4E0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (a1 == a2)
  {
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
  }

  else
  {
    sub_19BA2EB5C((a1 + 40), *(a2 + 5), *(a2 + 6), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 6) - *(a2 + 5)) >> 4));
    sub_19BA2EFD8((a1 + 64), *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 2);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    v6 = *(a2 + 14);
    v7 = a2 + 15;
    if (*(a1 + 128))
    {
      v9 = (a1 + 120);
      v8 = *(a1 + 120);
      v10 = *(a1 + 112);
      *(a1 + 112) = a1 + 120;
      *(v8 + 16) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      if (*(v10 + 8))
      {
        v11 = *(v10 + 8);
      }

      else
      {
        v11 = v10;
      }

      v22 = a1 + 112;
      v23 = v11;
      v24 = v11;
      if (!v11 || (v23 = sub_19BA2F234(v11), v6 == v7))
      {
        v19 = v6;
        goto LABEL_33;
      }

      while (1)
      {
        v12 = *(v6 + 2);
        *(v11 + 48) = *(v6 + 48);
        *(v11 + 2) = v12;
        sub_19BA0EF24((v11 + 7), (v6 + 7));
        v13 = *v9;
        v14 = a1 + 120;
        v15 = (a1 + 120);
        if (!*v9)
        {
          goto LABEL_21;
        }

        v16 = v24[4];
        do
        {
          while (1)
          {
            v14 = v13;
            v17 = *(v13 + 32);
            if (v16 != v17)
            {
              if (v16 >= v17)
              {
                goto LABEL_19;
              }

              goto LABEL_16;
            }

            if (*(v24 + 48) == 1 && (*(v14 + 48) & 1) != 0)
            {
              break;
            }

            if (!*(v24 + 48))
            {
              goto LABEL_19;
            }

LABEL_16:
            v13 = *v14;
            v15 = v14;
            if (!*v14)
            {
              goto LABEL_21;
            }
          }

          if (v24[5] < *(v14 + 40))
          {
            goto LABEL_16;
          }

LABEL_19:
          v13 = *(v14 + 8);
        }

        while (v13);
        v15 = (v14 + 8);
LABEL_21:
        sub_19B8F0968((a1 + 112), v14, v15, v24);
        v11 = v23;
        v24 = v23;
        if (v23)
        {
          v23 = sub_19BA2F234(v23);
        }

        v18 = v6[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v6[2];
            v20 = *v19 == v6;
            v6 = v19;
          }

          while (!v20);
        }

        if (v11)
        {
          v6 = v19;
          if (v19 != v7)
          {
            continue;
          }
        }

LABEL_33:
        sub_19BA2F288(&v22);
        v6 = v19;
        break;
      }
    }

    if (v6 != v7)
    {
      operator new();
    }
  }

  sub_19BA1F280(a1 + 136, a2 + 17);
  *(a1 + 904) = *(a2 + 904);
  return a1;
}

void sub_19BA1F9BC(_Unwind_Exception *a1)
{
  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  sub_19B966FCC((v1 + 64));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA1FA38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, double *a5, double *a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v14 = a5[1];
  v24 = v14;
  if ((sub_19BA1FDF8(a1, a4, v14, a7) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = a2;
      if (*(a2 + 23) < 0)
      {
        v17 = *a2;
      }

      *buf = 134349570;
      v32 = v14;
      v33 = 2082;
      v34 = v17;
      v35 = 2050;
      v36 = a7;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle,failed,%{public}s,moveDistance,%{public}.1lf", buf, 0x20u);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    v25 = 134349570;
    v26 = v14;
    v27 = 2082;
    v28 = a2;
    v29 = 2050;
    v30 = a7;
    goto LABEL_34;
  }

  if ((sub_19BA206AC(&v24, a5, (a1 + 168), a6, *(a4 + 32), *(a4 + 40), *(a4 + 24)) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v20 = a3;
      if (*(a3 + 23) < 0)
      {
        v20 = *a3;
      }

      *buf = 134349314;
      v32 = v14;
      v33 = 2082;
      v34 = v20;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT,%{public}s,location or course diverged", buf, 0x16u);
    }

    v21 = sub_19B87DD40();
    if (*(v21 + 160) <= 1 && *(v21 + 164) <= 1 && *(v21 + 168) <= 1 && !*(v21 + 152))
    {
      goto LABEL_36;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v25 = 134349314;
    v26 = v14;
    v27 = 2082;
    v28 = a3;
LABEL_34:
    v22 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticleAndCheckDivergence(const std::string, const std::string, CLParticleMapMatcherCommon::Particle &, const double, const CLMapCrumb &, double &)", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }

LABEL_36:
    result = 0;
    goto LABEL_37;
  }

  result = 1;
LABEL_37:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA1FDF8(uint64_t a1, double *a2, double a3, double a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v36 = a3;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, moveParticle", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      goto LABEL_62;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_45;
    }

LABEL_75:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_45;
  }

  if (((*(*v7 + 88))(v7, a2, a1 + 1040, a4) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v13 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v14 = **a2;
      v15 = *(a2 + 6);
      v16 = *(a2 + 20);
      *buf = 134350081;
      v36 = a3;
      v37 = 2049;
      v38 = v14;
      v39 = 2050;
      v40 = v15;
      v41 = 1026;
      v42 = v16;
      v43 = 2050;
      v44 = a4;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle,moveOnRoad returned false,roadID,%{private}lld,projection,%{public}.3lf,fwd,%{public}d,moveDistance,%{public}.2lf", buf, 0x30u);
    }

    v17 = sub_19B87DD40();
    if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v30 = **a2;
      v32 = *(a2 + 6);
      v34 = *(a2 + 20);
      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v18);
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  if (!*a2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v19 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v36 = a3;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,null road", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) != 0 && (*(v20 + 164) & 0x80000000) != 0 && (*(v20 + 168) & 0x80000000) != 0 && !*(v20 + 152))
    {
      goto LABEL_62;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_45:
      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v18);
LABEL_60:
      if (v18 != buf)
      {
        free(v18);
      }

      goto LABEL_62;
    }

    goto LABEL_75;
  }

  if (fabs(a2[4]) >= 0.00003 || fabs(a2[5]) >= 0.00003)
  {
    v21 = a2[6];
    if (v21 >= 0.0 && v21 <= 1.0)
    {
      v27 = 1;
      if (!v8)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a2 + 6);
      v25 = **a2;
      *buf = 134349569;
      v36 = a3;
      v37 = 2050;
      v38 = v24;
      v39 = 2049;
      v40 = v25;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,invalidProjection,%{public}.3lf,roadID,%{private}lld", buf, 0x20u);
    }

    v26 = sub_19B87DD40();
    if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v31 = *(a2 + 6);
      v33 = **a2;
      v18 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::moveParticle(CFAbsoluteTime, CLParticleMapMatcherCommon::Particle &, double) const", "CoreLocation: %s\n", v18);
      goto LABEL_60;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v9 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      v36 = a3;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,moveParticle,unexpected particle with snapLat == snapLon == 0", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_75;
    }
  }

LABEL_62:
  v27 = 0;
  if (v8)
  {
LABEL_63:
    sub_19B8750F8(v8);
  }

LABEL_64:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_19BA20680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA206AC(uint64_t *a1, double *a2, float64x2_t *a3, double *a4, double a5, double a6, double a7)
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = a2[38];
  v14 = fmod(v13 - a7, 360.0);
  if (v14 < 0.0)
  {
    v14 = v14 + 360.0;
  }

  if (v14 > 180.0)
  {
    v14 = v14 + -360.0;
  }

  v15 = fabs(v14);
  if (v15 > 8.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v16 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v17 = *a1;
      *buf = 134349056;
      v36 = v17;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, no DOT, course is not aligned", buf, 0xCu);
    }

    v18 = sub_19B87DD40();
    if (*(v18 + 160) <= 1 && *(v18 + 164) <= 1 && *(v18 + 168) <= 1 && !*(v18 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v19 = *a1;
    v33 = 134349056;
    v34 = v19;
    goto LABEL_43;
  }

  if (v15 > *a4)
  {
    *a4 = v15;
    v13 = a2[38];
  }

  v31 = 0.0;
  v32 = 0.0;
  sub_19BA0C3BC(a3, &v32, &v31, a2[36], a2[37], a2[9], v13, a5, a6);
  if (fabs(v32) > 5.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v20 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v21 = *a1;
      *buf = 134349056;
      v36 = v21;
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, across track too large, not suitable DOT assistance", buf, 0xCu);
    }

    v22 = sub_19B87DD40();
    if (*(v22 + 160) <= 1 && *(v22 + 164) <= 1 && *(v22 + 168) <= 1 && !*(v22 + 152))
    {
      goto LABEL_45;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v23 = *a1;
    v33 = 134349056;
    v34 = v23;
    goto LABEL_43;
  }

  if (fabs(v31) <= 45.0)
  {
    result = 1;
    goto LABEL_46;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v24 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v25 = *a1;
    *buf = 134349056;
    v36 = v25;
    _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf, along track too large, not suitable DOT assistance", buf, 0xCu);
  }

  v26 = sub_19B87DD40();
  if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v27 = *a1;
    v33 = 134349056;
    v34 = v27;
LABEL_43:
    v28 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMapMatcherCommon::checkDivergence(const CFAbsoluteTime &, double, double, double, const CLMapCrumb &, CLDistanceCalc &, double &)", "CoreLocation: %s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

LABEL_45:
  result = 0;
LABEL_46:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BA20B88(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    sub_19B8750F8(v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v8 = *(a2 + 56);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 56) = v8;
  sub_19BA2F10C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 14);
  v9 = *(a2 + 120);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  v10 = *(a1 + 128);
  *(a1 + 120) = v9;
  if (v10)
  {
    sub_19B8750F8(v10);
  }

  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v12;
  *(a1 + 136) = v11;
  v13 = a2[11];
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 176) = v13;
  sub_19BA2F10C(a1 + 208, a2 + 13);
  *(a1 + 232) = *(a2 + 232);
  v14 = a2[15];
  v15 = a2[16];
  v16 = a2[18];
  *(a1 + 272) = a2[17];
  *(a1 + 288) = v16;
  *(a1 + 240) = v14;
  *(a1 + 256) = v15;
  v17 = a2[19];
  v18 = a2[20];
  v19 = a2[22];
  *(a1 + 336) = a2[21];
  *(a1 + 352) = v19;
  *(a1 + 304) = v17;
  *(a1 + 320) = v18;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v20 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v20;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  memcpy((a1 + 392), a2 + 392, 0x118uLL);
  v22 = a2[43];
  v21 = a2[44];
  v23 = a2[42];
  *(a1 + 720) = *(a2 + 90);
  *(a1 + 688) = v22;
  *(a1 + 704) = v21;
  *(a1 + 672) = v23;
  v24 = *(a2 + 728);
  *(a2 + 728) = 0u;
  v25 = *(a1 + 736);
  *(a1 + 728) = v24;
  if (v25)
  {
    sub_19B8750F8(v25);
  }

  v26 = *(a2 + 744);
  *(a1 + 759) = *(a2 + 759);
  *(a1 + 744) = v26;
  return a1;
}

uint64_t sub_19BA20CFC(uint64_t *a1, void **a2, uint64_t a3, unint64_t *a4)
{
  v4 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v9 = *(a2 + 20) ? 1.0 - *(a2 + 6) : *(a2 + 6);
  sub_19B9F5AA8(*a2);
  if (v9 * *(v4 + 40) > 18.0)
  {
    v10 = *(a2 + 20) ? *(a2 + 6) : 1.0 - *(a2 + 6);
    v11 = *a2;
    sub_19B9F5AA8(*a2);
    if (v10 * *(v11 + 40) > 36.0)
    {
      return 0;
    }
  }

  v13 = a2[1];
  v36 = *a2;
  v37 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 2);
  v38 = *(a2 + 1);
  v39 = v14;
  v15 = a2[6];
  v41[0] = *(a2 + 7);
  *(v41 + 9) = *(a2 + 65);
  v40 = v15;
  __p = 0;
  v43 = 0;
  v16 = a2[11];
  v17 = a2[12];
  v44 = 0;
  sub_19B96775C(&__p, v16, v17, 0x8E38E38E38E38E39 * ((v17 - v16) >> 3));
  v19 = sub_19BA20F64(a1, &v36, a3, 1, a4, v18);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    sub_19B8750F8(v37);
  }

  if (v19)
  {
    return 1;
  }

  v35 = 0x4051800000000000;
  v20 = a2[1];
  v26 = *a2;
  v27 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(a2 + 2);
  v28 = *(a2 + 1);
  v29 = v21;
  v30 = a2[6];
  v31[0] = *(a2 + 7);
  *(v31 + 9) = *(a2 + 65);
  v33 = 0;
  v34 = 0;
  v22 = a2[11];
  v23 = a2[12];
  v32 = 0;
  sub_19B96775C(&v32, v22, v23, 0x8E38E38E38E38E39 * ((v23 - v22) >> 3));
  v12 = sub_19BA20F64(a1, &v26, a3, 0, &v35, v24);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v27)
  {
    sub_19B8750F8(v27);
  }

  return v12;
}

void sub_19BA20F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B966FCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA20F64(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, unint64_t *a5, __n128 a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (!*a2)
  {
    v41 = 0;
    goto LABEL_94;
  }

  v7 = a5;
  if (a4)
  {
    v12 = "next";
  }

  else
  {
    v12 = "prior";
  }

  v13 = ((*(a2 + 20) ^ a4) & 1) == 0;
  *(a2 + 20) = v13;
  v14 = -1.0;
  if (*(a3 + 264) == 1)
  {
    a6.n128_u64[0] = *a5;
    *&buf[16] = 0;
    buf[21] = 0;
    LODWORD(v74) = 0;
    v75 = 0uLL;
    v15 = a2[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v13 = *(a2 + 20);
    }

    *buf = v6;
    *&buf[8] = v15;
    v16 = *a1;
    v17 = a2[6];
    buf[20] = v13;
    v76 = v17;
    v59[0] = 0;
    *v65 = v65;
    *&v65[8] = v65;
    *&v65[16] = 0;
    v62 = 0;
    *v63 = v63;
    *&v63[8] = v63;
    *&v63[16] = 0;
    v61 = 0;
    v18 = (*(v16 + 88))(a1, buf, &v61, v65, v63, v59, &v62, a6);
    if (v61 > 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 == 1)
    {
      v20 = *(a2 + 20);
      v21 = *(a2 + 6);
      v22 = *a2;
      sub_19B9F5AA8(*a2);
      v23 = 1.0 - v21;
      if (!v20)
      {
        v23 = v21;
      }

      v14 = v23 * *(v22 + 40);
      for (i = *&v63[8]; i != v63; i = *(i + 8))
      {
        v26 = *(i + 16);
        v25 = *(i + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_19B9F5AA8(v26);
        v27 = *(v26 + 40);
        if (v25)
        {
          sub_19B8750F8(v25);
        }

        v14 = v14 + v27;
      }
    }

    sub_19B916DC0(v63);
    sub_19B916DC0(v65);
    if (*&buf[8])
    {
      sub_19B8750F8(*&buf[8]);
    }

    v7 = a5;
  }

  v28 = *(a3 + 96);
  sub_19B8759E8(v59, v12);
  v29 = *(a3 + 8);
  if (v14 < 0.0)
  {
    v30 = a2[1];
    *v65 = *a2;
    *&v65[8] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    v31 = *(a2 + 2);
    *&v65[16] = *(a2 + 1);
    v66 = v31;
    v32 = a2[6];
    v68[0] = *(a2 + 7);
    *(v68 + 9) = *(a2 + 65);
    v67 = v32;
    __p = 0;
    v70 = 0;
    v33 = a2[11];
    v34 = a2[12];
    v71 = 0;
    sub_19B96775C(&__p, v33, v34, 0x8E38E38E38E38E39 * ((v34 - v33) >> 3));
    if (sub_19BA1FDF8(a1, v65, v29, 24.0))
    {
      v35 = fmod(*&v65[24] - *(a3 + 104), 360.0);
      if (v35 < 0.0)
      {
        v35 = v35 + 360.0;
      }

      if (v35 > 180.0)
      {
        v35 = v35 + -360.0;
      }

      if (fabs(v35) <= 8.0)
      {
        if (__p)
        {
          v70 = __p;
          operator delete(__p);
        }

        if (*&v65[8])
        {
          sub_19B8750F8(*&v65[8]);
        }

        v41 = 0;
        goto LABEL_92;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v36 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v37 = v59;
        if (v60 < 0)
        {
          v37 = v59[0];
        }

        *buf = 134349314;
        *&buf[4] = v29;
        *&buf[12] = 2082;
        *&buf[14] = v37;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,no DOT, too close to a %{public}s road with large direction change", buf, 0x16u);
      }

      v38 = sub_19B87DD40();
      if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
      {
        goto LABEL_87;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v39 = v59;
      if (v60 < 0)
      {
        v39 = v59[0];
      }

      *v63 = 134349314;
      *&v63[4] = v29;
      *&v63[12] = 2082;
      *&v63[14] = v39;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v40);
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v52 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v53 = v59;
        if (v60 < 0)
        {
          v53 = v59[0];
        }

        *buf = 134349570;
        *&buf[4] = v29;
        *&buf[12] = 2082;
        *&buf[14] = v53;
        v73 = 2050;
        v74 = 0x4038000000000000;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,moveParticle failed for %{public}s particle,distance,%{public}.1lf", buf, 0x20u);
      }

      v54 = sub_19B87DD40();
      if (*(v54 + 160) <= 1 && *(v54 + 164) <= 1 && *(v54 + 168) <= 1 && !*(v54 + 152))
      {
        goto LABEL_87;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v55 = v59;
      if (v60 < 0)
      {
        v55 = v59[0];
      }

      *v63 = 134349570;
      *&v63[4] = v29;
      *&v63[12] = 2082;
      *&v63[14] = v55;
      *&v63[22] = 2050;
      v64 = 0x4038000000000000;
      v40 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v40);
    }

    if (v40 != buf)
    {
      free(v40);
    }

LABEL_87:
    if (__p)
    {
      v70 = __p;
      operator delete(__p);
    }

    if (*&v65[8])
    {
      sub_19B8750F8(*&v65[8]);
    }

    goto LABEL_91;
  }

  v42 = fabs(v28);
  if (v28 < 0.0)
  {
    v42 = 3.0;
  }

  v43 = v14 - v42;
  v44 = 36.0;
  if (a4)
  {
    v44 = 18.0;
  }

  if (v43 >= v44)
  {
    v41 = 0;
    *v7 = v14 + -1.0;
    goto LABEL_92;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v45 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v46 = v59;
    if (v60 < 0)
    {
      v46 = v59[0];
    }

    v47 = *(a3 + 96);
    *buf = 134349826;
    *&buf[4] = v29;
    *&buf[12] = 2082;
    *&buf[14] = v46;
    v73 = 2050;
    v74 = *&v43;
    LOWORD(v75) = 2050;
    *(&v75 + 2) = v47;
    _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,no DOT,too close to %{public}s intersection,dist,%{public}.2lf,speed,%{public}.2lf", buf, 0x2Au);
  }

  v48 = sub_19B87DD40();
  if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v49 = v59;
    if (v60 < 0)
    {
      v49 = v59[0];
    }

    v50 = *(a3 + 96);
    *v65 = 134349826;
    *&v65[4] = v29;
    *&v65[12] = 2082;
    *&v65[14] = v49;
    *&v65[22] = 2050;
    *&v65[24] = v43;
    LOWORD(v66) = 2050;
    *(&v66 + 2) = v50;
    v51 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::isCloseToMultiOutboundIntersection(CLParticleMapMatcherCommon::Particle, const CLMapCrumb &, const BOOL, double &) const", "CoreLocation: %s\n", v51);
    if (v51 != buf)
    {
      free(v51);
    }
  }

LABEL_91:
  v41 = 1;
LABEL_92:
  if (v60 < 0)
  {
    operator delete(v59[0]);
  }

LABEL_94:
  v56 = *MEMORY[0x1E69E9840];
  return v41;
}

void sub_19BA21850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  sub_19B966FCC(&a24);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19BA218DC(uint64_t a1, std::__shared_weak_count *a2, double *a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1)
  {
    v8 = *a3;
    if (*a3)
    {
      v9 = *(a3 + 20);
      v10 = a3[6];
      sub_19B9F5AA8(*a3);
      v11 = 1.0 - v10;
      if (!v9)
      {
        v11 = v10;
      }

      (*(*a1 + 72))(a1, a4, a3, v9, 0, v10, v11 * *(*&v8 + 40) + 5.0);
      goto LABEL_27;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v14 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,null road, getRoadsAtIntersection", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, getRoadsAtIntersection", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_25:
        v16 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLParticleMapMatcherFilterBase::getRoadsAtIntersection(const CFAbsoluteTime, const CLMapGeometry::DistanceQueryResult &, CLMapGeometry::ConnectedQueryResultList &)", "CoreLocation: %s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }

        goto LABEL_27;
      }

LABEL_34:
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      goto LABEL_25;
    }
  }

LABEL_27:
  if (a2)
  {
    sub_19B8750F8(a2);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_19BA21C70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B8750F8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA21C90(void *a1, double *a2, unsigned __int8 a3, uint64_t *a4, double a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v9 = *a2;
    v8 = *(a2 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = v9;
    v42 = v8;
    v10 = a2[6];
    v44 = a3;
    v49 = v10;
    v11 = 30;
    while (1)
    {
      v12 = v44;
      v13 = v49;
      v14 = *buf;
      sub_19B9F5AA8(*buf);
      v15 = 1.0 - v13;
      if (!v12)
      {
        v15 = v13;
      }

      v16 = v15 * *(v14 + 40);
      if (v16 > a5)
      {
LABEL_22:
        v19 = 1;
        goto LABEL_55;
      }

      a5 = a5 - v16;
      if (v44)
      {
        v17 = 1.0;
      }

      else
      {
        v17 = 0.0;
      }

      sub_19B941414(a4);
      if (v44)
      {
        v18 = 1.0;
      }

      else
      {
        v18 = 0.0;
      }

      v49 = v18;
      v38 = &v38;
      v39 = &v38;
      v40 = 0;
      v19 = (*(**a1 + 72))(*a1, &v38, buf, v17, a5);
      if ((v19 & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v40 >= 2)
      {
        break;
      }

      if (v40 != 1)
      {
        goto LABEL_54;
      }

      v21 = v39[4];
      v20 = v39[5];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v42;
      *buf = v21;
      v42 = v20;
      if (v22)
      {
        sub_19B8750F8(v22);
      }

      v44 = *(v39 + 24);
      v49 = *(v39 + 6);
      sub_19B941414(&v38);
      if (!--v11)
      {
        goto LABEL_22;
      }
    }

    if (&v38 != a4)
    {
      v26 = v39;
      v27 = a4[1];
      if (v39 != &v38 && v27 != a4)
      {
        do
        {
          v28 = v26[2];
          *(v27 + 12) = *(v26 + 12);
          v27[2] = v28;
          v30 = v26[4];
          v29 = v26[5];
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          v31 = v27[5];
          v27[4] = v30;
          v27[5] = v29;
          if (v31)
          {
            sub_19B8750F8(v31);
          }

          v27[6] = v26[6];
          v26 = v26[1];
          v27 = v27[1];
        }

        while (v26 != &v38 && v27 != a4);
      }

      if (v27 == a4)
      {
        if (v26 != &v38)
        {
          sub_19BA300BC();
        }
      }

      else
      {
        v32 = *(*a4 + 8);
        v33 = *v27;
        *(v33 + 8) = v32;
        *v32 = v33;
        do
        {
          v34 = v27[1];
          --a4[2];
          v35 = v27[5];
          if (v35)
          {
            sub_19B8750F8(v35);
          }

          operator delete(v27);
          v27 = v34;
        }

        while (v34 != a4);
      }
    }

LABEL_54:
    sub_19B941414(&v38);
LABEL_55:
    if (v42)
    {
      sub_19B8750F8(v42);
    }
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v23 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, findMultiOutboundIntersection", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LOWORD(v38) = 0;
      v25 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::findMultiOutboundIntersection(CLMapGeometryPtr, const CLMapGeometry::DistanceQueryResult &, BOOL, double, CLMapGeometry::ConnectedQueryResultList &)", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v19 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_19BA2211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_19B941414(&a11);
  if (a16)
  {
    sub_19B8750F8(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA221A4(void *a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = (a2 + 40);
  v2 = *(a2 + 40);
  a1[28] = *(a2 + 400);
  v4 = *(a2 + 384);
  if (*(a2 + 48) != v2)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v5 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,initialized called on already initialized filter", &buf, 0xCu);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v49) = 134349056;
      *(&v49 + 4) = v4;
      v7 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v7);
      if (v7 != &buf)
      {
        free(v7);
      }
    }

    v8 = 0;
    goto LABEL_124;
  }

  sub_19BA2ECC0((a2 + 40));
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v59 = 0;
  buf = 0uLL;
  *&v49 = &buf;
  sub_19B988734(&v49);
  v11.n128_u64[0] = *(a2 + 456);
  v12 = *(a2 + 576);
  if (v12 > 0.0)
  {
    v13 = *(a2 + 584);
    if (v13 > 0.0)
    {
      v11.n128_f64[0] = sqrt(v13 / 2.45 * (v13 / 2.45) + v12 / 2.45 * (v12 / 2.45));
    }
  }

  v44 = &v44;
  v45 = &v44;
  v46 = 0;
  v14 = a1[26];
  v15 = a1[27];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v30 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, initialize", &buf, 0xCu);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) != 0 && (*(v31 + 164) & 0x80000000) != 0 && (*(v31 + 168) & 0x80000000) != 0 && !*(v31 + 152))
    {
      goto LABEL_120;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_117;
    }

    goto LABEL_132;
  }

  v11.n128_f64[0] = v11.n128_f64[0] * 4.0;
  if (v11.n128_f64[0] < 75.0)
  {
    v11.n128_f64[0] = 75.0;
  }

  if (v11.n128_f64[0] > 250.0)
  {
    v11.n128_f64[0] = 250.0;
  }

  v14[9] = 0;
  if (((*(*v14 + 64))(v14, &v44, v3 + 42, 1, v11) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v32 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsWithinDistance returned false", &buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if (*(v33 + 160) <= 1 && *(v33 + 164) <= 1 && *(v33 + 168) <= 1 && !*(v33 + 152))
    {
      goto LABEL_120;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_82;
    }

    goto LABEL_130;
  }

  if (!v46)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v38 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v38, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadsWithinDistance returned 0 roads", &buf, 0xCu);
    }

    v39 = sub_19B87DD40();
    if (*(v39 + 160) <= 1 && *(v39 + 164) <= 1 && *(v39 + 168) <= 1 && !*(v39 + 152))
    {
      goto LABEL_120;
    }

    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_82;
    }

LABEL_130:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_82:
    LODWORD(v49) = 134349056;
    *(&v49 + 4) = v4;
    v34 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v34);
    goto LABEL_118;
  }

  v16 = v45;
  if (v45 != &v44)
  {
    while (1)
    {
      LODWORD(v50) = 0;
      v49 = 0uLL;
      WORD2(v50) = 1;
      DWORD2(v50) = 0;
      v56 = 0;
      v57 = 0;
      __p = 0;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0;
      v18 = v16[2];
      v17 = v16[3];
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        v19 = *(&v49 + 1);
        *&v49 = v18;
        *(&v49 + 1) = v17;
        if (v19)
        {
          sub_19B8750F8(v19);
          v18 = v49;
        }
      }

      else
      {
        v49 = v16[2];
      }

      v20 = *(v16 + 3);
      v50 = *(v16 + 2);
      v51 = v20;
      *&v52 = v16[8];
      if (v18)
      {
        break;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v24 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v4;
        _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected, NULL road at initialization", &buf, 0xCu);
      }

      v25 = sub_19B87DD40();
      if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v47 = 134349056;
        v48 = v4;
        v26 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v26);
        if (v26 != &buf)
        {
          free(v26);
        }
      }

LABEL_54:
      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }

      if (*(&v49 + 1))
      {
        sub_19B8750F8(*(&v49 + 1));
      }

      if (!v18)
      {
        goto LABEL_120;
      }

      v16 = v16[1];
      if (v16 == &v44)
      {
        goto LABEL_83;
      }
    }

    sub_19B973C04(v3, &v49);
    v21 = a1[26];
    if (!v21)
    {
LABEL_51:
      BYTE4(v50) ^= 1u;
      v28 = fmod((*(&v50 + 2) + 180.0), 360.0);
      if (v28 < 0.0)
      {
        v28 = v28 + 360.0;
      }

      v29 = v28;
      *(&v50 + 2) = v29;
      sub_19B973C04(v3, &v49);
      goto LABEL_54;
    }

    if (!(*(*v21 + 104))(v21))
    {
      goto LABEL_48;
    }

    v22 = *(v49 + 88);
    if (v22 == 3)
    {
      v23 = 1;
      goto LABEL_49;
    }

    if (v22)
    {
LABEL_48:
      v23 = 0;
    }

    else
    {
      v23 = *(v49 + 80);
    }

LABEL_49:
    v27 = a1[26];
    if (v27 && !(v23 & 1 | (((*(*v27 + 104))(v27) & 1) == 0)))
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

LABEL_83:
  if (*(a2 + 48) != *(a2 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v35 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134349056;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,filter initialized", &buf, 0xCu);
    }

    v36 = sub_19B87DD40();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(&buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LODWORD(v49) = 134349056;
      *(&v49 + 4) = v4;
      v37 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v37);
      if (v37 != &buf)
      {
        free(v37);
      }
    }

    v8 = 1;
    goto LABEL_121;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v40 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,zero particles at initialization", &buf, 0xCu);
  }

  v41 = sub_19B87DD40();
  if ((*(v41 + 160) & 0x80000000) == 0 || (*(v41 + 164) & 0x80000000) == 0 || (*(v41 + 168) & 0x80000000) == 0 || *(v41 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
LABEL_117:
      LODWORD(v49) = 134349056;
      *(&v49 + 4) = v4;
      v34 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::initialize(MMFilterData &)", "CoreLocation: %s\n", v34);
LABEL_118:
      if (v34 != &buf)
      {
        free(v34);
      }

      goto LABEL_120;
    }

LABEL_132:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_117;
  }

LABEL_120:
  v8 = 0;
LABEL_121:
  if (v15)
  {
    sub_19B8750F8(v15);
  }

  sub_19B916DC0(&v44);
LABEL_124:
  v42 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_19BA22E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    sub_19B8750F8(v6);
  }

  sub_19B916DC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA22ED4(uint64_t a1, double *a2, uint64_t a3, __n128 a4)
{
  v5 = a2[12];
  a4.n128_u64[0] = *(a1 + 24);
  if (a4.n128_f64[0] >= 0.0)
  {
    goto LABEL_15;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    v9 = (*(*v8 + 104))(v8);
    a4.n128_u64[0] = 0.75;
    if (v9)
    {
      a4.n128_f64[0] = 2.5;
    }
  }

  else
  {
    a4.n128_u64[0] = 0.75;
  }

  if (a2[3] - *(a1 + 232) < 900.0)
  {
    v10 = *(a1 + 208);
    if (v10)
    {
      v11 = (*(*v10 + 104))(v10, a4);
      a4.n128_u64[0] = 0.375;
      if (v11)
      {
        a4.n128_f64[0] = 1.25;
      }
    }

    else
    {
      a4.n128_u64[0] = 0.375;
    }
  }

  if (a2[23] > 0.0 && a2[12] >= 0.0 || *(a3 + 424) <= 0.0 || (v12 = *(a3 + 336), v12 < 0.0) || (v14 = a2[3], v14 >= 0.0) && (v15 = *(a3 + 264), v15 >= 0.0) && vabdd_f64(v14, v15) > 2.2)
  {
LABEL_15:
    v12 = v5;
  }

  return (v12 > a4.n128_f64[0]) | *(a3 + 504) & 1u;
}

uint64_t sub_19BA23038(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v4 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    *buf = 134349312;
    v12 = v5;
    v13 = 1026;
    v14 = v3;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,allowsNetworkUsage,%{public}d", buf, 0x12u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v10 = *(a2 + 8);
    v7 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallUseNetwork(const CLMapCrumb &)", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_19BA2322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 104);
  if (v6 > 0.0 && *(a2 + 192) <= 0.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v7 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 8);
      v9 = *(a2 + 104);
      v10 = *(a2 + 192);
      *buf = 134349568;
      v82 = v8;
      v83 = 2050;
      v84 = v9;
      v85 = 2050;
      v86 = v10;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "CLMMPED,match,%{public}.1lf,course invalidated as courseUnc was invalid,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v12 = *(a2 + 8);
      v13 = *(a2 + 104);
      v14 = *(a2 + 192);
      v75 = 134349568;
      v76 = v12;
      v77 = 2050;
      v78 = v13;
      v79 = 2050;
      v80 = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a2 + 104) = 0xBFF0000000000000;
    *(a2 + 192) = 0xBFF0000000000000;
    v6 = -1.0;
  }

  v16 = *(a3 + 264);
  if (v16 <= 0.0)
  {
    goto LABEL_106;
  }

  v17 = *(a2 + 24);
  v18 = vabdd_f64(v17, v16);
  if (*(a2 + 184) <= 0.0 || (v19 = *(a2 + 96), v19 < 0.0) || v19 >= 0.001)
  {
    v20 = *(a2 + 228);
  }

  else
  {
    v20 = 1;
  }

  v23 = v18 < 2.2;
  v21 = *(a2 + 192);
  v22 = v23 || v17 < 0.0;
  v23 = v21 <= 0.0 || v6 < 0.0;
  if (v23 && (v20 & 1) != 0 && v22)
  {
    v24 = *(a3 + 432);
    if (v24 < 90.0 && v24 > 0.0)
    {
      v25 = *(a3 + 344);
      if (v25 >= 0.0)
      {
        *(a2 + 104) = v25;
        *(a2 + 192) = v24;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v26 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a2 + 8);
          v28 = *(a2 + 104);
          v29 = *(a2 + 192);
          *buf = 134349568;
          v82 = v27;
          v83 = 2050;
          v84 = v28;
          v85 = 2050;
          v86 = v29;
          _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,match,%{public}.1lf,invalidCourseInfoUpdatedUsingPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
        }

        v30 = sub_19B87DD40();
        if (*(v30 + 160) <= 1 && *(v30 + 164) <= 1 && *(v30 + 168) <= 1 && !*(v30 + 152))
        {
          goto LABEL_79;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 == -1)
        {
          goto LABEL_77;
        }

LABEL_122:
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_77:
        v44 = *(a2 + 8);
        v45 = *(a2 + 104);
        v46 = *(a2 + 192);
        v75 = 134349568;
        v76 = v44;
        v77 = 2050;
        v78 = v45;
        v79 = 2050;
        v80 = v46;
        v47 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v47);
        if (v47 != buf)
        {
          free(v47);
        }

        goto LABEL_79;
      }
    }
  }

  if (v6 >= 0.0 && v21 > 179.9)
  {
    if (!v22 || (v31 = *(a3 + 432), v31 >= 90.0) || v31 <= 0.0 || *(a3 + 344) < 0.0 || *(a3 + 504) != 1 || !*(a3 + 120))
    {
      *(a2 + 104) = 0xBFF0000000000000;
      *(a2 + 192) = 0xBFF0000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v39 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v40 = *(a2 + 8);
        v41 = *(a2 + 104);
        v42 = *(a2 + 192);
        *buf = 134349568;
        v82 = v40;
        v83 = 2050;
        v84 = v41;
        v85 = 2050;
        v86 = v42;
        _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseInvalidated,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v43 = sub_19B87DD40();
      if (*(v43 + 160) <= 1 && *(v43 + 164) <= 1 && *(v43 + 168) <= 1 && !*(v43 + 152))
      {
        goto LABEL_79;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_77;
      }

      goto LABEL_122;
    }

    v73[0] = v73;
    v73[1] = v73;
    v74 = 0;
    sub_19BA218DC(*(a1 + 208), *(a1 + 216), (a3 + 120), v73);
    v32 = *(a3 + 168);
    v33 = v32 >= 0.07 && v32 <= 0.93;
    if (v33 || v74 < 2)
    {
      *(a2 + 104) = *(a3 + 344);
      v63 = *(a3 + 432);
      if (v63 < 29.9)
      {
        v63 = 29.9;
      }

      *(a2 + 192) = v63;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v64 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v65 = *(a2 + 8);
        v66 = *(a2 + 104);
        v67 = *(a2 + 192);
        *buf = 134349568;
        v82 = v65;
        v83 = 2050;
        v84 = v66;
        v85 = 2050;
        v86 = v67;
        _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,highCourseUncDataReplacedWithPreviousEpochInfo,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v68 = sub_19B87DD40();
      if (*(v68 + 160) <= 1 && *(v68 + 164) <= 1 && *(v68 + 168) <= 1 && !*(v68 + 152))
      {
        goto LABEL_121;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_119;
      }
    }

    else
    {
      *(a2 + 104) = 0xBFF0000000000000;
      *(a2 + 192) = 0xBFF0000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v34 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a2 + 8);
        v36 = *(a2 + 104);
        v37 = *(a2 + 192);
        *buf = 134349568;
        v82 = v35;
        v83 = 2050;
        v84 = v36;
        v85 = 2050;
        v86 = v37;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseInvalidated,particle near multioutbound intersection,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v38 = sub_19B87DD40();
      if (*(v38 + 160) <= 1 && *(v38 + 164) <= 1 && *(v38 + 168) <= 1 && !*(v38 + 152))
      {
        goto LABEL_121;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_119:
        v69 = *(a2 + 8);
        v70 = *(a2 + 104);
        v71 = *(a2 + 192);
        v75 = 134349568;
        v76 = v69;
        v77 = 2050;
        v78 = v70;
        v79 = 2050;
        v80 = v71;
        v72 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }

LABEL_121:
        sub_19B941414(v73);
        goto LABEL_79;
      }
    }

    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_119;
  }

LABEL_79:
  v48 = *(a2 + 192);
  v49 = *(a2 + 104);
  if (v48 > 0.0 && v49 >= 0.0)
  {
    if (v48 < 13.0)
    {
      *(a2 + 192) = 0x402A000000000000;
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v50 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v51 = *(a2 + 8);
        v52 = *(a2 + 104);
        v53 = *(a2 + 192);
        *buf = 134349568;
        v82 = v51;
        v83 = 2050;
        v84 = v52;
        v85 = 2050;
        v86 = v53;
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseUncFloorApplied,course,%{public}.2lf,courseUnc,%{public}.2lf", buf, 0x20u);
      }

      v54 = sub_19B87DD40();
      if (*(v54 + 160) > 1 || *(v54 + 164) > 1 || *(v54 + 168) > 1 || *(v54 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v55 = *(a2 + 8);
        v56 = *(a2 + 104);
        v57 = *(a2 + 192);
        v75 = 134349568;
        v76 = v55;
        v77 = 2050;
        v78 = v56;
        v79 = 2050;
        v80 = v57;
        v58 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual void CLParticleMM::CLPedestrianMapMatcherFilter::prefilterCourse(CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }
    }

    v48 = *(a2 + 192);
    v49 = *(a2 + 104);
  }

  if (v48 <= 0.0)
  {
    goto LABEL_105;
  }

  if (v49 < 0.0)
  {
    goto LABEL_105;
  }

  if (*(a3 + 432) <= 0.0)
  {
    goto LABEL_105;
  }

  v59 = *(a3 + 344);
  if (v59 < 0.0 || !v22)
  {
    goto LABEL_105;
  }

  v60 = fmod(v49 - v59, 360.0);
  if (v60 < 0.0)
  {
    v60 = v60 + 360.0;
  }

  if (v60 > 180.0)
  {
    v60 = v60 + -360.0;
  }

  v61 = fabs(v60);
  if ((*(a1 + 1032) & 1) == 0)
  {
    *(a1 + 1032) = v61 > 14.0;
    goto LABEL_106;
  }

  if (v61 < 8.0)
  {
LABEL_105:
    *(a1 + 1032) = 0;
  }

LABEL_106:
  v62 = *MEMORY[0x1E69E9840];
}

void sub_19BA23EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_19B941414(va);
  _Unwind_Resume(a1);
}

double sub_19BA23F20(uint64_t a1, uint64_t a2, double *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 24);
  if (v4 >= 0.0 && (v5 = a3[33], v5 >= 0.0))
  {
    v12 = (v4 - v5) * (v4 - v5);
    v13 = *(a2 + 184);
    v14 = 0.0;
    if (v13 <= 0.0 || (v15 = *(a2 + 96), v15 < 0.0) || (v16 = a3[53], v16 <= 0.0))
    {
      v18 = 0.0;
    }

    else
    {
      v17 = a3[42];
      v18 = 0.0;
      if (v17 >= 0.0)
      {
        v14 = v12 * ((v16 * v16 + v13 * v13) * 0.25);
        v18 = v12 * ((v15 + v17) * 0.5 * ((v15 + v17) * 0.5 * 0.25));
      }
    }

    v19 = *MEMORY[0x1E69E9840];
    return sqrt(v12 * 3.0 + v14 + v18);
  }

  else
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v6 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a2 + 8);
      *buf = 134349312;
      v22 = v7;
      v23 = 2050;
      v24 = 0xBFF0000000000000;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", buf, 0x16u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v20 = *(a2 + 8);
      v9 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual double CLParticleMM::CLPedestrianMapMatcherFilter::getProcessNoise(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = *MEMORY[0x1E69E9840];
    return 0.0;
  }
}

uint64_t sub_19BA241C4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (*(a3 + 746) != 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a3 + 128);
    v25 = *(a3 + 120);
    v26 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a3 + 152);
    v27 = *(a3 + 136);
    v28 = v12;
    v29 = *(a3 + 168);
    v30[0] = *(a3 + 176);
    *(v30 + 9) = *(a3 + 185);
    v32 = 0;
    v33 = 0;
    v13 = *(a3 + 208);
    v14 = *(a3 + 216);
    __p = 0;
    sub_19B96775C(&__p, v13, v14, 0x8E38E38E38E38E39 * ((v14 - v13) >> 3));
    if (v25)
    {
      BYTE4(v27) ^= 1u;
      v15 = fmod((*(&v27 + 2) + 180.0), 360.0);
      if (v15 < 0.0)
      {
        v15 = v15 + 360.0;
      }

      v16 = v15;
      *(&v27 + 2) = v16;
      if (byte_1EAFE4E38)
      {
        byte_1EAFE4E38 = 0;
        v17 = *&dword_1EAFE4E3C;
      }

      else
      {
        do
        {
          v18 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v19 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
          v20 = (v19 * v19) + (v18 * v18);
        }

        while (v20 >= 1.0);
        v17 = 0.0;
        if (v20 != 0.0)
        {
          v21 = sqrtf((logf((v19 * v19) + (v18 * v18)) * -2.0) / v20);
          *&dword_1EAFE4E3C = v19 * v21;
          byte_1EAFE4E38 = 1;
          v17 = v18 * v21;
        }
      }

      if (sub_19BA1FDF8(a1, &v25, *(a2 + 384), v17 * a4 + a5))
      {
        sub_19B973C04(a2 + 40, &v25);
        v22 = 0;
        v9 = (v9 + 1);
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 4;
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v26)
    {
      sub_19B8750F8(v26);
    }

    if ((v22 | 4) != 4)
    {
      break;
    }

    if (++v10 == 3)
    {
      return v9;
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_19BA24428(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B966FCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19BA24454(uint64_t a1, double *a2, _DWORD *a3, uint64_t *a4, double a5, uint64_t a6, void *a7, void *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 208);
  v14 = *(a1 + 216);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v15)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, multiOutboundHelper", buf, 2u);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      LOWORD(v39) = 0;
      v33 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::multiOutboundHelper(CLMapGeometry::DistanceQueryResult &, int &, double, CLMapGeometry::IntersectionQueryResultList &, CLMapGeometry::IntersectionQueryResultList &, double &, double &) const", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    v21 = 0;
LABEL_38:
    if (!v14)
    {
      goto LABEL_40;
    }

LABEL_39:
    sub_19B8750F8(v14);
    goto LABEL_40;
  }

  *a7 = 0;
  *a8 = 0;
  *a3 = 0;
  v16 = *(a2 + 20);
  v17 = a2[6];
  v18 = *a2;
  sub_19B9F5AA8(*a2);
  v19 = 1.0 - v17;
  if (!v16)
  {
    v19 = v17;
  }

  v20 = v19 * *(*&v18 + 40);
  v21 = 1;
  if (v20 > a5)
  {
    goto LABEL_38;
  }

  v22 = a5 - v20;
  if (*(a2 + 20))
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  sub_19B916DC0(a4);
  *a3 = 0;
  v25 = *(*a2 + 136);
  v24 = *(*a2 + 144);
  if (*(a2 + 20) == 1)
  {
    if (v24 == v25)
    {
      *a7 = 0;
      v26 = 0;
    }

    else
    {
      *a7 = *(v24 - 2);
      v26 = *(v24 - 1);
    }

    v27 = 1.0;
  }

  else if (v24 == v25)
  {
    *a7 = 0;
    v27 = 0.0;
    v26 = 0;
  }

  else
  {
    *a7 = *v25;
    v26 = v25[1];
    v27 = 0.0;
  }

  *a8 = v26;
  a2[6] = v27;
  v39 = &v39;
  v40 = &v39;
  v41 = 0;
  v21 = (*(*v15 + 72))(v15, &v39, a2, v23, v22);
  if (v21)
  {
    if (v41 >= 2)
    {
      *buf = 0;
      v43 = 0;
      v46 = 0;
      if (v40 != &v39)
      {
        v44 = *(v40 + 24);
        v45 = v40[6];
        v37 = v40[4];
        v36 = v40[5];
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
        }

        v38 = v43;
        *buf = v37;
        v43 = v36;
        if (v38)
        {
          sub_19B8750F8(v38);
        }

        v46 = 1;
        sub_19B9131FC();
      }
    }

    else if (v41 == 1)
    {
      *buf = 0;
      v43 = 0;
      v46 = 0;
      v44 = *(v40 + 24);
      v45 = v40[6];
      v28 = v40[4];
      v29 = v40[5];
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
        v30 = v43;
        *buf = v28;
        v43 = v29;
        if (v30)
        {
          sub_19B8750F8(v30);
        }
      }

      else
      {
        *buf = v40[4];
        v43 = 0;
      }

      v46 = 1;
      sub_19B9131FC();
    }
  }

  sub_19B941414(&v39);
  if (v14)
  {
    goto LABEL_39;
  }

LABEL_40:
  v34 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_19BA248DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v18)
  {
    sub_19B8750F8(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA2492C(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 9) == 1 && (v3 = *(a1 + 1880), v4 = *(a1 + 1888), v3 != v4) && ((v6 = *(a1 + 1872), v7 = vabdd_f64(*(a2 + 400), v6), v6 >= 0.0) ? (v8 = v7 <= 2.5) : (v8 = 0), v8))
  {
    LODWORD(result) = 0;
    v31 = *(a2 + 384);
    v30 = v4;
    while (2)
    {
      v33 = result;
      v11 = *(v3 + 8);
      v35 = *v3;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = *(v3 + 16);
      v36 = *(v3 + 20);
      v37 = *(v3 + 21);
      v38 = *(v3 + 23);
      v34 = *(v3 + 24);
      v13 = *(v3 + 28);
      v14 = *(v3 + 32);
      v15 = *(v3 + 40);
      v16 = 1;
      v32 = v3;
      v17 = *(v3 + 48);
      do
      {
        v18 = v16;
        memset(buf, 0, 20);
        *&buf[20] = 1;
        LODWORD(v41) = 0;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        memset(v42, 0, sizeof(v42));
        v43 = 0u;
        v44 = 0;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v19 = *&buf[8];
          *buf = v35;
          *&buf[8] = v11;
          if (v19)
          {
            sub_19B8750F8(v19);
          }
        }

        else
        {
          *buf = v35;
          *&buf[8] = 0;
        }

        *&buf[16] = v12;
        buf[20] = v36;
        *&buf[21] = v37;
        buf[23] = v38;
        v41 = __PAIR64__(v13, LODWORD(v34));
        v42[0] = v14;
        v42[1] = v15;
        v42[2] = v17;
        if (byte_1EAFE4E38)
        {
          byte_1EAFE4E38 = 0;
          v20 = *&dword_1EAFE4E3C;
        }

        else
        {
          do
          {
            v21 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
            v22 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
            v23 = (v22 * v22) + (v21 * v21);
          }

          while (v23 >= 1.0);
          v20 = 0.0;
          if (v23 != 0.0)
          {
            v24 = sqrtf((logf((v22 * v22) + (v21 * v21)) * -2.0) / v23);
            *&dword_1EAFE4E3C = v22 * v24;
            byte_1EAFE4E38 = 1;
            v20 = v21 * v24;
          }
        }

        v25 = sub_19BA1FDF8(a1, buf, *(a2 + 384), v20);
        if (v25)
        {
          sub_19B973C04(a2 + 40, buf);
          ++v33;
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (*&buf[8])
        {
          sub_19B8750F8(*&buf[8]);
        }

        if ((v25 & 1) == 0)
        {
          if (v11)
          {
            sub_19B8750F8(v11);
          }

          result = 0xFFFFFFFFLL;
          goto LABEL_8;
        }

        v16 = 0;
      }

      while ((v18 & 1) != 0);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v26 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v27 = *v35;
        *buf = 134350337;
        *&buf[4] = v31;
        *&buf[12] = 2053;
        *&buf[14] = v14;
        *&buf[22] = 2053;
        v41 = v15;
        LOWORD(v42[0]) = 2050;
        *(v42 + 2) = v34;
        WORD1(v42[1]) = 2049;
        *(&v42[1] + 4) = v27;
        WORD2(v42[2]) = 1026;
        *(&v42[2] + 6) = v36;
        _os_log_impl(&dword_19B873000, v26, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHint,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,rseg,%{private}lld,fwd,%{public}d", buf, 0x3Au);
      }

      v28 = sub_19B87DD40();
      if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v39 = *v35;
        v29 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "int CLParticleMM::CLPedestrianMapMatcherFilter::addRouteHintParticles(MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      if (v11)
      {
        sub_19B8750F8(v11);
      }

      v3 = v32 + 56;
      result = v33;
      if (v32 + 56 != v30)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    result = 0;
  }

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA24E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (v29)
  {
    sub_19B8750F8(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA24E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = *MEMORY[0x1E69E9840];
  if (*(a4 + 264) <= 0.0)
  {
    v44 = 1;
    goto LABEL_91;
  }

  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v7)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v45 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "CLMMPED,Unexpected,invalid geometry pointer, predict", buf, 2u);
    }

    v46 = sub_19B87DD40();
    if ((*(v46 + 160) & 0x80000000) != 0 && (*(v46 + 164) & 0x80000000) != 0 && (*(v46 + 168) & 0x80000000) != 0 && !*(v46 + 152))
    {
      goto LABEL_88;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v122 = 0;
    v47 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v47);
    if (v47 == buf)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  if (v10 < 0.0 || (v11 = *(a4 + 264), v11 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v12 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a2 + 8);
      *buf = 134349312;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = 0xBFF0000000000000;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected, negtive dT,%{public}.1lf", buf, 0x16u);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || (v17 = 0.0, *(v14 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v15 = *(a2 + 8);
      *v122 = 134349312;
      *&v122[4] = v15;
      *&v122[12] = 2050;
      *&v122[14] = 0xBFF0000000000000;
      v16 = _os_log_send_and_compose_impl();
      v14 = sub_19B885924("Generic", 1, 0, 0, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }

      v17 = 0.0;
    }

LABEL_19:
    *(a3 + 856) = v17;
    if (*(a3 + 48) != *(a3 + 40))
    {
      v107 = *(a3 + 48) - *(a3 + 40);
      v111 = v17;
      v112 = sub_19BA23F20(v14, a2, a4);
      v19 = *(a3 + 40);
      v18 = *(a3 + 48);
      v109 = a3;
      if (v19 != v18)
      {
        v20 = 0;
        do
        {
          v21 = v9;
          if (byte_1EAFE4E38)
          {
            byte_1EAFE4E38 = 0;
            v22 = *&dword_1EAFE4E3C;
          }

          else
          {
            do
            {
              v23 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v24 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
              v25 = (v24 * v24) + (v23 * v23);
            }

            while (v25 >= 1.0);
            v22 = 0.0;
            if (v25 != 0.0)
            {
              v26 = sqrtf((logf((v24 * v24) + (v23 * v23)) * -2.0) / v25);
              *&dword_1EAFE4E3C = v24 * v26;
              byte_1EAFE4E38 = 1;
              v22 = v23 * v26;
            }
          }

          v27 = v22;
          v28 = v112 * v27;
          v29 = fabs(v27);
          if ((-252645135 * v20) <= 0xF0F0F0F)
          {
            v28 = v29 * 34.0;
          }

          v30 = v29 * 8.0;
          v31 = (-1171354717 * v20) <= 0x1745D174 && v112 < 8.0;
          if (!v31)
          {
            v30 = v28;
          }

          v9 = v21;
          if ((sub_19BA1FDF8(a1, v19, v21, v111 + v30) & 1) == 0)
          {
            goto LABEL_235;
          }

          ++v20;
          v19 += 14;
        }

        while (v19 != v18);
      }

      if (*(a1 + 1064) == 1)
      {
        v32 = a4;
        v33 = v111;
        if (*(a4 + 504) == 1)
        {
          v34 = sub_19BA0C01C((a1 + 168), *(a4 + 392), *(a4 + 400), *(a1 + 1120), *(a1 + 1128), *(a4 + 312));
          if (*(a1 + 1200) >= 1)
          {
            v108 = 0;
            v35 = 0;
            v36 = v111 + v34;
            if (v36 <= 0.0)
            {
              v37 = 0.1;
            }

            else
            {
              v37 = v36 + 0.0;
            }

LABEL_42:
            v38 = 4;
            while (1)
            {
              v39 = *(a1 + 1096);
              *buf = *(a1 + 1088);
              *&buf[8] = v39;
              if (v39)
              {
                atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
              }

              v40 = *(a1 + 1120);
              *&buf[16] = *(a1 + 1104);
              *&buf[32] = v40;
              v127[0] = *(a1 + 1136);
              *&v127[1] = *(a1 + 1144);
              *(&v127[2] + 1) = *(a1 + 1153);
              v129 = 0;
              v130 = 0;
              v41 = *(a1 + 1176);
              v42 = *(a1 + 1184);
              __p = 0;
              sub_19B96775C(&__p, v41, v42, 0x8E38E38E38E38E39 * ((v42 - v41) >> 3));
              if (*buf)
              {
                if (sub_19BA1FDF8(a1, buf, v9, v37))
                {
                  if (**(a1 + 1088) == **buf && *(a1 + 1108) != buf[20])
                  {
                    v43 = 0;
                  }

                  else
                  {
                    sub_19B973C04(v109 + 40, buf);
                    v43 = 0;
                    ++v108;
                  }
                }

                else
                {
                  v43 = 1;
                }
              }

              else
              {
                v43 = 7;
              }

              if (__p)
              {
                v129 = __p;
                operator delete(__p);
              }

              if (*&buf[8])
              {
                sub_19B8750F8(*&buf[8]);
              }

              if (v43 != 7 && v43)
              {
                goto LABEL_88;
              }

              if (!--v38)
              {
                if (++v35 < *(a1 + 1200))
                {
                  goto LABEL_42;
                }

                v32 = a4;
                if (v108 != -1)
                {
                  goto LABEL_101;
                }

                goto LABEL_88;
              }
            }
          }
        }

        v108 = 0;
      }

      else
      {
        v108 = 0;
        v32 = a4;
        v33 = v111;
      }

LABEL_101:
      if (*(v32 + 504) != 1)
      {
        v61 = 0;
        v62 = 0;
        v60 = v109;
        goto LABEL_171;
      }

      memset(v122, 0, 20);
      v122[21] = 0;
      *&v122[24] = 0;
      *&v122[32] = 0;
      *&v122[40] = 0;
      v58 = *(v32 + 120);
      v59 = *(v32 + 128);
      v60 = v109;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        *v122 = v58;
        *&v122[8] = v59;
      }

      else
      {
        *v122 = *(v32 + 120);
      }

      v122[20] = *(v32 + 140);
      *v123 = *(v32 + 168);
      if (!v58)
      {
        v61 = -1;
        goto LABEL_150;
      }

      v119 = 0;
      v116 = &v116;
      v117 = &v116;
      v118 = 0;
      v113 = &v113;
      v114 = &v113;
      v115 = 0;
      sub_19BA24454(a1, v122, &v119, &v113, 80.0, &v116, &v121, &v120);
      if ((a1 + 1808) != &v113)
      {
        sub_19B91737C((a1 + 1808), v114, &v113);
      }

      if ((a1 + 1784) != &v116)
      {
        sub_19B91737C((a1 + 1784), v117, &v116);
      }

      v63 = v117;
      if (v117 == &v116)
      {
        v61 = 0;
LABEL_132:
        v69 = v114;
        if (v114 == &v113)
        {
          goto LABEL_149;
        }

LABEL_133:
        v70 = 6;
        while (1)
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v129 = 0;
          v130 = 0;
          __p = 0;
          *&buf[32] = 0u;
          memset(v127, 0, 33);
          v71 = *(v69 + 16);
          v72 = *(v69 + 24);
          if (v72)
          {
            atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
            v73 = *&buf[8];
            *buf = v71;
            *&buf[8] = v72;
            if (v73)
            {
              sub_19B8750F8(v73);
            }
          }

          else
          {
            *buf = *(v69 + 16);
            *&buf[8] = 0;
          }

          v127[0] = *(v69 + 40);
          buf[20] = *(v69 + 32);
          v74 = sub_19BA1FDF8(a1, buf, v9, ((v61 + 1) % 6) * 3.5);
          if (v74)
          {
            sub_19B973C04(v109 + 40, buf);
            ++v61;
          }

          if (__p)
          {
            v129 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if ((v74 & 1) == 0)
          {
            break;
          }

          if (!--v70)
          {
            v69 = *(v69 + 8);
            if (v69 != &v113)
            {
              goto LABEL_133;
            }

            goto LABEL_149;
          }
        }
      }

      else
      {
        v61 = 0;
LABEL_113:
        v64 = 6;
        while (1)
        {
          memset(buf, 0, 20);
          *&buf[20] = 1;
          *&buf[24] = 0;
          v129 = 0;
          v130 = 0;
          __p = 0;
          *&buf[32] = 0u;
          memset(v127, 0, 33);
          v65 = *(v63 + 16);
          v66 = *(v63 + 24);
          if (v66)
          {
            atomic_fetch_add_explicit((v66 + 8), 1uLL, memory_order_relaxed);
            v67 = *&buf[8];
            *buf = v65;
            *&buf[8] = v66;
            if (v67)
            {
              sub_19B8750F8(v67);
            }
          }

          else
          {
            *buf = *(v63 + 16);
            *&buf[8] = 0;
          }

          v127[0] = *(v63 + 40);
          buf[20] = *(v63 + 32);
          v68 = sub_19BA1FDF8(a1, buf, v9, ((v61 + 1) % 6) * 3.5);
          if (v68)
          {
            sub_19B973C04(v109 + 40, buf);
            ++v61;
          }

          if (__p)
          {
            v129 = __p;
            operator delete(__p);
          }

          if (*&buf[8])
          {
            sub_19B8750F8(*&buf[8]);
          }

          if ((v68 & 1) == 0)
          {
            break;
          }

          if (!--v64)
          {
            v63 = *(v63 + 8);
            if (v63 != &v116)
            {
              goto LABEL_113;
            }

            goto LABEL_132;
          }
        }
      }

      v61 = -1;
LABEL_149:
      sub_19B916DC0(&v113);
      sub_19B916DC0(&v116);
      v59 = *&v122[8];
      v60 = v109;
      v32 = a4;
LABEL_150:
      if (v59)
      {
        sub_19B8750F8(v59);
      }

      if (v61 != -1)
      {
        if (*(v32 + 504))
        {
          if (*(v32 + 120))
          {
            v75 = 0;
            while (1)
            {
              v76 = *(a4 + 128);
              *buf = *(a4 + 120);
              *&buf[8] = v76;
              if (v76)
              {
                atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
              }

              v77 = v9;
              v78 = *(a4 + 152);
              *&buf[16] = *(a4 + 136);
              *&buf[32] = v78;
              v127[0] = *(a4 + 168);
              *&v127[1] = *(a4 + 176);
              *(&v127[2] + 1) = *(a4 + 185);
              v129 = 0;
              v130 = 0;
              v79 = *(a4 + 208);
              v80 = *(a4 + 216);
              __p = 0;
              sub_19B96775C(&__p, v79, v80, 0x8E38E38E38E38E39 * ((v80 - v79) >> 3));
              if (byte_1EAFE4E38)
              {
                byte_1EAFE4E38 = 0;
                v81 = *&dword_1EAFE4E3C;
              }

              else
              {
                do
                {
                  v82 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                  v83 = (vcvts_n_f32_s64(random(), 0x1FuLL) * 2.0) + -1.0;
                  v84 = (v83 * v83) + (v82 * v82);
                }

                while (v84 >= 1.0);
                v81 = 0.0;
                if (v84 != 0.0)
                {
                  v85 = sqrtf((logf((v83 * v83) + (v82 * v82)) * -2.0) / v84);
                  *&dword_1EAFE4E3C = v83 * v85;
                  byte_1EAFE4E38 = 1;
                  v81 = v82 * v85;
                }
              }

              v9 = v77;
              if ((sub_19BA1FDF8(a1, buf, v77, v112 * v81 + 0.0) & 1) == 0)
              {
                break;
              }

              sub_19B973C04(v109 + 40, buf);
              if (__p)
              {
                v129 = __p;
                operator delete(__p);
              }

              if (*&buf[8])
              {
                sub_19B8750F8(*&buf[8]);
              }

              if (++v75 == 12)
              {
                v62 = 12;
                v60 = v109;
                v32 = a4;
                v33 = v111;
                goto LABEL_171;
              }
            }

            if (__p)
            {
              v129 = __p;
              operator delete(__p);
            }

            if (*&buf[8])
            {
              sub_19B8750F8(*&buf[8]);
            }
          }

          goto LABEL_88;
        }

        v62 = 0;
LABEL_171:
        v86 = sub_19BA241C4(a1, v60, v32, v112, v33);
        if (v86 != -1)
        {
          v87 = 0;
          if (*(v32 + 745) == 1 && *v32)
          {
            v88 = 4;
            do
            {
              sub_19B973C04(v109 + 40, v32);
              --v88;
            }

            while (v88);
            v87 = 4;
          }

          v89 = sub_19BA2492C(a1, v109);
          if (v89 != -1)
          {
            v90 = *(v109 + 40);
            v91 = *(v109 + 48);
            while (v90 != v91)
            {
              v90[7] = 0;
              v90[8] = 0;
              v90[9] = 0;
              v90[12] = v90[11];
              v90 += 14;
            }

            v92 = v8;
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v93 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v94 = -1227133513 * ((*(v109 + 48) - *(v109 + 40)) >> 4);
              *buf = 134351104;
              *&buf[4] = v9;
              *&buf[12] = 1026;
              *&buf[14] = v94;
              *&buf[18] = 2050;
              *&buf[20] = 0x6DB6DB6DB6DB6DB7 * (v107 >> 4);
              *&buf[28] = 1026;
              *&buf[30] = v108;
              *&buf[34] = 1026;
              *&buf[36] = v61;
              *&buf[40] = 1026;
              *&buf[42] = v62;
              *&buf[46] = 1026;
              LODWORD(v127[0]) = v86;
              WORD2(v127[0]) = 1026;
              *(v127 + 6) = v87;
              WORD1(v127[1]) = 1026;
              HIDWORD(v127[1]) = v89;
              _os_log_impl(&dword_19B873000, v93, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,prediction,%{public}d,NrParticles,%{public}lu,NrPriorIntersectionParticles,%{public}d,NrNewFwdIntersectionParticles,%{public}d,NrNewBiasedToPrior,%{public}d,NrNewBiasedToPriorOppositeDirection,%{public}d,NrNewAmbiguous,%{public}d,numNewRouteParticles,%{public}d", buf, 0x40u);
            }

            v8 = v92;
            v95 = sub_19B87DD40();
            if (*(v95 + 160) > 1 || *(v95 + 164) > 1 || *(v95 + 168) > 1 || *(v95 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v96 = -1227133513 * ((*(v109 + 48) - *(v109 + 40)) >> 4);
              *v122 = 134351104;
              *&v122[4] = v9;
              *&v122[12] = 1026;
              *&v122[14] = v96;
              *&v122[18] = 2050;
              *&v122[20] = 0x6DB6DB6DB6DB6DB7 * (v107 >> 4);
              *&v122[28] = 1026;
              *&v122[30] = v108;
              *&v122[34] = 1026;
              *&v122[36] = v61;
              *&v122[40] = 1026;
              *&v122[42] = v62;
              *&v122[46] = 1026;
              *v123 = v86;
              *&v123[4] = 1026;
              *&v123[6] = v87;
              v124 = 1026;
              v125 = v89;
              v97 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v97);
              if (v97 != buf)
              {
                free(v97);
              }
            }

            v44 = 1;
            goto LABEL_89;
          }
        }
      }

LABEL_88:
      v44 = 0;
      goto LABEL_89;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v48 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v9;
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,predict called with 0 particles", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if ((*(v49 + 160) & 0x80000000) == 0 || (*(v49 + 164) & 0x80000000) == 0 || (*(v49 + 168) & 0x80000000) == 0 || *(v49 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v122 = 134349056;
      *&v122[4] = v9;
      v47 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::predict(CLMapCrumb &, MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v47);
      goto LABEL_86;
    }

    goto LABEL_235;
  }

  v52 = vabdd_f64(v10, v11);
  v53 = -1.0;
  v54 = -1.0;
  if (*(a2 + 184) > 0.0)
  {
    v55 = *(a2 + 96);
    if (v55 >= 0.0)
    {
      if (v52 >= 2.2 || *(a4 + 424) <= 0.0)
      {
        v54 = *(a2 + 96);
      }

      else
      {
        v56 = *(a4 + 336);
        v31 = v56 < 0.0;
        v57 = (v55 + v56) * 0.5;
        if (v31)
        {
          v54 = *(a2 + 96);
        }

        else
        {
          v54 = v57;
        }
      }
    }
  }

  if (v54 < 0.0)
  {
    v98 = 0.0;
  }

  else
  {
    v98 = v52 * v54;
  }

  if (v52 >= 2.2)
  {
    goto LABEL_221;
  }

  v17 = v98;
  if (*(a4 + 320) <= 0.0)
  {
    goto LABEL_222;
  }

  v53 = sub_19BA0C01C((a1 + 168), *(a2 + 56), *(a2 + 64), *(a4 + 296), *(a4 + 304), *(a2 + 72));
  if (v53 <= 300.0)
  {
    if (v54 > 0.0 && v53 >= 0.0 && (*(a2 + 228) & 1) == 0)
    {
      v17 = (v98 + v53) * 0.5;
      goto LABEL_222;
    }

    if (v53 >= 0.0)
    {
      if (*(a2 + 228))
      {
        v17 = v98;
      }

      else
      {
        v17 = v53;
      }

LABEL_222:
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v103 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v104 = *(a2 + 8);
        *buf = 134349824;
        *&buf[4] = v104;
        *&buf[12] = 2050;
        *&buf[14] = v17;
        *&buf[22] = 2050;
        *&buf[24] = v98;
        *&buf[32] = 2050;
        *&buf[34] = v53;
        _os_log_impl(&dword_19B873000, v103, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,predictionAndUpdate, distance,%{public}.1lf,distBasedOnSpeed,%{public}.1lf,distBasedOnPos,%{public}.1lf", buf, 0x2Au);
      }

      v14 = sub_19B87DD40();
      if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v105 = *(a2 + 8);
        *v122 = 134349824;
        *&v122[4] = v105;
        *&v122[12] = 2050;
        *&v122[14] = v17;
        *&v122[22] = 2050;
        *&v122[24] = v98;
        *&v122[32] = 2050;
        *&v122[34] = v53;
        v106 = _os_log_send_and_compose_impl();
        v14 = sub_19B885924("Generic", 1, 0, 2, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v106);
        if (v106 != buf)
        {
          free(v106);
        }
      }

      if (v17 < 0.0)
      {
        goto LABEL_235;
      }

      goto LABEL_19;
    }

LABEL_221:
    v17 = v98;
    goto LABEL_222;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v99 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_INFO))
  {
    v100 = *(a2 + 8);
    *buf = 134349568;
    *&buf[4] = v100;
    *&buf[12] = 2050;
    *&buf[14] = v53;
    *&buf[22] = 2050;
    *&buf[24] = v52;
    _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_INFO, "#Warning,CLMMPED,%{public}.1lf,Position jump,%{public}.1lf,dT,%{public}.1lf", buf, 0x20u);
  }

  v101 = sub_19B87DD40();
  if (*(v101 + 160) > 1 || *(v101 + 164) > 1 || *(v101 + 168) > 1 || *(v101 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v102 = *(a2 + 8);
    *v122 = 134349568;
    *&v122[4] = v102;
    *&v122[12] = 2050;
    *&v122[14] = v53;
    *&v122[22] = 2050;
    *&v122[24] = v52;
    v47 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "double CLParticleMM::CLParticleMapMatcherFilterBase::getDistanceTravelled(const CLMapCrumb &, const MMSnapData &)", "CoreLocation: %s\n", v47);
LABEL_86:
    if (v47 == buf)
    {
      goto LABEL_88;
    }

LABEL_87:
    free(v47);
    goto LABEL_88;
  }

LABEL_235:
  v44 = 0;
LABEL_89:
  if (v8)
  {
    sub_19B8750F8(v8);
  }

LABEL_91:
  v50 = *MEMORY[0x1E69E9840];
  return v44;
}

void sub_19BA26300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36)
{
  if (a12)
  {
    sub_19B8750F8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19BA263B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v271 = *MEMORY[0x1E69E9840];
  v6 = a1[239];
  v7 = a1[238];
  if (v6 != v7)
  {
    sub_19B98984C(a1 + 241, v7, v6, 0xF83E0F83E0F83E1 * ((v6 - v7) >> 3));
  }

  sub_19B9882F8(v5 + 238);
  if (*(v5 + 9) != 1 || v5[235] == v5[236] || ((v8 = *(v5 + 234), v9 = vabdd_f64(*(a2 + 400), v8), v8 >= 0.0) ? (v10 = v9 <= 2.5) : (v10 = 0), !v10 || vabdd_f64(v8, *(v5 + 244)) < 60.0))
  {
    v11 = 0;
    goto LABEL_12;
  }

  v14 = *(a2 + 384);
  v16 = v5[26];
  v15 = v5[27];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v212 = v15;
  if (!v16)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v72 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v14;
      _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, generateRouteHint", buf, 0xCu);
    }

    v73 = sub_19B87DD40();
    if ((*(v73 + 160) & 0x80000000) == 0 || (*(v73 + 164) & 0x80000000) == 0 || (*(v73 + 168) & 0x80000000) == 0 || *(v73 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v242 = 134349056;
      *&v242[4] = v14;
      v74 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v74);
      if (v74 != buf)
      {
        free(v74);
      }
    }

    v11 = 0;
    v75 = v212;
    goto LABEL_231;
  }

  v225 = 0;
  v226 = 0;
  v227 = 0;
  v218 = v5;
  if (*(a3 + 504) != 1)
  {
    goto LABEL_31;
  }

  sub_19B97106C(a3 + 120, v223);
  v17 = v5[235];
  if (v17 == v5[236])
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18 = *v17;
    v19 = *(v17 + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *(v17 + 20);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v18;
      v22 = v18[1];
      sub_19B8750F8(v19);
    }

    else
    {
      v20 = *(v17 + 20);
      v21 = *v18;
      v22 = v18[1];
    }

    v24 = v223[0] == v21 && v224 == v20 && v223[1] == v22;
    v5 = v218;
    if (v19)
    {
      sub_19B8750F8(v19);
    }

    if (v24)
    {
      break;
    }

    v17 += 56;
    if (v17 == v218[236])
    {
      goto LABEL_31;
    }
  }

  v76 = *(a2 + 400);
  v77 = -6.0;
  if (v76 >= 0.0)
  {
    v78 = *(a3 + 264);
    v79 = vabdd_f64(v76, v78) * 6.0;
    if (v78 >= 0.0)
    {
      v77 = v79;
    }

    else
    {
      v77 = -6.0;
    }
  }

  v80 = fmax(*(a2 + 856), 0.0) + vcvts_n_f32_s64(random(), 0x1FuLL) * 0.25;
  if (v80 <= v77)
  {
    v77 = v80;
  }

  sub_19B973CD8(v254, a3 + 120);
  v220 = &v220;
  v221 = &v220;
  v222 = 0;
  if (v17 != v218[236])
  {
    sub_19B9117CC();
  }

  v219 = 0;
  if (((*(*v16 + 56))(v16, v254, &v220, &v219, *&v255[16], v77) & 1) == 0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v127 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v14;
      _os_log_impl(&dword_19B873000, v127, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,failed as not enough route roads are available", buf, 0xCu);
    }

    v128 = sub_19B87DD40();
    if (*(v128 + 160) <= 1 && *(v128 + 164) <= 1 && *(v128 + 168) <= 1 && !*(v128 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v242 = 134349056;
    *&v242[4] = v14;
    v129 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v129);
    goto LABEL_225;
  }

  if (v222 <= v219)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v130 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      *&buf[4] = v14;
      v261 = 1026;
      *v262 = v219;
      *&v262[4] = 2050;
      *&v262[6] = v222;
      _os_log_impl(&dword_19B873000, v130, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,route index,%{public}d,is more than number of route roads,%{public}ld", buf, 0x1Cu);
    }

    v131 = sub_19B87DD40();
    if ((*(v131 + 160) & 0x80000000) != 0 && (*(v131 + 164) & 0x80000000) != 0 && (*(v131 + 168) & 0x80000000) != 0 && !*(v131 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *v242 = 134349568;
    *&v242[4] = v14;
    *&v242[12] = 1026;
    *&v242[14] = v219;
    *&v242[18] = 2050;
    *&v242[20] = v222;
    v129 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v129);
    goto LABEL_225;
  }

  v81 = *&v254[24];
  v82 = 5.0;
  if (*&v255[16] > 0.97 || *&v255[16] < 0.03)
  {
LABEL_251:
    if (*(a2 + 568) <= 0.0)
    {
      goto LABEL_325;
    }

    v139 = *(a2 + 480);
    if (v139 < 0.0)
    {
      goto LABEL_325;
    }

    v214 = v82;
    v140 = fmod(v139 - v81, 360.0);
    if (v140 < 0.0)
    {
      v140 = v140 + 360.0;
    }

    v141 = -360.0;
    if (v140 > 180.0)
    {
      v140 = v140 + -360.0;
    }

    v217 = fabs(v140);
    if (v217 <= 50.0)
    {
LABEL_324:
      v82 = v214;
      goto LABEL_325;
    }

    v142 = 0;
    v143 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
    v144 = 1;
    while (1)
    {
      v145 = v142;
      v146 = v219 + v144;
      if (v222 > v146)
      {
        v147 = v221;
        if ((v146 & 0x80000000) != 0)
        {
          v149 = v219 + v144;
          do
          {
            v147 = *v147;
            _CF = __CFADD__(v149++, 1);
          }

          while (!_CF);
        }

        else if (v146)
        {
          v148 = v219 + v144 + 1;
          do
          {
            v147 = *(v147 + 8);
            --v148;
          }

          while (v148 > 1);
        }

        if (v147 == &v220 || (v150 = *(v147 + 16)) == 0)
        {
          if (*(v143 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v5 = v218;
          v82 = v214;
          v205 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v14;
            _os_log_impl(&dword_19B873000, v205, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,unexpected,routeHints,moving on to next route road,nullptr", buf, 0xCu);
          }

          v206 = sub_19B87DD40();
          if ((*(v206 + 160) & 0x80000000) == 0 || (*(v206 + 164) & 0x80000000) == 0 || (*(v206 + 168) & 0x80000000) == 0 || *(v206 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (*(v143 + 218) != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v242 = 134349056;
            *&v242[4] = v14;
            v207 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v207);
            if (v207 != buf)
            {
              free(v207);
            }
          }

          goto LABEL_325;
        }

        v151 = *(v147 + 40);
        v152 = fmod(v151 - v81, 360.0);
        if (v152 < 0.0)
        {
          v152 = v152 + 360.0;
        }

        if (v152 <= 180.0)
        {
          v153 = v152;
        }

        else
        {
          v153 = v152 + v141;
        }

        if (v153 >= 10.0)
        {
          goto LABEL_287;
        }

        sub_19B9F5AA8(v150);
        if (*(v150 + 40) >= 7.0)
        {
          v151 = *(v147 + 40);
LABEL_287:
          v158 = v81;
          v159 = fmod(v81 + v153 * 0.5, 360.0);
          if (v159 >= 0.0)
          {
            v160 = v159;
          }

          else
          {
            v160 = v159 + 360.0;
          }

          v161 = *(a2 + 480);
          v162 = fmod(v161 - v151, 360.0);
          if (v162 < 0.0)
          {
            v162 = v162 + 360.0;
          }

          if (v162 > 180.0)
          {
            v162 = v162 + v141;
          }

          v163 = v141;
          v164 = fabs(v162);
          v165 = fmod(v161 - v160, 360.0);
          if (v165 < 0.0)
          {
            v165 = v165 + 360.0;
          }

          v166 = v163;
          if (v165 > 180.0)
          {
            v165 = v165 + v163;
          }

          v167 = fabs(v165);
          if (v164 < 25.0 || v167 < 15.0)
          {
            if (*(v143 + 218) != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v168 = off_1EAFE4708;
            if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
            {
              v169 = *(a2 + 480);
              v170 = *(v147 + 40);
              *buf = 134350848;
              *&buf[4] = v14;
              v261 = 2050;
              *v262 = v169;
              *&v262[8] = 2050;
              *&v262[10] = v170;
              *&v262[18] = 2050;
              *&v262[20] = v158;
              v263 = 2050;
              v264 = v164;
              v265 = 2050;
              v266 = v160;
              v267 = 2050;
              v268 = v167;
              v269 = 2050;
              v270 = v217;
              _os_log_impl(&dword_19B873000, v168, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,crumb close to intersection and gpsCourse,%{public}.1lf,is matching with next road on route,%{public}.1lf,course,%{public}.1lf,nextCourseDiff,%{public}.1lf,approxCourseOfTurningRoad,%{public}.1lf,turningCourseDiff,%{public}.1lf,courseDiff,%{public}.1lf", buf, 0x52u);
            }

            v171 = sub_19B87DD40();
            if (*(v171 + 160) > 1 || *(v171 + 164) > 1 || *(v171 + 168) > 1 || *(v171 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (*(v143 + 218) != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v172 = *(a2 + 480);
              v173 = *(v147 + 40);
              *v242 = 134350848;
              *&v242[4] = v14;
              *&v242[12] = 2050;
              *&v242[14] = v172;
              *&v242[22] = 2050;
              *&v242[24] = v173;
              *&v242[32] = 2050;
              *&v242[34] = v158;
              *&v242[42] = 2050;
              *&v242[44] = v164;
              *&v242[52] = 2050;
              *&v242[54] = v160;
              *&v242[62] = 2050;
              *v243 = v167;
              *&v243[8] = 2050;
              *&v243[10] = v217;
              v174 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v174);
              if (v174 != buf)
              {
                free(v174);
              }
            }

            v176 = *(v147 + 16);
            v175 = *(v147 + 24);
            if (v175)
            {
              atomic_fetch_add_explicit((v175 + 8), 1uLL, memory_order_relaxed);
            }

            v177 = *&v254[8];
            *v254 = v176;
            *&v254[8] = v175;
            v141 = v166;
            if (v177)
            {
              sub_19B8750F8(v177);
            }

            v178 = *(v147 + 32);
            v179 = *(v147 + 48);
            *&v255[16] = *(v147 + 64);
            *&v254[16] = v178;
            *v255 = v179;
            v81 = *(v147 + 40);
            v219 = v146;
            v5 = v218;
          }

          else
          {
            v5 = v218;
            v81 = v158;
            v141 = v166;
          }

          goto LABEL_318;
        }

        if (*(v143 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v154 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v155 = *(v147 + 16);
          sub_19B9F5AA8(v155);
          v156 = v155[5];
          *buf = 134349824;
          *&buf[4] = v14;
          v261 = 1026;
          *v262 = v146;
          *&v262[4] = 2050;
          *&v262[6] = v153;
          *&v262[14] = 2050;
          *&v262[16] = v156;
          _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,moving on to next route road,nextRouteRoadIndex,%{public}d,angleBetweenTwoRoads,%{public}.2lf,length,%{public}.2lf", buf, 0x26u);
          v143 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
        }

        v157 = sub_19B87DD40();
        if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (*(v143 + 218) != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v180 = *(v147 + 16);
          sub_19B9F5AA8(v180);
          v181 = v180[5];
          *v242 = 134349824;
          *&v242[4] = v14;
          *&v242[12] = 1026;
          *&v242[14] = v146;
          *&v242[18] = 2050;
          *&v242[20] = v153;
          *&v242[28] = 2050;
          *&v242[30] = v181;
          v182 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v182);
          v5 = v218;
          v143 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
          if (v182 != buf)
          {
            free(v182);
          }
        }

        else
        {
          v5 = v218;
        }
      }

LABEL_318:
      v144 = 2;
      v142 = 1;
      if (v145)
      {
        goto LABEL_324;
      }
    }
  }

  if (*(a2 + 568) <= 0.0 || (v83 = *(a2 + 480), v83 < 0.0))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v132 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v14;
      v261 = 2050;
      *v262 = 0x403E000000000000;
      _os_log_impl(&dword_19B873000, v132, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,course deweighted,unc,%{public}.2lf", buf, 0x16u);
    }

    v133 = sub_19B87DD40();
    if (*(v133 + 160) > 1 || *(v133 + 164) > 1 || *(v133 + 168) > 1 || (v82 = 30.0, *(v133 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v242 = 134349312;
      *&v242[4] = v14;
      *&v242[12] = 2050;
      *&v242[14] = 0x403E000000000000;
      v134 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v134);
      if (v134 != buf)
      {
        free(v134);
      }

      v82 = 30.0;
    }

    goto LABEL_248;
  }

  v84 = fmod(v83 - v81, 360.0);
  if (v84 < 0.0)
  {
    v84 = v84 + 360.0;
  }

  if (v84 > 180.0)
  {
    v84 = v84 + -360.0;
  }

  v85 = fabs(v84);
  v86 = *(v218 + 518);
  if (v85 >= 135.0)
  {
    *(v218 + 518) = v86 + 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v199 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v200 = *(a2 + 480);
      v201 = *(v218 + 518);
      *buf = 134349824;
      *&buf[4] = v14;
      v261 = 2050;
      *v262 = v81;
      *&v262[8] = 2050;
      *&v262[10] = v200;
      *&v262[18] = 1026;
      *&v262[20] = v201;
      _os_log_impl(&dword_19B873000, v199, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
    }

    v202 = sub_19B87DD40();
    if (*(v202 + 160) <= 1 && *(v202 + 164) <= 1 && *(v202 + 168) <= 1 && !*(v202 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_362;
    }

    goto LABEL_388;
  }

  if (v85 > 60.0 && v86 >= 1)
  {
    *(v218 + 518) = v86 + 1;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v208 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v209 = *(a2 + 480);
      v210 = *(v218 + 518);
      *buf = 134349824;
      *&buf[4] = v14;
      v261 = 2050;
      *v262 = v81;
      *&v262[8] = 2050;
      *&v262[10] = v209;
      *&v262[18] = 1026;
      *&v262[20] = v210;
      _os_log_impl(&dword_19B873000, v208, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,no meas,moveOnRouteRoads,routeCourse,%{public}.1lf,is different than crumb course,%{public}.1lf, and rejections are high,rejection,%{public}d", buf, 0x26u);
    }

    v211 = sub_19B87DD40();
    if (*(v211 + 160) <= 1 && *(v211 + 164) <= 1 && *(v211 + 168) <= 1 && !*(v211 + 152))
    {
      goto LABEL_227;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 == -1)
    {
      goto LABEL_362;
    }

LABEL_388:
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_362:
    v203 = *(a2 + 480);
    v204 = *(v218 + 518);
    *v242 = 134349824;
    *&v242[4] = v14;
    *&v242[12] = 2050;
    *&v242[14] = v81;
    *&v242[22] = 2050;
    *&v242[24] = v203;
    *&v242[32] = 1026;
    *&v242[34] = v204;
    v129 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v129);
LABEL_225:
    if (v129 != buf)
    {
      free(v129);
    }

LABEL_227:
    sub_19B916DC0(&v220);
    sub_19B966FCC(v254);
    goto LABEL_228;
  }

  if (v85 <= 80.0)
  {
LABEL_248:
    v135 = v254[20];
    v136 = *&v255[16];
    v137 = *v254;
    sub_19B9F5AA8(*v254);
    v138 = 1.0 - v136;
    if (!v135)
    {
      v138 = v136;
    }

    if (v138 * *(v137 + 40) >= 15.0)
    {
LABEL_325:
      v183 = *v255;
      v184 = *&v255[8];
      v185 = v221;
      v186 = v219;
      if (v219 < 0)
      {
        do
        {
          v185 = *v185;
          _CF = __CFADD__(v186++, 1);
        }

        while (!_CF);
      }

      else if (v219)
      {
        v187 = v219 + 1;
        do
        {
          v185 = v185[1];
          --v187;
        }

        while (v187 > 1);
      }

      v188 = sub_19BA0C01C((v5 + 21), *v255, *&v255[8], *(v185 + 6), *(v185 + 7), 0.0);
      memset(v242, 0, 24);
      *&v242[24] = xmmword_19BA89720;
      v242[40] = 0;
      *&v242[48] = 0u;
      *v243 = 0u;
      __asm { FMOV            V1.2D, #-1.0 }

      v247 = _Q1;
      *&v248[0] = 0xBFF0000000000000;
      v249 = 0.0;
      v250 = 0;
      LODWORD(v251) = 0;
      WORD2(v251) = 1;
      DWORD2(v251) = 0;
      v253 = 0;
      v252 = 0uLL;
      *&v243[16] = v183;
      *&v243[24] = v184;
      *&v244 = *(a2 + 448);
      *(&v244 + 1) = v81;
      if (v188 < 8.0)
      {
        v188 = 8.0;
      }

      *v245 = v188;
      *(v245 + 1) = v82;
      *&v245[1] = 0x3FF0000000000000;
      v190 = *(a2 + 560);
      *(&v245[1] + 1) = *(a2 + 472);
      *&v246 = v190;
      BYTE8(v246) = *(a2 + 604);
      *(v248 + 8) = vextq_s8(*(a2 + 392), *(a2 + 392), 8uLL);
      *(&v248[1] + 1) = *(a2 + 384);
      sub_19B988344(v242, 0);
      v192 = *v254;
      v191 = *&v254[8];
      if (*&v254[8])
      {
        atomic_fetch_add_explicit((*&v254[8] + 8), 1uLL, memory_order_relaxed);
      }

      v193 = v250;
      v249 = v192;
      v250 = v191;
      if (v193)
      {
        sub_19B8750F8(v193);
      }

      v251 = *&v254[16];
      v252 = *v255;
      v253 = *&v255[16];
      sub_19B989CC8(&v225, v242);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v194 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v195 = 0xF83E0F83E0F83E1 * ((v5[239] - v5[238]) >> 3);
        *buf = 134350593;
        *&buf[4] = v14;
        v261 = 2053;
        *v262 = *&v243[16];
        *&v262[8] = 2053;
        *&v262[10] = *&v243[24];
        *&v262[18] = 2050;
        *&v262[20] = *(&v244 + 1);
        v263 = 2050;
        v264 = *v245;
        v265 = 2050;
        v266 = *(v245 + 1);
        v267 = 2050;
        v268 = *&v195;
        _os_log_impl(&dword_19B873000, v194, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,meas,moveOnRouteRoads,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu", buf, 0x48u);
      }

      v196 = sub_19B87DD40();
      if (*(v196 + 160) > 1 || *(v196 + 164) > 1 || *(v196 + 168) > 1 || *(v196 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v197 = 0xF83E0F83E0F83E1 * ((v5[239] - v5[238]) >> 3);
        v228 = 134350593;
        v229 = v14;
        v230 = 2053;
        v231 = *&v243[16];
        v232 = 2053;
        v233 = *&v243[24];
        v234 = 2050;
        v235 = *(&v244 + 1);
        v236 = 2050;
        v237 = *&v245[0];
        v238 = 2050;
        v239 = *(&v245[0] + 1);
        v240 = 2050;
        v241 = v197;
        v198 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v198);
        if (v198 != buf)
        {
          free(v198);
        }
      }

      if (v250)
      {
        sub_19B8750F8(v250);
      }

      goto LABEL_352;
    }

    goto LABEL_251;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v88 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v89 = *(a2 + 480);
    *buf = 134349568;
    *&buf[4] = v14;
    v261 = 2050;
    *v262 = v81;
    *&v262[8] = 2050;
    *&v262[10] = v89;
    _os_log_impl(&dword_19B873000, v88, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,skipping,moveOnRouteRoads meas,routeCourse,%{public}.1lf,is somewhat different than crumb course,%{public}.1lf", buf, 0x20u);
  }

  v90 = sub_19B87DD40();
  v5 = v218;
  if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v91 = *(a2 + 480);
    *v242 = 134349568;
    *&v242[4] = v14;
    *&v242[12] = 2050;
    *&v242[14] = v81;
    *&v242[22] = 2050;
    *&v242[24] = v91;
    v92 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v92);
    if (v92 != buf)
    {
      free(v92);
    }

    v5 = v218;
  }

LABEL_352:
  sub_19B916DC0(&v220);
  sub_19B966FCC(v254);
LABEL_31:
  v25 = v225;
  v216 = v226;
  if (v226 != v225)
  {
    goto LABEL_145;
  }

  v26 = v5[235];
  v215 = v5[236];
  if (v26 == v215)
  {
    goto LABEL_145;
  }

  v27 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v213 = _Q0;
  v31 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
  do
  {
    v32 = sub_19BA0C01C((v218 + 21), v26[4], v26[5], *(a2 + 408), *(a2 + 416), 0.0);
    memset(v242, 0, 24);
    *&v242[24] = xmmword_19BA89720;
    v242[40] = 0;
    *&v242[48] = 0u;
    *v243 = 0u;
    v247 = v213;
    *&v248[0] = 0xBFF0000000000000;
    LODWORD(v251) = 0;
    v249 = 0.0;
    v250 = 0;
    WORD2(v251) = 1;
    DWORD2(v251) = 0;
    v253 = 0;
    v252 = 0uLL;
    *&v243[16] = *(v26 + 2);
    *&v244 = *(a2 + 448);
    v33 = *(v26 + 6);
    if (v32 < 8.0)
    {
      v32 = 8.0;
    }

    *(&v244 + 1) = *(v26 + 6);
    *v245 = v32;
    *(v245 + 8) = xmmword_19BA8D470;
    v34 = *(a2 + 560);
    *(&v245[1] + 1) = *(a2 + 472);
    *&v246 = v34;
    BYTE8(v246) = *(a2 + 604);
    *(v248 + 8) = vextq_s8(*(a2 + 392), *(a2 + 392), 8uLL);
    *(&v248[1] + 1) = *(a2 + 384);
    sub_19B988344(v242, 0);
    *&v245[1] = 1.0 / *(v245 + 1);
    v36 = *v26;
    v35 = *(v26 + 1);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = v250;
    v249 = v36;
    v250 = v35;
    if (v37)
    {
      sub_19B8750F8(v37);
    }

    v38 = *(v26 + 1);
    v39 = *(v26 + 2);
    v253 = *(v26 + 6);
    v251 = v38;
    v252 = v39;
    if (*(a2 + 568) <= 0.0 || (v40 = *(a2 + 480), v40 < 0.0))
    {
      if (*(a3 + 746) != 1)
      {
        goto LABEL_53;
      }

      v40 = *(a3 + 408);
      if (v40 < 0.0)
      {
        goto LABEL_53;
      }
    }

    v41 = fmod(v40 - *(&v244 + 1), 360.0);
    if (v41 < 0.0)
    {
      v41 = v41 + 360.0;
    }

    v42 = v41 + -360.0;
    if (v41 <= 180.0)
    {
      v42 = v41;
    }

    if ((v43 = fabs(v42), v43 < 135.0) && (v43 <= 60.0 || *(v218 + 518) <= 0) && (v43 <= 80.0 || (0x6DB6DB6DB6DB6DB7 * ((v218[236] - v218[235]) >> 3)) < 2))
    {
      if (v42 == 0.0)
      {
        v53 = *&v245[1];
      }

      else
      {
        v53 = 1.0 / v43;
      }

      *&v245[1] = v53;
      sub_19B988344(v242, 0);
      v54 = v226;
      if (v226 >= v227)
      {
        v67 = sub_19B989D6C(&v225, v242);
      }

      else
      {
        *v226 = *v242;
        v55 = *&v242[16];
        v56 = *&v242[32];
        v57 = *v243;
        *(v54 + 3) = *&v242[48];
        *(v54 + 4) = v57;
        *(v54 + 1) = v55;
        *(v54 + 2) = v56;
        v58 = *&v243[16];
        v59 = v244;
        v60 = v245[1];
        *(v54 + 7) = v245[0];
        *(v54 + 8) = v60;
        *(v54 + 5) = v58;
        *(v54 + 6) = v59;
        v61 = v246;
        v62 = v247;
        v63 = v248[1];
        *(v54 + 11) = v248[0];
        *(v54 + 12) = v63;
        *(v54 + 9) = v61;
        *(v54 + 10) = v62;
        v54[26] = v249;
        v64 = v250;
        *(v54 + 27) = v250;
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v65 = v251;
        v66 = v252;
        *(v54 + 32) = v253;
        *(v54 + 14) = v65;
        *(v54 + 15) = v66;
        v67 = (v54 + 33);
      }

      v226 = v67;
      if (*(v31 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v68 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v69 = 0xF83E0F83E0F83E1 * ((v218[239] - v218[238]) >> 3);
        *buf = 134350849;
        *&buf[4] = v14;
        v261 = 2053;
        *v262 = *&v243[16];
        *&v262[8] = 2053;
        *&v262[10] = *&v243[24];
        *&v262[18] = 2050;
        *&v262[20] = *(&v244 + 1);
        v263 = 2050;
        v264 = *v245;
        v265 = 2050;
        v266 = *(v245 + 1);
        v267 = 2050;
        v268 = *&v69;
        v269 = 2050;
        v270 = *&v245[1];
        _os_log_impl(&dword_19B873000, v68, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,meas,projection,ll,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.3lf,hunc,%{public}.3lf,cunc,%{public}.3lf,count,%{public}lu,confidence,%{public}.4lf", buf, 0x52u);
      }

      v70 = sub_19B87DD40();
      if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v31 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v71 = 0xF83E0F83E0F83E1 * ((v218[239] - v218[238]) >> 3);
        *v254 = 134350849;
        *&v254[4] = v14;
        *&v254[12] = 2053;
        *&v254[14] = *&v243[16];
        *&v254[22] = 2053;
        *&v254[24] = *&v243[24];
        *v255 = 2050;
        *&v255[2] = *(&v244 + 1);
        *&v255[10] = 2050;
        *&v255[12] = *&v245[0];
        *&v255[20] = 2050;
        *&v255[22] = *(&v245[0] + 1);
        v256 = 2050;
        v257 = v71;
        v258 = 2050;
        v259 = *&v245[1];
        v52 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v52);
        goto LABEL_64;
      }
    }

    else
    {
LABEL_53:
      if (*(v31 + 218) != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v44 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(v26 + 6);
        v46 = *(a2 + 480);
        v47 = *(v218 + 518);
        *buf = 134349824;
        *&buf[4] = v14;
        v261 = 2050;
        *v262 = v45;
        *&v262[8] = 2050;
        *&v262[10] = v46;
        *&v262[18] = 1026;
        *&v262[20] = v47;
        _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints, no meas, projection,routeCourse,%{public}.1lf,is very different than crumb course,%{public}.1lf,rejection,%{public}d", buf, 0x26u);
      }

      v48 = sub_19B87DD40();
      ++v27;
      if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (*(v31 + 218) != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v49 = *(v26 + 6);
        v50 = *(a2 + 480);
        v51 = *(v218 + 518);
        *v254 = 134349824;
        *&v254[4] = v14;
        *&v254[12] = 2050;
        *&v254[14] = v49;
        *&v254[22] = 2050;
        *&v254[24] = v50;
        *v255 = 1026;
        *&v255[2] = v51;
        v52 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v52);
LABEL_64:
        if (v52 != buf)
        {
          free(v52);
        }

        v31 = &OBJC_IVAR___CLTripSegmentOutputData__tripSegmentID;
      }
    }

    if (v250)
    {
      sub_19B8750F8(v250);
    }

    v26 += 7;
  }

  while (v26 != v215);
  v25 = v225;
  v216 = v226;
  if (v27 > 0 && 0x6DB6DB6DB6DB6DB7 * ((v218[236] - v218[235]) >> 3) == v27 && v226 == v225)
  {
    v5 = v218;
    ++*(v218 + 518);
  }

  else
  {
    v5 = v218;
  }

LABEL_145:
  if (v216 == v25)
  {
LABEL_228:
    v11 = 0;
    goto LABEL_229;
  }

  *(v5 + 518) = 0;
  v93 = -1.0;
  v94 = 0.0;
  v95 = -1.0;
  do
  {
    v96 = v5[241];
    v97 = v5[242];
    if (v96 == v97)
    {
      goto LABEL_174;
    }

    v98 = 1;
    do
    {
      v99 = vabdd_f64(v96[23], *(v25 + 184));
      if (v93 < 0.0)
      {
        v93 = v99;
      }

      v100 = sub_19BA0C01C((v5 + 21), *(v25 + 80), *(v25 + 88), v96[10], v96[11], 0.0);
      if (v100 < v95 || v95 < 0.0)
      {
        v95 = v100;
      }

      if (v100 < 0.001)
      {
        v102 = *(v25 + 256) >= 0.2;
        *v254 = v254;
        *&v254[8] = v254;
        *&v254[16] = 0;
        if ((*(*v16 + 72))(v16, v254, v25 + 208, v102, 0))
        {
          v103 = *&v254[16];
          v98 = *&v254[16] > 1uLL;
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v104 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v14;
            v261 = 1026;
            *v262 = v103 > 1;
            *&v262[4] = 2050;
            *&v262[6] = *&v254[16];
            _os_log_impl(&dword_19B873000, v104, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,duplicate measurement check,measurementGood,%{public}d,vector,%{public}lu", buf, 0x1Cu);
          }

          v105 = sub_19B87DD40();
          v5 = v218;
          if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            *v242 = 134349568;
            *&v242[4] = v14;
            *&v242[12] = 1026;
            *&v242[14] = v103 > 1;
            *&v242[18] = 2050;
            *&v242[20] = *&v254[16];
            v106 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v106);
            if (v106 != buf)
            {
              free(v106);
            }

            v5 = v218;
          }
        }

        sub_19B941414(v254);
      }

      v96 += 33;
    }

    while (v96 != v97);
    if (v98)
    {
LABEL_174:
      v107 = *(v25 + 128);
      v108 = v5[239];
      if (v108 >= v5[240])
      {
        v121 = sub_19B989D6C(v5 + 238, v25);
      }

      else
      {
        *v108 = *v25;
        v109 = *(v25 + 16);
        v110 = *(v25 + 32);
        v111 = *(v25 + 64);
        *(v108 + 48) = *(v25 + 48);
        *(v108 + 64) = v111;
        *(v108 + 16) = v109;
        *(v108 + 32) = v110;
        v112 = *(v25 + 80);
        v113 = *(v25 + 96);
        v114 = *(v25 + 128);
        *(v108 + 112) = *(v25 + 112);
        *(v108 + 128) = v114;
        *(v108 + 80) = v112;
        *(v108 + 96) = v113;
        v115 = *(v25 + 144);
        v116 = *(v25 + 160);
        v117 = *(v25 + 192);
        *(v108 + 176) = *(v25 + 176);
        *(v108 + 192) = v117;
        *(v108 + 144) = v115;
        *(v108 + 160) = v116;
        *(v108 + 208) = *(v25 + 208);
        v118 = *(v25 + 216);
        *(v108 + 216) = v118;
        if (v118)
        {
          atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
        }

        v119 = *(v25 + 224);
        v120 = *(v25 + 240);
        *(v108 + 256) = *(v25 + 256);
        *(v108 + 224) = v119;
        *(v108 + 240) = v120;
        v121 = v108 + 264;
      }

      v94 = v94 + v107;
      v5[239] = v121;
    }

    v25 += 264;
  }

  while (v25 != v216);
  if (v95 >= 0.0 && v93 > 0.0 && v93 < 5.0 && v95 > v93 * 6.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v122 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349312;
      *&buf[4] = v14;
      v261 = 2050;
      *v262 = v95;
      _os_log_impl(&dword_19B873000, v122, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,routeHints,jump in route hint measurement,%{public}.3lf,rejecting", buf, 0x16u);
    }

    v123 = sub_19B87DD40();
    if (*(v123 + 160) > 1 || *(v123 + 164) > 1 || *(v123 + 168) > 1 || *(v123 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      *v242 = 134349312;
      *&v242[4] = v14;
      *&v242[12] = 2050;
      *&v242[14] = v95;
      v124 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateRouteHintMeasurement(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v124);
      if (v124 != buf)
      {
        free(v124);
      }
    }

    sub_19B9882F8(v5 + 238);
    goto LABEL_228;
  }

  if (v94 <= 0.0 || (v125 = v5[238], v126 = v5[239], v125 == v126))
  {
    v11 = 1;
LABEL_229:
    v75 = v212;
    goto LABEL_230;
  }

  v75 = v212;
  do
  {
    *(v125 + 128) = *(v125 + 128) / v94;
    v125 += 264;
  }

  while (v125 != v126);
  v11 = 1;
LABEL_230:
  *buf = &v225;
  sub_19B98868C(buf);
LABEL_231:
  if (v75)
  {
    sub_19B8750F8(v75);
  }

LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_19BA28BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_19B916DC0(&a30);
  sub_19B966FCC(&STACK[0x250]);
  *(v36 + 112) = &a36;
  sub_19B98868C(&STACK[0x2C0]);
  if (a14)
  {
    sub_19B8750F8(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19BA28CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v218 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    result = 0;
    goto LABEL_201;
  }

  v6 = *(a2 + 384);
  v7 = *(a1 + 208);
  v8 = *(a1 + 216);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(a1 + 1872);
    v10 = v9 < 0.0;
    if (vabdd_f64(*(a2 + 400), v9) > 6.0)
    {
      v10 = 1;
    }

    v187 = v10;
    if (!v10)
    {
      v21 = 0;
      LODWORD(v11) = 0;
      goto LABEL_57;
    }

    v11 = *(a2 + 256);
    if (!v11)
    {
      v21 = 0;
      goto LABEL_57;
    }

    v12 = 25.0;
    v13 = 15.0;
    if (*(a1 + 12))
    {
      v12 = 15.0;
      v13 = 5.0;
    }

    if (*(v11 + 96) * 1.5 >= 0.0)
    {
      v13 = *(v11 + 96) * 1.5;
    }

    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = *(a2 + 276);
    v16 = *(a2 + 304);
    sub_19B9F5AA8(*(a2 + 256));
    v17 = 1.0 - v16;
    if (!v15)
    {
      v17 = v16;
    }

    v18 = *(a2 + 276);
    v19 = *(a2 + 304);
    if (v17 * *(v11 + 40) >= v14)
    {
      v20 = 1.0 - v19;
      if (*(a2 + 276))
      {
        v20 = *(a2 + 304);
      }

      if (v20 < 0.99)
      {
        v21 = 0;
        LODWORD(v11) = 0;
        goto LABEL_52;
      }
    }

    v27 = *(a2 + 256);
    sub_19B9F5AA8(v27);
    v28 = 1.0 - v19;
    if ((v18 & 1) == 0)
    {
      v28 = v19;
    }

    v29 = v28 * *(v27 + 40);
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    if (!(*(*v7 + 72))(v7, buf, a2 + 256, *(a2 + 276), 1, *(a2 + 304), v29 + 1.0))
    {
      goto LABEL_45;
    }

    if (*&buf[16])
    {
      if (*&buf[16] != 1 || **(a2 + 256) != *(*&buf[8] + 16) || (v30 = *(a2 + 276), v30 == *(*&buf[8] + 24)))
      {
LABEL_45:
        v21 = 0;
        LODWORD(v11) = 0;
LABEL_51:
        sub_19B941414(buf);
LABEL_52:
        if (*(a1 + 12) == 1)
        {
          v32 = *(a2 + 276);
          v33 = *(a2 + 304);
          v34 = *(a2 + 256);
          sub_19B9F5AA8(v34);
          v35 = 1.0 - v33;
          if (!v32)
          {
            v35 = v33;
          }

          if (v35 * *(v34 + 40) < v14)
          {
            LODWORD(v11) = 1;
          }
        }

LABEL_57:
        v36 = *(a2 + 616);
        v37 = *(a2 + 368);
        v38 = *(a2 + 896) ^ 1;
        v39 = fabs(*(a3 + 480));
        if (*(a3 + 504))
        {
          v40 = v39;
        }

        else
        {
          v40 = -1.0;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v189 = v38 & v37;
        v41 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a2 + 384);
          v43 = *(a2 + 608);
          v44 = *(a2 + 632);
          *buf = 134350592;
          *&buf[4] = v42;
          *&buf[12] = 2050;
          *&buf[14] = v36;
          *&buf[22] = 2050;
          *&buf[24] = v40;
          *&buf[32] = 1026;
          *v206 = v189 & 1;
          *&v206[4] = 2050;
          *&v206[6] = v43;
          *&v206[14] = 2050;
          *&v206[16] = v44;
          *&v206[24] = 1026;
          *&v206[26] = v11;
          _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,evaluateMatch,oldOffRoadCount,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf,atIntersection,%{public}d,varFactor,%{public}.2lf,acrossTrack,%{public}.2lf,isAmbiguous,%{public}d", buf, 0x40u);
        }

        v45 = sub_19B87DD40();
        if (*(v45 + 160) > 1 || *(v45 + 164) > 1 || *(v45 + 168) > 1 || *(v45 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v46 = *(a2 + 384);
          v47 = *(a2 + 608);
          v48 = *(a2 + 632);
          *__p = 134350592;
          *&__p[4] = v46;
          *&__p[12] = 2050;
          *&__p[14] = v36;
          *&__p[22] = 2050;
          *&__p[24] = v40;
          *&__p[32] = 1026;
          *v193 = v189 & 1;
          *&v193[4] = 2050;
          *&v193[6] = v47;
          *&v193[14] = 2050;
          *&v193[16] = v48;
          *&v193[24] = 1026;
          *&v193[26] = v11;
          v49 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }

        v50 = *(a2 + 608);
        v188 = a3;
        v186 = v21;
        if ((v36 < 25.0) | v189 & 1)
        {
          if (v50 > 12)
          {
            if (v50 <= 16)
            {
              if ((v50 - 15) >= 2)
              {
                if (v50 != 13)
                {
                  if (v50 != 14)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_86;
                }

LABEL_117:
                v51 = 1;
                v52 = 1;
LABEL_93:
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v53 = off_1EAFE4708;
                if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                {
                  v54 = *(a2 + 384);
                  v55 = *(a1 + 1208);
                  *buf = 134349568;
                  *&buf[4] = v54;
                  *&buf[12] = 1026;
                  *&buf[14] = v55;
                  *&buf[18] = 1026;
                  *&buf[20] = v55 + v52;
                  _os_log_impl(&dword_19B873000, v53, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,varFactorCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
                }

                v56 = sub_19B87DD40();
                if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v57 = *(a2 + 384);
                  v58 = *(a1 + 1208);
                  *__p = 134349568;
                  *&__p[4] = v57;
                  *&__p[12] = 1026;
                  *&__p[14] = v58;
                  *&__p[18] = 1026;
                  *&__p[20] = v58 + v52;
                  v59 = _os_log_send_and_compose_impl();
                  sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v59);
                  if (v59 != buf)
                  {
                    free(v59);
                  }
                }

                *(a1 + 1208) = (*(a1 + 1208) + v52) & ~((*(a1 + 1208) + v52) >> 31);
                v60 = *(a2 + 568);
                if (v60 <= 0.0 || *(a2 + 480) < 0.0 || *(a2 + 560) > 0.0 && (v61 = *(a2 + 472), v61 >= 0.0) && v61 < 0.001 || (*(a2 + 604) & 1) != 0 || fabs(*(a2 + 632)) <= 25.0)
                {
LABEL_148:
                  v71 = *(a2 + 456);
                  v72 = *(a2 + 576);
                  if (v72 > 0.0)
                  {
                    v73 = *(a2 + 584);
                    if (v73 > 0.0)
                    {
                      v71 = sqrt(v73 / 2.45 * (v73 / 2.45) + v72 / 2.45 * (v72 / 2.45));
                    }
                  }

                  if (v71 >= 10.0)
                  {
                    v74 = v71;
                  }

                  else
                  {
                    v74 = 10.0;
                  }

                  if (v74 >= 50.0)
                  {
                    v75 = 1;
                  }

                  else
                  {
                    v75 = v51;
                  }

                  if ((v75 & 1) == 0)
                  {
                    if (fabs(*(a2 + 632)) <= 75.0 && fabs(*(a2 + 624)) <= 150.0)
                    {
                      v51 = 0;
                    }

                    else
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v76 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v77 = *(a2 + 384);
                        v78 = *(a1 + 1208);
                        *buf = 134349568;
                        *&buf[4] = v77;
                        *&buf[12] = 1026;
                        *&buf[14] = v78;
                        *&buf[18] = 1026;
                        *&buf[20] = v78 + 1;
                        _os_log_impl(&dword_19B873000, v76, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
                      }

                      v79 = sub_19B87DD40();
                      if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v80 = *(a2 + 384);
                        v81 = *(a1 + 1208);
                        *__p = 134349568;
                        *&__p[4] = v80;
                        *&__p[12] = 1026;
                        *&__p[14] = v81;
                        *&__p[18] = 1026;
                        *&__p[20] = v81 + 1;
                        v82 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v82);
                        if (v82 != buf)
                        {
                          free(v82);
                        }
                      }

                      ++*(a1 + 1208);
                      v51 = 1;
                    }
                  }

                  v83 = *(a3 + 504);
                  v84 = 10000.0;
                  if (v83 == 1 && *(a3 + 601) == 1)
                  {
                    v85 = 40000.0;
                    if (v189)
                    {
                      v85 = 10000.0;
                    }

                    if (*(a2 + 737))
                    {
                      v84 = v85;
                    }

                    else
                    {
                      v84 = 10000.0;
                    }
                  }

                  v86 = *(a2 + 632) * *(a2 + 632) + *(a2 + 624) * *(a2 + 624);
                  if (v86 > v84)
                  {
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v87 = off_1EAFE4708;
                    v88 = sqrt(v84);
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v89 = *(a2 + 384);
                      *buf = 134349568;
                      *&buf[4] = v89;
                      *&buf[12] = 2050;
                      *&buf[14] = v88;
                      *&buf[22] = 1026;
                      *&buf[24] = v189 & 1;
                      _os_log_impl(&dword_19B873000, v87, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,distance > %{public}.0lfm,Intersection,%{public}d", buf, 0x1Cu);
                    }

                    v90 = sub_19B87DD40();
                    if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v91 = *(a2 + 384);
                      *__p = 134349568;
                      *&__p[4] = v91;
                      *&__p[12] = 2050;
                      *&__p[14] = v88;
                      *&__p[22] = 1026;
                      *&__p[24] = v189 & 1;
                      v92 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v92);
                      if (v92 != buf)
                      {
                        free(v92);
                      }
                    }

                    v26 = 0;
                    *(a1 + 1212) = 0;
                    if (!v8)
                    {
                      goto LABEL_196;
                    }

                    goto LABEL_195;
                  }

                  v98 = *(a2 + 472);
                  if (v98 >= 0.0 && *(a2 + 560) > 0.0)
                  {
                    v98 = (v98 + *(a3 + 336)) * 0.5;
                  }

                  v100 = *(a2 + 400);
                  v101 = -1.0;
                  if (v100 >= 0.0)
                  {
                    v102 = *(a3 + 264);
                    if (v102 >= 0.0)
                    {
                      v101 = vabdd_f64(v100, v102);
                    }
                  }

                  if ((*(a1 + 1212) & v83) == 1 && *(a2 + 608) > 13.0)
                  {
                    v103 = v98 * v101;
                    v104 = sub_19BA0C01C((a1 + 168), *(a3 + 392), *(a3 + 400), *(a2 + 528), *(a2 + 536), *(a2 + 448)) - v98 * v101;
                    if (v104 > 100.0)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v105 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v106 = *(a2 + 384);
                        v107 = *(a1 + 1208);
                        *buf = 134350080;
                        *&buf[4] = v106;
                        *&buf[12] = 2050;
                        *&buf[14] = v104;
                        *&buf[22] = 2050;
                        *&buf[24] = v103;
                        *&buf[32] = 1026;
                        *v206 = v107;
                        *&v206[4] = 1026;
                        *&v206[6] = v107 + 18;
                        _os_log_impl(&dword_19B873000, v105, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,jumpDistanceCheck,%{public}.1lf,expectedDistanceTravelled,%{public}.1lf,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x2Cu);
                      }

                      v108 = sub_19B87DD40();
                      if (*(v108 + 160) > 1 || *(v108 + 164) > 1 || *(v108 + 168) > 1 || *(v108 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v109 = *(a2 + 384);
                        v110 = *(a1 + 1208);
                        *__p = 134350080;
                        *&__p[4] = v109;
                        *&__p[12] = 2050;
                        *&__p[14] = v104;
                        *&__p[22] = 2050;
                        *&__p[24] = v103;
                        *&__p[32] = 1026;
                        *v193 = v110;
                        *&v193[4] = 1026;
                        *&v193[6] = v110 + 18;
                        v111 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v111);
                        if (v111 != buf)
                        {
                          free(v111);
                        }
                      }

                      *(a1 + 1208) += 18;
                      v51 = 1;
                    }
                  }

                  if (v187 && v186)
                  {
                    v112 = *(a2 + 276) ? *(a2 + 304) : 1.0 - *(a2 + 304);
                    if (v112 >= 0.99)
                    {
                      *(a1 + 1208) += (v112 * 10.0);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v113 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v114 = *(a2 + 384);
                        v115 = *(a1 + 1208);
                        *buf = 134349824;
                        *&buf[4] = v114;
                        *&buf[12] = 1026;
                        *&buf[14] = v115;
                        *&buf[18] = 2050;
                        *&buf[20] = v112;
                        *&buf[28] = 1026;
                        *&buf[30] = (v112 * 10.0);
                        _os_log_impl(&dword_19B873000, v113, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,evalauteMatch,offRoadCount,%{public}d,projection,%{public}.2lf,delta,%{public}d", buf, 0x22u);
                      }

                      v116 = sub_19B87DD40();
                      if (*(v116 + 160) > 1 || *(v116 + 164) > 1 || *(v116 + 168) > 1 || *(v116 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v117 = *(a2 + 384);
                        v118 = *(a1 + 1208);
                        *__p = 134349824;
                        *&__p[4] = v117;
                        *&__p[12] = 1026;
                        *&__p[14] = v118;
                        *&__p[18] = 2050;
                        *&__p[20] = v112;
                        *&__p[28] = 1026;
                        *&__p[30] = (v112 * 10.0);
                        v119 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v119);
                        if (v119 != buf)
                        {
                          free(v119);
                        }

                        v51 = 1;
                      }

                      else
                      {
                        v51 = 1;
                      }
                    }
                  }

                  if (*(a1 + 1212) == 1)
                  {
                    v120 = *(a2 + 608);
                    if (v120 > 70.0)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v121 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v122 = *(a2 + 384);
                        v123 = *(a2 + 608);
                        *buf = 134349568;
                        *&buf[4] = v122;
                        *&buf[12] = 2050;
                        *&buf[14] = v123;
                        *&buf[22] = 2050;
                        *&buf[24] = 0x4051800000000000;
                        _os_log_impl(&dword_19B873000, v121, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,varFactor,%{public}.1lf,threshold,%{public}.1lf", buf, 0x20u);
                      }

                      v124 = sub_19B87DD40();
                      if (*(v124 + 160) <= 1 && *(v124 + 164) <= 1 && *(v124 + 168) <= 1 && !*(v124 + 152))
                      {
                        goto LABEL_285;
                      }

                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v125 = *(a2 + 384);
                      v126 = *(a2 + 608);
                      *__p = 134349568;
                      *&__p[4] = v125;
                      *&__p[12] = 2050;
                      *&__p[14] = v126;
                      *&__p[22] = 2050;
                      *&__p[24] = 0x4051800000000000;
                      v127 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v127);
LABEL_283:
                      if (v127 != buf)
                      {
                        free(v127);
                      }

LABEL_285:
                      *(a1 + 1212) = 0;
                      goto LABEL_359;
                    }

                    if (*(a1 + 1208) >= 18)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v135 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v136 = *(a2 + 384);
                        v137 = *(a1 + 1208);
                        *buf = 134349568;
                        *&buf[4] = v136;
                        *&buf[12] = 1026;
                        *&buf[14] = v137;
                        *&buf[18] = 1026;
                        *&buf[20] = 18;
                        _os_log_impl(&dword_19B873000, v135, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,stopSnapping,offRoadCount,%{public}d,threshold,%{public}d", buf, 0x18u);
                      }

                      v138 = sub_19B87DD40();
                      if (*(v138 + 160) <= 1 && *(v138 + 164) <= 1 && *(v138 + 168) <= 1 && !*(v138 + 152))
                      {
                        goto LABEL_285;
                      }

                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v139 = *(a2 + 384);
                      v140 = *(a1 + 1208);
                      *__p = 134349568;
                      *&__p[4] = v139;
                      *&__p[12] = 1026;
                      *&__p[14] = v140;
                      *&__p[18] = 1026;
                      *&__p[20] = 18;
                      v127 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v127);
                      goto LABEL_283;
                    }

                    if (v120 >= 6.5)
                    {
                      v141 = 1;
                    }

                    else
                    {
                      v141 = v51;
                    }

                    if ((v141 & 1) == 0)
                    {
                      *(a1 + 1208) = 0;
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v142 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v143 = *(a2 + 384);
                        v144 = *(a1 + 1208);
                        *buf = 134349312;
                        *&buf[4] = v143;
                        *&buf[12] = 1026;
                        *&buf[14] = v144;
                        _os_log_impl(&dword_19B873000, v142, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reseting offRoadCount,%{public}d", buf, 0x12u);
                      }

                      v145 = sub_19B87DD40();
                      if (*(v145 + 160) > 1 || *(v145 + 164) > 1 || *(v145 + 168) > 1 || *(v145 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v146 = *(a2 + 384);
                        v147 = *(a1 + 1208);
                        *__p = 134349312;
                        *&__p[4] = v146;
                        *&__p[12] = 1026;
                        *&__p[14] = v147;
                        v148 = _os_log_send_and_compose_impl();
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v148);
                        if (v148 != buf)
                        {
                          free(v148);
                        }
                      }
                    }

LABEL_359:
                    v26 = *(a1 + 1212);
                    if (!v8)
                    {
                      goto LABEL_196;
                    }

                    goto LABEL_195;
                  }

                  if (v51)
                  {
                    goto LABEL_359;
                  }

                  v128 = 13.5;
                  if (*(a2 + 724))
                  {
                    v128 = 7.5;
                  }

                  if (v71 > 7.5)
                  {
                    v129 = 20.0;
                  }

                  else
                  {
                    v129 = v128;
                  }

                  v130 = 30.0;
                  if (v187)
                  {
                    if (*(a2 + 496) == 9)
                    {
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v131 = off_1EAFE4708;
                      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                      {
                        v132 = v8;
                        v133 = *(a2 + 384);
                        v134 = *(a2 + 496);
                        if (*(a2 + 527) < 0)
                        {
                          sub_19B874C9C(__p, *(a2 + 504), *(a2 + 512));
                        }

                        else
                        {
                          *__p = *(a2 + 504);
                          *&__p[16] = *(a2 + 520);
                        }

                        v150 = __p;
                        if (__p[23] < 0)
                        {
                          v150 = *__p;
                        }

                        *buf = 134349570;
                        *&buf[4] = v133;
                        *&buf[12] = 1026;
                        *&buf[14] = v134;
                        *&buf[18] = 2082;
                        *&buf[20] = v150;
                        _os_log_impl(&dword_19B873000, v131, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping,shouldStartSnappingOnfrc,frc,%{public}d,name,%{public}s,using tighter-threshold", buf, 0x1Cu);
                        if ((__p[23] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        v8 = v132;
                        a3 = v188;
                      }

                      v151 = sub_19B87DD40();
                      if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        v152 = v8;
                        if (qword_1EAFE46D0 != -1)
                        {
                          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                        }

                        v153 = *(a2 + 384);
                        v154 = *(a2 + 496);
                        if (*(a2 + 527) < 0)
                        {
                          sub_19B874C9C(__dst, *(a2 + 504), *(a2 + 512));
                        }

                        else
                        {
                          *__dst = *(a2 + 504);
                          v191 = *(a2 + 520);
                        }

                        v155 = __dst;
                        if (v191 < 0)
                        {
                          v155 = __dst[0];
                        }

                        *__p = 134349570;
                        *&__p[4] = v153;
                        *&__p[12] = 1026;
                        *&__p[14] = v154;
                        *&__p[18] = 2082;
                        *&__p[20] = v155;
                        v156 = _os_log_send_and_compose_impl();
                        if (SHIBYTE(v191) < 0)
                        {
                          operator delete(__dst[0]);
                        }

                        v8 = v152;
                        sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v156);
                        a3 = v188;
                        if (v156 != buf)
                        {
                          free(v156);
                        }
                      }

                      v129 = 5.0;
                      v130 = 8.0;
                    }

                    else
                    {
                      v149 = *(a2 + 792);
                      if (v149 != 3)
                      {
                        v130 = v149 == 4 ? 30.0 : 18.0;
                        if (v149 != 4)
                        {
                          v129 = 6.0;
                        }
                      }
                    }
                  }

                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v157 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    v158 = *(a2 + 384);
                    v159 = *(a2 + 632);
                    v160 = *(a2 + 608);
                    v161 = *(a3 + 472);
                    v162 = *(a2 + 472);
                    v163 = *(a2 + 480);
                    v164 = *(a3 + 336);
                    v165 = *(a3 + 344);
                    *buf = 134351872;
                    *&buf[4] = v158;
                    *&buf[12] = 2050;
                    *&buf[14] = v86;
                    *&buf[22] = 2050;
                    *&buf[24] = v159;
                    *&buf[32] = 2050;
                    *v206 = v74;
                    *&v206[8] = 2050;
                    *&v206[10] = v160;
                    *&v206[18] = 2048;
                    *&v206[20] = v161;
                    *&v206[28] = 2050;
                    v207 = v162;
                    v208 = 2050;
                    v209 = v164;
                    v210 = 2050;
                    v211 = v163;
                    v212 = 2050;
                    v213 = v165;
                    v214 = 2050;
                    v215 = v36;
                    v216 = 2050;
                    v217 = v40;
                    _os_log_impl(&dword_19B873000, v157, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping criteria,distance2,%{public}.1lf,acrossTrack,%{public}.2lf,drms,%{public}.1lf,currentVF,%{public}.3lf,prioVF{public},%.3lf,curSpeed,%{public}.2lf,priorSpeed,%{public}.2lf,curCourse,%{public}.2lf,priorCourse,%{public}.2lf,fabsDeltaAz,%{public}.2lf,priorFabsDeltaAz,%{public}.2lf", buf, 0x7Au);
                  }

                  v166 = sub_19B87DD40();
                  if (*(v166 + 160) > 1 || *(v166 + 164) > 1 || *(v166 + 168) > 1 || *(v166 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v167 = *(a2 + 384);
                    v168 = *(a2 + 632);
                    v169 = *(a2 + 608);
                    v170 = *(a3 + 472);
                    v171 = *(a2 + 472);
                    v172 = *(a2 + 480);
                    v173 = *(a3 + 336);
                    v174 = *(a3 + 344);
                    *__p = 134351872;
                    *&__p[4] = v167;
                    *&__p[12] = 2050;
                    *&__p[14] = v86;
                    *&__p[22] = 2050;
                    *&__p[24] = v168;
                    *&__p[32] = 2050;
                    *v193 = v74;
                    *&v193[8] = 2050;
                    *&v193[10] = v169;
                    *&v193[18] = 2048;
                    *&v193[20] = v170;
                    *&v193[28] = 2050;
                    v194 = v171;
                    v195 = 2050;
                    v196 = v173;
                    v197 = 2050;
                    v198 = v172;
                    v199 = 2050;
                    v200 = v174;
                    v201 = 2050;
                    v202 = v36;
                    v203 = 2050;
                    v204 = v40;
                    v175 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v175);
                    if (v175 != buf)
                    {
                      free(v175);
                    }
                  }

                  if ((*(a2 + 641) & 1) == 0 && v86 < 400.0 && (*(a3 + 505) & 1) == 0 && fabs(*(a2 + 632)) < v129 && v74 < 101.0)
                  {
                    v181 = *(a2 + 608);
                    if (v181 < 3.0)
                    {
                      v182 = *(a3 + 472);
                      if (v182 < 3.0 && *(a2 + 472) > 0.25 && *(a3 + 336) > 0.25 && *(a2 + 480) >= 0.0 && *(a3 + 344) >= 0.0 && v36 < v130 && v40 < v130)
                      {
                        v183 = *(a2 + 568);
                        if (v183 <= 0.0 || v183 >= 20.0)
                        {
                          v184 = *(a2 + 556);
                          v185 = 3.0;
                          goto LABEL_378;
                        }

                        if (v36 < 40.0)
                        {
                          v184 = *(a2 + 556);
                          v185 = 2.5;
LABEL_378:
                          if (v184 > v185 || v181 < 1.0 && v182 < 1.0 && (v184 == 0.0 || v184 > 1.1))
                          {
                            *(a1 + 1212) = 1;
                          }
                        }
                      }
                    }
                  }

                  if (*(a1 + 1212) == 1)
                  {
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v176 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v177 = *(a2 + 384);
                      *buf = 134349056;
                      *&buf[4] = v177;
                      _os_log_impl(&dword_19B873000, v176, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,startSnapping", buf, 0xCu);
                    }

                    v178 = sub_19B87DD40();
                    if (*(v178 + 160) > 1 || *(v178 + 164) > 1 || *(v178 + 168) > 1 || *(v178 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v179 = *(a2 + 384);
                      *__p = 134349056;
                      *&__p[4] = v179;
                      v180 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v180);
                      if (v180 != buf)
                      {
                        free(v180);
                      }
                    }

                    *(a1 + 1208) = 0;
                  }

                  goto LABEL_359;
                }

                if (v189)
                {
                  if (v36 <= 67.5)
                  {
                    goto LABEL_148;
                  }

                  if (v60 >= 20.0)
                  {
                    v62 = 4;
LABEL_135:
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v64 = off_1EAFE4708;
                    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                    {
                      v65 = *(a2 + 384);
                      v66 = *(a1 + 1208);
                      *buf = 134349568;
                      *&buf[4] = v65;
                      *&buf[12] = 1026;
                      *&buf[14] = v66;
                      *&buf[18] = 1026;
                      *&buf[20] = v66 + v62;
                      _os_log_impl(&dword_19B873000, v64, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,courseCheck,oldOffRoadCount,%{public}d,newOffRoadCount,%{public}d", buf, 0x18u);
                    }

                    v67 = sub_19B87DD40();
                    if (*(v67 + 160) > 1 || *(v67 + 164) > 1 || *(v67 + 168) > 1 || *(v67 + 152))
                    {
                      bzero(buf, 0x65CuLL);
                      if (qword_1EAFE46D0 != -1)
                      {
                        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                      }

                      v68 = *(a2 + 384);
                      v69 = *(a1 + 1208);
                      *__p = 134349568;
                      *&__p[4] = v68;
                      *&__p[12] = 1026;
                      *&__p[14] = v69;
                      *&__p[18] = 1026;
                      *&__p[20] = v69 + v62;
                      v70 = _os_log_send_and_compose_impl();
                      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v70);
                      if (v70 != buf)
                      {
                        free(v70);
                      }
                    }

                    *(a1 + 1208) += v62;
                    v51 = 1;
                    goto LABEL_148;
                  }

                  goto LABEL_128;
                }

                if (v60 >= 20.0)
                {
                  if (v36 > 67.5)
                  {
                    goto LABEL_128;
                  }

                  if (v36 > 45.0)
                  {
                    goto LABEL_131;
                  }

                  v63 = 30.0;
                }

                else
                {
                  if (v36 > 67.5)
                  {
                    v62 = 18;
                    goto LABEL_135;
                  }

                  if (v36 > 45.0)
                  {
LABEL_128:
                    v62 = 6;
                    goto LABEL_135;
                  }

                  if (v36 > 30.0)
                  {
LABEL_131:
                    v62 = 2;
                    goto LABEL_135;
                  }

                  v63 = 20.0;
                }

                if (v36 <= v63)
                {
                  goto LABEL_148;
                }

                v62 = 1;
                goto LABEL_135;
              }

LABEL_89:
              v52 = 3;
              goto LABEL_92;
            }

            if ((v50 - 17) < 4)
            {
LABEL_91:
              v52 = 4;
              goto LABEL_92;
            }

            goto LABEL_121;
          }
        }

        else if (v50 > 7)
        {
          if (v50 <= 0x14)
          {
            if (((1 << v50) & 0x1E000) != 0)
            {
              goto LABEL_89;
            }

            if (((1 << v50) & 0x1E0000) != 0)
            {
              goto LABEL_91;
            }

            if (((1 << v50) & 0x1800) != 0)
            {
LABEL_86:
              v52 = 2;
LABEL_92:
              v51 = 1;
              goto LABEL_93;
            }
          }

          if ((v50 - 8) < 3)
          {
            goto LABEL_117;
          }

LABEL_121:
          v52 = 10;
          goto LABEL_92;
        }

        if (v50 > 2)
        {
          v51 = 0;
          v52 = 0;
          goto LABEL_93;
        }

        if (v50 <= 2)
        {
          v51 = 0;
          v52 = -1;
          goto LABEL_93;
        }

        goto LABEL_121;
      }

      v31 = *(a2 + 304);
    }

    else
    {
      v31 = *(a2 + 304);
      v30 = *(a2 + 276);
    }

    if (!v30)
    {
      v31 = 1.0 - v31;
    }

    v21 = v31 >= 0.99;
    LODWORD(v11) = 1;
    goto LABEL_51;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v23 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *&buf[4] = v6;
    _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid geometry pointer, mapMatch", buf, 0xCu);
  }

  v24 = sub_19B87DD40();
  if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    *__p = 134349056;
    *&__p[4] = v6;
    v25 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::evaluateMatch(const MMSnapData &, const MMSnapData &, BOOL &)", "CoreLocation: %s\n", v25);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  LOBYTE(v11) = 0;
  v26 = 0;
  if (!v8)
  {
    goto LABEL_196;
  }

LABEL_195:
  sub_19B8750F8(v8);
LABEL_196:
  *(a2 + 640) = v26 & 1;
  *(a2 + 881) |= v11;
  sub_19B96700C(a1 + 1216, (a2 + 376));
  v93 = sub_19B967214((a1 + 1216), 0);
  if (v93)
  {
    *(a2 + 640) = 0;
LABEL_200:
    result = v93 ^ 1u;
    *(a2 + 656) = 0;
    v94 = *(a2 + 432);
    v95 = *(a2 + 440);
    *(a2 + 528) = v94;
    *(a2 + 536) = v95;
    v96 = *(a2 + 480);
    *(a2 + 544) = v96;
    *(a2 + 664) = v94;
    *(a2 + 672) = v95;
    *(a2 + 680) = v96;
    goto LABEL_201;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_200;
  }

  result = 1;
LABEL_201:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19BA2AED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (v35)
  {
    sub_19B8750F8(v35);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19BA2AF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v127 = *MEMORY[0x1E69E9840];
  if (*(a2 + 640) == 1)
  {
    *(a1 + 1752) = 0;
    *(a1 + 1760) = 0u;
    if (fabs(*(a2 + 528)) < 0.00003 && fabs(*(a2 + 536)) < 0.00003)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v6 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a2 + 384);
        *buf = 134349056;
        *&buf[4] = v7;
        _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reset,snap coordinate is null island", buf, 0xCu);
      }

      v8 = sub_19B87DD40();
      if (*(v8 + 160) <= 1 && *(v8 + 164) <= 1 && *(v8 + 168) <= 1 && !*(v8 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      goto LABEL_14;
    }

    if (*(a2 + 882) == 1 && *(a3 + 746) == 1 && *(a3 + 120) && *(a2 + 256) && (sub_19B97106C(a3 + 120, buf), sub_19B97106C(a2 + 256, v121), *buf == *v121) && buf[16] == v121[16] && *&buf[8] == *&v121[8])
    {
      ++*(a1 + 1776);
    }

    else
    {
      *(a1 + 1776) = 0;
    }

    if (*(a2 + 640) != 1)
    {
      goto LABEL_57;
    }

    if (*(a3 + 504) != 1)
    {
      goto LABEL_57;
    }

    v22 = *(a2 + 488);
    if (v22 == *(a3 + 352))
    {
      goto LABEL_57;
    }

    v23 = fmod(*(a2 + 680) - *(a3 + 544), 360.0);
    if (v23 < 0.0)
    {
      v23 = v23 + 360.0;
    }

    if (v23 > 180.0)
    {
      v23 = v23 + -360.0;
    }

    if (fabs(v23) < 45.0)
    {
LABEL_57:
      v24 = (a1 + 1808);
      v25 = 1784;
LABEL_58:
      sub_19B916DC0(v24);
      sub_19B916DC0((a1 + v25));
      goto LABEL_199;
    }

    v24 = (a1 + 1784);
    if (*(a1 + 1800) || (v43 = *(a1 + 1816), v43 == a1 + 1808))
    {
      v41 = 0;
    }

    else
    {
      do
      {
        v41 = v22 == **(v43 + 16);
        if (v22 == **(v43 + 16))
        {
          break;
        }

        v43 = *(v43 + 8);
      }

      while (v43 != a1 + 1808);
    }

    v42 = *(a1 + 1792);
    if (v42 != v24)
    {
      v25 = 1808;
      while (v22 != **(v42 + 16))
      {
        v42 = *(v42 + 8);
        if (v42 == v24)
        {
          goto LABEL_94;
        }
      }

      goto LABEL_58;
    }

LABEL_94:
    if (v41)
    {
      goto LABEL_95;
    }

    v44 = *(a2 + 256);
    if (v44)
    {
      v45 = *(a3 + 120);
      if (v45)
      {
        v46 = *(a2 + 264);
        v119 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v45 = *(a3 + 120);
        }

        v47 = *(a3 + 128);
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v49 = v44[17];
        v48 = v44[18];
        v50 = 0uLL;
        v51 = 0uLL;
        if (v48 != v49)
        {
          v51 = *v49;
        }

        v53 = v45[17];
        v52 = v45[18];
        if (v52 != v53)
        {
          v50 = *v53;
        }

        v54 = vabdq_f64(v51, v50);
        v55 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
        *&v54.f64[0] = vmovn_s64(vcgtq_f64(v55, v54));
        if (vand_s8(*&v54.f64[0], vdup_lane_s32(*&v54.f64[0], 1)).u8[0])
        {
          goto LABEL_126;
        }

        v56 = 0uLL;
        v57 = 0uLL;
        if (v48 != v49)
        {
          v57 = *v49;
        }

        if (v52 != v53)
        {
          v56 = v52[-1];
        }

        v58 = vmovn_s64(vcgtq_f64(v55, vabdq_f64(v57, v56)));
        if (vand_s8(v58, vdup_lane_s32(v58, 1)).u8[0])
        {
          goto LABEL_126;
        }

        v59 = 0uLL;
        v60 = 0uLL;
        if (v48 != v49)
        {
          v60 = v48[-1];
        }

        if (v52 != v53)
        {
          v59 = *v53;
        }

        v61 = vmovn_s64(vcgtq_f64(v55, vabdq_f64(v60, v59)));
        if (vand_s8(v61, vdup_lane_s32(v61, 1)).u8[0])
        {
          goto LABEL_126;
        }

        v62 = 0uLL;
        v63 = 0uLL;
        if (v48 != v49)
        {
          v63 = v48[-1];
        }

        if (v52 != v53)
        {
          v62 = v52[-1];
        }

        v64 = vmovn_s64(vcgtq_f64(v55, vabdq_f64(v63, v62)));
        if (vand_s8(v64, vdup_lane_s32(v64, 1)).u8[0])
        {
LABEL_126:
          v65 = 1;
        }

        else
        {
          v65 = 0;
        }

        v117 = v47;
        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v66 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(a2 + 384);
          v68 = *v44;
          v69 = *v45;
          *buf = 134349825;
          *&buf[4] = v67;
          *&buf[12] = 1026;
          *&buf[14] = v65;
          *&buf[18] = 2049;
          *&buf[20] = v68;
          *&buf[28] = 2049;
          *&buf[30] = v69;
          _os_log_impl(&dword_19B873000, v66, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping check,connecting roads,%{public}d, current road %{private}lld,prior road %{private}lld", buf, 0x26u);
        }

        v70 = sub_19B87DD40();
        if (*(v70 + 160) > 1 || *(v70 + 164) > 1 || *(v70 + 168) > 1 || *(v70 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v71 = *(a2 + 384);
          v72 = *v44;
          v73 = *v45;
          *v121 = 134349825;
          *&v121[4] = v71;
          *&v121[12] = 1026;
          *&v121[14] = v65;
          *&v121[18] = 2049;
          *&v121[20] = v72;
          *&v121[28] = 2049;
          *&v121[30] = v73;
          v74 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v74);
          if (v74 != buf)
          {
            free(v74);
          }
        }

        if (v117)
        {
          sub_19B8750F8(v117);
        }

        if (v119)
        {
          sub_19B8750F8(v119);
        }

        if (v65)
        {
          goto LABEL_95;
        }
      }
    }

    v75 = *(a3 + 120);
    if (v75)
    {
      v76 = *(a2 + 864);
      if (v76)
      {
        v77 = *(a3 + 128);
        if (v77)
        {
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          v76 = *(a2 + 864);
        }

        v80 = v76 + 136;
        v78 = *(v76 + 136);
        v79 = *(v80 + 8);
        v118 = 0u;
        v120 = 0u;
        if (v79 != v78)
        {
          if (*(a2 + 880))
          {
            v81 = *v78;
          }

          else
          {
            v81 = v79[-1];
          }

          v118 = v81;
        }

        v83 = v75[17];
        v82 = v75[18];
        if (v82 != v83)
        {
          if (*(a3 + 140))
          {
            v84 = v82[-1];
          }

          else
          {
            v84 = *v83;
          }

          v120 = v84;
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v85 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v86 = *(a2 + 384);
          v87 = *v75;
          v88 = **(a2 + 864);
          v89 = **(a2 + 256);
          *buf = 134349825;
          *&buf[4] = v86;
          *&buf[12] = 2049;
          *&buf[14] = v87;
          *&buf[22] = 2049;
          *&buf[24] = v88;
          *&buf[32] = 2049;
          *&buf[34] = v89;
          _os_log_impl(&dword_19B873000, v85, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping check,prior road, %{private}lld, connected to the incoming road, %{private}lld, of the current solution road, %{private}lld", buf, 0x2Au);
        }

        v90 = sub_19B87DD40();
        if (*(v90 + 160) > 1 || *(v90 + 164) > 1 || *(v90 + 168) > 1 || *(v90 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v91 = *(a2 + 384);
          v92 = *v75;
          v93 = **(a2 + 864);
          v94 = **(a2 + 256);
          *v121 = 134349825;
          *&v121[4] = v91;
          *&v121[12] = 2049;
          *&v121[14] = v92;
          *&v121[22] = 2049;
          *&v121[24] = v93;
          *&v121[32] = 2049;
          *&v121[34] = v94;
          v95 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v95);
          if (v95 != buf)
          {
            free(v95);
          }
        }

        v96 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(v118, v120)));
        v97 = vand_s8(vdup_lane_s32(v96, 1), v96).u8[0];
        if (v77)
        {
          sub_19B8750F8(v77);
        }

        if (v97)
        {
LABEL_95:
          v25 = 1808;
          goto LABEL_58;
        }
      }
    }

    v98 = sub_19BA0C01C((a1 + 168), *(a3 + 528), *(a3 + 536), *(a2 + 664), *(a2 + 672), *(a2 + 448)) > 35.0 || *(a1 + 1776) > 15;
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v99 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v100 = *(a2 + 384);
      v101 = *(a3 + 544);
      v102 = *(a2 + 680);
      v103 = *(a2 + 488);
      v104 = *(a3 + 352);
      *buf = 134350081;
      *&buf[4] = v100;
      *&buf[12] = 2050;
      *&buf[14] = v101;
      *&buf[22] = 2050;
      *&buf[24] = v102;
      *&buf[32] = 2049;
      *&buf[34] = v103;
      v125 = 2049;
      v126 = v104;
      _os_log_impl(&dword_19B873000, v99, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,hopping between roads detected,priorfullSnapCourse,%{public}.1lf,currentFullSnapCourse,%{public}.1lf,priorId,%{private}llu,currentId,%{private}llu", buf, 0x34u);
    }

    v105 = sub_19B87DD40();
    if (*(v105 + 160) > 1 || *(v105 + 164) > 1 || *(v105 + 168) > 1 || *(v105 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v106 = *(a2 + 384);
      v107 = *(a3 + 544);
      v108 = *(a2 + 680);
      v109 = *(a2 + 488);
      v110 = *(a3 + 352);
      *v121 = 134350081;
      *&v121[4] = v106;
      *&v121[12] = 2050;
      *&v121[14] = v107;
      *&v121[22] = 2050;
      *&v121[24] = v108;
      *&v121[32] = 2049;
      *&v121[34] = v109;
      v122 = 2049;
      v123 = v110;
      v111 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "BOOL CLParticleMM::CLPedestrianMapMatcherFilter::checkForSolutionHopping(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v111);
      if (v111 != buf)
      {
        free(v111);
      }
    }

    sub_19B916DC0((a1 + 1784));
    sub_19B916DC0((a1 + 1808));
    if (v98)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v112 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v113 = *(a2 + 384);
        *buf = 134349056;
        *&buf[4] = v113;
        _os_log_impl(&dword_19B873000, v112, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,reset,solution hopping detected", buf, 0xCu);
      }

      v114 = sub_19B87DD40();
      if (*(v114 + 160) <= 1 && *(v114 + 164) <= 1 && *(v114 + 168) <= 1 && !*(v114 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

LABEL_14:
      v9 = *(a2 + 384);
      *v121 = 134349056;
      *&v121[4] = v9;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
LABEL_73:
      if (v10 != buf)
      {
        free(v10);
      }

LABEL_75:
      v34 = 1;
      goto LABEL_200;
    }

LABEL_199:
    v34 = 0;
    goto LABEL_200;
  }

  if (*(a2 + 608) > 70.0)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v11 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a2 + 384);
      v13 = *(a2 + 608);
      *buf = 134349568;
      *&buf[4] = v12;
      *&buf[12] = 2050;
      *&buf[14] = v13;
      *&buf[22] = 2050;
      *&buf[24] = 0x4051800000000000;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding due to varFactor,%{public}.1lf,max,%{public}.1lf", buf, 0x20u);
    }

    v14 = sub_19B87DD40();
    if (*(v14 + 160) <= 1 && *(v14 + 164) <= 1 && *(v14 + 168) <= 1 && !*(v14 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v15 = *(a2 + 384);
    v16 = *(a2 + 608);
    *v121 = 134349568;
    *&v121[4] = v15;
    *&v121[12] = 2050;
    *&v121[14] = v16;
    *&v121[22] = 2050;
    *&v121[24] = 0x4051800000000000;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
    goto LABEL_73;
  }

  v17 = *(a1 + 1752);
  if ((v17 & 0x80000000) == 0)
  {
    *(a1 + 1752) = v17 + 1;
    if (v17 >= 0x1E)
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v18 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a2 + 384);
        *buf = 134349312;
        *&buf[4] = v19;
        *&buf[12] = 1026;
        *&buf[14] = 30;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding as unable to match,max,%{public}d", buf, 0x12u);
      }

      v20 = sub_19B87DD40();
      if (*(v20 + 160) <= 1 && *(v20 + 164) <= 1 && *(v20 + 168) <= 1 && !*(v20 + 152))
      {
        goto LABEL_75;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v21 = *(a2 + 384);
      *v121 = 134349312;
      *&v121[4] = v21;
      *&v121[12] = 1026;
      *&v121[14] = 30;
      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
      goto LABEL_73;
    }
  }

  if (*(a3 + 746) != 1)
  {
    goto LABEL_199;
  }

  *(a1 + 1760) = *(a2 + 856) + *(a1 + 1760);
  v26 = sub_19BA0C01C((a1 + 168), *(a3 + 392), *(a3 + 400), *(a2 + 528), *(a2 + 536), *(a2 + 448)) + *(a1 + 1768);
  *(a1 + 1768) = v26;
  v27 = *(a1 + 1760);
  if (v27 <= 80.0)
  {
    goto LABEL_199;
  }

  if (v26 < 0.001)
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v28 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a2 + 384);
      v30 = *(a1 + 1768);
      *buf = 134349312;
      *&buf[4] = v29;
      *&buf[12] = 2050;
      *&buf[14] = v30;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,accumulated snap distance is ~0, %{public}.3lf", buf, 0x16u);
    }

    v31 = sub_19B87DD40();
    if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
    {
      goto LABEL_75;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v32 = *(a2 + 384);
    v33 = *(a1 + 1768);
    *v121 = 134349312;
    *&v121[4] = v32;
    *&v121[12] = 2050;
    *&v121[14] = v33;
    v10 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v10);
    goto LABEL_73;
  }

  v35 = v27 / v26;
  v34 = v27 / v26 > 5.0;
  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v36 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v37 = *(a2 + 384);
    *buf = 134349312;
    *&buf[4] = v37;
    *&buf[12] = 2050;
    *&buf[14] = v35;
    _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,Reseeding due to stuck at dead-end while observations move away, ratioDist, %{public}.3lf", buf, 0x16u);
  }

  v38 = sub_19B87DD40();
  if (*(v38 + 160) > 1 || *(v38 + 164) > 1 || *(v38 + 168) > 1 || *(v38 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v39 = *(a2 + 384);
    *v121 = 134349312;
    *&v121[4] = v39;
    *&v121[12] = 2050;
    *&v121[14] = v35;
    v40 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::shallReset(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

LABEL_200:
  v115 = *MEMORY[0x1E69E9840];
  return v34;
}

void sub_19BA2C338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (v13)
  {
    sub_19B8750F8(v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_19BA2C380(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a2 + 48) == *(a2 + 40))
  {
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v31 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v32 = *(a2 + 384);
      *buf = 134349056;
      v61 = v32;
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,roadWithAdustment,number of particles are 0", buf, 0xCu);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) != 0 && (*(v33 + 164) & 0x80000000) != 0 && (*(v33 + 168) & 0x80000000) != 0 && !*(v33 + 152))
    {
      goto LABEL_79;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v34 = *(a2 + 384);
    v52 = 134349056;
    v53 = v34;
    goto LABEL_77;
  }

  *(a2 + 688) = 0u;
  if (*(a2 + 640))
  {
    if (*(a2 + 256))
    {
      v50 = 0;
      v51 = 0.0;
      sub_19BA0C3BC((a1 + 168), &v51, &v50, *(a2 + 664), *(a2 + 672), *(a2 + 448), *(a2 + 680), *(a2 + 432), *(a2 + 440));
      v4 = *(a2 + 256);
      v5 = v4 != 0;
      if (v4)
      {
        v6 = *(v4 + 20);
        v7 = 0.5;
        v8 = 1.0;
        if (v6 != 9)
        {
          v9 = *(v4 + 72);
          if (v9 != 6 && v9 != 255)
          {
            v10 = *(v4 + 96);
            if (v10 < 0.000001)
            {
              v10 = 1.0;
              if ((v6 & 0xFFFFFFFE) != 8)
              {
                v10 = sub_19B988DA8(v6, *(v4 + 16));
              }
            }

            v8 = v10 + 1.0;
            v7 = v10 * 0.5 + 1.0;
          }
        }

        if (qword_1EAFE46D0 != -1)
        {
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
        }

        v11 = off_1EAFE4708;
        if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a2 + 384);
          v13 = *(a2 + 256);
          v14 = *(v13 + 20);
          LODWORD(v13) = *(v13 + 16);
          *buf = 134350080;
          v61 = v12;
          v62 = 1026;
          *v63 = v14;
          *&v63[4] = 1026;
          *&v63[6] = v13;
          v64 = 2050;
          v65 = v8;
          v66 = 2050;
          v67 = v51;
          _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,frc,%{public}d,oneway,%{public}d,roadWidth,%{public}.1lf,acrossTrack,%{public}.3lf", buf, 0x2Cu);
        }

        v15 = sub_19B87DD40();
        if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v16 = *(a2 + 384);
          v17 = *(a2 + 256);
          v18 = *(v17 + 20);
          LODWORD(v17) = *(v17 + 16);
          v52 = 134350080;
          v53 = v16;
          v54 = 1026;
          *v55 = v18;
          *&v55[4] = 1026;
          *&v55[6] = v17;
          v56 = 2050;
          v57 = v8;
          v58 = 2050;
          v59 = v51;
          v19 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        if (v8 >= 0.000001)
        {
          v20 = *(a2 + 528);
          v48 = *(a2 + 536);
          v49 = v20;
          v21 = *(a1 + 1872);
          if (v21 < 0.0 || vabdd_f64(*(a2 + 400), v21) > 6.0)
          {
            v22 = *(a2 + 256);
            if (!v22 || (*(v22 + 20) & 0xFFFFFFFE) != 8)
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v23 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                v24 = v8 + *(a1 + 16);
                *buf = 134349312;
                v61 = v8;
                v62 = 2050;
                *v63 = v24;
                _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMMPED,Road width inflated from,%{public}.1lf,to,%{public}.1lf", buf, 0x16u);
              }

              v25 = sub_19B87DD40();
              if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE46D0 != -1)
                {
                  dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                }

                v26 = v8 + *(a1 + 16);
                v52 = 134349312;
                v53 = v8;
                v54 = 2050;
                *v55 = v26;
                v27 = _os_log_send_and_compose_impl();
                sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v27);
                if (v27 != buf)
                {
                  free(v27);
                }
              }

              v7 = v7 + *(a1 + 16) * 0.5;
            }
          }

          v28 = fabs(v51);
          if (v28 >= v7)
          {
            if (v51 >= 0.0)
            {
              v47 = -(v28 - v7);
            }

            else
            {
              v47 = v28 - v7;
            }

            sub_19BA0C0F8((a1 + 168), &v49, &v48, *(a2 + 432), *(a2 + 440), *(a2 + 448), *(a2 + 680), v47);
            *(a2 + 656) = 2;
            v30 = v48;
            v29 = v49;
            *(a2 + 688) = v49;
            *(a2 + 696) = v30;
          }

          else
          {
            v29 = *(a2 + 432);
            v30 = *(a2 + 440);
          }

          *(a2 + 528) = v29;
          *(a2 + 536) = v30;
        }
      }

      goto LABEL_80;
    }

    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v40 = off_1EAFE4708;
    if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a2 + 384);
      *buf = 134349056;
      v61 = v41;
      _os_log_impl(&dword_19B873000, v40, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,roadWithAdustment,road is nullptr", buf, 0xCu);
    }

    v42 = sub_19B87DD40();
    if ((*(v42 + 160) & 0x80000000) != 0 && (*(v42 + 164) & 0x80000000) != 0 && (*(v42 + 168) & 0x80000000) != 0 && !*(v42 + 152))
    {
LABEL_79:
      v5 = 0;
      goto LABEL_80;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v43 = *(a2 + 384);
    v52 = 134349056;
    v53 = v43;
LABEL_77:
    v44 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }

    goto LABEL_79;
  }

  if (qword_1EAFE46D0 != -1)
  {
    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
  }

  v35 = off_1EAFE4708;
  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
  {
    v36 = *(a2 + 384);
    *buf = 134349056;
    v61 = v36;
    _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,roadWithAdustment,snap invalid or frc = 9", buf, 0xCu);
  }

  v37 = sub_19B87DD40();
  if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D0 != -1)
    {
      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    }

    v38 = *(a2 + 384);
    v52 = 134349056;
    v53 = v38;
    v39 = _os_log_send_and_compose_impl();
    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::adjustSolutionforRoadWidth(MMFilterData &)", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  v5 = 1;
LABEL_80:
  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_19BA2CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v186 = *MEMORY[0x1E69E9840];
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0u;
  *(a1 + 2037) = 0;
  *(a1 + 1968) = 0xBFF0000000000000;
  *(a1 + 2048) = 0;
  *(a1 + 2056) = 0xBFF0000000000000;
  *(a1 + 2064) = 0xBFF0000000000000;
  *v108 = 0xBFF0000000000000;
  *v109 = 0;
  memset(&v108[8], 0, 69);
  __asm { FMOV            V0.2D, #-1.0 }

  *&v109[8] = _Q0;
  if (*(a3 + 248) > 0.0)
  {
    v12 = *(a2 + 384);
    v107 = v12;
    v13 = *(a2 + 400);
    v14 = -1.0;
    if (v13 >= 0.0)
    {
      v15 = *(a3 + 264);
      _NF = v15 < 0.0;
      v14 = vabdd_f64(v13, v15);
      if (_NF)
      {
        v14 = -1.0;
      }
    }

    if (*(a2 + 256))
    {
      if (v14 > 0.0)
      {
        if (v14 > 1.5)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v16 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,timeDiff too large,DOT", buf, 0xCu);
          }

          v17 = sub_19B87DD40();
          if (*(v17 + 160) <= 1 && *(v17 + 164) <= 1 && *(v17 + 168) <= 1 && !*(v17 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_47;
          }

LABEL_218:
          dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
LABEL_47:
          v110 = 134349056;
          v111 = v12;
          v20 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v20);
LABEL_48:
          if (v20 != buf)
          {
            free(v20);
          }

          goto LABEL_50;
        }

        if (*(a2 + 640) != 1 || *(a2 + 641) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v23 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, currentCrumb invalid", buf, 0xCu);
          }

          v24 = sub_19B87DD40();
          if (*(v24 + 160) <= 1 && *(v24 + 164) <= 1 && *(v24 + 168) <= 1 && !*(v24 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_47;
          }

          goto LABEL_218;
        }

        if (*(a3 + 504) != 1 || *(a3 + 505) == 1)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v27 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, priorCrumb invalid", buf, 0xCu);
          }

          v28 = sub_19B87DD40();
          if (*(v28 + 160) <= 1 && *(v28 + 164) <= 1 && *(v28 + 168) <= 1 && !*(v28 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_47;
          }

          goto LABEL_218;
        }

        v29 = *(a1 + 2272);
        if (v29 > 0.0 && vabdd_f64(v13, v29 + -1.0) < 0.9)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v30 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT,feedback interval check", buf, 0xCu);
          }

          v31 = sub_19B87DD40();
          if (*(v31 + 160) <= 1 && *(v31 + 164) <= 1 && *(v31 + 168) <= 1 && !*(v31 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_47;
          }

          goto LABEL_218;
        }

        if (*(a1 + 1064) == 1 && *(a1 + 1072) < 36.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v32 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            v33 = *(a1 + 1064);
            v34 = *(a1 + 1072);
            *buf = 134349568;
            v149 = v12;
            v150 = 1026;
            *v151 = v33;
            *&v151[4] = 2050;
            *&v151[6] = v34;
            _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, too close to prior intersection,transitiondetected,%{public}d,dist,%{public}.2lf", buf, 0x1Cu);
          }

          v35 = sub_19B87DD40();
          if (*(v35 + 160) <= 1 && *(v35 + 164) <= 1 && *(v35 + 168) <= 1 && !*(v35 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v36 = *(a1 + 1064);
          v37 = *(a1 + 1072);
          v110 = 134349568;
          v111 = v12;
          v112 = 1026;
          *v113 = v36;
          *&v113[4] = 2050;
          *&v113[6] = v37;
          v20 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v20);
          goto LABEL_48;
        }

        v38 = fmod(*(a2 + 544) - *(a2 + 680), 360.0);
        if (v38 < 0.0)
        {
          v38 = v38 + 360.0;
        }

        if (v38 > 180.0)
        {
          v38 = v38 + -360.0;
        }

        if (fabs(v38) > 1.0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v39 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, course not aligned to full snap", buf, 0xCu);
          }

          v40 = sub_19B87DD40();
          if (*(v40 + 160) <= 1 && *(v40 + 164) <= 1 && *(v40 + 168) <= 1 && !*(v40 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 == -1)
          {
            goto LABEL_47;
          }

          goto LABEL_218;
        }

        v106 = -1.0;
        if ((sub_19BA206AC(&v107, (a2 + 376), (a1 + 168), &v106, *(a3 + 528), *(a3 + 536), *(a3 + 544)) & 1) == 0)
        {
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v49 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, priorCrumb location or course diverged", buf, 0xCu);
          }

          v50 = sub_19B87DD40();
          if (*(v50 + 160) <= 1 && *(v50 + 164) <= 1 && *(v50 + 168) <= 1 && !*(v50 + 152))
          {
            goto LABEL_50;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v110 = 134349056;
          v111 = v12;
          v20 = _os_log_send_and_compose_impl();
          sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v20);
          goto LABEL_48;
        }

        v105 = 70.0;
        sub_19B973CD8(v104, a2 + 256);
        v41 = sub_19BA20CFC(a1, v104, a2 + 376, &v105);
        sub_19B966FCC(v104);
        if (v41)
        {
LABEL_50:
          v3 = 0;
          goto LABEL_51;
        }

        sub_19B973CD8(&v101, a2 + 256);
        sub_19B8759E8(v99, "lookBehindParticle");
        sub_19B8759E8(__p, "currentCrumb");
        v42 = sub_19BA1FA38(a1, v99, __p, &v101, (a2 + 376), &v106, -15.0);
        if (v98 < 0)
        {
          operator delete(__p[0]);
        }

        if (v100 < 0)
        {
          operator delete(v99[0]);
        }

        if (v42)
        {
          sub_19B8759E8(v95, "Start");
          v43 = sub_19B8D72F4(a2 + 376, (a1 + 168), v95, &v108[8], &v108[16], v102, v103);
          if (v96 < 0)
          {
            operator delete(v95[0]);
          }

          if (v43)
          {
            v44 = sub_19BA0C01C((a1 + 168), *(a2 + 288), *(a2 + 296), v102, v103, *(a2 + 448));
            sub_19B973CD8(v92, a2 + 256);
            v45 = *(a2 + 472);
            if (v45 >= 0.0)
            {
              v48 = fabs(v45);
            }

            else
            {
              v46 = *(a1 + 208);
              if (v46)
              {
                v47 = (*(*v46 + 104))(v46);
                v48 = 8.32;
                if ((v47 & 1) == 0)
                {
                  v48 = 3.0;
                }
              }

              else
              {
                v48 = 3.0;
              }
            }

            v54 = v105;
            v55 = v48;
            v56 = v105 - v48;
            if (v105 - v48 >= 18.0)
            {
              sub_19B8759E8(v90, "predictedParticle");
              sub_19B8759E8(v88, "currentCrumb");
              v60 = sub_19BA1FA38(a1, v90, v88, v92, (a2 + 376), &v106, v55);
              if (v89 < 0)
              {
                operator delete(v88[0]);
              }

              if (v91 < 0)
              {
                operator delete(v90[0]);
              }

              if ((v60 & 1) == 0)
              {
                goto LABEL_210;
              }

              *&v108[24] = v94;
              v87 = 0xBFF0000000000000;
              sub_19BA0D194(v92[0], &v108[64], &v87);
              v61 = fmax(*&v108[64], 15.0);
              if (v54 > v61 + 1.0)
              {
                sub_19B973CD8(v86, a2 + 256);
                if (v54 - v61 >= v55 + 15.0)
                {
                  v62 = v55 + 15.0;
                }

                else
                {
                  v62 = v54 - v61;
                }

                sub_19B8759E8(v84, "lookAheadParticle");
                sub_19B8759E8(v82, "currentCrumb");
                v63 = sub_19BA1FA38(a1, v84, v82, v86, (a2 + 376), &v106, v62);
                if (v83 < 0)
                {
                  operator delete(v82[0]);
                }

                if (v85 < 0)
                {
                  operator delete(v84[0]);
                }

                if ((v63 & 1) == 0)
                {
                  goto LABEL_216;
                }

                v64 = fmin(v44, 15.0);
                v65 = v106;
                if (v106 < 3.0)
                {
                  v65 = 3.0;
                }

                *&v108[40] = v64 + v62;
                *&v108[56] = v65;
                sub_19B8759E8(v80, "Predicted");
                v66 = sub_19B8D72F4(a2 + 376, (a1 + 168), v80, &v108[24], &v108[32], *&v108[24], *&v108[32]);
                if (v81 < 0)
                {
                  operator delete(v80[0]);
                }

                if (v66)
                {
                  v67 = *(a2 + 384) + 1.0;
                  *&v108[48] = v93;
                  *v108 = v67;
                  __asm { FMOV            V1.2D, #1.0 }

                  *&v109[8] = vaddq_f64(*(a2 + 392), _Q1);
                  v108[73] = 0;
                  v108[74] = *(v92[0] + 17);
                  v108[72] = *(v92[0] + 18);
                  v108[75] = *(v92[0] + 19);
                  v108[76] = *(a2 + 496) == 0;
                  *v109 = 2;
                  v69 = *(a1 + 208);
                  if (v69 && (*(*v69 + 104))(v69))
                  {
                    *v109 = 3;
                  }

                  v70 = *v109;
                  *(a1 + 2032) = *&v108[64];
                  *(a1 + 2048) = v70;
                  *(a1 + 2064) = *&v109[16];
                  v71 = *&v108[16];
                  *(a1 + 1968) = *v108;
                  *(a1 + 1984) = v71;
                  v72 = *&v108[48];
                  *(a1 + 2000) = *&v108[32];
                  *(a1 + 2016) = v72;
                  *(a1 + 2272) = *&v109[16];
                  if (qword_1EAFE46D0 != -1)
                  {
                    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                  }

                  v73 = off_1EAFE4708;
                  if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
                  {
                    v74 = *(a2 + 472);
                    *buf = 134353921;
                    v149 = v12;
                    v150 = 2050;
                    *v151 = *v108;
                    *&v151[8] = 2053;
                    *&v151[10] = *&v108[24];
                    v152 = 2053;
                    v153 = *&v108[32];
                    v154 = 2050;
                    v155 = *&v108[48];
                    v156 = 2050;
                    v157 = *&v108[56];
                    v158 = 2050;
                    v159 = *&v108[64];
                    v160 = 2053;
                    v161 = *&v108[8];
                    v162 = 2053;
                    v163 = *&v108[16];
                    v164 = 2050;
                    v165 = *&v108[40];
                    v166 = 2050;
                    v167 = v74;
                    v168 = 1026;
                    v169 = v108[73];
                    v170 = 1026;
                    v171 = v108[74];
                    v172 = 1026;
                    v173 = v108[72];
                    v174 = 1026;
                    v175 = v108[75];
                    v176 = 2050;
                    v177 = v61;
                    v178 = 1026;
                    v179 = v108[76];
                    v180 = 2050;
                    v181 = *&v109[16];
                    v182 = 2050;
                    v183 = v64;
                    v184 = 1026;
                    v185 = *v109;
                    _os_log_impl(&dword_19B873000, v73, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf,DOT,%{public}.1lf,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,course,%{public}.1lf,courseUnc,%{public}.1lf,rw,%{public}.1lf,startLat,%{sensitive}.7lf,startLon,%{sensitive}.7lf,length,%{public}.1lf,speed,%{public}.3lf,isOneWay,%{public}d,isRailWay,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,distFromIntersection,%{public}.1lf,isFreeway,%{public}d,machContTime,%{public}.3lf,lookBehindDist,%{public}.2lf,type,%{public}d", buf, 0xB2u);
                  }

                  v75 = sub_19B87DD40();
                  if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
                  {
                    bzero(buf, 0x65CuLL);
                    if (qword_1EAFE46D0 != -1)
                    {
                      dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
                    }

                    v76 = *(a2 + 472);
                    v110 = 134353921;
                    v111 = v107;
                    v112 = 2050;
                    *v113 = *v108;
                    *&v113[8] = 2053;
                    *&v113[10] = *&v108[24];
                    v114 = 2053;
                    v115 = *&v108[32];
                    v116 = 2050;
                    v117 = *&v108[48];
                    v118 = 2050;
                    v119 = *&v108[56];
                    v120 = 2050;
                    v121 = *&v108[64];
                    v122 = 2053;
                    v123 = *&v108[8];
                    v124 = 2053;
                    v125 = *&v108[16];
                    v126 = 2050;
                    v127 = *&v108[40];
                    v128 = 2050;
                    v129 = v76;
                    v130 = 1026;
                    v131 = v108[73];
                    v132 = 1026;
                    v133 = v108[74];
                    v134 = 1026;
                    v135 = v108[72];
                    v136 = 1026;
                    v137 = v108[75];
                    v138 = 2050;
                    v139 = v61;
                    v140 = 1026;
                    v141 = v108[76];
                    v142 = 2050;
                    v143 = *&v109[16];
                    v144 = 2050;
                    v145 = v64;
                    v146 = 1026;
                    v147 = *v109;
                    v77 = _os_log_send_and_compose_impl();
                    sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v77);
                    if (v77 != buf)
                    {
                      free(v77);
                    }
                  }

                  v3 = 1;
                }

                else
                {
LABEL_216:
                  v3 = 0;
                }

                sub_19B966FCC(v86);
                goto LABEL_211;
              }

              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v78 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349056;
                v149 = v12;
                _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, current particle within the stopDistanceFromIntersection", buf, 0xCu);
              }

              v79 = sub_19B87DD40();
              if (*(v79 + 160) <= 1 && *(v79 + 164) <= 1 && *(v79 + 168) <= 1 && !*(v79 + 152))
              {
LABEL_210:
                v3 = 0;
LABEL_211:
                sub_19B966FCC(v92);
                goto LABEL_212;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v110 = 134349056;
              v111 = v12;
              v59 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v59);
            }

            else
            {
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v57 = off_1EAFE4708;
              if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134349312;
                v149 = v12;
                v150 = 2050;
                *v151 = v56;
                _os_log_impl(&dword_19B873000, v57, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, predicted point is too close to intersection,dist,%{public}.2lf", buf, 0x16u);
              }

              v58 = sub_19B87DD40();
              if (*(v58 + 160) <= 1 && *(v58 + 164) <= 1 && *(v58 + 168) <= 1 && !*(v58 + 152))
              {
                goto LABEL_210;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1EAFE46D0 != -1)
              {
                dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
              }

              v110 = 134349312;
              v111 = v12;
              v112 = 2050;
              *v113 = v56;
              v59 = _os_log_send_and_compose_impl();
              sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v59);
            }

            if (v59 != buf)
            {
              free(v59);
            }

            goto LABEL_210;
          }

          if (qword_1EAFE46D0 != -1)
          {
            dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
          }

          v51 = off_1EAFE4708;
          if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349056;
            v149 = v12;
            _os_log_impl(&dword_19B873000, v51, OS_LOG_TYPE_DEBUG, "CLMMPED,%{public}.1lf, no DOT, computeSnapCoordinatesFromRawGPSCoordinates lookBehind returned false", buf, 0xCu);
          }

          v52 = sub_19B87DD40();
          if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE46D0 != -1)
            {
              dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
            }

            v110 = 134349056;
            v111 = v12;
            v53 = _os_log_send_and_compose_impl();
            sub_19B885924("Generic", 1, 0, 2, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v53);
            if (v53 != buf)
            {
              free(v53);
            }
          }
        }

        v3 = 0;
LABEL_212:
        sub_19B966FCC(&v101);
        goto LABEL_51;
      }

      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v21 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v149 = v12;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid timeDiff,DOT", buf, 0xCu);
      }

      v22 = sub_19B87DD40();
      if ((*(v22 + 160) & 0x80000000) != 0 && (*(v22 + 164) & 0x80000000) != 0 && (*(v22 + 168) & 0x80000000) != 0 && !*(v22 + 152))
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
LABEL_26:
        v110 = 134349056;
        v111 = v12;
        v20 = _os_log_send_and_compose_impl();
        sub_19B885924("Generic", 1, 0, 0, "virtual BOOL CLParticleMM::CLPedestrianMapMatcherFilter::generateDirectionOfTravelAssistance(const MMFilterData &, const MMSnapData &)", "CoreLocation: %s\n", v20);
        goto LABEL_48;
      }
    }

    else
    {
      if (qword_1EAFE46D0 != -1)
      {
        dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
      }

      v18 = off_1EAFE4708;
      if (os_log_type_enabled(off_1EAFE4708, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v149 = v12;
        _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "CLMMPED,%{public}.1lf,Unexpected,invalid bestParticle road,DOT", buf, 0xCu);
      }

      v19 = sub_19B87DD40();
      if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
      {
        goto LABEL_50;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D0 == -1)
      {
        goto LABEL_26;
      }
    }

    dispatch_once(&qword_1EAFE46D0, &unk_1F0E6EB90);
    goto LABEL_26;
  }

LABEL_51:
  v25 = *MEMORY[0x1E69E9840];
  return v3;
}