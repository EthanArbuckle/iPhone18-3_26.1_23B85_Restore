void sub_19B60F9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B60FA30()
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C820 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }
    }

    v1 = off_1ED71C828;
    if (os_signpost_enabled(off_1ED71C828))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
      }
    }

    v2 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1ED71C820, &unk_1F0E29100);
  }
}

void sub_19B60FC60(void *a1)
{
  sub_19B445384(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B60FC98()
{
  result = os_log_create("com.apple.locationd.Legacy", "Direct_deprecated");
  qword_1EAFE2B60 = result;
  return result;
}

uint64_t sub_19B60FCC8(uint64_t result, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(result + 6336) != a2)
  {
    v3 = result;
    if (qword_1EAFE2998 != -1)
    {
      dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
    }

    v4 = off_1EAFE29A0;
    if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_INFO))
    {
      v5 = *(v3 + 6336);
      *buf = 67109376;
      v11 = v5;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CMCorrelatedMotion] Changed tracking behavior from %d to %d.", buf, 0xEu);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v9 = *(v3 + 6336);
      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::setTrackingBehavior(CMRelDM::TrackingBehavior)", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    *(v3 + 6336) = a2;
    result = sub_19B60FED8(v3, 0);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B60FED8(uint64_t result, int a2)
{
  *result = 0;
  *(result + 1208) = 0;
  *(result + 3288) = 0;
  *(result + 2444) = 0;
  *(result + 2428) = 0u;
  *(result + 3776) = 0u;
  *(result + 3792) = 0u;
  *(result + 3808) = 0;
  *(result + 6288) = 0;
  *(result + 6296) = 0u;
  *(result + 2416) = 1;
  *(result + 2864) = 0u;
  *(result + 2880) = 0;
  *(result + 2852) = 1;
  *(result + 6320) = 0;
  if (a2)
  {
    *(result + 6312) = 0;
    *(result + 3816) = 0;
    *(result + 6224) = 0uLL;
  }

  if (*(result + 6336) == 1)
  {
    *(result + 8816) = 0;
    *(result + 8800) = 0uLL;
    *(result + 8788) = 1;
    *(result + 8996) = 0uLL;
    *(result + 9012) = 0;
    *(result + 8984) = 1;
    *(result + 10048) = 0;
    if (a2)
    {
      *(result + 10032) = 0;
      *(result + 9192) = 0uLL;
      *(result + 9208) = 0;
      *(result + 9180) = 1;
    }
  }

  return result;
}

void sub_19B60FF8C(uint64_t a1, float32x2_t *a2, uint64_t a3, float *a4, int *a5, unint64_t a6, unint64_t a7, double a8)
{
  v8 = a7;
  v9 = a6;
  v321 = *MEMORY[0x1E69E9840];
  v14 = (a1 + 3780);
  v15 = *(a1 + 2);
  if (v15 == *(a1 + 1210))
  {
    if (v15 >= *(a1 + 3290))
    {
      v15 = *(a1 + 3290);
    }

    if (v15 >= 0x28)
    {
      v16 = 0;
      v17 = 0.0;
      do
      {
        v17 = v17 + (*(a3 + v16) * *(a3 + v16));
        v16 += 4;
      }

      while (v16 != 12);
      v18 = sqrtf(v17);
      if (v18 > 0.17453 || (v19 = *(a3 + 48)) == 0 || (v18 > 0.087266 ? (_ZF = v19 == 2) : (_ZF = 0), _ZF))
      {
        v21 = *(a1 + 6312) + a8;
        *(a1 + 6312) = v21;
      }

      else if (v19 == 1 && *(a1 + 6244) < 0.043633)
      {
        *(a1 + 6312) = 0;
      }

      v22 = *(a1 + 6240);
      v23 = (a1 + 3780);
      if (v22 > 0.1309 || a2[6].i32[0] == 0)
      {
        if (v22 > 0.2618)
        {
          *(a1 + 6316) = 0;
        }
      }

      else
      {
        v25 = *(a1 + 6316) + a8;
        *(a1 + 6316) = v25;
      }

      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v28 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(a1 + 6244);
        v30 = *(a1 + 6240);
        v31 = *(a3 + 48);
        v32 = a2[6].i32[0];
        v33 = *(a1 + 6312);
        v34 = *(a1 + 6316);
        *buf = 134219264;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v30;
        *&buf[22] = 1024;
        *&buf[24] = v31;
        *&buf[28] = 1024;
        *&buf[30] = v32;
        *&buf[34] = 2048;
        *&buf[36] = v33;
        v317 = 2048;
        v318 = v34;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "[CorrelatedMotion] updateSrcAuxMovingDuration: fAuxAvgOmegaShort, %.3f, fSrcAvgOmegaShort, %.3f, aux.qMode, %d, src.qMode, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", buf, 0x36u);
      }

      v35 = sub_19B420058();
      v8 = a7;
      v9 = a6;
      v14 = v23;
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        v36 = v8;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v37 = *(a1 + 6244);
        v38 = *(a1 + 6240);
        v39 = *(a3 + 48);
        v40 = a2[6].i32[0];
        v41 = *(a1 + 6312);
        v42 = *(a1 + 6316);
        v310 = 3.8526e-34;
        *v311 = v37;
        *&v311[8] = 2048;
        *&v311[10] = v38;
        *&v311[18] = 1024;
        *&v311[20] = v39;
        *&v311[24] = 1024;
        *&v311[26] = v40;
        *&v311[30] = 2048;
        *&v311[32] = v41;
        v312 = 2048;
        v313 = v42;
        v43 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::updateSrcAuxMovingDuration(const IMUData &, const IMUData &, double)", "CoreLocation: %s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }

        v8 = v36;
      }
    }
  }

  *(a1 + 6328) = v9;
  v44 = sub_19B66C1A4(a4, *a3, *(a3 + 4), *(a3 + 8));
  v46 = a2[1].f32[0] - v45;
  v49.i32[1] = v47;
  v14[3] = vadd_f32(vsub_f32(*a2, v49), v14[3]);
  *(a1 + 3812) = v46 + *(a1 + 3812);
  v48 = *(a1 + 3784);
  v49.f32[0] = a2->f32[0] + *(a1 + 3780);
  *(a1 + 3780) = v49.i32[0];
  v50 = a2->f32[1] + v48;
  *(a1 + 3784) = v50;
  v51 = a2[1].f32[0] + *(a1 + 3788);
  *(a1 + 3788) = v51;
  *(a1 + 3792) = *a3 + *(a1 + 3792);
  *(a1 + 3796) = *(a3 + 4) + *(a1 + 3796);
  *(a1 + 3800) = *(a3 + 8) + *(a1 + 3800);
  v52 = *(a1 + 3776) + 1;
  *(a1 + 3776) = v52;
  if (v52 == 4)
  {
    v305 = v9;
    v53 = (a1 + 8788);
    v49.f32[1] = v50;
    __asm { FMOV            V8.2S, #0.25 }

    *buf = vmul_f32(v49, _D8);
    *&buf[8] = v51 * 0.25;
    sub_19B5BE720(a1, buf);
    v58 = *(a1 + 3800) * 0.25;
    *buf = vmul_f32(*(a1 + 3792), _D8);
    *&buf[8] = v58;
    sub_19B5BE720((a1 + 1208), buf);
    v59 = *(a1 + 3800) * 0.25;
    *buf = vmul_f32(*(a1 + 3792), _D8);
    *&buf[8] = v59;
    sub_19B5BE720((a1 + 3816), buf);
    v60 = *(a1 + 3788) * 0.25;
    *buf = vmul_f32(*v14, _D8);
    *&buf[8] = v60;
    sub_19B5BE720((a1 + 6380), buf);
    v61 = *(a1 + 3812) * 0.25;
    *buf = vmul_f32(v14[3], _D8);
    *&buf[8] = v61;
    sub_19B5BE720((a1 + 3288), buf);
    *(a1 + 3808) = 0;
    *(a1 + 3776) = 0u;
    *(a1 + 3792) = 0u;
    *(a1 + 6288) = sub_19B447000(&a2[7]);
    *(a1 + 6292) = v62;
    *(a1 + 6296) = v63;
    *(a1 + 6300) = sub_19B447000((a3 + 56));
    *(a1 + 6304) = v64;
    *(a1 + 6308) = v65;
    v66 = sub_19B5BC7B8(a1);
    *buf = ((v67 * *(a1 + 6296)) + (v68 * *(a1 + 6292))) + (v66 * *(a1 + 6288));
    sub_19B5BC034(a1 + 2416, buf);
    v69 = sub_19B5BC7B8((a1 + 1208));
    *buf = ((v70 * *(a1 + 6308)) + (v71 * *(a1 + 6304))) + (v69 * *(a1 + 6300));
    sub_19B5BC034(a1 + 2852, buf);
    if (v14[319].i8[4] == 1)
    {
      v72 = sub_19B5BC7B8(a1);
      *buf = ((v73 * *(a1 + 6296)) + (v74 * *(a1 + 6292))) + (v72 * *(a1 + 6288));
      sub_19B5BC034(a1 + 9180, buf);
      v75 = vbsl_s8(vcgtz_f32(v14[311]), v14[311], vneg_f32(v14[311]));
      *buf = vsub_f32(vdup_lane_s32(v75, 1), v75).u32[0];
      sub_19B5BC034(a1 + 8788, buf);
      sub_19B5BC034(a1 + 8984, &v14[311]);
    }

    v76 = *(a1 + 2);
    v77 = *(a1 + 1210);
    if (v76 == v77)
    {
      v78 = *(a1 + 3290);
      if (v76 >= v78)
      {
        v79 = *(a1 + 3290);
      }

      else
      {
        v79 = *(a1 + 2);
      }

      if (v79 < 0x28)
      {
        goto LABEL_104;
      }

      v310 = sub_19B5BF0D0(a1, v76 - 40, *(a1 + 2));
      *v311 = v80;
      *&v311[4] = v81;
      v309[0] = sub_19B5BF0D0((a1 + 1208), v76 - 40, v76);
      v309[1] = v82;
      v309[2] = v83;
      v308[0] = sub_19B5BF0D0(a1, v76 - 10, v76);
      v308[1] = v84;
      v308[2] = v85;
      v86 = sub_19B5BF0D0((a1 + 1208), v76 - 10, v76);
      v87 = 0;
      *v307 = v86;
      v307[1] = v88;
      v307[2] = v89;
      v90 = 0.0;
      do
      {
        v90 = v90 + (*&v308[v87] * *&v308[v87]);
        ++v87;
      }

      while (v87 != 3);
      v91 = 0;
      *(a1 + 6240) = sqrtf(v90);
      v92 = 0.0;
      do
      {
        v92 = v92 + (*&v307[v91] * *&v307[v91]);
        ++v91;
      }

      while (v91 != 3);
      v93 = 0;
      *(a1 + 6244) = sqrtf(v92);
      v94 = 0.0;
      do
      {
        v94 = v94 + (*&v311[v93 - 4] * *&v311[v93 - 4]);
        v93 += 4;
      }

      while (v93 != 12);
      v95 = 0;
      *(a1 + 6248) = sqrtf(v94);
      v96 = 0.0;
      do
      {
        v96 = v96 + (*&v309[v95] * *&v309[v95]);
        ++v95;
      }

      while (v95 != 3);
      *(a1 + 6252) = sqrtf(v96);
      sub_19B5E9EFC((a1 + 3288), v78 - 10, v78);
      v97 = 0;
      *buf = v98;
      *&buf[4] = v99;
      *&buf[8] = v100;
      v101 = 0.0;
      do
      {
        v101 = v101 + (*&buf[v97] * *&buf[v97]);
        v97 += 4;
      }

      while (v97 != 12);
      *(a1 + 6256) = sqrtf(v101);
      sub_19B5E9EFC((a1 + 3288), v78 - 40, v78);
      v102 = 0;
      *buf = v103;
      *&buf[4] = v104;
      *&buf[8] = v105;
      v106 = 0.0;
      do
      {
        v106 = v106 + (*&buf[v102] * *&buf[v102]);
        v102 += 4;
      }

      while (v102 != 12);
      *(a1 + 6260) = sqrtf(v106);
      v107 = sub_19B5BF0D0((a1 + 3288), v78 - 40, v78);
      v108 = 0;
      *buf = v107;
      *&buf[4] = v109;
      *&buf[8] = v110;
      v111 = 0.0;
      do
      {
        v111 = v111 + (*&buf[v108] * *&buf[v108]);
        v108 += 4;
      }

      while (v108 != 12);
      *(a1 + 6264) = sqrtf(v111);
      *(a1 + 6268) = sub_19B5BE518(a1 + 2416, v76 - 40, 40);
      *(a1 + 6272) = sub_19B5BE518(a1 + 2852, v76 - 40, 40);
      *(a1 + 6276) = sub_19B5BE518(a1 + 2416, v76 - 10, 10);
      *(a1 + 6280) = sub_19B5BE518(a1 + 2852, v76 - 10, 10);
      v112 = *(a1 + 3818);
      if (*(a1 + 3820) == v112)
      {
        sub_19B5E9EFC((a1 + 3816), 0, (v112 * 0.9));
        *&buf[4] = v114;
        *&buf[8] = v115;
        if (v113 <= 0.0)
        {
          v113 = -v113;
        }

        for (i = 4; i != 12; i += 4)
        {
          v117 = *&buf[i];
          if (v117 <= 0.0)
          {
            v117 = -v117;
          }

          if (v117 > v113)
          {
            v113 = v117;
          }
        }
      }

      else
      {
        sub_19B5E9EFC((a1 + 3816), 0, v112);
        *&buf[4] = v118;
        *&buf[8] = v119;
        if (v113 <= 0.0)
        {
          v113 = -v113;
        }

        for (j = 4; j != 12; j += 4)
        {
          v121 = *&buf[j];
          if (v121 <= 0.0)
          {
            v121 = -v121;
          }

          if (v121 > v113)
          {
            v113 = v121;
          }
        }
      }

      *(a1 + 6284) = sqrtf(v113);
      if (v14[319].i8[4] == 1)
      {
        if (*(a1 + 2416) == 1)
        {
          sub_19B5BE7E0(a1 + 2416);
        }

        *(a1 + 10016) = *(a1 + 2420);
        if (*(a1 + 2852) == 1)
        {
          sub_19B5BE7E0(a1 + 2852);
        }

        *(a1 + 10020) = *(a1 + 2856);
        if (*v53 == 1)
        {
          sub_19B5BE7E0(a1 + 8788);
        }

        *(a1 + 10036) = *(a1 + 8792);
        if (*(a1 + 8984) == 1)
        {
          sub_19B5BE7E0(a1 + 8984);
        }

        *(a1 + 10040) = *(a1 + 8988);
        sub_19B5E9EFC((a1 + 6380), 0, *(a1 + 6382));
        *&buf[4] = v123;
        *&buf[8] = v124;
        if (v122 <= 0.0)
        {
          v122 = -v122;
        }

        for (k = 4; k != 12; k += 4)
        {
          v126 = *&buf[k];
          if (v126 <= 0.0)
          {
            v126 = -v126;
          }

          if (v126 > v122)
          {
            v122 = v126;
          }
        }

        *(a1 + 10024) = sqrtf(v122);
        v127 = *(a1 + 2446);
        v128 = 0.0;
        v129 = 0.0;
        v130 = v127 - 40;
        if (v127 >= 0x28)
        {
          v131 = sub_19B5BE518(a1 + 2416, v127 - 40, 40);
          v129 = sqrtf(sub_19B613A10(a1 + 2416, v130, 40, v131));
        }

        *(a1 + 10028) = v129;
        if (*(a1 + 9212) == *(a1 + 9210))
        {
          if (*(a1 + 9180) == 1)
          {
            sub_19B5BE7E0(a1 + 9180);
          }

          v128 = *(a1 + 9184) * 4.0;
        }

        *(a1 + 10032) = v128;
      }

      LODWORD(v76) = *(a1 + 2);
      v77 = *(a1 + 1210);
    }

    _ZF = v76 == v77;
    LODWORD(v76) = v77;
    if (!_ZF)
    {
      goto LABEL_492;
    }

LABEL_104:
    v132 = *(a1 + 3290);
    if (v76 < v132)
    {
      v132 = v76;
    }

    if (v132 < 0x28)
    {
      goto LABEL_492;
    }

    if (*(a1 + 6244) <= *(a1 + 6252))
    {
      v133 = *(a1 + 6252);
    }

    else
    {
      v133 = *(a1 + 6244);
    }

    v134 = *(a1 + 6240);
    if (v134 <= *(a1 + 6248))
    {
      v134 = *(a1 + 6248);
    }

    if (v133 <= 0.17453)
    {
      v135 = v133;
    }

    else
    {
      v135 = 0.17453;
    }

    if (v134 <= v135 && *(a1 + 6316) >= 5.0)
    {
      if (*(a1 + 2852) == 1)
      {
        sub_19B5BE7E0(a1 + 2852);
      }

      v137 = *(a1 + 2856);
      if (v137 <= 0.0)
      {
        v138 = -v137;
      }

      else
      {
        v138 = *(a1 + 2856);
      }

      v139 = *(a1 + 6312);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v140 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        v141 = *(a1 + 6312);
        v142 = *(a3 + 48);
        *buf = 134218752;
        *&buf[4] = v141;
        *&buf[12] = 2048;
        *&buf[14] = (v138 * 57.296);
        *&buf[22] = 2048;
        *&buf[24] = (v133 * 57.296);
        *&buf[32] = 1024;
        *&buf[34] = v142;
        _os_log_impl(&dword_19B41C000, v140, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxMovingDuration, %.3f, auxRotGrav, %.3f, auxRot, %.3f, aux.qMode, %d", buf, 0x26u);
      }

      v143 = sub_19B420058();
      if (*(v143 + 160) > 1 || *(v143 + 164) > 1 || *(v143 + 168) > 1 || *(v143 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v144 = *(a1 + 6312);
        v145 = *(a3 + 48);
        v310 = 3.8523e-34;
        *v311 = v144;
        *&v311[8] = 2048;
        *&v311[10] = (v138 * 57.296);
        *&v311[18] = 2048;
        *&v311[20] = (v133 * 57.296);
        *&v311[28] = 1024;
        *&v311[30] = v145;
        v146 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyOnGymMachine(const IMUData &, const IMUData &) const", "CoreLocation: %s\n", v146);
        if (v146 != buf)
        {
          free(v146);
        }
      }

      v136 = v138 < 0.17453 && v139 > 5.0;
    }

    else
    {
      v136 = 0;
    }

    v14[317].i8[5] = v136;
    v148 = v305 > 0xF || v136;
    if (v14[319].i8[4] == 1)
    {
      if (v148 || sub_19B7399E4(a5, v8) > 10.0 || *a5 == 4 || *a5 == 41 || (sub_19B739C08(a5, v8), v149 < 5.0) || v14[324].i8[4] == 1)
      {
        if ((v14[317].i8[5] & 1) != 0 || *a5 == 4 || *a5 == 41 || v14[324].i8[4] == 1)
        {
          v150 = v14[324].i8[4];
          v151 = (v150 & 1 | 2u) * 0.1;
          v152 = 1;
        }

        else
        {
          v150 = 0;
          v152 = 0;
          v151 = 0.1;
        }

        v153 = *(a1 + 10020);
        v154 = *(a1 + 10016) - v153;
        if (v154 <= 0.0)
        {
          v155 = -v154;
        }

        else
        {
          v155 = *(a1 + 10016) - v153;
        }

        v156 = *(a1 + 6272) - *(a1 + 6268);
        if (v156 <= 0.0)
        {
          v157 = -v156;
        }

        else
        {
          v157 = *(a1 + 6272) - *(a1 + 6268);
        }

        if (v150)
        {
          v158 = *(a1 + 6284) * 4.0;
          if (v158 > 1.7453)
          {
            v158 = 1.7453;
          }

          if (*(a1 + 10024) > v158 && *(a1 + 10028) > 0.87266)
          {
            if (v153 <= 0.0)
            {
              v155 = -v153;
            }

            else
            {
              v155 = *(a1 + 10020);
            }

            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            v159 = off_1EAFE29A0;
            if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
            {
              if (*(a1 + 2852) == 1)
              {
                sub_19B5BE7E0(a1 + 2852);
              }

              v160 = *(a1 + 2856);
              if (*(a1 + 2416) == 1)
              {
                sub_19B5BE7E0(a1 + 2416);
              }

              v161 = *(a1 + 2420);
              *buf = 134218496;
              *&buf[4] = v160;
              *&buf[12] = 2048;
              *&buf[14] = v161;
              *&buf[22] = 2048;
              *&buf[24] = v155;
              _os_log_impl(&dword_19B41C000, v159, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] Outdoor, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x20u);
            }

            v162 = sub_19B420058();
            if (*(v162 + 160) > 1 || *(v162 + 164) > 1 || *(v162 + 168) > 1 || *(v162 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
              }

              if (*(a1 + 2852) == 1)
              {
                sub_19B5BE7E0(a1 + 2852);
              }

              v163 = *(a1 + 2856);
              if (*(a1 + 2416) == 1)
              {
                sub_19B5BE7E0(a1 + 2416);
              }

              v164 = *(a1 + 2420);
              v310 = 3.8522e-34;
              *v311 = v163;
              *&v311[8] = 2048;
              *&v311[10] = v164;
              *&v311[18] = 2048;
              *&v311[20] = v155;
              v165 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v165);
              if (v165 != buf)
              {
                free(v165);
              }
            }
          }
        }

        if (v152)
        {
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v166 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            if (v14[324].i8[4] != 1)
            {
              goto LABEL_256;
            }

            v167 = *(a1 + 6284) * 4.0;
            if (v167 > 1.7453)
            {
              v167 = 1.7453;
            }

            if (*(a1 + 10024) > v167)
            {
              v168 = *(a1 + 10028) > 0.87266;
            }

            else
            {
LABEL_256:
              v168 = 0;
            }

            if (*(a1 + 2852) == 1)
            {
              sub_19B5BE7E0(a1 + 2852);
            }

            v209 = *(a1 + 2856);
            if (*(a1 + 2416) == 1)
            {
              sub_19B5BE7E0(a1 + 2416);
            }

            v210 = *(a1 + 2420);
            *buf = 67109888;
            *&buf[4] = v168;
            *&buf[8] = 2048;
            *&buf[10] = v209;
            *&buf[18] = 2048;
            *&buf[20] = v210;
            *&buf[28] = 2048;
            *&buf[30] = v155;
            _os_log_impl(&dword_19B41C000, v166, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] srcInHand, %d, auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x26u);
          }

          v211 = sub_19B420058();
          if (*(v211 + 160) > 1 || *(v211 + 164) > 1 || *(v211 + 168) > 1 || *(v211 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            if (v14[324].i8[4] != 1)
            {
              goto LABEL_273;
            }

            v212 = *(a1 + 6284) * 4.0;
            if (v212 > 1.7453)
            {
              v212 = 1.7453;
            }

            if (*(a1 + 10024) > v212)
            {
              v213 = *(a1 + 10028) > 0.87266;
            }

            else
            {
LABEL_273:
              v213 = 0;
            }

            if (*(a1 + 2852) == 1)
            {
              sub_19B5BE7E0(a1 + 2852);
            }

            v214 = *(a1 + 2856);
            if (*(a1 + 2416) == 1)
            {
              sub_19B5BE7E0(a1 + 2416);
            }

            v215 = *(a1 + 2420);
            v310 = 1.5048e-36;
            *v311 = v213;
            *&v311[4] = 2048;
            *&v311[6] = v214;
            *&v311[14] = 2048;
            *&v311[16] = v215;
            *&v311[24] = 2048;
            *&v311[26] = v155;
            v216 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v216);
            if (v216 != buf)
            {
              free(v216);
            }
          }

          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v217 = off_1EAFE29A0;
          if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
          {
            v218 = *(a1 + 6272);
            v219 = *(a1 + 6268);
            v220 = *(a1 + 6264);
            *buf = 134218496;
            *&buf[4] = v218;
            *&buf[12] = 2048;
            *&buf[14] = v219;
            *&buf[22] = 2048;
            *&buf[24] = v220;
            _os_log_impl(&dword_19B41C000, v217, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", buf, 0x20u);
          }

          v221 = sub_19B420058();
          if (*(v221 + 160) > 1 || *(v221 + 164) > 1 || *(v221 + 168) > 1 || *(v221 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE2998 != -1)
            {
              dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
            }

            v222 = *(a1 + 6272);
            v223 = *(a1 + 6268);
            v224 = *(a1 + 6264);
            v310 = 3.8522e-34;
            *v311 = v222;
            *&v311[8] = 2048;
            *&v311[10] = v223;
            *&v311[18] = 2048;
            *&v311[20] = v224;
            v225 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivityMusic(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v225);
            if (v225 != buf)
            {
              free(v225);
            }
          }
        }

        v226 = *(a1 + 6280);
        if (v226 <= 0.0)
        {
          v226 = -v226;
        }

        v227 = *(a1 + 2880) + *(a1 + 2882) - 1;
        v228 = *(a1 + 2884);
        if (v227 < v228)
        {
          v228 = 0;
        }

        v229 = *(a1 + 4 * (v227 - v228) + 2888);
        if (v229 <= 0.0)
        {
          v229 = -v229;
        }

        v230 = (v226 + v229) * 0.5;
        v231 = *(a1 + 6272);
        if (v231 <= 0.0)
        {
          v231 = -v231;
        }

        if (v231 > v230)
        {
          v230 = v231;
        }

        if (v155 < v230)
        {
          v230 = v155;
        }

        if (v230 < v151)
        {
LABEL_305:
          v232 = 1;
          goto LABEL_325;
        }

        if (v14[324].i8[4] == 1)
        {
          v233 = *(a1 + 6284) * 4.0;
          if (v233 > 1.7453)
          {
            v233 = 1.7453;
          }

          if (*(a1 + 10024) > v233)
          {
            v232 = 0;
            if (v231 <= 0.2618 || *(a1 + 10028) > 0.87266)
            {
LABEL_325:
              v14[317].i8[4] = v232;
              if (qword_1EAFE2998 != -1)
              {
                dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
              }

              v235 = off_1EAFE29A0;
              if (!os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
              {
LABEL_351:
                v251 = sub_19B420058();
                v304 = v53;
                if (*(v251 + 160) <= 1 && *(v251 + 164) <= 1 && *(v251 + 168) <= 1 && !*(v251 + 152))
                {
                  goto LABEL_382;
                }

                bzero(buf, 0x65CuLL);
                if (qword_1EAFE2998 != -1)
                {
                  dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                }

                v252 = *a5;
                v254 = *a5 == 4 || v252 == 41;
                v255 = 1;
                if (v252 > 51)
                {
                  if (v252 == 52 || v252 == 56)
                  {
                    goto LABEL_370;
                  }
                }

                else
                {
                  if (!v252)
                  {
                    v256 = v8;
                    goto LABEL_373;
                  }

                  if (v252 == 5)
                  {
LABEL_370:
                    v256 = v8;
                    if ((v252 & 0xFFFFFFFE) == 0xA)
                    {
                      v252 = 1;
                    }

                    else
                    {
                      v252 = v255;
                    }

LABEL_373:
                    v257 = v14[317].u8[4];
                    v258 = v14[317].u8[5];
                    if (a5[1] > 1)
                    {
                      v259 = v252;
                    }

                    else
                    {
                      v259 = 0;
                    }

                    v260 = sub_19B7399E4(a5, v256);
                    v261 = 0;
                    v262 = v260 > 10.0;
                    v263 = *a5;
                    if (*a5 <= 0xB && ((1 << v263) & 0xC06) != 0)
                    {
                      v261 = (v263 & 0xFFFFFFFE) != 10;
                    }

                    v264 = *(a1 + 6312);
                    v265 = *(a1 + 6316);
                    v310 = 1.505e-36;
                    *v311 = v257;
                    *&v311[4] = 1024;
                    *&v311[6] = v258;
                    *&v311[10] = 1024;
                    *&v311[12] = v254;
                    *&v311[16] = 1024;
                    *&v311[18] = v259;
                    *&v311[22] = 1024;
                    *&v311[24] = v262;
                    *&v311[28] = 1024;
                    *&v311[30] = v261;
                    *&v311[34] = 1024;
                    *&v311[36] = v305 > 0xF;
                    v312 = 2048;
                    v313 = v264;
                    v314 = 2048;
                    v315 = v265;
                    v266 = _os_log_send_and_compose_impl();
                    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::feed(const IMUData &, const IMUData &, const CMOQuaternion &, const ActivityState &, uint64_t, uint64_t, double)", "CoreLocation: %s\n", v266);
                    if (v266 != buf)
                    {
                      free(v266);
                    }

                    v8 = v256;
                    v53 = v304;
LABEL_382:
                    if (v14[319].i8[4] != 1)
                    {
LABEL_492:
                      *(a1 + 10048) = v8;
                      goto LABEL_493;
                    }

                    v267 = v14[323].u8[4];
                    if (v14[324].i8[4] == 1)
                    {
                      v268 = *(a1 + 6284) * 4.0;
                      if (v268 > 1.7453)
                      {
                        v268 = 1.7453;
                      }

                      if (*(a1 + 10024) > v268 && *(a1 + 10028) > 0.87266)
                      {
                        v269 = *(a1 + 10016);
                        v270 = -v269;
                        if (v269 <= 0.0)
                        {
                          v271 = -v269;
                        }

                        else
                        {
                          v271 = *(a1 + 10016);
                        }

                        v272 = *(a1 + 6280);
                        if (v272 <= 0.0)
                        {
                          v272 = -v272;
                        }

                        v273 = v272 - v271;
                        v274 = 0.5236;
                        goto LABEL_405;
                      }

                      v276 = *(a1 + 6268);
                      v271 = -v276;
                      if (v276 <= 0.0)
                      {
                        v275 = -v276;
                      }

                      else
                      {
                        v275 = *(a1 + 6268);
                      }
                    }

                    else
                    {
                      v275 = *(a1 + 6276);
                      if (v275 <= 0.0)
                      {
                        v275 = -v275;
                      }

                      v276 = *(a1 + 6268);
                      v271 = -v276;
                    }

                    v277 = *(a1 + 6280);
                    if (v277 <= 0.0)
                    {
                      v277 = -v277;
                    }

                    v273 = v277 - v275;
                    if (v276 > 0.0)
                    {
                      v271 = v276;
                    }

                    v269 = *(a1 + 10016);
                    v270 = -v269;
                    v274 = 0.34907;
LABEL_405:
                    v278 = *(a1 + 6272);
                    if (v278 <= 0.0)
                    {
                      v278 = -v278;
                    }

                    if (v269 <= 0.0)
                    {
                      v269 = v270;
                    }

                    if (!v14[323].i8[4])
                    {
                      goto LABEL_414;
                    }

                    v279 = *(a1 + 6360);
                    if (v279 <= 0.0)
                    {
                      v279 = -v279;
                    }

                    if (v279 > 0.17453)
                    {
                      v280 = *(a1 + 6364) > 1.9199;
                    }

                    else
                    {
LABEL_414:
                      v280 = 0;
                    }

                    v281 = *(a1 + 10048);
                    v282 = v278 - v271;
                    v283 = v278 - v269;
                    if (!v14[324].i8[4] || v280)
                    {
                      goto LABEL_437;
                    }

                    v284 = *(a1 + 10036);
                    if (v282 <= v283)
                    {
                      v285 = v283;
                    }

                    else
                    {
                      v285 = v282;
                    }

                    if (v284 <= v285)
                    {
                      v284 = v285;
                    }

                    v286 = *(a1 + 10040);
                    if (v286 <= 0.0)
                    {
                      v286 = -v286;
                    }

                    if (v274 <= v284)
                    {
                      v274 = v284;
                    }

                    if (v274 > 0.87266)
                    {
                      v274 = 0.87266;
                    }

                    if (v286 > v274)
                    {
                      v14[323].i8[4] = 0;
                      if (!v267)
                      {
                        goto LABEL_478;
                      }
                    }

                    else
                    {
LABEL_437:
                      if (v14[323].i8[4] && (v283 > 0.34907 || v280 && *(a1 + 10036) > 0.34907))
                      {
                        v287 = 1;
                      }

                      else
                      {
                        v287 = v273 > 0.61087;
                        if (v282 > 0.43633)
                        {
                          v287 = 1;
                        }
                      }

                      v14[323].i8[4] = v287;
                      if (v267 == v287)
                      {
                        if (!v287 || *(a1 + 6352))
                        {
                          goto LABEL_478;
                        }

                        v288 = *(a1 + 6364);
                        v289 = *(a1 + 6360);
LABEL_446:
                        v290 = *(a1 + 2880) + *(a1 + 2882) - 1;
                        v291 = *(a1 + 2884);
                        if (v290 < v291)
                        {
                          v291 = 0;
                        }

                        v292 = v289 + *(a1 + 4 * (v290 - v291) + 2888) * ((v8 - v281) * 0.000001);
                        *(a1 + 6360) = v292;
                        if (v292 <= 0.0)
                        {
                          v292 = -v292;
                        }

                        if (v292 > v288)
                        {
                          *(a1 + 6364) = v292;
                        }

                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                        }

                        v293 = off_1EAFE29A0;
                        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                        {
                          v294 = (*(a1 + 6360) * 57.296);
                          *buf = 134217984;
                          *&buf[4] = v294;
                          _os_log_impl(&dword_19B41C000, v293, OS_LOG_TYPE_DEBUG, "[UpdateHeadTurnState] headYaw, %.2f", buf, 0xCu);
                        }

                        v295 = sub_19B420058();
                        v53 = v304;
                        if (*(v295 + 160) > 1 || *(v295 + 164) > 1 || *(v295 + 168) > 1 || *(v295 + 152))
                        {
                          bzero(buf, 0x65CuLL);
                          if (qword_1EAFE2998 != -1)
                          {
                            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                          }

                          v296 = (*(a1 + 6360) * 57.296);
                          v310 = 3.852e-34;
                          *v311 = v296;
LABEL_475:
                          v299 = _os_log_send_and_compose_impl();
                          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMCorrelatedMotion::updateHeadTurnState(uint64_t, uint64_t)", "CoreLocation: %s\n", v299);
                          if (v299 != buf)
                          {
                            free(v299);
                          }

                          v53 = v304;
                          goto LABEL_478;
                        }

                        goto LABEL_478;
                      }

                      if (v287)
                      {
                        *(a1 + 6344) = v8;
                        *(a1 + 6352) = 0u;
                        v289 = 0.0;
                        v288 = 0.0;
                        goto LABEL_446;
                      }
                    }

                    *(a1 + 6352) = v8;
                    if (*(a1 + 6344) >= v8)
                    {
                      if (qword_1EAFE2998 != -1)
                      {
                        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                      }

                      v297 = off_1EAFE29A0;
                      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_19B41C000, v297, OS_LOG_TYPE_DEBUG, "[UpdateHeadTurnState] Something is wrong with timestamp.", buf, 2u);
                      }

                      v298 = sub_19B420058();
                      v53 = v304;
                      if (*(v298 + 160) > 1 || *(v298 + 164) > 1 || *(v298 + 168) > 1 || *(v298 + 152))
                      {
                        bzero(buf, 0x65CuLL);
                        if (qword_1EAFE2998 != -1)
                        {
                          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
                        }

                        LOWORD(v310) = 0;
                        goto LABEL_475;
                      }
                    }

LABEL_478:
                    v300 = *(a1 + 6268);
                    if (v300 <= 0.0)
                    {
                      v300 = -v300;
                    }

                    if (v300 > 1.3963)
                    {
                      *(a1 + 9192) = 0u;
                      *(a1 + 9208) = 0;
                      v53[392] = 1;
                      *(a1 + 10032) = 0;
                      *(a1 + 10056) = 0;
                      v14[324].i8[5] = 0;
                      goto LABEL_492;
                    }

                    if (v14[324].i8[4] == 1)
                    {
                      v301 = *(a1 + 10032);
                      if (v301 <= 0.0)
                      {
                        v301 = -v301;
                      }

                      v302 = *(a1 + 10056);
                      if (v301 > 0.61087)
                      {
                        ++v302;
LABEL_490:
                        *(a1 + 10056) = v302;
                        goto LABEL_491;
                      }

                      if (v302)
                      {
                        --v302;
                        goto LABEL_490;
                      }
                    }

                    else
                    {
                      v302 = 0;
                      *(a1 + 10056) = 0;
                    }

LABEL_491:
                    v14[324].i8[5] = v302 > 0x1E;
                    goto LABEL_492;
                  }
                }

                v255 = 0;
                goto LABEL_370;
              }

              v236 = *a5;
              v238 = *a5 == 4 || v236 == 41;
              v239 = 1;
              if (v236 > 51)
              {
                if (v236 == 52 || v236 == 56)
                {
                  goto LABEL_341;
                }
              }

              else
              {
                if (!v236)
                {
                  v240 = (a1 + 8788);
                  v241 = v8;
                  goto LABEL_344;
                }

                if (v236 == 5)
                {
LABEL_341:
                  v240 = (a1 + 8788);
                  v241 = v8;
                  if ((v236 & 0xFFFFFFFE) == 0xA)
                  {
                    v236 = 1;
                  }

                  else
                  {
                    v236 = v239;
                  }

LABEL_344:
                  v242 = v14[317].u8[4];
                  v243 = v14[317].u8[5];
                  if (a5[1] > 1)
                  {
                    v244 = v236;
                  }

                  else
                  {
                    v244 = 0;
                  }

                  v245 = sub_19B7399E4(a5, v241);
                  v246 = 0;
                  v247 = v245 > 10.0;
                  v248 = *a5;
                  if (*a5 > 0xB)
                  {
                    v53 = v240;
                  }

                  else
                  {
                    v53 = v240;
                    if (((1 << v248) & 0xC06) != 0)
                    {
                      v246 = (v248 & 0xFFFFFFFE) != 10;
                    }
                  }

                  v249 = *(a1 + 6312);
                  v250 = *(a1 + 6316);
                  *buf = 67111168;
                  *&buf[4] = v242;
                  *&buf[8] = 1024;
                  *&buf[10] = v243;
                  *&buf[14] = 1024;
                  *&buf[16] = v238;
                  *&buf[20] = 1024;
                  *&buf[22] = v244;
                  *&buf[26] = 1024;
                  *&buf[28] = v247;
                  *&buf[32] = 1024;
                  *&buf[34] = v246;
                  *&buf[38] = 1024;
                  *&buf[40] = v305 > 0xF;
                  v317 = 2048;
                  v318 = v249;
                  v319 = 2048;
                  v320 = v250;
                  _os_log_impl(&dword_19B41C000, v235, OS_LOG_TYPE_DEBUG, "[CorrelatedMotion] isInCorrelatedActivity, %d, onGymMachine, %d, srcWalking, %d, srcVehicle, %d, srcMovingLT, %d, srcStatic, %d, noBTZLT, %d, auxMovingDurationSecs, %.3f, srcStaticDurationSecs, %.3f", buf, 0x40u);
                  v8 = v241;
                  goto LABEL_351;
                }
              }

              v239 = 0;
              goto LABEL_341;
            }

            goto LABEL_314;
          }
        }

        if (v231 > 0.2618)
        {
LABEL_314:
          v234 = *(a1 + 6268);
          if (v234 <= 0.0)
          {
            v234 = -v234;
          }

          if (v231 >= v234)
          {
            v231 = v234;
          }

          if (v231 < 0.17453)
          {
            v231 = 0.17453;
          }

          v208 = v157 > v231;
LABEL_321:
          v232 = !v208;
          goto LABEL_325;
        }
      }
    }

    else if (v148 || sub_19B7399E4(a5, v8) > 10.0 || *a5 == 4 || *a5 == 41 || (sub_19B739C08(a5, v8), v169 < 5.0))
    {
      v170 = (v14[317].i8[5] & 1) != 0 || *a5 == 4 || *a5 == 41;
      if (*(a1 + 2416) == 1)
      {
        sub_19B5BE7E0(a1 + 2416);
      }

      v172 = *(a1 + 2420);
      if (*(a1 + 2852) == 1)
      {
        sub_19B5BE7E0(a1 + 2852);
      }

      v173 = v172 - *(a1 + 2856);
      if (v173 <= 0.0)
      {
        v174 = -v173;
      }

      else
      {
        v174 = v172 - *(a1 + 2856);
      }

      if (v170)
      {
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v175 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v176 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
          v179 = (((v177 * *(a1 + 6308)) + (v178 * *(a1 + 6304))) + (v176 * *(a1 + 6300)));
          v180 = sub_19B5BF0D0(a1, 0, *(a1 + 2));
          v183 = (((v181 * *(a1 + 6296)) + (v182 * *(a1 + 6292))) + (v180 * *(a1 + 6288)));
          *buf = 134218496;
          *&buf[4] = v179;
          *&buf[12] = 2048;
          *&buf[14] = v183;
          *&buf[22] = 2048;
          *&buf[24] = v174;
          _os_log_impl(&dword_19B41C000, v175, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGravFull, %.3f, srcRotGravFull, %.3f, diff, %.3f", buf, 0x20u);
        }

        v184 = sub_19B420058();
        if (*(v184 + 160) > 1 || *(v184 + 164) > 1 || *(v184 + 168) > 1 || *(v184 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v185 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
          v188 = (((v186 * *(a1 + 6308)) + (v187 * *(a1 + 6304))) + (v185 * *(a1 + 6300)));
          v189 = sub_19B5BF0D0(a1, 0, *(a1 + 2));
          v192 = (((v190 * *(a1 + 6296)) + (v191 * *(a1 + 6292))) + (v189 * *(a1 + 6288)));
          v310 = 3.8522e-34;
          *v311 = v188;
          *&v311[8] = 2048;
          *&v311[10] = v192;
          *&v311[18] = 2048;
          *&v311[20] = v174;
          v193 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivity(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v193);
          if (v193 != buf)
          {
            free(v193);
          }
        }

        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v194 = off_1EAFE29A0;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          v195 = *(a1 + 6272);
          v196 = *(a1 + 6268);
          v197 = *(a1 + 6264);
          *buf = 134218496;
          *&buf[4] = v195;
          *&buf[12] = 2048;
          *&buf[14] = v196;
          *&buf[22] = 2048;
          *&buf[24] = v197;
          _os_log_impl(&dword_19B41C000, v194, OS_LOG_TYPE_DEBUG, "[CorrelatedActivity] auxRotGrav, %.3f, srcRotGrav, %.3f, relW, %.3f", buf, 0x20u);
        }

        v198 = sub_19B420058();
        if (*(v198 + 160) > 1 || *(v198 + 164) > 1 || *(v198 + 168) > 1 || *(v198 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v199 = *(a1 + 6272);
          v200 = *(a1 + 6268);
          v201 = *(a1 + 6264);
          v310 = 3.8522e-34;
          *v311 = v199;
          *&v311[8] = 2048;
          *&v311[10] = v200;
          *&v311[18] = 2048;
          *&v311[20] = v201;
          v202 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMCorrelatedMotion::isLikelyInCorrelatedActivity(const ActivityState &, BOOL, uint64_t) const", "CoreLocation: %s\n", v202);
          if (v202 != buf)
          {
            free(v202);
          }
        }

        v203 = 0.2;
      }

      else
      {
        v203 = 0.1;
      }

      if (v174 < v203)
      {
        goto LABEL_305;
      }

      v204 = *(a1 + 6272);
      v205 = -v204;
      if (v204 > 0.0)
      {
        v205 = *(a1 + 6272);
      }

      if (v205 > 0.2618)
      {
        v206 = *(a1 + 6268);
        v207 = v204 - v206;
        if (v207 <= 0.0)
        {
          v207 = -v207;
        }

        if (v206 <= 0.0)
        {
          v206 = -v206;
        }

        if (v205 >= v206)
        {
          v205 = v206;
        }

        if (v205 < 0.17453)
        {
          v205 = 0.17453;
        }

        v208 = v207 > v205;
        goto LABEL_321;
      }
    }

    v232 = 0;
    goto LABEL_325;
  }

LABEL_493:
  v303 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B612470(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = sub_19B612528(a1, a2, a3);
  if ((result & 1) != 0 || (result = sub_19B612604(a1), result))
  {
    *(a1 + 6224) = *(a1 + 6224) + a4;
    v7 = *(a1 + 6232);
    if (v7 > a4)
    {
      *(a1 + 6232) = v7 - a4;
    }
  }

  else
  {
    v8 = *(a1 + 6232) + a4;
    *(a1 + 6232) = v8;
    v9 = (a1 + 6224);
    v10 = *(a1 + 6224);
    if (v10 > a4)
    {
      v10 = v10 - a4;
      *v9 = v10;
    }

    if (v8 >= 2.5)
    {
      goto LABEL_11;
    }

    v11 = v10 * 0.100000001;
    if (v11 < 0.100000001)
    {
      v11 = 0.100000001;
    }

    if (v8 >= v11)
    {
LABEL_11:
      *v9 = 0.0;
      *(a1 + 6232) = 0;
    }
  }

  return result;
}

BOOL sub_19B612528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 4) == *(a1 + 2) && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
  {
    v3 = 0;
    v4 = 0.0;
    do
    {
      v4 = v4 + (*(a2 + 24 + v3) * *(a2 + 24 + v3));
      v3 += 4;
    }

    while (v3 != 12);
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + (*(a3 + 24 + v5) * *(a3 + 24 + v5));
      v5 += 4;
    }

    while (v5 != 12);
    v7 = sqrtf(v4) - sqrtf(v6);
    if (v7 <= 0.0)
    {
      v8 = -v7;
    }

    else
    {
      v8 = v7;
    }

    return sub_19B612A74(a1) <= 0.10472 && v8 <= 0.05;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19B612604(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = *(a1 + 2);
  v4 = *(a1 + 4);
  if (*(a1 + 6336) == 1)
  {
    if (v4 == v3 && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290) && *(a1 + 6320) == 1)
    {
      v5 = *(a1 + 6328);
      v6 = *(a1 + 6284);
      if (*(a1 + 6321) == 1)
      {
        v8 = v6 >= 0.17453 || v5 > 0x1D;
        v9 = (a1 + 6376);
        v10 = (v8 + 2.0) * 0.087266;
        if ((*(a1 + 6376) & 1) == 0)
        {
LABEL_61:
          v33 = *(a1 + 6272) - *(a1 + 6268);
          if (v33 <= 0.0)
          {
            v33 = -v33;
          }

          v27 = v33 <= v10;
          if (!*(a1 + 6321))
          {
            v40 = *(a1 + 6264) <= 0.5236;
            return v27 & v40;
          }

LABEL_64:
          v45 = sub_19B5BC7B8((a1 + 1208));
          v46 = v34;
          v47 = v35;
          v36 = ((v35 * *(a1 + 6308)) + (v34 * *(a1 + 6304))) + (v45 * *(a1 + 6300));
          v37 = -v36;
          if (v36 > 0.0)
          {
            v37 = v36;
          }

          if (*v9 == 1 && *(a1 + 6284) >= 0.87266)
          {
            v38 = *(a1 + 6280);
            if (v38 <= 0.0)
            {
              v38 = -v38;
            }

            v37 = (v37 + v38) * 0.5;
          }

          if (v6 < 0.17453)
          {
            v39 = fmaxf(*(a1 + 6284) * 1.5, 0.087266);
          }

          else if (v5 <= 0x1D)
          {
            v39 = *(a1 + 6284) + *(a1 + 6284);
            if (v39 >= 0.5236)
            {
              v39 = 0.5236;
            }
          }

          else
          {
            v39 = 0.5236;
          }

          v41 = 0;
          v42 = 0.0;
          do
          {
            v42 = v42 + (*(&v45 + v41) * *(&v45 + v41));
            v41 += 4;
          }

          while (v41 != 12);
          v43 = sqrtf(v42);
          v40 = v37 < v39 && v43 < 2.7925;
          return v27 & v40;
        }
      }

      else
      {
        v9 = (a1 + 6376);
        if (*(a1 + 6376) != 1)
        {
          v10 = 0.1309;
          goto LABEL_61;
        }

        v25 = v6 >= 0.17453 || v5 > 0x1D;
        v10 = (v25 + 2.0) * 0.087266;
      }

      v26 = *(a1 + 6272);
      if (v26 <= 0.0)
      {
        v26 = -v26;
      }

      v27 = v26 <= v10;
      goto LABEL_64;
    }

    return 0;
  }

  if (v4 != v3 || *(a1 + 1212) != *(a1 + 1210) || *(a1 + 3292) != *(a1 + 3290))
  {
    return 0;
  }

  v11 = *(a1 + 6328);
  v12 = *(a1 + 6284);
  v14 = v12 >= 0.17453 || v11 > 0x1D;
  if (*(a1 + 6321))
  {
    v15 = (v14 + 2.0) * 0.087266;
  }

  else
  {
    v15 = 0.1309;
  }

  v16 = *(a1 + 6272) - *(a1 + 6268);
  if (v16 <= 0.0)
  {
    v17 = -v16;
  }

  else
  {
    v17 = *(a1 + 6272) - *(a1 + 6268);
  }

  if (*(a1 + 6321))
  {
    v18 = sub_19B5BC7B8((a1 + 1208));
    v45 = v18;
    v46 = v19;
    v47 = v20;
    if (v12 < 0.17453)
    {
      v21 = fmaxf(*(a1 + 6284) * 1.5, 0.087266);
    }

    else if (v11 <= 0x1D)
    {
      v21 = *(a1 + 6284) + *(a1 + 6284);
      if (v21 >= 0.5236)
      {
        v21 = 0.5236;
      }
    }

    else
    {
      v21 = 0.5236;
    }

    v28 = 0;
    v29 = 0.0;
    do
    {
      v29 = v29 + (*(&v45 + v28) * *(&v45 + v28));
      v28 += 4;
    }

    while (v28 != 12);
    if (sqrtf(v29) >= 2.7925)
    {
      v23 = 0;
    }

    else
    {
      v30 = ((v20 * *(a1 + 6308)) + (v19 * *(a1 + 6304))) + (v18 * *(a1 + 6300));
      v31 = -v30;
      if (v30 > 0.0)
      {
        v31 = v30;
      }

      v23 = v31 < v21;
    }
  }

  else
  {
    v23 = *(a1 + 6264) <= 0.5236;
  }

  v32 = *(v2 + 2224);
  if (v17 > v15)
  {
    v32 = 0;
  }

  return v32 & v23;
}

float sub_19B612A08(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3.i32[0] = 0;
  do
  {
    v3.f32[0] = v3.f32[0] + (*(a1 + 24 + v2) * *(a1 + 24 + v2));
    v2 += 4;
  }

  while (v2 != 12);
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a2 + 24 + v4) * *(a2 + 24 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v3.f32[1] = v5;
  __asm { FMOV            V1.2S, #-1.0 }

  v11 = vadd_f32(vsqrt_f32(v3), _D1);
  return vaddv_f32(vbsl_s8(vcgtz_f32(v11), v11, vneg_f32(v11)));
}

float sub_19B612A74(unsigned __int16 *a1)
{
  v2 = sub_19B61395C(a1);
  if (v2 <= sub_19B6139B4(a1))
  {

    return sub_19B6139B4(a1);
  }

  else
  {

    return sub_19B61395C(a1);
  }
}

void sub_19B612AE8(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == *(a1 + 2) && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (a3[v9] * a3[v9]);
      ++v9;
    }

    while (v9 != 3);
    v11.f32[0] = sub_19B66C1A4(a4, a3[3], a3[4], a3[5]);
    v12 = 0;
    v14 = *(a2 + 20) - v13;
    v11.i32[1] = v15;
    v28 = vsub_f32(*(a2 + 12), v11);
    v29 = v14;
    v16 = 0.0;
    do
    {
      v16 = v16 + (v28.f32[v12] * v28.f32[v12]);
      ++v12;
    }

    while (v12 != 3);
    v17 = sqrtf(v10);
    v18 = sub_19B612528(a1, a2, a3);
    v19 = sub_19B612A08(a2, a3);
    if (v17 <= 0.20944)
    {
      v20 = sqrtf(v16);
      if (v20 <= 0.15 && v18)
      {
        v22 = v20 + v19;
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v23 = off_1EAFE29A0;
        v24 = v17;
        if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134349568;
          v37 = v22;
          v38 = 2050;
          v39 = v24;
          v40 = 2050;
          v41 = a5;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedAnchor] MagnitudeDiffUnity,%{public}.2e, rotationMax,%{public}.2f,timestamp,%{public}llu", buf, 0x20u);
        }

        v25 = sub_19B420058();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2998 != -1)
          {
            dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
          }

          v30 = 134349568;
          v31 = v22;
          v32 = 2050;
          v33 = v24;
          v34 = 2050;
          v35 = a5;
          v26 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "float CMCorrelatedMotion::getQuiescentMeasureAnchor(const IMUData &, const IMUData &, const CMOQuaternion &, uint64_t) const", "CoreLocation: %s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

float sub_19B612DF8(uint64_t a1, uint64_t a2, float *a3, uint64_t a4, float32x4_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4) == *(a1 + 2) && *(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
  {
    *buf = 0;
    *&buf[8] = 0x3F80000000000000;
    v8 = -1.0;
    if (sub_19B61313C(a1, a2, a3, buf, 0, a5))
    {
      v9 = 0.0;
      for (i = 12; i != 24; i += 4)
      {
        v9 = v9 + (*(a2 + i) * *(a2 + i));
      }

      v11 = sqrtf(v9) + -1.0;
      v12 = 0.0;
      for (j = 3; j != 6; ++j)
      {
        v12 = v12 + (a3[j] * a3[j]);
      }

      if (v11 <= 0.0)
      {
        v11 = -v11;
      }

      v14 = sqrtf(v12) + -1.0;
      if (v14 <= 0.0)
      {
        v14 = -v14;
      }

      if (v11 <= v14)
      {
        v19 = 0;
        v16 = 0.0;
        do
        {
          v16 = v16 + (a3[v19 + 3] * a3[v19 + 3]);
          ++v19;
        }

        while (v19 != 3);
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
        do
        {
          v16 = v16 + (*(a2 + 12 + v15) * *(a2 + 12 + v15));
          v15 += 4;
        }

        while (v15 != 12);
      }

      v20 = sqrtf(v16) + -1.0;
      if (v20 <= 0.0)
      {
        v21 = -v20;
      }

      else
      {
        v21 = v20;
      }

      v22 = sub_19B612A08(a2, a3);
      if (qword_1EAFE2998 != -1)
      {
        dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
      }

      v23 = v22 + v21;
      v24 = off_1EAFE29A0;
      if (os_log_type_enabled(off_1EAFE29A0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = (v23 * v23);
        *&buf[12] = 2050;
        *&buf[14] = a4;
        _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_DEBUG, "[CMRelDMSensorFusionMekf][RelativeGravityConstraints][CorrelatedBTZ] measNoiseVar,%{public}.2e, timestamp,%{public}llu", buf, 0x16u);
      }

      v8 = v23 * v23;
      v25 = sub_19B420058();
      if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || (*(v25 + 152) & 1) != 0)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2998 != -1)
        {
          dispatch_once(&qword_1EAFE2998, &unk_1F0E29120);
        }

        v26 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "float CMCorrelatedMotion::getQuiescentMeasureIMUOnly(const IMUData &, const IMUData &, uint64_t) const", "CoreLocation: %s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }
  }

  else
  {
    v8 = -1.0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19B61313C(uint64_t a1, uint64_t a2, float *a3, float32x2_t *a4, int a5, float32x4_t a6)
{
  if (*(a1 + 4) == *(a1 + 2))
  {
    v34 = v11;
    v35 = v10;
    v36 = v9;
    v37 = v8;
    v38 = v6;
    v39 = v7;
    if (*(a1 + 1212) == *(a1 + 1210) && *(a1 + 3292) == *(a1 + 3290))
    {
      v15 = 0;
      a6.i64[0] = 0;
      do
      {
        a6.f32[0] = a6.f32[0] + (a3[v15] * a3[v15]);
        ++v15;
      }

      while (v15 != 3);
      if (a5)
      {
        v33[0] = sub_19B66BFF4(a4, a6);
        v33[1] = v16;
        v33[2] = v17;
        v33[3] = v18;
        sub_19B66C1A4(v33, *a3, a3[1], a3[2]);
        if (v19 <= 0.0)
        {
          v20 = -v19;
        }

        else
        {
          v20 = v19;
        }

        v21 = 0.25;
      }

      else
      {
        v21 = 0.15;
        v20 = sqrtf(a6.f32[0]);
      }

      v24 = 0.0;
      for (i = 12; i != 24; i += 4)
      {
        v24 = v24 + (*(a2 + i) * *(a2 + i));
      }

      v26 = 0.0;
      for (j = 3; j != 6; ++j)
      {
        v26 = v26 + (a3[j] * a3[j]);
      }

      v28 = sqrtf(v24) - sqrtf(v26);
      if (v28 <= 0.0)
      {
        v29 = -v28;
      }

      else
      {
        v29 = v28;
      }

      v30 = sub_19B612528(a1, a2, a3);
      if (sub_19B6132E8(a1) && *(a1 + 6264) <= 0.17453 || (sub_19B612604(a1) & 1) != 0)
      {
        v22 = 1;
      }

      else
      {
        v32 = v29 <= v21 && v20 <= 0.20944;
        v22 = v32 && v30;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_19B6132E8(uint64_t a1)
{
  v1 = *(a1 + 6252);
  v2 = *(a1 + 6264) <= (v1 * 0.5) && *(a1 + 6248) < (v1 + 0.17453) && *(a1 + 6240) < (*(a1 + 6244) + 0.87266);
  if (*(a1 + 6320) == 1 && *(a1 + 6260) < 2.8074)
  {
    goto LABEL_21;
  }

  v3 = *(a1 + 6268) - *(a1 + 6272);
  v4 = -v3;
  if (v3 > 0.0)
  {
    v4 = *(a1 + 6268) - *(a1 + 6272);
  }

  if (v4 <= 0.34907)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 6248);
  if (v1 < v5)
  {
    v5 = *(a1 + 6252);
  }

  if (v5 > 0.087266 && *(a1 + 6260) <= 0.31193)
  {
LABEL_14:
    v6 = *(a1 + 6276) - *(a1 + 6280);
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 > 0.34907)
    {
      v7 = *(a1 + 6244);
      if (v7 >= *(a1 + 6240))
      {
        v7 = *(a1 + 6240);
      }

      if (v7 > 0.087266)
      {
        v8 = *(a1 + 6256) <= 0.31193;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_21:
    v8 = 1;
    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
LABEL_23:
  if (*(a1 + 6336) == 1)
  {
    if (!*(a1 + 6320) || (*(a1 + 6376) & 1) != 0 || *(a1 + 6260) >= 2.8074)
    {
      v9 = *(a1 + 6268) - *(a1 + 6272);
      v10 = -v9;
      if (v9 > 0.0)
      {
        v10 = *(a1 + 6268) - *(a1 + 6272);
      }

      if (v10 > 0.34907)
      {
        if (v1 >= *(a1 + 6248))
        {
          v1 = *(a1 + 6248);
        }

        if (v1 <= 0.087266 || *(a1 + 6260) > 0.31193)
        {
          goto LABEL_42;
        }
      }

      v11 = *(a1 + 6276) - *(a1 + 6280);
      if (v11 <= 0.0)
      {
        v11 = -v11;
      }

      if (v11 > 0.34907)
      {
        v12 = *(a1 + 6244);
        if (v12 >= *(a1 + 6240))
        {
          v12 = *(a1 + 6240);
        }

        if (v12 > 0.087266)
        {
          v8 = *(a1 + 6256) <= 0.31193;
          return v2 & v8;
        }

LABEL_42:
        v8 = 0;
        return v2 & v8;
      }
    }

    v8 = 1;
  }

  return v2 & v8;
}

float sub_19B613508(unsigned __int16 *a1)
{
  v2 = a1[1];
  v3 = sub_19B5BF0D0(a1, v2 - 20, v2 - 10);
  v5 = v4;
  v7 = v6;
  v8 = 0;
  *v22 = v3;
  *&v22[1] = v4;
  *&v22[2] = v6;
  v9 = 0.0;
  do
  {
    v9 = v9 + (*&v22[v8] * *&v22[v8]);
    ++v8;
  }

  while (v8 != 3);
  v10 = sub_19B5BF0D0(a1, v2 - 10, v2);
  v13 = 0;
  *v21 = v10;
  *&v21[1] = v11;
  *&v21[2] = v12;
  v14 = 0.0;
  do
  {
    v14 = v14 + (*&v21[v13] * *&v21[v13]);
    ++v13;
  }

  while (v13 != 3);
  v15 = sqrtf(v9);
  v16 = sqrtf(v14);
  if (v16 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = 1.0;
  if (v17 > 0.2618)
  {
    v19 = (((v7 / v15) * (v12 / v16)) + ((v5 / v15) * (v11 / v16))) + ((v3 / v15) * (v10 / v16));
    if (v19 <= 0.0)
    {
      return -v19;
    }

    else
    {
      return v19;
    }
  }

  return v18;
}

float sub_19B613628(uint64_t a1)
{
  v2 = sub_19B5BF0D0(a1, *(a1 + 2) - 10, *(a1 + 2));
  v5 = 0;
  *v10 = v2;
  *&v10[1] = v3;
  *&v10[2] = v4;
  v6 = 0.0;
  do
  {
    v6 = v6 + (*&v10[v5] * *&v10[v5]);
    ++v5;
  }

  while (v5 != 3);
  v7 = sqrtf(v6);
  v8 = (((v4 / v7) * *(a1 + 6296)) + ((v3 / v7) * *(a1 + 6292))) + ((v2 / v7) * *(a1 + 6288));
  result = -v8;
  if (v8 > 0.0)
  {
    return v8;
  }

  return result;
}

BOOL sub_19B6136BC(uint64_t a1)
{
  v1 = *(a1 + 6240);
  if (v1 < 0.5236)
  {
    return 0;
  }

  v4 = *(a1 + 6244);
  if (v4 > (v1 + 0.087266))
  {
    goto LABEL_4;
  }

  v5 = 0.76;
  if (v4 > 0.43633)
  {
    v6 = *(a1 + 6276) - *(a1 + 6280);
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 <= 0.34907)
    {
      goto LABEL_4;
    }

    if (v4 < v1)
    {
      v1 = *(a1 + 6244);
    }

    if (v1 > 0.087266 && *(a1 + 6256) <= 0.31193)
    {
LABEL_4:
      v5 = 0.6;
    }
  }

  if (sub_19B613508(a1) <= v5)
  {
    return 1;
  }

  if (sub_19B6132E8(a1))
  {
    return 0;
  }

  v7 = 0.0;
  v8 = -12;
  do
  {
    v7 = v7 + (*(a1 + v8 + 6300) * *(a1 + v8 + 6300));
    v8 += 4;
  }

  while (v8);
  return sqrtf(v7) < 0.001 || sub_19B613628(a1) <= 0.4;
}

BOOL sub_19B6137FC(float *a1)
{
  v1 = a1[1564];
  if (v1 < 0.030462)
  {
    return 0;
  }

  v4 = a1[1560];
  v5 = a1[1562];
  if (v4 <= v5)
  {
    v6 = a1[1562];
  }

  else
  {
    v6 = a1[1560];
  }

  if (v6 <= 0.87266)
  {
    goto LABEL_22;
  }

  if (v1 <= a1[1565])
  {
    v1 = a1[1565];
  }

  if (v1 <= 0.31193)
  {
LABEL_22:
    v2 = 0;
    v7 = a1[1569];
    v8 = a1[1570];
    v9 = v7 - v8;
    if ((v7 - v8) <= 0.0)
    {
      v9 = -(v7 - v8);
    }

    v10 = a1[1567] - a1[1568];
    if (v10 <= 0.0)
    {
      v10 = -v10;
    }

    if (v9 >= v10)
    {
      v9 = v10;
    }

    if (v8 <= 0.0)
    {
      v8 = -v8;
    }

    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v8 >= v7 || v9 <= 0.34907)
    {
      return v2;
    }
  }

  v11 = a1[1563];
  v12 = v11 * 1.5;
  if ((v11 * 1.5) < 0.087266)
  {
    v12 = 0.087266;
  }

  if (a1[1566] >= v12)
  {
    v13 = v4 <= v5 ? a1[1560] : a1[1562];
    v14 = v5 - v11;
    v15 = v4 - a1[1561];
    if (v14 > v15)
    {
      v15 = v14;
    }

    if (v13 > 0.087266 && v15 >= 0.17453)
    {
      return 1;
    }
  }

  return sub_19B6136BC(a1);
}

os_log_t sub_19B61392C()
{
  result = os_log_create("com.apple.locationd.Motion", "RelativeDeviceMotion");
  off_1EAFE29A0 = result;
  return result;
}

float sub_19B61395C(unsigned __int16 *a1)
{
  v1 = sub_19B5BF0D0(a1, 0, a1[1]);
  v2 = 0;
  *v7 = v1;
  v7[1] = v3;
  v7[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v7[v2] * *&v7[v2]);
    ++v2;
  }

  while (v2 != 3);
  return sqrtf(v5);
}

float sub_19B6139B4(uint64_t a1)
{
  v1 = sub_19B5BF0D0((a1 + 1208), 0, *(a1 + 1210));
  v2 = 0;
  *v7 = v1;
  v7[1] = v3;
  v7[2] = v4;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*&v7[v2] * *&v7[v2]);
    ++v2;
  }

  while (v2 != 3);
  return sqrtf(v5);
}

float sub_19B613A10(uint64_t a1, int a2, int a3, float a4)
{
  if (a3 < 1)
  {
    v13 = 0.0;
  }

  else
  {
    v7 = a2;
    v8 = 0.0;
    v9 = 0.0;
    v10 = a3;
    do
    {
      v11 = sub_19B5BFE1C((a1 + 28), v7);
      v12 = ((*v11 - a4) * (*v11 - a4)) - v8;
      v13 = v9 + v12;
      v8 = ((v9 + v12) - v9) - v12;
      ++v7;
      v9 = v9 + v12;
      --v10;
    }

    while (v10);
  }

  return v13 / a3;
}

void sub_19B614928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6149D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 16);
  if (result)
  {
    v4 = MEMORY[0x19EAE71C0]();
    result = MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
    v2 = *(a1 + 32);
  }

  *(v2 + 16) = 0;
  return result;
}

void sub_19B614D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6150E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B615578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B6159E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B615D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  sub_19B41FFEC(v22);
  _Unwind_Resume(a1);
}

void sub_19B61646C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_19B41FFEC(a16);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B6173E8()
{
  result = os_log_create("com.apple.locationd.Motion", "SensorRecorder");
  qword_1EAFE29D0 = result;
  return result;
}

void sub_19B617418(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_19B617498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B6174AC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_19B6174AC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x19EAE7200]();
    MEMORY[0x19EAE76F0](v3, 0x10B2C40829B1077);
  }

  return a1;
}

void sub_19B6174F8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B617530(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MEMORY[0x19EAE7200]();

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B617574(uint64_t a1, uint64_t a2)
{
  if (sub_19B51106C(a2, &unk_1F0E349E0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_19B617660(void *a1)
{
  *a1 = &unk_1F0E32828;
  sub_19B44B2C8(a1, 0, 0);

  return sub_19B674784(a1);
}

void sub_19B6176C4(void *a1)
{
  sub_19B617660(a1);

  JUMPOUT(0x19EAE76F0);
}

BOOL sub_19B6176FC(const char *a1)
{
  existing = 0;
  v1 = *MEMORY[0x1E696CD60];
  v2 = IOServiceMatching(a1);
  IOServiceGetMatchingServices(v1, v2, &existing);
  v3 = IOIteratorNext(existing);
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x1E695E480];
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v4, @"RequiresCompassResetOnConnect", v6, 0);
      if (CFProperty)
      {
        v8 = CFProperty;
        v9 = CFGetTypeID(CFProperty);
        if (v9 == CFBooleanGetTypeID())
        {
          v5 = CFBooleanGetValue(v8) != 0;
          CFRelease(v8);
        }
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(existing);
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

os_log_t sub_19B6177E8()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

void *sub_19B617B6C(void *a1)
{
  *a1 = &unk_1F0E34518;
  sub_19B61907C(a1);

  return sub_19B70B29C(a1);
}

void sub_19B617BC8(void *a1)
{
  sub_19B617B6C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B617C00(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
  }

  v4 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v18 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "Legacy compass started. Cover attached %{public}d", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass6::start(BOOL)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (!*(a1 + 200))
  {
    operator new();
  }

  if (*(a1 + 186))
  {
    if (!*(a1 + 144))
    {
      v7 = sub_19B424AE0();
      v8 = *(v7 + 72);
      if (v8 && *(v8 + 56) && (*(v7 + 28) & 1) == 0)
      {
        v14 = [CLDeviceMotionProperties alloc];
        objc_msgSend_initWithMode_(v14, v15, 7);
      }

      else
      {
        v9 = sub_19B424AE0();
        v10 = *(v9 + 72);
        if (v10 && *(v10 + 56))
        {
          v11 = *(v9 + 28);
          v12 = [CLDeviceMotionProperties alloc];
          if (v11)
          {
            objc_msgSend_initWithMode_(v12, v13, 15);
            goto LABEL_29;
          }
        }

        else
        {
          v12 = [CLDeviceMotionProperties alloc];
        }

        objc_msgSend_initWithMode_(v12, v13, 3);
      }

LABEL_29:
      operator new();
    }
  }

  else if (!*(a1 + 136))
  {
    operator new();
  }

  if (!*(a1 + 152))
  {
    operator new();
  }

  *(a1 + 184) = 0;
  *(a1 + 164) = 0;
  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B6181F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v138 = *MEMORY[0x1E69E9840];
  v91 = *v3;
  v92 = *(v3 + 16);
  ++*(v4 + 160);
  if ((atomic_load_explicit(&qword_1ED71CAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CAD8))
  {
    dword_1ED71CAD0 = (1.5 / *(v5 + 168));
    __cxa_guard_release(&qword_1ED71CAD8);
  }

  v6 = *(v5 + 144);
  if (v6)
  {
    os_unfair_lock_lock((v6 + 148));
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    v10 = *(v6 + 48);
    v11 = *(v6 + 68);
    v12 = *(v6 + 76);
    v13 = *(v6 + 98);
    v14 = *(v6 + 144);
    os_unfair_lock_unlock((v6 + 148));
    if (v14 == 1)
    {
      v15 = v8 * (v10 + v10) - v7 * (v9 + v9);
      v16 = v7 * (v8 + v8) + v9 * (v10 + v10);
      v17 = 1.0 - v8 * (v8 + v8) - v9 * (v9 + v9);
      v18 = -v15;
      *(v5 + 188) = v18;
      *(v5 + 192) = -v16;
      *(v5 + 196) = -v17;
      v19 = *(v5 + 200);
      *(v19 + 80) = v18;
      *(v19 + 84) = *(v5 + 192);
      *(v19 + 88) = *(v5 + 196);
      *(v19 + 16) = v8;
      *(v19 + 24) = v9;
      *(v19 + 32) = v10;
      *(v19 + 40) = v7;
      *(v19 + 56) = v11;
      *(v19 + 64) = v12;
      *(v19 + 96) = v13;
    }
  }

  else
  {
    v20 = *(v5 + 136);
    if (v20)
    {
      os_unfair_lock_lock((v20 + 44));
      buf[0] = *(v20 + 16);
      *&buf[1] = *(v20 + 32);
      v21 = *(v20 + 40);
      os_unfair_lock_unlock((v20 + 44));
      if (v21 == 1)
      {
        *(v5 + 188) = *(&buf[0] + 1);
        *(v5 + 196) = buf[1];
        v22 = *(v5 + 200);
        v22[20] = *(v5 + 188);
        v22[21] = *(v5 + 192);
        v22[22] = *(v5 + 196);
      }
    }
  }

  v88 = -1082130432;
  if (*(v5 + 188) == 3.4028e38 || !sub_19B6E107C(*(v5 + 200), &v91 + 1))
  {
    if ((*(v5 + 164) & 1) == 0 && *(*(v5 + 200) + 376) > dword_1ED71CAD0)
    {
      v82 = 0;
      v83 = -1.0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0.0;
      v89 = 0;
      v90 = 0;
      v80 = v91;
      memset(v81, 0, 12);
      *(v5 + 164) = 1;
      sub_19B41DF08(v5, 0, &v80, 120);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v32 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v33 = *(v5 + 168) * *(*(v5 + 200) + 376);
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v33;
        _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_INFO, "Notify after %{public}.3f seconds of no event.", buf, 0xCu);
      }

      v34 = sub_19B420058();
      if (*(v34 + 160) > 1 || *(v34 + 164) > 1 || *(v34 + 168) > 1 || *(v34 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        v35 = *(v5 + 168) * *(*(v5 + 200) + 376);
        LODWORD(v93[0]) = 134349056;
        *(v93 + 4) = v35;
        v36 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v36);
        goto LABEL_74;
      }
    }
  }

  else if (sub_19B6E1D18(*(v5 + 200), v81, v23, v24, v25, v26, v27, v28))
  {
    v80 = v91;
    v29 = *(v5 + 200);
    v30 = *(v29 + 1640);
    v31 = v30 ? *(*(*(v29 + 1608) + (((v30 + *(v29 + 1632) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v30 + *(v29 + 1632) - 1) & 0x3FF)) : 0;
    v89 = v31;
    v90 = *(v5 + 28);
    if (*(v5 + 185) == 1)
    {
      if (v83 < 0.0)
      {
        *(v5 + 185) = 0;
        v37 = sub_19B673618();
        sub_19B673D0C(v37);
        v29 = *(v5 + 200);
      }
    }

    else if (v83 >= 0.0)
    {
      *(v5 + 185) = 1;
    }

    v38 = (*(**(v29 + 104) + 120))(*(v29 + 104));
    v79 = v38;
    if (*(v5 + 184) != v38)
    {
      sub_19B41DF08(v5, 1, &v79, 1);
      *(v5 + 184) = v79;
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v39 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "CompassAlignment";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v79;
        WORD1(buf[1]) = 2048;
        *(&buf[1] + 4) = v91;
        _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEBUG, "Type,%s,compassJustAlignedToStableField,%d,timestamp,%20.20f", buf, 0x1Cu);
      }

      v40 = sub_19B420058();
      if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        LODWORD(v93[0]) = 136315650;
        *(v93 + 4) = "CompassAlignment";
        WORD2(v93[1]) = 1024;
        *(&v93[1] + 6) = v79;
        WORD1(v93[2]) = 2048;
        *(&v93[2] + 4) = v91;
        v41 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      if (*(v5 + 29) == 1)
      {
        v93[0] = &unk_1F0E31330;
        v93[1] = CFAbsoluteTimeGetCurrent();
        v93[3] = v91;
        LOBYTE(v94[0]) = v79;
        v42 = sub_19B720E40();
        sub_19B7223F8(v42, v93);
        sub_19B517F80(buf);
        sub_19B532768(buf);
        v137 |= 1u;
        v134 = v93[1];
        v43 = v136;
        v44 = v91;
        *(v136 + 20) |= 1u;
        *(v43 + 8) = v44;
        v45 = v136;
        v46 = v79;
        *(v136 + 20) |= 2u;
        *(v45 + 16) = v46;
        sub_19B51DBD4(buf);
      }
    }

    v47 = *(v5 + 200);
    v48 = v47[338];
    v49 = v47[339];
    v50 = v47[340];
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v51 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 136318722;
      *(buf + 4) = "Compass";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = *&v82;
      WORD3(buf[1]) = 2048;
      *(&buf[1] + 1) = *(&v82 + 1);
      v110 = 2048;
      v111 = v83;
      v112 = 2048;
      v113 = *v81;
      v114 = 2048;
      v115 = *(v81 + 1);
      v116 = 2048;
      v117 = *&v81[1];
      v118 = 2048;
      v119 = v48;
      v120 = 2048;
      v121 = v49;
      v122 = 2048;
      v123 = v50;
      v124 = 1024;
      v125 = v84;
      v126 = 2048;
      v127 = *&v86;
      v128 = 2048;
      v129 = *(&v86 + 1);
      v130 = 2048;
      v131 = v87;
      v132 = 2048;
      v133 = v80;
      _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "Type,%s,magneticHeading,%20.20f,trueHeading,%20.20f,accuracy,%20.20f,magneticField.x,%20.20f,magneticField.y,%20.20f,magneticField.z,%20.20f,bias.x,%20.20f,bias.y,%20.20f,bias.z,%20.20f,level,%d,magnitude,%20.20f,inclination,%20.20f,horizontal,%20.20f,timestamp,%20.20f", buf, 0x94u);
    }

    v52 = sub_19B420058();
    if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      LODWORD(v93[0]) = 136318722;
      *(v93 + 4) = "Compass";
      WORD2(v93[1]) = 2048;
      *(&v93[1] + 6) = *&v82;
      HIWORD(v93[2]) = 2048;
      *&v93[3] = *(&v82 + 1);
      LOWORD(v94[0]) = 2048;
      *(v94 + 2) = v83;
      WORD5(v94[0]) = 2048;
      *(v94 + 12) = *v81;
      WORD2(v94[1]) = 2048;
      *(&v94[1] + 6) = *(v81 + 1);
      HIWORD(v94[1]) = 2048;
      v95 = *&v81[1];
      LOWORD(v96[0]) = 2048;
      *(v96 + 2) = v48;
      HIWORD(v96[2]) = 2048;
      *&v96[3] = v49;
      v97 = 2048;
      v98 = v50;
      v99 = 1024;
      v100 = v84;
      v101 = 2048;
      v102 = *&v86;
      v103 = 2048;
      v104 = *(&v86 + 1);
      v105 = 2048;
      v106 = v87;
      v107 = 2048;
      v108 = v80;
      v53 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    if (*(v5 + 29) == 1)
    {
      v93[0] = &unk_1F0E311B0;
      v93[1] = CFAbsoluteTimeGetCurrent();
      v93[3] = v80;
      *&v54 = v82;
      *(&v54 + 1) = __PAIR64__(v81[0], LODWORD(v83));
      v94[0] = v54;
      *&v94[1] = *(v81 + 4);
      *(&v94[1] + 1) = __PAIR64__(LODWORD(v49), LODWORD(v48));
      *&v95 = v50;
      BYTE4(v95) = v84;
      *v96 = v86;
      *&v96[2] = v87;
      v55 = sub_19B720E40();
      sub_19B7223F8(v55, v93);
      sub_19B517F80(buf);
      sub_19B5326D8(buf);
      v137 |= 1u;
      v134 = v93[1];
      v56 = v135;
      v57 = v80;
      *(v135 + 68) |= 1u;
      *(v56 + 8) = v57;
      v58 = v135;
      *(v135 + 68) |= 0x800u;
      v59 = HIDWORD(v82);
      *(v58 + 56) = v82;
      v60 = v135;
      *(v135 + 68) |= 0x2000u;
      *(v60 + 64) = v59;
      v61 = v135;
      *&v57 = v83;
      *(v135 + 68) |= 2u;
      *(v61 + 16) = v57;
      v62 = v135;
      v63 = HIDWORD(v81[0]);
      *(v135 + 44) = v81[0];
      *(v62 + 68) |= 0x100u;
      v64 = v135;
      *(v135 + 68) |= 0x200u;
      *(v64 + 48) = v63;
      v65 = v135;
      LODWORD(v57) = v81[1];
      *(v135 + 68) |= 0x400u;
      *(v65 + 52) = v57;
      v66 = v135;
      *(v135 + 68) |= 4u;
      *(v66 + 20) = v48;
      v67 = v135;
      *(v135 + 68) |= 8u;
      *(v67 + 24) = v49;
      v68 = v135;
      *(v135 + 68) |= 0x10u;
      *(v68 + 28) = v50;
      v69 = v135;
      v70 = v84;
      *(v135 + 68) |= 0x20u;
      *(v69 + 32) = v70;
      v71 = v135;
      LODWORD(v57) = v86;
      *(v135 + 68) |= 0x1000u;
      *(v71 + 60) = v57;
      v72 = v135;
      LODWORD(v57) = HIDWORD(v86);
      *(v135 + 68) |= 0x80u;
      *(v72 + 40) = v57;
      v73 = v135;
      *&v57 = v87;
      *(v135 + 68) |= 0x40u;
      *(v73 + 36) = v57;
      sub_19B51DBD4(buf);
    }

    if (v84 > 0 || *(*(v5 + 200) + 376) > dword_1ED71CAD0)
    {
      sub_19B41DF08(v5, 0, &v80, 120);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
      }

      v74 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(*(v5 + 200) + 376);
        LODWORD(buf[0]) = 67109632;
        DWORD1(buf[0]) = v75;
        WORD4(buf[0]) = 1024;
        *(buf + 10) = v84;
        HIWORD(buf[0]) = 2048;
        *&buf[1] = v80;
        _os_log_impl(&dword_19B41C000, v74, OS_LOG_TYPE_DEBUG, "notified clients. sampleCount,%d,compass.compass.calibrationLevel,%d,compass.timestamp,%f", buf, 0x18u);
      }

      v76 = sub_19B420058();
      if (*(v76 + 160) > 1 || *(v76 + 164) > 1 || *(v76 + 168) > 1 || *(v76 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
        }

        v77 = *(*(v5 + 200) + 376);
        LODWORD(v93[0]) = 67109632;
        HIDWORD(v93[0]) = v77;
        LOWORD(v93[1]) = 1024;
        *(&v93[1] + 2) = v84;
        HIWORD(v93[1]) = 2048;
        v93[2] = v80;
        v36 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "static void CLCompass6::onMagnetometerData(const CLMagnetometer::Sample *, void *)", "CoreLocation: %s\n", v36);
LABEL_74:
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }
  }

  v78 = *MEMORY[0x1E69E9840];
}

void *sub_19B61907C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "Legacy compass stopped.", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29180);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompass6::stop()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v6 = *(a1 + 144);
  v5 = *(a1 + 152);
  *(a1 + 144) = 0;
  if (v5)
  {
    v7 = sub_19B673618();
    sub_19B426A14(v7, 0, *(a1 + 152));
    v8 = *(a1 + 152);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(a1 + 152) = 0;
  }

  if (*(a1 + 186))
  {
    if (v6)
    {
      v9 = sub_19B424AE0();
      sub_19B425248(v9, v6);
      (*(*v6 + 8))(v6);
    }
  }

  else if (*(a1 + 136))
  {
    v10 = sub_19B4249E4();
    sub_19B426A14(v10, 0, *(a1 + 136));
    v11 = *(a1 + 136);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    *(a1 + 136) = 0;
  }

  result = *(a1 + 200);
  if (result)
  {
    v13 = sub_19B6E0F50(result);
    result = MEMORY[0x19EAE76F0](v13, 0x10A0C40E4B69569);
    *(a1 + 200) = 0;
  }

  *(a1 + 188) = 2139095039;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B619330(uint64_t a1, double *a2)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    return sub_19B6E1C04(v2, a2);
  }

  return result;
}

uint64_t sub_19B619340(uint64_t result)
{
  v1 = *(result + 200);
  if (v1)
  {
    return (*(**(v1 + 104) + 128))();
  }

  return result;
}

void sub_19B619378(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6193B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 44));
  v5 = *a3;
  *(a1 + 32) = *(a3 + 2);
  *(a1 + 16) = v5;
  *(a1 + 40) = 1;

  os_unfair_lock_unlock((a1 + 44));
}

void sub_19B61940C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B619444(uint64_t a1, uint64_t a2, __int128 *a3)
{
  os_unfair_lock_lock((a1 + 148));
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[3];
  *(a1 + 48) = a3[2];
  *(a1 + 64) = v7;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[7];
  *(a1 + 112) = a3[6];
  *(a1 + 128) = v10;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 144) = 1;

  os_unfair_lock_unlock((a1 + 148));
}

void sub_19B6194B0(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

unsigned __int16 *sub_19B61966C(unsigned __int16 *result, void *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[4 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

uint64_t sub_19B6196CC(unsigned __int16 *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 1) <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E280C0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 1);
      *buf = 134218240;
      v14 = a2;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E280C0);
      }

      v12 = *(a1 + 1);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 2>>::operator[](const size_t) const [T = CMVector<float, 2>]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return &a1[4 * (v4 - v5) + 4];
}

uint64_t sub_19B6198E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E32968;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0x3F80000000000000;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v4[0] = xmmword_19B7B9898;
  v4[1] = unk_19B7B98A8;
  v5 = 973279855;
  sub_19B61A35C(a1 + 28, v4);
  return a1;
}

BOOL sub_19B619978(uint64_t a1)
{
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0x3F80000000000000;
  v3[0] = xmmword_19B7B9898;
  v3[1] = unk_19B7B98A8;
  v4 = 973279855;
  result = sub_19B61A35C(a1 + 28, v3);
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

void sub_19B6199EC(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED71CAE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CAE8))
  {
    dword_1ED71CAE0 = 1060439283;
    __cxa_guard_release(&qword_1ED71CAE8);
  }

  v2 = *(a1 + 56);
  v3 = *(v2 + 10);
  if (*(v2 + 12) == v3)
  {
    if (*(v2 + 425) == 1)
    {
      v4 = !sub_19B76DEC4(v2);
      v2 = *(a1 + 56);
      if (v4)
      {
        v46 = 0;
        v5 = *(v2 + 216);
        v6 = *(v2 + 220);
        v7 = *(v2 + 224);
        *buf = v5;
        *&buf[4] = v6;
        *&buf[8] = v7;
        v47 = 0.0;
        do
        {
          v47 = v47 + (*&buf[v46] * *&buf[v46]);
          v46 += 4;
        }

        while (v46 != 12);
        if (sqrtf(v47) > 0.00000011921)
        {
          v48 = 0;
          v49 = 0.0;
          do
          {
            v49 = v49 + (*&buf[v48] * *&buf[v48]);
            v48 += 4;
          }

          while (v48 != 12);
          v50 = sqrtf(v49);
          v5 = v5 / v50;
          v6 = v6 / v50;
          v7 = v7 / v50;
        }

LABEL_13:
        v13 = fabsf(v5);
        v14 = (v7 * -0.0) - v6;
        v15 = v5 + (v7 * 0.0);
        v16 = (v6 * -0.0) + (v5 * 0.0);
        if (v13 > *&dword_1ED71CAE0)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0.0;
        }

        if (v13 > *&dword_1ED71CAE0)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0.0;
        }

        if (v13 > *&dword_1ED71CAE0)
        {
          v19 = v14;
        }

        else
        {
          v19 = 1.0;
        }

        v20 = *(a1 + 56);
        if (*(v20 + 425) == 1)
        {
          v21 = sub_19B76DEC4(v20);
          if ((*(a1 + 10) & 1) == 0)
          {
            v27 = v21;
            v20 = *(a1 + 56);
            if (!v27)
            {
              v28 = *(v20 + 216);
              v29 = *(v20 + 220);
              v30 = *(v20 + 224);
              *v69 = v28;
              goto LABEL_30;
            }

            goto LABEL_28;
          }
        }

        else if (*(a1 + 10) != 1)
        {
LABEL_28:
          v31 = sub_19B5BF0D0((v20 + 8), 0, *(v20 + 10));
          goto LABEL_29;
        }

        v31 = sub_19B447000((a1 + 12));
LABEL_29:
        v28 = v31;
        v29 = v32;
        v30 = v33;
        *v69 = v31;
LABEL_30:
        v34 = 0;
        *&v69[1] = v29;
        *&v69[2] = v30;
        v35 = 0.0;
        do
        {
          v35 = v35 + (*&v69[v34] * *&v69[v34]);
          ++v34;
        }

        while (v34 != 3);
        v36 = sqrtf(v35);
        v37 = fabsf(v36 + -1.0);
        if (v37 <= 1.0)
        {
          v42 = (v37 / v36) * (v37 / v36);
          if (v42 < 0.0109)
          {
            v42 = 0.0109;
          }

          v80[0] = 25.0;
          v80[1] = 1.0 / v42;
          v68.i64[0] = 0;
          v68.i64[1] = 0x3F80000000000000;
          v41 = sub_19B66C3CC(v80, &v68, &v70, v19, v18, v17, v28, v29, v30, v22, v23, v24, v25, v26, __SPAIR64__(LODWORD(v18), LODWORD(v19)), SLODWORD(v17));
          if (v41)
          {
            *(a1 + 12) = v68;
            if (!sub_19B61A35C(a1 + 28, &v70))
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
              }

              v43 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "invalid initial covariance !(P > 0), using default", buf, 2u);
              }

              v44 = sub_19B420058();
              if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
                }

                v45 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v45);
                if (v45 != buf)
                {
                  free(v45);
                }
              }

              *&buf[32] = 973279855;
              *buf = xmmword_19B7B9898;
              *&buf[16] = unk_19B7B98A8;
              sub_19B61A35C(a1 + 28, buf);
            }
          }

          else
          {
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
            }

            v51 = off_1ED71C828;
            if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_19B41C000, v51, OS_LOG_TYPE_DEBUG, "initializeState northAndGravity failed", buf, 2u);
            }

            v52 = sub_19B420058();
            if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
              }

              v53 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v53);
              if (v53 != buf)
              {
                free(v53);
              }
            }
          }
        }

        else
        {
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
          }

          v38 = off_1ED71C828;
          if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = v36;
            _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "initializeState MaxInitialDiffUnity failed,magnitude,%f", buf, 0xCu);
          }

          v39 = sub_19B420058();
          if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C820 != -1)
            {
              dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
            }

            v70 = 134217984;
            *v71 = v36;
            v40 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMSensorFusionMekf::initializeState(const CMVector3d &, const CMVector3d &, float)", "CoreLocation: %s\n", v40);
            if (v40 != buf)
            {
              free(v40);
            }
          }

          v41 = 0;
        }

        *(a1 + 10) = v41;
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
        }

        v54 = off_1ED71C828;
        if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(a1 + 10);
          v56 = *(a1 + 12);
          v57 = *(a1 + 16);
          v58 = *(a1 + 20);
          v59 = *(a1 + 24);
          *buf = 67110400;
          *&buf[4] = v55;
          *&buf[8] = 2048;
          *&buf[10] = v56;
          *&buf[18] = 2048;
          *&buf[20] = v57;
          *&buf[28] = 2048;
          *&buf[30] = v58;
          v82 = 2048;
          v83 = v59;
          v84 = 1024;
          v85 = v4;
          _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_DEBUG, "initialized down,%u,q.x,%f,q.y,%f,q.z,%f,q.w,%f, withAvgGrav, %d", buf, 0x36u);
        }

        v60 = sub_19B420058();
        if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C820 != -1)
          {
            dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
          }

          v61 = *(a1 + 10);
          v62 = *(a1 + 12);
          v63 = *(a1 + 16);
          v64 = *(a1 + 20);
          v65 = *(a1 + 24);
          v70 = 67110400;
          *v71 = v61;
          *&v71[4] = 2048;
          *&v71[6] = v62;
          v72 = 2048;
          v73 = v63;
          v74 = 2048;
          v75 = v64;
          v76 = 2048;
          v77 = v65;
          v78 = 1024;
          v79 = v4;
          v66 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMSensorFusionMekf::initializeAttitude()", "CoreLocation: %s\n", v66);
          if (v66 != buf)
          {
            free(v66);
          }
        }

        goto LABEL_93;
      }

      v3 = *(v2 + 10);
    }

    v5 = sub_19B5BF0D0((v2 + 8), 0, v3);
    v8 = 0;
    *buf = v5;
    *&buf[4] = v6;
    *&buf[8] = v7;
    v9 = 0.0;
    do
    {
      v9 = v9 + (*&buf[v8] * *&buf[v8]);
      v8 += 4;
    }

    while (v8 != 12);
    if (sqrtf(v9) > 0.00000011921)
    {
      v10 = 0;
      v11 = 0.0;
      do
      {
        v11 = v11 + (*&buf[v10] * *&buf[v10]);
        v10 += 4;
      }

      while (v10 != 12);
      v12 = sqrtf(v11);
      v5 = v5 / v12;
      v6 = v6 / v12;
      v7 = v7 / v12;
    }

    v4 = 0;
    goto LABEL_13;
  }

LABEL_93:
  v67 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B61A35C(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  result = sub_19B61BF90(a2);
  if (result)
  {
    v5 = 3;
    v6 = 2;
    while (1)
    {
      v7 = v6;
      v8 = sub_19B601068(a2, v6, v6);
      v9 = v5;
      v10 = v5 - 2;
      if (v5 <= 2)
      {
        do
        {
          v11 = *sub_19B61C034(a1 + 12, v7, v9);
          v12 = *sub_19B61C034(a1 + 12, v7, v9);
          v8 = v8 + (-(v11 * v12) * *sub_19B61C3BC(a1, v9++));
        }

        while (v9 != 3);
      }

      *sub_19B61C3BC(a1, v7) = v8;
      if (*sub_19B61C3BC(a1, v7) <= 0.0)
      {
        break;
      }

      if (!v7)
      {
        result = 1;
        goto LABEL_25;
      }

      do
      {
        v13 = v10;
        v14 = sub_19B601068(a2, v10, v7);
        v15 = v5;
        if (v5 <= 2)
        {
          do
          {
            v16 = *sub_19B61C034(a1 + 12, v13, v15);
            v17 = *sub_19B61C034(a1 + 12, v7, v15);
            v14 = v14 + (-(v16 * v17) * *sub_19B61C3BC(a1, v15++));
          }

          while (v15 != 3);
        }

        v18 = v14 / *sub_19B61C3BC(a1, v7);
        *sub_19B61C034(a1 + 12, v13, v7) = v18;
        v10 = v13 - 1;
      }

      while (v13);
      v6 = v7 - 1;
      v5 = v7;
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v19 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v24 = v7;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", buf, 0xCu);
    }

    v20 = sub_19B420058();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMFactoredMatrix<float, 3>::factor(const CMMatrix<T, N, N> &) [T = float, N = 3]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    result = 0;
  }

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B61A6A4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!*(v1 + 10))
  {
    return 0.0;
  }

  v3 = sub_19B5BC7B8((v1 + 8));
  *&result = v3 - sub_19B447000((a1 + 12));
  return result;
}

void sub_19B61A71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v53 = *MEMORY[0x1E69E9840];
  buf[0].i64[0] = *a2;
  buf[0].i32[2] = *(a2 + 8);
  do
  {
    buf[0].f32[v6] = -buf[0].f32[v6];
    ++v6;
  }

  while (v6 != 3);
  sub_19B61AC60(buf, v48);
  v7 = 0;
  *(a1 + 64) = sub_19B61AD14(v48, (a1 + 64));
  *(a1 + 68) = v8;
  *(a1 + 72) = v9;
  do
  {
    v10 = 2;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = *sub_19B5D68B8(v48, v7, i);
        v13 = *sub_19B61C034(a1 + 40, i, v10);
        v14 = sub_19B5D68B8(v48, v7, v10);
        *v14 = *v14 + (v12 * v13);
      }

      *sub_19B5D68B8(v49, v7, v10--) = 0;
    }

    while (v10);
    *sub_19B5D68B8(v49, v7, 0) = 0;
    *sub_19B5D68B8(v49, v7, v7) = 1065353216;
    ++v7;
  }

  while (v7 != 3);
  for (j = 2; ; --j)
  {
    v16 = 0;
    buf[101].i32[j + 3] = 0;
    v17 = 0.0;
    do
    {
      v18 = *sub_19B5D68B8(v48, j, v16);
      v19 = v18 * *sub_19B5D68B8(v48, j, v16);
      v20 = v17 + (v19 * *sub_19B61C3BC(a1 + 28, v16));
      v21 = *sub_19B5D68B8(v49, j, v16);
      v22 = v21 * *sub_19B5D68B8(v49, j, v16);
      v17 = v20 + (v22 * sub_19B5D6144(a3, v16));
      buf[101].f32[j + 3] = v17;
      ++v16;
    }

    while (v16 != 3);
    if (v17 <= 0.0)
    {
      break;
    }

    if (!j)
    {
      for (k = 0; k != 3; ++k)
      {
        v42 = buf[101].i32[k + 3];
        *sub_19B61C3BC(a1 + 28, k) = v42;
      }

      goto LABEL_35;
    }

    for (m = 0; m != j; ++m)
    {
      v24 = 0;
      v25 = 0.0;
      do
      {
        v26 = *sub_19B5D68B8(v48, m, v24);
        v27 = v26 * *sub_19B61C3BC(a1 + 28, v24);
        v28 = v25 + (v27 * *sub_19B5D68B8(v48, j, v24));
        v29 = *sub_19B5D68B8(v49, m, v24);
        v30 = v29 * sub_19B5D6144(a3, v24);
        v25 = v28 + (v30 * *sub_19B5D68B8(v49, j, v24++));
      }

      while (v24 != 3);
      v31 = 0;
      *sub_19B61C034(a1 + 40, m, j) = v25 / v17;
      do
      {
        v32 = *sub_19B61C034(a1 + 40, m, j);
        v33 = *sub_19B5D68B8(v48, j, v31);
        v34 = sub_19B5D68B8(v48, m, v31);
        *v34 = *v34 - (v32 * v33);
        v35 = *sub_19B61C034(a1 + 40, m, j);
        v36 = *sub_19B5D68B8(v49, j, v31);
        v37 = sub_19B5D68B8(v49, m, v31);
        *v37 = *v37 - (v35 * v36);
        ++v31;
      }

      while (v31 != 3);
    }
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
  }

  v38 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    buf[0].i32[0] = 134217984;
    *(buf[0].i64 + 4) = j;
    _os_log_impl(&dword_19B41C000, v38, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  v39 = sub_19B420058();
  if (*(v39 + 160) > 1 || *(v39 + 164) > 1 || *(v39 + 168) > 1 || *(v39 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v50 = 134217984;
    v51 = j;
    v40 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMFactoredMatrix<float, 3>::thorntonTemporalUpdate(CMMatrix<T, N, N> &, const CMVector<T, N> &) [T = float, N = 3]", "CoreLocation: %s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }

LABEL_35:
  *v43.i64 = sub_19B66C264(buf, a2);
  *(a1 + 12) = sub_19B66BF70(buf, (a1 + 12), v43);
  *(a1 + 16) = v44;
  *(a1 + 20) = v45;
  *(a1 + 24) = v46;
  v47 = *MEMORY[0x1E69E9840];
}

void sub_19B61AC60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a1 + v4) * *(a1 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v6 = sqrtf(v5);
  if (v6 == 0.0)
  {
    *(a2 + 32) = 1065353216;
    *a2 = xmmword_19B7B9954;
    *(a2 + 16) = unk_19B7B9964;
  }

  else
  {
    v7 = __sincosf_stret(v6);
    v8[0] = 1.0;
    v8[1] = v7.__sinval / v6;
    v8[2] = (1.0 - v7.__cosval) / (v6 * v6);
    sub_19B61C5B4(a1, v8, a2);
  }
}

float sub_19B61AD14(uint64_t a1, float *a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_19B601068(a1, i, 0) * *a2;
    *sub_19B5BC0F0(&v11, i) = v5;
    for (j = 1; j != 3; ++j)
    {
      v7 = sub_19B601068(a1, i, j);
      v8 = sub_19B5D6144(a2, j);
      v9 = sub_19B5BC0F0(&v11, i);
      *v9 = *v9 + (v7 * v8);
    }
  }

  return v11;
}

void sub_19B61ADDC(void *a1, int a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    goto LABEL_22;
  }

  v6 = *(a1[7] + 416);
  v7 = a3 >= v6;
  v8 = a3 - v6;
  if (v8 == 0 || !v7)
  {
    goto LABEL_22;
  }

  v9 = v8 * 0.000001;
  if (v9 <= 0.0)
  {
    goto LABEL_22;
  }

  if (a2 == 2 || a2 == 1)
  {
    v10 = 833342583;
    goto LABEL_21;
  }

  v10 = 0;
  if (a2)
  {
LABEL_21:
    *buf = v10;
    v18 = v10;
    v19 = v10;
    v15 = 0;
    v16 = 0;
    sub_19B61A71C(a1, &v15, buf);
    goto LABEL_22;
  }

  if (qword_1ED71C820 != -1)
  {
    dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
  }

  v11 = off_1ED71C828;
  if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "invalid quiescentState kInMotion, ignoring quiescent", buf, 2u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    LOWORD(v15) = 0;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CMSensorFusionMekf::feedQuiescent(CMDeviceMotionInputs::QuiescentState, uint64_t)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_19B61B024(uint64_t a1, float32x2_t *a2, unint64_t a3)
{
  if ((*(*a1 + 64))(a1))
  {
    v6 = *(a1 + 56);
    v7 = *(v6 + 416);
    v8 = a3 >= v7;
    v9 = a3 - v7;
    if (v9 != 0 && v8)
    {
      v10 = v9 * 0.000001;
      if (v10 > 0.0)
      {
        v11 = vsub_f32(*a2, *(v6 + 452));
        v12 = a2[1].f32[0] - *(v6 + 460);
        v45 = v11;
        v46 = v12;
        v13 = vaddv_f32(vmul_f32(v11, v11));
        v14 = v12 * v12;
        v43 = 0;
        v44 = 0;
        v38 = v9 * 0.000001;
        if (*(a1 + 9) == 1)
        {
          v15 = 0;
          v41 = vmul_f32(v11, vdup_n_s32(0x3D23D70Au));
          v42 = v12 * 0.04;
          do
          {
            v16 = sub_19B5BC0F0(&v41, v15);
            v17 = fminf(fmaxf(*v16 * *v16, 0.0027416), 9.8696);
            *sub_19B5BC0F0(&v43, v15++) = v17;
          }

          while (v15 != 3);
          *(a1 + 9) = 0;
          v10 = v38;
        }

        v18 = 0;
        v19 = v13 + v14;
        v20 = v10 * v10;
        v21 = (v10 * 0.0017) * (v10 * 0.0017);
        v22 = (v10 * 17.453) * (v10 * 17.453);
        do
        {
          v23 = (v20 * sub_19B5D6144(*(a1 + 56) + 428, v18)) + (v38 * 0.000000010966);
          v24 = sub_19B5BC0F0(&v45, v18);
          v25 = v23 + (((*v24 * 0.00033) * v38) * ((*v24 * 0.00033) * v38));
          v26 = sub_19B5BC0F0(&v45, v18);
          v27 = v25 + ((v19 - (*v26 * *v26)) * v21);
          v28 = sub_19B5BC0F0(&v45, v18);
          v29 = *v28;
          if (*v28 <= 0.0)
          {
            v29 = -*v28;
          }

          v30 = v29 <= 27.925;
          v31 = 0.0;
          if (!v30)
          {
            v31 = v22;
          }

          v32 = *sub_19B5BC0F0(&v43, v18) + (v27 + v31);
          *sub_19B5BC0F0(&v41, v18++) = v32;
        }

        while (v18 != 3);
        v33 = *(a1 + 56);
        v34 = (((*(v33 + 472) + a2[1].f32[0]) * 0.5) - *(v33 + 460)) * v38;
        v39 = vmul_n_f32(vsub_f32(vmul_f32(vadd_f32(*(v33 + 464), *a2), 0x3F0000003F000000), *(v33 + 452)), v38);
        v40 = v34;
        sub_19B61A71C(a1, &v39, &v41);
        v35 = 0;
        v36 = a2->f32[0];
        if (a2->f32[0] <= 0.0)
        {
          v36 = -a2->f32[0];
        }

        do
        {
          v37 = a2->f32[v35 + 1];
          if (v37 <= 0.0)
          {
            v37 = -v37;
          }

          if (v37 > v36)
          {
            v36 = v37;
          }

          ++v35;
        }

        while (v35 != 2);
        if (v36 > 27.925)
        {
          *(a1 + 80) = 1;
        }
      }
    }
  }
}

uint64_t sub_19B61B33C(float32x2_t *a1)
{
  if ((a1[1].i8[2] & 1) == 0)
  {
    (*(*a1 + 160))(a1);
    return 0;
  }

  v2 = a1[7];
  v3 = v2[103].u8[4];
  if (a1[1].i8[0])
  {
    v4 = 1;
    if (!v2[103].i8[4])
    {
      a1[10] = 1;
      a1[1].i8[1] = 1;
      v4 = 0;
    }
  }

  else
  {
    v4 = v3 != 0;
  }

  a1[1].i8[0] = v4;
  v6 = a1[10];
  if (v6)
  {
    v7 = 1.0 / v6;
    if (v7 < 0.001)
    {
      v6 = 999;
      a1[10] = 999;
      v7 = 0.001;
    }
  }

  else
  {
    v7 = 1.0;
  }

  if (v2[30].i8[4] == 1)
  {
    v8 = ((1.0 - v7) * a1[9].f32[0]) + (v7 * v2[30].f32[0]);
    a1[8] = vadd_f32(vmul_n_f32(a1[8], 1.0 - v7), vmul_n_f32(v2[29], v7));
    a1[9].f32[0] = v8;
    a1[10] = (v6 + 1);
    v3 = v2[103].u8[4];
  }

  if (!v3 && v2[35].i32[0] != v2[34].u16[3])
  {
    goto LABEL_53;
  }

  v9 = v2[1].u16[1];
  if (v2[1].i32[1] == v9)
  {
    v58 = v7;
    sub_19B5E9EFC(&v2[1], 0, v9);
    HIDWORD(v60) = v11;
    v61 = v12;
    if (v10 <= 0.0)
    {
      v13 = -v10;
    }

    else
    {
      v13 = v10;
    }

    for (i = 4; i != 12; i += 4)
    {
      v15 = *(&v60 + i);
      if (v15 <= 0.0)
      {
        v15 = -v15;
      }

      if (v15 > v13)
      {
        v13 = v15;
      }
    }

    v16 = sub_19B5BF0D0((*&a1[7] + 8), 0, *(*&a1[7] + 10));
    v17 = 0;
    v60 = __PAIR64__(v18, LODWORD(v16));
    v61 = v19;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v60 + v17) * *(&v60 + v17));
      v17 += 4;
    }

    while (v17 != 12);
    v21 = sqrtf(v13);
    v22 = sqrtf(v20) + -1.0;
    v23 = a1[7];
    v24 = 0.0;
    if (*(*&v23 + 828))
    {
      v25 = 0.0;
    }

    else
    {
      v25 = sub_19B5BE518(*&v23 + 248, 32 - *(*&v23 + 488), *(*&v23 + 488));
      v23 = a1[7];
    }

    v26 = fabsf(v22);
    v27 = sub_19B61B954(flt_19B7B98BC, flt_19B7B98C8, 3, v21);
    v28 = sub_19B5BF0D0((*&v23 + 8), 0, *(*&v23 + 10));
    v29 = 0;
    v60 = __PAIR64__(v30, LODWORD(v28));
    v61 = v31;
    do
    {
      v24 = v24 + (*(&v60 + v29) * *(&v60 + v29));
      v29 += 4;
    }

    while (v29 != 12);
    v32 = sub_19B61B954(flt_19B7B98D4, flt_19B7B98F0, 7, sqrtf(v24) + -1.0);
    v2 = a1[7];
    if (v21 < 0.1 && v26 < 0.12 && v25 < 0.05)
    {
      v33 = sub_19B61B954(flt_19B7B990C, flt_19B7B9918, 3, v25);
      if (v27 >= v32)
      {
        v34 = v32;
      }

      else
      {
        v34 = v27;
      }

      if (v34 < v33)
      {
        v33 = v34;
      }

      v35 = v33 * v33;
      goto LABEL_44;
    }

    v3 = v2[103].u8[4];
    v7 = v58;
  }

  v35 = 0.0;
  if (!v3)
  {
LABEL_53:
    if (v2[30].i8[4] == 1)
    {
      v43 = 0.0;
      v44 = 16;
      v45 = v7 / 0.001;
      do
      {
        v43 = v43 + (a1->f32[v44] * a1->f32[v44]);
        ++v44;
      }

      while (v44 != 19);
      v46 = sqrtf(v43);
      v47 = v46 + -1.0;
      if ((v46 + -1.0) <= 0.0)
      {
        v47 = -(v46 + -1.0);
      }

      v48 = acosf(1.0 / (v47 + 1.0));
      if (v46 < 1.0 && v48 <= (((1.0 - v46) * 180.0) * 0.017453))
      {
        v48 = ((1.0 - v46) * 180.0) * 0.017453;
      }

      v49 = 0;
      v50 = v48 * v48;
      v51 = a1[8];
      v52 = a1[9].f32[0];
      v60 = v51;
      v61 = v52;
      v53 = 0.0;
      do
      {
        v53 = v53 + (*(&v60 + v49) * *(&v60 + v49));
        v49 += 4;
      }

      while (v49 != 12);
      if ((v45 * 0.00030462) <= v50)
      {
        v35 = v50;
      }

      else
      {
        v35 = v45 * 0.00030462;
      }

      if (sqrtf(v53) > 0.00000011921)
      {
        v54 = 0;
        v55 = 0;
        do
        {
          *v55.i32 = *v55.i32 + (*(&v60 + v54) * *(&v60 + v54));
          v54 += 4;
        }

        while (v54 != 12);
        *v55.i32 = sqrtf(*v55.i32);
        v51 = vdiv_f32(v51, vdup_lane_s32(v55, 0));
        v52 = v52 / *v55.i32;
      }

      v60 = v51;
      v61 = v52;
      goto LABEL_71;
    }

    return 0;
  }

LABEL_44:
  v36 = sub_19B5BF344(&v2[1], 7uLL);
  v37 = 0;
  v38 = *v36;
  v39 = *(v36 + 8);
  v60 = *v36;
  v61 = v39;
  v40 = 0.0;
  do
  {
    v40 = v40 + (*(&v60 + v37) * *(&v60 + v37));
    v37 += 4;
  }

  while (v37 != 12);
  if (sqrtf(v40) > 0.00000011921)
  {
    v41 = 0;
    v42 = 0;
    do
    {
      *v42.i32 = *v42.i32 + (*(&v60 + v41) * *(&v60 + v41));
      v41 += 4;
    }

    while (v41 != 12);
    *v42.i32 = sqrtf(*v42.i32);
    v38 = vdiv_f32(v38, vdup_lane_s32(v42, 0));
    v39 = v39 / *v42.i32;
  }

  v60 = v38;
  v61 = v39;
  if (*(*&a1[7] + 828))
  {
    v35 = 0.1;
  }

LABEL_71:
  v59[0] = sub_19B447000(&a1[1] + 1);
  v59[1] = v56;
  v59[2] = v57;
  sub_19B61B858(a1, &v60, v59, v35);
  return 1;
}

void sub_19B61B858(uint64_t a1, float32x2_t *a2, uint64_t a3, float a4)
{
  v5 = *(a3 + 8);
  v6 = a2[1].f32[0] - v5;
  v7 = *a3;
  v32 = vsub_f32(*a2, *a3);
  v33 = v6;
  v8 = *(a3 + 4);
  v26[0] = 0;
  *&v26[1] = v5;
  v27 = vneg_f32(v8);
  v28 = 0;
  v29 = v7;
  v30 = -v7.f32[0];
  v31 = 0;
  *v25 = a4;
  *&v25[1] = a4;
  *&v25[2] = a4;
  sub_19B61B9E0((a1 + 28), v26, v25, &v32);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_19B447000((a1 + 12));
  v18 = ((v14 * v16) + (v12 * v17)) + (v10 * v15);
  v24[0] = v10 - (v15 * v18);
  v24[1] = v12 - (v17 * v18);
  v24[2] = v14 - (v16 * v18);
  *v19.i64 = sub_19B66C264(&v23, v24);
  *(a1 + 12) = sub_19B66BF70(&v23, (a1 + 12), v19);
  *(a1 + 16) = v20;
  *(a1 + 20) = v21;
  *(a1 + 24) = v22;
}

float sub_19B61B954(float *a1, float *a2, uint64_t a3, float a4)
{
  if (*a1 >= a4)
  {
    return *a2;
  }

  v4 = a3 - 1;
  if (a1[a3 - 1] <= a4)
  {
    return a2[v4];
  }

  v5 = a1 + 1;
  for (i = a2; ; ++i)
  {
    v7 = *(v5 - 1);
    if (v7 <= a4)
    {
      v8 = *v5;
      if (*v5 >= a4)
      {
        break;
      }
    }

    ++v5;
    if (!--v4)
    {
      return *a2;
    }
  }

  v10 = v8 - v7;
  if ((v8 - v7) <= 0.0)
  {
    v11 = *i;
    v12 = 0.0;
  }

  else
  {
    v11 = *i;
    v12 = (i[1] - *i) / v10;
  }

  return v11 + (v12 * (a4 - v7));
}

void sub_19B61B9E0(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = 0;
  *&v49[8] = *MEMORY[0x1E69E9840];
  v41 = 0;
  v40 = 0;
LABEL_2:
  v8 = 0;
  v9 = -1;
  do
  {
    v10 = sub_19B601068(a2, v7, v8);
    v11 = v9;
    if (v8)
    {
      do
      {
        v12 = sub_19B601068(a2, v7, v11);
        v10 = v10 + (v12 * *sub_19B61C034((a1 + 3), v11--, v8));
      }

      while (v11 != -1);
    }

    *&v49[4 * v8 - 4] = v10;
    *&v46[v8] = v10 * *sub_19B61C3BC(a1, v8);
    ++v8;
    ++v9;
  }

  while (v8 != 3);
  v13 = sub_19B5D6144(v4, v7);
  v14 = v13 + (*(&v48 + 1) * *v46);
  if (v14 <= 0.0)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v36 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&dword_19B41C000, v36, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v37 = sub_19B420058();
    if (*(v37 + 160) > 1 || *(v37 + 164) > 1 || *(v37 + 168) > 1 || *(v37 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v42 = 134217984;
      v43 = v7;
LABEL_27:
      v34 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CMVector<T, N> CMFactoredMatrix<float, 3>::biermanObservationalUpdate(const CMMatrix<T, P, N> &, const CMVector<T, P> &, const CMVector<T, P> &) [T = float, N = 3, P = 3UL]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  else
  {
    v15 = 1.0 / v14;
    v16 = sub_19B5D6144(v4, v7);
    v17 = 0;
    *a1 = *a1 * ((1.0 / v14) * v16);
    v18 = v49;
    v19 = &v47;
    v20 = 1;
    while (1)
    {
      v21 = v14 + (*v18 * *v19);
      if (v21 <= 0.0)
      {
        break;
      }

      v22 = v17;
      v23 = -(*v18 * v15);
      v15 = 1.0 / v21;
      v24 = sub_19B61C3BC(a1, v20);
      v25 = 0;
      *v24 = (v14 * (1.0 / v21)) * *v24;
      do
      {
        v26 = *sub_19B61C034((a1 + 3), v25, v20);
        v27 = *&v46[v25];
        *sub_19B61C034((a1 + 3), v25, v20) = v26 + (v27 * v23);
        *&v46[v25++] = v27 + (*v19 * v26);
      }

      while (v20 != v25);
      v17 = 1;
      v14 = v21;
      v19 = &v48;
      v18 = &v49[4];
      v20 = 2;
      if (v22)
      {
        v28 = 0;
        v29 = v15 * sub_19B5D6144(a4, v7);
        do
        {
          v30 = *&v46[v28];
          v31 = sub_19B5BC0F0(&v40, v28);
          *v31 = *v31 + (v29 * v30);
          ++v28;
        }

        while (v28 != 3);
        ++v7;
        v4 = a3;
        if (v7 != 3)
        {
          goto LABEL_2;
        }

        goto LABEL_29;
      }
    }

    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v32 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v45 = v7;
      _os_log_impl(&dword_19B41C000, v32, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
    }

    v33 = sub_19B420058();
    if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v42 = 134217984;
      v43 = v7;
      goto LABEL_27;
    }
  }

LABEL_29:
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B61BF20(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(v1 + 424) == 1)
  {
    v2 = *(v1 + 416);
    if (v2)
    {
      LOBYTE(v2) = *(a1 + 10);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

BOOL sub_19B61BF90(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
LABEL_2:
  v4 = v3;
  v5 = v2 + 1;
  while (1)
  {
    v6 = sub_19B601068(a1, v2, v5);
    v7 = v6 - sub_19B601068(a1, v5, v2);
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 > 1.0e-16)
    {
      return v7 <= 1.0e-16;
    }

    v8 = v5 == 2;
    v5 = 2;
    if (v8)
    {
      v3 = 0;
      v2 = 1;
      if (v4)
      {
        goto LABEL_2;
      }

      return v7 <= 1.0e-16;
    }
  }
}

uint64_t sub_19B61C034(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v8 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = 3;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: col < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 237,invalid col %zu > %zu.", buf, 0x16u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 3]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  if (a3 <= a2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v11 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v15 = a3;
      v16 = 2048;
      v17 = a2;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 3]", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_19B61C3BC(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 3;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: row < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMFactoredMatrix.h, line 191,invalid row %zu > %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E291A0);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 3>::DiagonalMatrix::operator()(size_t) [T = float, N = 3]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 + 4 * a2;
}

float sub_19B61C5B4@<S0>(uint64_t a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (*(a1 + v4) * *(a1 + v4));
    v4 += 4;
  }

  while (v4 != 12);
  v6 = *a2;
  *a3 = *a2;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 16) = v6;
  *(a3 + 20) = 0;
  *(a3 + 28) = 0;
  *(a3 + 32) = v6;
  result = sqrtf(v5);
  if (result != 0.0)
  {
    v8 = 0;
    v9 = *a1;
    v10 = -*a1;
    v11 = *(a1 + 4);
    DWORD1(v26) = v11.i32[1];
    *(&v26 + 1) = vneg_f32(v11);
    LODWORD(v26) = 0;
    LODWORD(v27) = 0;
    *(&v27 + 4) = __PAIR64__(v11.u32[0], LODWORD(v9));
    *(&v27 + 3) = v10;
    v28 = 0;
    v12 = a2[1];
    v22 = 0;
    v20 = v26;
    v21 = v27;
    do
    {
      *(&v20 + v8) = v12 * *(&v20 + v8);
      v8 += 4;
    }

    while (v8 != 36);
    v13 = 0;
    v14 = a2[2];
    v23 = v26;
    v24 = v27;
    v25 = v28;
    do
    {
      *(&v23 + v13) = v14 * *(&v23 + v13);
      v13 += 4;
    }

    while (v13 != 36);
    v17[0] = v23;
    v17[1] = v24;
    v18 = v25;
    sub_19B604B68(v17, &v26, v19);
    for (i = 0; i != 9; ++i)
    {
      *(&v20 + i) = sub_19B5DB794(v19, i) + *(&v20 + i);
    }

    v16 = 0;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    do
    {
      result = sub_19B5DB794(&v23, v16) + *(a3 + 4 * v16);
      *(a3 + 4 * v16++) = result;
    }

    while (v16 != 9);
  }

  return result;
}

uint64_t sub_19B61C754()
{
  if (qword_1ED71CAF8 != -1)
  {
    dispatch_once(&qword_1ED71CAF8, &unk_1F0E291C0);
  }

  return qword_1ED71CAF0;
}

uint64_t sub_19B61C79C()
{
  result = sub_19B423E34();
  if ((result & 0x10) != 0)
  {
    operator new();
  }

  return result;
}

void sub_19B61C9BC(_Unwind_Exception *a1)
{
  v5 = v1[15];
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  sub_19B61CA20(v3, 0);
  sub_19B674784(v1);
  MEMORY[0x19EAE76F0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_19B61CA20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_19B71B198(result);

    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B61CA6C(uint64_t a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (qword_1EAFE2890 != -1)
  {
    dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
  }

  v4 = qword_1EAFE2898;
  if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "Received Bias Notification", buf, 2u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2890 != -1)
    {
      dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onBias(int, const CLPressureBias_Type::Notification &, const CLPressureBias_Type::NotificationData &)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  *v9 = *a2;
  *&v9[13] = *(a2 + 13);
  v7 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_19B61CD38;
  v13 = &unk_1E75333A0;
  v14 = v3;
  v15[0] = *v9;
  *(v15 + 13) = *&v9[13];
  sub_19B421668(v7, buf);
  v8 = *MEMORY[0x1E69E9840];
}

void *sub_19B61CC94(void *a1)
{
  *a1 = &unk_1F0E34298;
  v2 = a1[15];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  sub_19B61CA20(a1 + 5, 0);

  return sub_19B674784(a1);
}

void sub_19B61CD00(void *a1)
{
  sub_19B61CC94(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B61CD38(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 81) = *(result + 53);
  *(v1 + 68) = v2;
  if (*(result + 52) != 3.4028e38 || *(result + 44) != 0.0 || *(result + 48) != 0.0)
  {
    *(v1 + 49) = 1;
  }

  return result;
}

double sub_19B61CD88(void *a1, unsigned int a2, uint64_t *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v21 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = a2;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "Unrecognized pressure notification %{public}d", buf, 8u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || (v12 = 0.0, *(v22 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      *v40 = 67240192;
      *&v40[4] = a2;
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLPressure::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }

      v12 = 0.0;
    }
  }

  else
  {
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v5 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      v6 = *a3;
      *buf = 134349056;
      *&buf[4] = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_INFO, "Setting pressure data update interval to %{public}f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      v8 = *a3;
      *v40 = 134349056;
      *&v40[4] = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLPressure::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = 0;
    v11 = 1;
    v12 = 0.0;
    do
    {
      v13 = v11;
      sub_19B42753C(a1, v10);
      if (v12 == 0.0 || (v14 > 0.0 ? (v15 = v14 < v12) : (v15 = 0), v15))
      {
        v12 = v14;
      }

      v11 = 0;
      v10 = 1;
    }

    while ((v13 & 1) != 0);
    a1[7] = 0;
    if (a1[5])
    {
      sub_19B42753C(a1, 1);
      v16 = a1[5];
      v18 = *(v16 + 8);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      if (v17 == 0.0)
      {
        v19 = sub_19B71B6E8;
      }

      else
      {
        v19 = sub_19B71B1EC;
      }

      v37 = v19;
      v38 = &unk_1E75327D8;
      v39 = v16;
      dispatch_sync(v18, buf);
    }

    if (!a1[14] && (sub_19B423E34() & 0x10) != 0)
    {
      v24 = sub_19B42CAAC();
      *v40 = 0x3100000020;
      v40[8] = 0;
      sub_19B42C428(v24);
    }

    v27 = a1[14];
    v26 = a1 + 14;
    v25 = v27;
    v28 = rint(v12 * 1000000.0);
    if (v12 < 0.0)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    sub_19B4238F4(v25, v29);
    v30 = sub_19B424A2C(*v26, v12);
    if (qword_1EAFE2840 != -1)
    {
      dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
    }

    v31 = qword_1EAFE2860;
    if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = v30;
      _os_log_impl(&dword_19B41C000, v31, OS_LOG_TYPE_INFO, "Setting pressure batch interval to: %{public}ld us", buf, 0xCu);
    }

    v32 = sub_19B420058();
    if (*(v32 + 160) > 1 || *(v32 + 164) > 1 || *(v32 + 168) > 1 || *(v32 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2840 != -1)
      {
        dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
      }

      v33 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "CFTimeInterval CLPressure::setPressureUpdateInterval()", "CoreLocation: %s\n", v33);
      if (v33 != buf)
      {
        free(v33);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_19B61D3B8(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 31)
  {
    IOHIDEventGetFloatValue();
    v3 = v2;
    TimeStamp = IOHIDEventGetTimeStamp();
    v5 = sub_19B41E070(TimeStamp);
    sub_19B42753C(a1, 0);
    if (v6 != 0.0 || (sub_19B42753C(a1, 1), v7 != 0.0))
    {
      v8 = v3;
      v32 = v5;
      v33 = LODWORD(v8);
      v9 = *(a1 + 56);
      if (v9 == 0.0 || v5 - v9 > *(a1 + 104))
      {
        v10 = *(a1 + 112);
        if (v10)
        {
          v11 = (*(*v10 + 24))(v10, @"AppleVoltageDictionary");
          v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"PRESSURE_TEMP");
          objc_msgSend_floatValue(v13, v14, v15);
          *(a1 + 64) = v16 / 100.0;

          v17 = v13 != 0;
        }

        else
        {
          v17 = 0;
        }

        if (qword_1EAFE2840 != -1)
        {
          dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
        }

        v18 = qword_1EAFE2860;
        if (os_log_type_enabled(qword_1EAFE2860, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v45) = v17;
          _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEBUG, "Pressure Temperature=%d", buf, 8u);
        }

        v19 = sub_19B420058();
        if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2840 != -1)
          {
            dispatch_once(&qword_1EAFE2840, &unk_1F0E28420);
          }

          v34 = 67109120;
          LODWORD(v35) = v17;
          v20 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onPressureData(const CLMotionTypePressure &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v20);
          if (v20 != buf)
          {
            free(v20);
          }
        }

        *(a1 + 56) = v5;
      }

      v21 = *(a1 + 64);
      HIDWORD(v33) = v21;
      if (*(a1 + 48) == 1)
      {
        sub_19B517F80(buf);
        sub_19B531B08(buf);
        Current = CFAbsoluteTimeGetCurrent();
        v56 |= 1u;
        v54 = Current;
        sub_19B5A06B4(v55);
        v23 = *(v55 + 8);
        *(v23 + 24) |= 1u;
        *(v23 + 8) = v5;
        v24 = *(v55 + 8);
        *(v24 + 24) |= 2u;
        *(v24 + 16) = v8;
        v25 = *(v55 + 8);
        *(v25 + 24) |= 4u;
        *(v25 + 20) = v21;
        sub_19B51DBD4(buf);
      }

      sub_19B42753C(a1, 0);
      if (v26 != 0.0)
      {
        sub_19B41DF08(a1, 0, &v32, 16);
      }

      if (*(a1 + 49) == 1)
      {
        *&v33 = *&v33 + (-(*(a1 + 76) - (*(a1 + 72) * fminf(*(a1 + 80), *(&v33 + 1)))) / -1000.0);
      }

      sub_19B42753C(a1, 1);
      if (v27 != 0.0)
      {
        sub_19B41DF08(a1, 1, &v32, 16);
      }

      if (qword_1EAFE2890 != -1)
      {
        dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
      }

      v28 = qword_1EAFE2898;
      if (os_log_type_enabled(qword_1EAFE2898, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v45 = "Pressure";
        v46 = 2048;
        v47 = *&v33;
        v48 = 2048;
        v49 = *(&v33 + 1);
        v50 = 2048;
        v51 = v32;
        v52 = 2048;
        v53 = v8;
        _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Type,%s,pressure,%.6f,temperature,%.3f,timestamp,%f,rawPressure,%.6f", buf, 0x34u);
      }

      v29 = sub_19B420058();
      if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2890 != -1)
        {
          dispatch_once(&qword_1EAFE2890, &unk_1F0E28720);
        }

        v34 = 136316162;
        v35 = "Pressure";
        v36 = 2048;
        v37 = *&v33;
        v38 = 2048;
        v39 = *(&v33 + 1);
        v40 = 2048;
        v41 = v32;
        v42 = 2048;
        v43 = v8;
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLPressure::onPressureData(const CLMotionTypePressure &, const CLMotionTypeTimestamp &)", "CoreLocation: %s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_19B61D988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_19B51DBD4(va);
  _Unwind_Resume(a1);
}

os_log_t sub_19B61D9A4()
{
  result = os_log_create("com.apple.locationd.Motion", "Sensors");
  qword_1EAFE2898 = result;
  return result;
}

os_log_t sub_19B61D9D4()
{
  result = os_log_create("com.apple.locationd.Motion", "Pressure");
  qword_1EAFE2860 = result;
  return result;
}

uint64_t sub_19B61DA04(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = *a3;
  *(a1 + 16) = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28320);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28320);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<double>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = double]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B61DF7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isWakeGestureAvailable(CMWakeGestureManager, a2, a3))
  {
    v3 = [CMWakeGestureManager alloc];
    qword_1ED71CB08 = objc_msgSend_initWithQueue_(v3, v4, 0);
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v5 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "CMWakeGestureManager is not supported on this platform!", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "+[CMWakeGestureManager sharedManager]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B61E48C()
{
  v18 = *MEMORY[0x1E69E9840];
  size = 0;
  if (!sysctlbyname("kern.bootargs", 0, &size, 0, 0))
  {
    v0 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v0)
    {
      v1 = v0;
      if (!sysctlbyname("kern.bootargs", v0, &size, 0, 0))
      {
        v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v2, v1);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F0E6A188, v4, &v12, v17, 16);
        if (v5)
        {
          v7 = v5;
          v8 = 0;
          v9 = *v13;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v13 != v9)
              {
                objc_enumerationMutation(&unk_1F0E6A188);
              }

              v8 |= objc_msgSend_containsString_(v3, v6, *(*(&v12 + 1) + 8 * i));
            }

            v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F0E6A188, v6, &v12, v17, 16);
          }

          while (v7);
        }

        else
        {
          LOBYTE(v8) = 0;
        }

        byte_1EAFE2FA8 = v8 & 1;
      }

      free(v1);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B61E6A8(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 140) = 0;
  Weak = objc_loadWeak((*(a1 + 32) + 144));
  objc_storeWeak((*(a1 + 32) + 152), Weak);
  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 1u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 4u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 8u;
  }

  objc_loadWeak((*(a1 + 32) + 152));
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 140) |= 0x10u;
  }

  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v3 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 140);
    *buf = 67109120;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "CMWakeGestureManagerDelegate selectors: %x", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v8 = *(*(a1 + 32) + 140);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager setDelegate:]_block_invoke", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B61F87C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 24))
  {
    operator new();
  }

  return sub_19B7915DC();
}

void sub_19B61F9C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B623620;
  block[3] = &unk_1E7532988;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t sub_19B61FD78(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(a1 + 32), @"com.apple.CoreMotion.WakeGesturePreferencesChanged", 0);
    v6 = objc_msgSend_defaultCenter(MEMORY[0x1E696ABB0], v4, v5);
    objc_msgSend_removeObserver_name_object_(v6, v7, *(a1 + 32), @"CMSendWakeGestureNotification", 0);
    v8 = sub_19B7915DC();
    sub_19B426A14(v8, 0, *(*(a1 + 32) + 24));
    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v9 = *(a1 + 32);
    }

    *(v9 + 24) = 0;
    v1 = vars8;
  }

  return sub_19B7915DC();
}

void sub_19B6200D4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = sub_19B7915DC();
  v3 = *(a1 + 32);
  *buf = 1285;
  buf[2] = v3;
  if (!sub_19B7931A8(v2, buf, 4))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v4 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "Unable to send display state", buf, 2u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager setBacklightState:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_19B620298(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 49);
    *buf = 67240704;
    v13 = v3;
    v14 = 1026;
    v15 = v4;
    v16 = 1026;
    v17 = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "setBacklightState,backlight,%{public}d,displayActive,%{public}u,prevDisplayActive,%{public}u", buf, 0x14u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 49);
    v7 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager setBacklightState:]_block_invoke", "CoreLocation: %s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    *(*(a1 + 32) + 56) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B6205A4(uint64_t a1)
{
  v2 = sub_19B7915DC();
  v3 = *(a1 + 40);
  v7 = 259;
  v8 = (v3 * 1000000.0);
  *(*(*(a1 + 32) + 8) + 24) = sub_19B7931A8(v2, &v7, 10);
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = *(a1 + 48);
    v7 = 515;
    v8 = (v5 * 1000000.0);
    result = sub_19B7931A8(v2, &v7, 10);
    v4 = *(*(a1 + 32) + 8);
  }

  else
  {
    result = 0;
  }

  *(v4 + 24) = result;
  return result;
}

void sub_19B6206DC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v5 = objc_msgSend_toRaw_(v3, v4, *(a1 + 40));
  v6 = sub_19B7915DC();
  v7 = *(a1 + 48);
  buf[0] = 3;
  buf[1] = v5;
  *&buf[2] = (v7 * 1000000.0);
  if (!sub_19B7931A8(v6, buf, 10))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v8 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      *buf = 67240448;
      *&buf[4] = v5;
      *&buf[8] = 2048;
      v15 = v9;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Error simulating gesture: %{public}u, delay,%f", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v13 = *(a1 + 48);
      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager simulateGesture:after:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_19B620BD4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = sub_19B7915DC();
  if (!sub_19B79374C(v2, *(a1 + 32), *(a1 + 36)))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v3 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_ERROR, "Wake Gesture: Error sending night stand control mode to detector", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager setNightStandWakeEnabled:withConfiguration:]_block_invoke", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_19B620DFC(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!*(v1 + 24))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v9 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_FAULT, "Unable to invoke delegate. Please call startWakeGestureUpdates first.", buf, 2u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager invokeDelegateWithState:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    goto LABEL_20;
  }

  v3 = *(v1 + 140);
  if ((v3 & 0x10) != 0)
  {
    v13 = [CMWakeGestureEvent alloc];
    v14 = *(a1 + 40);
    v15 = mach_absolute_time();
    v16 = sub_19B41E070(v15);
    v32 = objc_msgSend_initWithState_type_orientation_timestamp_(v13, v17, v14, 2, 0, v16);
    Weak = objc_loadWeak((*(a1 + 32) + 152));
    objc_msgSend_wakeGestureManager_didUpdateWakeGestureEvent_(Weak, v19, *(a1 + 32), v32);
    v20 = *MEMORY[0x1E69E9840];
  }

  else if ((v3 & 8) != 0)
  {
    v21 = objc_loadWeak((v1 + 152));
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = mach_absolute_time();
    v26 = *MEMORY[0x1E69E9840];

    objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_detectedAt_(v21, v25, v23, v22, 0, v24);
  }

  else
  {
    if ((v3 & 4) == 0)
    {
      if (v3)
      {
        v4 = objc_loadWeak((v1 + 152));
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        v8 = *MEMORY[0x1E69E9840];

        objc_msgSend_wakeGestureManager_didUpdateWakeGesture_(v4, v5, v6, v7);
        return;
      }

LABEL_20:
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    v27 = objc_loadWeak((v1 + 152));
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = *MEMORY[0x1E69E9840];

    objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_(v27, v28, v29, v30, 0);
  }
}

void sub_19B62142C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_19B41FFEC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B6219B8(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"spuLatencyMS";
  v6[0] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v2, v6, &v5, 1);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B621AB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21[0] = @"notification";
  v4 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_state(*(a1 + 32), a2, a3);
  v22[0] = objc_msgSend_numberWithInt_(v4, v6, v5);
  v21[1] = @"whileDisplay";
  v22[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(a1 + 40));
  v21[2] = @"processName";
  v10 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v8, v9);
  v22[2] = objc_msgSend_processName(v10, v11, v12);
  v21[3] = @"type";
  v13 = MEMORY[0x1E696AD98];
  v16 = objc_msgSend_type(*(a1 + 32), v14, v15);
  v22[3] = objc_msgSend_numberWithInt_(v13, v17, v16);
  result = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v22, v21, 4);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B622178(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!objc_loadWeak((a1 + 40)))
  {
    goto LABEL_91;
  }

  if (!*(*(a1 + 32) + 40))
  {
    operator new();
  }

  sub_19B451364((a1 + 64), *(*(a1 + 32) + 40));
  v2 = *(*(a1 + 32) + 40);
  v3 = v2[9];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[12];
  v7 = v2[13];
  v78 = v2[14];
  v9 = objc_msgSend_stringForNotification_(CMWakeGestureManager, v8, v3);
  v11 = objc_msgSend_stringForMode_(CMWakeGestureManager, v10, v6);
  started = objc_msgSend_stringForStartPose_(CMWakeGestureManager, v12, v4);
  v15 = objc_msgSend_stringForViewPose_(CMWakeGestureManager, v14, v5);
  if (v7)
  {
    v16 = 1;
  }

  else
  {
    *(*(a1 + 32) + 64) = *(a1 + 48);
    v16 = 2;
  }

  *(*(a1 + 32) + 56) = v16;
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v17 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241730;
    *v90 = v3;
    *&v90[4] = 2114;
    *&v90[6] = v9;
    *&v90[14] = 2114;
    *&v90[16] = v11;
    *&v90[24] = 2114;
    *&v90[26] = started;
    v91 = 2114;
    v92 = v15;
    v93 = 1026;
    v94 = v7;
    v95 = 1026;
    v96 = v78;
    _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_DEFAULT, "Gesture notification: %{public}d(%{public}@), Mode:%{public}@, Start:%{public}@, End:%{public}@, HostAwake, %{public}d, Inferred:%{public}u", buf, 0x3Cu);
  }

  v18 = sub_19B420058();
  if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v81 = 67241730;
    *v82 = v3;
    *&v82[4] = 2114;
    *&v82[6] = v9;
    *&v82[14] = 2114;
    *&v82[16] = v11;
    *&v82[24] = 2114;
    *&v82[26] = started;
    v83 = 2114;
    v84 = v15;
    v85 = 1026;
    v86 = v7;
    v87 = 1026;
    v88 = v78;
    v19 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v20 = *(a1 + 32);
  v21 = objc_opt_class();
  v23 = objc_msgSend_toState_(v21, v22, v3);
  Current = CFAbsoluteTimeGetCurrent();
  if (v23 && ((v26 = Current, v27 = *(a1 + 32), v23 != *(v27 + 48)) || Current - *(v27 + 88) > 1.0))
  {
    if (!objc_msgSend_isEqual_(v11, v24, @"Nightstand") || (*(*(a1 + 32) + 136) & 1) != 0)
    {
      if (objc_msgSend_isEqual_(v11, v31, @"Nightstand"))
      {
        v32 = 7;
      }

      else
      {
        v32 = 2;
      }

      v33 = [CMWakeGestureEvent alloc];
      v34 = sub_19B41E070(*(a1 + 48));
      v36 = objc_msgSend_initWithState_type_orientation_timestamp_(v33, v35, v23, v32, v78, v34);
      v37 = *(a1 + 32);
      v38 = *(v37 + 140);
      if ((v38 & 0x10) != 0)
      {
        Weak = objc_loadWeak((v37 + 152));
        objc_msgSend_wakeGestureManager_didUpdateWakeGestureEvent_(Weak, v42, *(a1 + 32), v36);
      }

      else if ((v38 & 8) != 0)
      {
        v45 = objc_loadWeak((v37 + 152));
        objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_detectedAt_(v45, v46, *(a1 + 32), v23, v78, *(a1 + 48));
      }

      else if ((v38 & 4) != 0)
      {
        v47 = objc_loadWeak((v37 + 152));
        objc_msgSend_wakeGestureManager_didUpdateWakeGesture_orientation_(v47, v48, *(a1 + 32), v23, v78);
      }

      else
      {
        if ((v38 & 1) == 0)
        {
          if (qword_1ED71C790 != -1)
          {
            dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
          }

          v39 = qword_1ED71C798;
          if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_FAULT, "No valid delegate found.", buf, 2u);
          }

          v40 = sub_19B420058();
          if ((*(v40 + 160) & 0x80000000) == 0 || (*(v40 + 164) & 0x80000000) == 0 || (*(v40 + 168) & 0x80000000) == 0 || *(v40 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C790 != -1)
            {
              dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
            }

            LOWORD(v81) = 0;
            v30 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v30);
            goto LABEL_32;
          }

          goto LABEL_91;
        }

        v49 = objc_loadWeak((v37 + 152));
        objc_msgSend_wakeGestureManager_didUpdateWakeGesture_(v49, v50, *(a1 + 32), v23);
      }

      sub_19B421798();
      v51 = mach_absolute_time();
      sub_19B41E070(v51);
      kdebug_trace();
      if (v6)
      {
        objc_msgSend_sendWakeTriggerAnalytics_withDisplay_(*(a1 + 32), v52, v36, *(*(a1 + 32) + 104) <= 0.0);
      }

      v53 = *(a1 + 32);
      if (*(v53 + 120) == 1)
      {
        v79[0] = @"mode";
        v80[0] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v52, v6);
        v79[1] = @"event";
        v80[1] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v54, v3);
        v79[2] = @"display";
        if (*(*(a1 + 32) + 104) <= 0.0)
        {
          v56 = &unk_1F0E6A4C8;
        }

        else
        {
          v56 = &unk_1F0E6A4B0;
        }

        v80[2] = v56;
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v55, v80, v79, 3);
        PLLogTimeSensitiveRegisteredEvent();
        v53 = *(a1 + 32);
      }

      *(v53 + 88) = v26;
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v57 = qword_1ED71C798;
      if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(a1 + 32);
        v59 = objc_opt_class();
        v61 = objc_msgSend_stringForGestureState_(v59, v60, v23);
        v62 = sub_19B41E070(**(a1 + 56));
        v63 = mach_absolute_time();
        v64 = sub_19B41E070(v63);
        *buf = 138543874;
        *v90 = v61;
        *&v90[8] = 2050;
        *&v90[10] = v62;
        *&v90[18] = 2050;
        *&v90[20] = v64;
        _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_DEFAULT, "Gesture state notified,%{public}@,eventTimestamp,%{public}f,currentTime,%{public}f", buf, 0x20u);
      }

      v65 = sub_19B420058();
      if (*(v65 + 160) > 1 || *(v65 + 164) > 1 || *(v65 + 168) > 1 || *(v65 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C790 != -1)
        {
          dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
        }

        v68 = *(a1 + 32);
        v69 = objc_opt_class();
        v71 = objc_msgSend_stringForGestureState_(v69, v70, v23);
        v72 = sub_19B41E070(**(a1 + 56));
        v73 = mach_absolute_time();
        v74 = sub_19B41E070(v73);
        v81 = 138543874;
        *v82 = v71;
        *&v82[8] = 2050;
        *&v82[10] = v72;
        *&v82[18] = 2050;
        *&v82[20] = v74;
        v75 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v75);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      v76 = *(a1 + 32);
      if (*(v76 + 122) == 1 && *(v76 + 104) < 0.0 && v23 == 1)
      {
        objc_msgSend_playAlert(v76, v66, v67);
        v76 = *(a1 + 32);
      }

      *(v76 + 48) = v23;
      goto LABEL_91;
    }

    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v43 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v43, OS_LOG_TYPE_DEBUG, "Skipping nightstand mode gestures for non-nightstand clients", buf, 2u);
    }

    v44 = sub_19B420058();
    if (*(v44 + 160) > 1 || *(v44 + 164) > 1 || *(v44 + 168) > 1 || *(v44 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_94;
    }
  }

  else
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v28 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Skipping redundant gesture update", buf, 2u);
    }

    v29 = sub_19B420058();
    if (*(v29 + 160) > 1 || *(v29 + 164) > 1 || *(v29 + 168) > 1 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 == -1)
      {
LABEL_31:
        LOWORD(v81) = 0;
        v30 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager onWakeUpdated:]_block_invoke", "CoreLocation: %s\n", v30);
LABEL_32:
        if (v30 != buf)
        {
          free(v30);
        }

        goto LABEL_91;
      }

LABEL_94:
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      goto LABEL_31;
    }
  }

LABEL_91:
  v77 = *MEMORY[0x1E69E9840];
}

id sub_19B622DF8(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    *(*(a1 + 32) + 56) = 1;
  }

  return result;
}

void *sub_19B622EE8(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result && *(a1 + 48) == -536870352 && *(*(a1 + 32) + 56) == 2)
  {
    result = objc_msgSend_logWakeLatency(result, v3, v4);
    *(*(a1 + 32) + 56) = 1;
  }

  return result;
}

void sub_19B62303C(NSObject *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (qword_1ED71C790 != -1)
  {
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v2 = qword_1ED71C798;
  if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_INFO, "Attempt re-enabling detected state recognition", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) <= 1 && *(v3 + 164) <= 1 && *(v3 + 168) <= 1 && !*(v3 + 152))
  {
    goto LABEL_12;
  }

  bzero(buf, 0x65CuLL);
  if (qword_1ED71C790 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMWakeGestureManager(BiometricKit) reenableDetectedStateRecognition]_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }

LABEL_12:
    if ((atomic_load_explicit(&qword_1ED71CB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71CB18))
    {
      qword_1ED71CB10 = &unk_1F0E6A1A0;
      __cxa_guard_release(&qword_1ED71CB18);
    }

    if (objc_msgSend_containsObject_(qword_1ED71CB10, v4, *(a1[4].isa + 14)))
    {
      break;
    }

    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v11 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "[intendedClientList containsObject:fProcessName]";
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }
    }

    v12 = qword_1ED71C798;
    if (os_signpost_enabled(qword_1ED71C798))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "[intendedClientList containsObject:fProcessName]";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "This is not the SPI you are looking for", "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }
    }

    a1 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "[intendedClientList containsObject:fProcessName]";
      _os_log_impl(&dword_19B41C000, a1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:This is not the SPI you are looking for, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
LABEL_40:
    dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
  }

  v6 = sub_19B7915DC();
  *buf = 1797;
  if (!sub_19B7931A8(v6, buf, 4))
  {
    if (qword_1ED71C790 != -1)
    {
      dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
    }

    v7 = qword_1ED71C798;
    if (os_log_type_enabled(qword_1ED71C798, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Unable to send reenable-detected hint", buf, 2u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C790 != -1)
      {
        dispatch_once(&qword_1ED71C790, &unk_1F0E3A6B8);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMWakeGestureManager(BiometricKit) reenableDetectedStateRecognition]_block_invoke", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6235B8()
{
  result = os_log_create("com.apple.locationd.Motion", "WakeGesture");
  qword_1ED71C798 = result;
  return result;
}

void sub_19B62362C(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B623668(uint64_t a1)
{
  sub_19B42A51C(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6238E8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      (*(*a2 + 32))(a2, a1);
    }

    else if (v2 == 255)
    {
      return 0;
    }
  }

  else if (v2 == 1)
  {
    (*(*a2 + 16))(a2, a1);
  }

  else if (v2 == 2)
  {
    (*(*a2 + 24))(a2, a1);
  }

  return 1;
}

uint64_t sub_19B6241D0(uint64_t a1, uint64_t a2, _DWORD *a3, char a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 4) = *a3;
  *(a1 + 8) = a4;
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E28660);
  }

  v6 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v12 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "motion default ignored,'%{public}s'.", buf, 0xCu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E28660);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLMotionDefaultsWrite<int>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = int]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

CMOnBodyStatusManager *sub_19B62491C()
{
  result = objc_alloc_init(CMOnBodyStatusManager);
  qword_1ED71CB20 = result;
  return result;
}

uint64_t sub_19B6249BC(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_startOnBodyStatusDetectionPrivateToQueue_withParameters_handler_, a1[5]);
}

void sub_19B624AD4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!v3[1])
  {
    objc_msgSend_connect(v3, a2, a3);
  }

  operator new();
}

void sub_19B624D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B624D8C(void *a1, CLConnectionMessage **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v4, v8, v5, v6, v7, 0);
  if (!*a2 || (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v9)) == 0)
  {
    v16 = a1[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6250E0;
    block[3] = &unk_1E7532B40;
    block[4] = a1[6];
    v18 = block;
    goto LABEL_6;
  }

  v12 = DictionaryOfClasses;
  v13 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v11, @"CMErrorMessage");
  v15 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CMOnBodyStatusData");
  if (v13)
  {
    *(a1[5] + 16) = 0;
    v16 = a1[4];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B625144;
    v26[3] = &unk_1E7532B90;
    v17 = a1[6];
    v26[4] = v13;
    v26[5] = v17;
    v18 = v26;
LABEL_6:
    dispatch_async(v16, v18);
    goto LABEL_7;
  }

  if (v15)
  {
    v20 = a1[4];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = sub_19B6251BC;
    v25[3] = &unk_1E7532B90;
    v21 = a1[6];
    v25[4] = v15;
    v25[5] = v21;
    v18 = v25;
    v16 = v20;
    goto LABEL_6;
  }

  if (qword_1EAFE2A48 != -1)
  {
    dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
  }

  v22 = qword_1EAFE2A50;
  if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Unable to parse message when starting updates to queue!", buf, 2u);
  }

  v23 = sub_19B420058();
  if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A48 != -1)
    {
      dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
    }

    v24 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOnBodyStatusManager connect]_block_invoke", "CoreLocation: %s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

LABEL_7:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6250E0(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], a2, @"CMErrorDomain", 103, 0);
  v4 = *(v2 + 16);

  return v4(v2, 0, v3);
}

uint64_t sub_19B625144(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6251D4(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2A48 != -1)
  {
    dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
  }

  v3 = qword_1EAFE2A50;
  if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A48 != -1)
    {
      dispatch_once(&qword_1EAFE2A48, &unk_1F0E3A6D8);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOnBodyStatusManager connect]_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B625710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_19B625894()
{
  result = os_log_create("com.apple.locationd.Motion", "OnBody");
  qword_1EAFE2A50 = result;
  return result;
}

void *sub_19B625938(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B625994((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B625994(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B6259EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v16, v15);
  _Unwind_Resume(a1);
}

void sub_19B625D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_19B41FFEC(a10);
  }

  v12 = *(v10 - 80);
  if (v12)
  {
    sub_19B41FFEC(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B625DD4(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v7 = objc_msgSend_setWithObjects_(v3, v6, v4, v5, 0);
  if (*a2 && (DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7)) != 0 && (v10 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v9, @"CMErrorMessage")) != 0)
  {
    v13 = objc_msgSend_intValue(v10, v11, v12);
  }

  else
  {
    v13 = 103;
  }

  if (qword_1EAFE29D8 != -1)
  {
    dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
  }

  v14 = qword_1EAFE29E0;
  if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v19 = v13;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v16 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B625FFC(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v8 = objc_msgSend_setWithObjects_(v4, v7, v5, v6, 0);
  result = *a2;
  if (*a2)
  {
    result = CLConnectionMessage::getDictionaryOfClasses(result, v8);
    if (result)
    {
      v11 = objc_msgSend_objectForKeyedSubscript_(result, v10, @"CMOdometerGpsAvailability");
      v16 = objc_msgSend_BOOLValue(v11, v12, v13);
      result = *(a1 + 32);
      v17 = v16;
      if (*(result + 40) != v16)
      {
        v18 = objc_msgSend_odometer(result, v14, v15);
        objc_msgSend_delegate(v18, v19, v20);
        v23 = objc_opt_respondsToSelector();
        result = *(a1 + 32);
        if (v23)
        {
          v24 = objc_msgSend_odometer(result, v21, v22);
          v27 = objc_msgSend_delegate(v24, v25, v26);
          v30 = objc_msgSend_odometer(*(a1 + 32), v28, v29);
          objc_msgSend_odometer_didUpdateGpsAvailability_(v27, v31, v30, v17);
          result = *(a1 + 32);
        }
      }

      *(result + 40) = v17;
    }
  }

  return result;
}

void sub_19B6260F0(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  ExecutablePathFromPid = objc_msgSend_getExecutablePathFromPid_(CMMotionUtils, v3, v2);
  if (ExecutablePathFromPid)
  {
    v5 = ExecutablePathFromPid;
    if (qword_1EAFE29D8 != -1)
    {
      dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
    }

    v6 = qword_1EAFE29E0;
    if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_INFO))
    {
      v7 = getpid();
      v8 = *(a1 + 32);
      *buf = 138412802;
      v14 = v5;
      v15 = 1024;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_INFO, "CMOdometer client connection interrupt, %@, %d, %p", buf, 0x1Cu);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29D8 != -1)
      {
        dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
      }

      getpid();
      v12 = *(a1 + 32);
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometerProxy _startDaemonConnection]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B62649C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, std::__shared_weak_count *a19, int a20, __int16 a21, char a22, char a23)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6264E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    v6 = objc_msgSend_copy(v4, a2, a3);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v12 = objc_msgSend_setWithObjects_(v7, v11, v8, v9, v10, 0);
    if (!*a2)
    {
      goto LABEL_7;
    }

    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v12);
    if (!DictionaryOfClasses)
    {
      goto LABEL_7;
    }

    v15 = DictionaryOfClasses;
    v16 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v14, @"CMOdometerDataObject");
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, @"CMErrorMessage");
    if (v18)
    {
      v21 = *(*(a1 + 32) + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B6268BC;
      block[3] = &unk_1E7532B90;
      block[4] = v18;
      block[5] = v6;
      v22 = block;
      v23 = v21;
    }

    else
    {
      if (!v16)
      {
        if (qword_1EAFE29D8 != -1)
        {
          dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
        }

        v35 = qword_1EAFE29E0;
        if (os_log_type_enabled(qword_1EAFE29E0, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageOdometerUpdate message!", buf, 2u);
        }

        v36 = sub_19B420058();
        if ((*(v36 + 160) & 0x80000000) == 0 || (*(v36 + 164) & 0x80000000) == 0 || (*(v36 + 168) & 0x80000000) == 0 || *(v36 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE29D8 != -1)
          {
            dispatch_once(&qword_1EAFE29D8, &unk_1F0E28A60);
          }

          v37 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startOdometerUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }
        }

        goto LABEL_7;
      }

      objc_msgSend_totalDistance(*(a1 + 32), v19, v20);
      v27 = MEMORY[0x1E695DF00];
      if (v28 < 0.0)
      {
        objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v25, v26);
        objc_msgSend_setStartDate_(*(a1 + 32), v29, v30);
        objc_msgSend_setTotalDistance_(*(a1 + 32), v31, v32, 0.0);
        objc_msgSend_setAverageSpeed_(*(a1 + 32), v33, v34, 0.0);
        goto LABEL_7;
      }

      objc_msgSend_startDate(*(a1 + 32), v25, v26);
      v40 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v27, v38, v39);
      v41 = *(a1 + 32);
      v44 = objc_msgSend_distance(v16, v42, v43);
      objc_msgSend_doubleValue(v44, v45, v46);
      v48 = v47;
      objc_msgSend_totalDistance(v41, v49, v50);
      objc_msgSend_setTotalDistance_(v41, v52, v53, v48 + v51);
      v56 = objc_msgSend_endDate(v16, v54, v55);
      objc_msgSend_timeIntervalSinceDate_(v56, v57, v40);
      v61 = v60;
      v62 = 0.0;
      if (v61 > 0.1)
      {
        objc_msgSend_totalDistance(*(a1 + 32), v58, v59, 0.0);
        v62 = v63 / v61;
      }

      objc_msgSend_setAverageSpeed_(*(a1 + 32), v58, v59, v62);
      v64 = *(a1 + 32);
      v23 = *(v64 + 16);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_19B626950;
      v65[3] = &unk_1E7533678;
      v65[4] = v16;
      v65[5] = v64;
      v65[6] = v40;
      v65[7] = v6;
      v22 = v65;
    }

    dispatch_async(v23, v22);
LABEL_7:
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_19B6268BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v7 = objc_msgSend_integerValue(*(a1 + 32), v5, v6);
  v9 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v8, @"CMErrorDomain", v7, 0);
  (*(v4 + 16))(v4, 0, v9);

  objc_autoreleasePoolPop(v2);
}

void sub_19B626950(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v5 = objc_msgSend_copy(*(a1 + 32), v3, v4);
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_averageSpeed(*(a1 + 40), v7, v8);
  v11 = objc_msgSend_numberWithDouble_(v6, v9, v10);
  objc_msgSend_setAverageSpeed_(v5, v12, v11);
  v13 = MEMORY[0x1E696AD98];
  objc_msgSend_totalDistance(*(a1 + 40), v14, v15);
  v18 = objc_msgSend_numberWithDouble_(v13, v16, v17);
  objc_msgSend_setDistance_(v5, v19, v18);
  objc_msgSend_updateStartDate_(v5, v20, *(a1 + 48));
  (*(*(a1 + 56) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_19B626B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (v24)
  {
    sub_19B41FFEC(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B626E8C(uint64_t a1, CLConnectionMessage **a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v10 = objc_msgSend_setWithObjects_(v4, v9, v5, v6, v7, v8, 0);
  if (*a2)
  {
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v10);
    if (DictionaryOfClasses)
    {
      v13 = DictionaryOfClasses;
      v14 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v12, @"CMCyclingWorkoutDistanceDataArray");
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v15, @"CMErrorMessage");
      if (v16)
      {
        v19 = *(*(a1 + 32) + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B627324;
        block[3] = &unk_1E7532B90;
        v20 = *(a1 + 40);
        block[4] = v16;
        block[5] = v20;
        v21 = block;
        v22 = v19;
LABEL_5:
        dispatch_async(v22, v21);
        goto LABEL_6;
      }

      if (v14 && objc_msgSend_count(v14, v17, v18))
      {
        objc_msgSend_totalCyclingDistance(*(a1 + 32), v24, v25);
        if (v28 < 0.0)
        {
          Object = objc_msgSend_firstObject(v14, v26, v27);
          v32 = objc_msgSend_endDate(Object, v30, v31);
          objc_msgSend_timeIntervalSinceReferenceDate(v32, v33, v34);
          objc_msgSend_setCyclingStartDate_(*(a1 + 32), v35, v36);
          objc_msgSend_setTotalCyclingDistance_(*(a1 + 32), v37, v38, 0.0);
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v26, &v88, v94, 16);
        if (v39)
        {
          v42 = v39;
          v43 = *v89;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v89 != v43)
              {
                objc_enumerationMutation(v14);
              }

              v45 = *(*(&v88 + 1) + 8 * i);
              v46 = MEMORY[0x1E695DF00];
              objc_msgSend_cyclingStartDate(*(a1 + 32), v40, v41);
              v49 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v46, v47, v48);
              v50 = *(a1 + 32);
              v53 = objc_msgSend_distance(v45, v51, v52);
              objc_msgSend_doubleValue(v53, v54, v55);
              v57 = v56;
              objc_msgSend_totalCyclingDistance(v50, v58, v59);
              objc_msgSend_setTotalCyclingDistance_(v50, v61, v62, v57 + v60);
              v65 = objc_msgSend_endDate(v45, v63, v64);
              objc_msgSend_timeIntervalSinceDate_(v65, v66, v49);
              v70 = v69;
              v71 = 0.0;
              if (v70 > 0.1)
              {
                objc_msgSend_totalCyclingDistance(*(a1 + 32), v67, v68, 0.0);
                v71 = v72 / v70;
              }

              v73 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v67, v68, v71);
              objc_msgSend_setAverageSpeed_(v45, v74, v73);
              v75 = MEMORY[0x1E696AD98];
              objc_msgSend_totalCyclingDistance(*(a1 + 32), v76, v77);
              v80 = objc_msgSend_numberWithDouble_(v75, v78, v79);
              objc_msgSend_setDistance_(v45, v81, v80);
              objc_msgSend_updateStartDate_(v45, v82, v49);
            }

            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v40, &v88, v94, 16);
          }

          while (v42);
        }

        v22 = *(*(a1 + 32) + 16);
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = sub_19B62739C;
        v87[3] = &unk_1E7532B90;
        v83 = *(a1 + 40);
        v87[4] = v14;
        v87[5] = v83;
        v21 = v87;
        goto LABEL_5;
      }

      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28A00);
      }

      v84 = off_1ED71C828;
      if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v84, OS_LOG_TYPE_FAULT, "Unable to parse kCLConnectionMessageCyclingWorkoutDistanceUpdate message!", buf, 2u);
      }

      v85 = sub_19B420058();
      if ((*(v85 + 160) & 0x80000000) == 0 || (*(v85 + 164) & 0x80000000) == 0 || (*(v85 + 168) & 0x80000000) == 0 || *(v85 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C820 != -1)
        {
          dispatch_once(&qword_1ED71C820, &unk_1F0E28A00);
        }

        v86 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometerProxy _startCyclingWorkoutDistanceUpdatesWithHandler:]_block_invoke", "CoreLocation: %s\n", v86);
        if (v86 != buf)
        {
          free(v86);
        }
      }
    }
  }

LABEL_6:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B627324(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696ABC0];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_integerValue(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_errorWithDomain_code_userInfo_(v3, v6, @"CMErrorDomain", v5, 0);
  v8 = *(v4 + 16);

  return v8(v4, 0, v7);
}

void sub_19B6274BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    sub_19B41FFEC(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B627ADC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startOdometerUpdatesWithHandler_, v5);
}

uint64_t sub_19B627B98(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopOdometerUpdates(v3, v4, v5);
}

uint64_t sub_19B627CA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__startCyclingWorkoutDistanceUpdatesWithHandler_, v5);
}

uint64_t sub_19B627D64(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_odometerProxy(*(a1 + 32), a2, a3);

  return objc_msgSend__stopCyclingWorkoutDistanceUpdates(v3, v4, v5);
}

os_log_t sub_19B627DB4()
{
  result = os_log_create("com.apple.locationd.Motion", "Odometer");
  qword_1EAFE29E0 = result;
  return result;
}

void *sub_19B627E58(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F0E2AD08;
  sub_19B627EB4((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_19B627EB4(uint64_t a1, char *a2, void *a3)
{
  sub_19B428B50(__p, a2);
  MEMORY[0x19EAE71F0](a1, __p, *a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_19B627F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B627FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6290B8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 255:
      return 0;
    case 2:
      (*(*a2 + 24))(a2, a1);
      break;
    case 1:
      (*(*a2 + 16))(a2, a1);
      break;
  }

  return 1;
}

void sub_19B62977C(float a1, float a2, float a3, float a4)
{
  v5 = a1;
  v21 = *MEMORY[0x1E69E9840];
  if (a2 <= 5.0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 5.0;
  }

  if (a2 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = 25.0;
  if (a1 <= 25.0)
  {
    v7 = a1;
  }

  if (a1 < 0.0)
  {
    v7 = 0.0;
  }

  if (a4 != 0.0)
  {
    a2 = v6;
    v5 = v7;
  }

  if (a3 > 0.0)
  {
    v8 = v5 * 0.194;
    v9 = a2 * 7.884;
    v10 = pow(v5, 3.0) * 0.167999998 / a3;
    if (qword_1EAFE2808 != -1)
    {
      dispatch_once(&qword_1EAFE2808, &unk_1F0E29240);
    }

    v11 = qword_1EAFE2830;
    if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_DEBUG, "Cycle, RollingResistance,%f,gravity,%f,wind,%f", buf, 0x20u);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E29240);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "float CLCalorieWorkRateRegression::computeCyclingMets(float, float, float, float)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B629A20()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t sub_19B629A50(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = 0x1000000000;
  if (qword_1ED71C800 != -1)
  {
    dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
  }

  v4 = off_1ED71C808;
  if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v13 = a2;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[CMResampleAccessoryDeviceMotion] Constructed CMResampleAccessoryDeviceMotion. Set output sample period to: %.4f s", buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CMResampleAccessoryDeviceMotion::CMResampleAccessoryDeviceMotion(const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (a2 < 0.005 || a2 > 0.05)
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
    }

    v7 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion] Invalid output sample period: %.4f s", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "CMResampleAccessoryDeviceMotion::CMResampleAccessoryDeviceMotion(const CLMotionTypeTimestamp)", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19B629DA8(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  result = 0;
  v131 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  if (*a1 >= 0.005 && v5 <= 0.05)
  {
    v7 = *(a1 + 10);
    if (*(a1 + 10))
    {
      v8 = *(a2 + 48);
      v9 = a1 + 16;
      v10 = *(a1 + 8);
      v11 = v7 + v10 - 1;
      v12 = *(a1 + 12);
      if (v11 >= v12)
      {
        v13 = *(a1 + 12);
      }

      else
      {
        v13 = 0;
      }

      if (v8 <= *(v9 + ((v11 - v13) << 6) + 48))
      {
        if (qword_1ED71C800 != -1)
        {
          dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
        }

        v25 = off_1ED71C808;
        if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
        {
          v26 = *(a2 + 48);
          v27 = *(a1 + 8);
          v28 = *(v9 + (v27 << 6) + 48);
          v29 = v27 + *(a1 + 10) - 1;
          v30 = *(a1 + 12);
          if (v29 < v30)
          {
            v30 = 0;
          }

          v31 = *(v9 + ((v29 - v30) << 6) + 48);
          *buf = 134218496;
          *&buf[4] = v26;
          *&buf[12] = 2048;
          *&buf[14] = v28;
          *&buf[22] = 2048;
          *&buf[24] = v31;
          _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Invalid backwards or repeated timestamp, rejecting input. Input timestamp: %.4f s, buffer front: %.4f s, buffer back: %.4f s", buf, 0x20u);
        }

        v32 = sub_19B420058();
        if ((*(v32 + 160) & 0x80000000) == 0 || (*(v32 + 164) & 0x80000000) == 0 || (*(v32 + 168) & 0x80000000) == 0 || *(v32 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
          }

          v33 = *(a2 + 48);
          v34 = *(a1 + 8);
          v35 = *(v9 + (v34 << 6) + 48);
          v36 = v34 + *(a1 + 10) - 1;
          v37 = *(a1 + 12);
          if (v36 < v37)
          {
            v37 = 0;
          }

          v38 = *(v9 + ((v36 - v37) << 6) + 48);
          *v126 = 134218496;
          *&v126[4] = v33;
          *&v126[12] = 2048;
          *&v126[14] = v35;
          v127 = 2048;
          v128 = v38;
          v39 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }
      }

      else
      {
        v14 = *(v9 + (v10 << 6) + 48);
        v15 = v8 - v14;
        if (v8 - v14 > v5 + 0.1)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
          }

          v16 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEBUG))
          {
            v17 = *(v9 + (*(a1 + 8) << 6) + 48);
            v18 = *(a2 + 48);
            *buf = 134218496;
            *&buf[4] = v15;
            *&buf[12] = 2048;
            *&buf[14] = v17;
            *&buf[22] = 2048;
            *&buf[24] = v18;
            _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "[CMResampleAccessoryDeviceMotion] Sample too far ahead by: %.6f s, last timestamp: %.6f s, this timestamp: %.6f s", buf, 0x20u);
          }

          v19 = sub_19B420058();
          if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
            }

            v20 = *(v9 + (*(a1 + 8) << 6) + 48);
            v21 = *(a2 + 48);
            *v126 = 134218496;
            *&v126[4] = v15;
            *&v126[12] = 2048;
            *&v126[14] = v20;
            v127 = 2048;
            v128 = v21;
            v22 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v22);
            if (v22 != buf)
            {
              free(v22);
            }
          }

          *(a1 + 8) = 0;
          goto LABEL_22;
        }

        if (v15 >= v5)
        {
          v56 = v5 + v14;
          if (v5 + v14 >= v8)
          {
            goto LABEL_24;
          }

          v57 = 1;
          while (1)
          {
            v58 = *(a1 + 8) + *(a1 + 10) - 1;
            v59 = *(a1 + 12);
            if (v58 < v59)
            {
              v59 = 0;
            }

            v60 = v9 + ((v58 - v59) << 6);
            v61 = *(v60 + 48);
            if (v56 - v61 < 0.001)
            {
              break;
            }

            v62 = (v56 - v61) / (v8 - v61);
            a3.i64[0] = 1.0;
            if (v62 < 0.0 || v62 > 1.0)
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
              }

              v111 = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, v111, OS_LOG_TYPE_FAULT, "Assertion failed: interpolationRatio >= 0 && interpolationRatio <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 177,Invalid interpolationRatio..", buf, 2u);
              }

              v112 = sub_19B420058();
              if ((*(v112 + 160) & 0x80000000) == 0 || (*(v112 + 164) & 0x80000000) == 0 || (*(v112 + 168) & 0x80000000) == 0 || *(v112 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
                }

                *v126 = 0;
                v113 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CMResampleAccessoryDeviceMotion::interpolate(const InputData &)", "CoreLocation: %s\n", v113);
                if (v113 != buf)
                {
                  free(v113);
                }
              }
            }

            v64 = *(a1 + 8) + *(a1 + 10) - 1;
            v65 = *(a1 + 12);
            if (v64 < v65)
            {
              v65 = 0;
            }

            v66 = v9 + ((v64 - v65) << 6);
            v67 = *(a2 + 36);
            v68 = *(v66 + 36);
            v69 = v62;
            v70 = *(a2 + 28);
            v71 = *(v66 + 28);
            v72 = v69 < 0.0 || v69 > 1.0;
            v123 = v62;
            if (v72)
            {
              if (qword_1ED71C820 != -1)
              {
                dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
              }

              log = off_1ED71C828;
              if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_19B41C000, log, OS_LOG_TYPE_FAULT, "Assertion failed: t >= 0 && t <= 1, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/Accessory/CMResampleAccessoryDeviceMotion.cpp, line 15,Invalid time t for slerp.", buf, 2u);
              }

              v114 = sub_19B420058();
              v69 = v62;
              if ((*(v114 + 160) & 0x80000000) == 0 || (*(v114 + 164) & 0x80000000) == 0 || (*(v114 + 168) & 0x80000000) == 0 || *(v114 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1ED71C820 != -1)
                {
                  dispatch_once(&qword_1ED71C820, &unk_1F0E28840);
                }

                *v126 = 0;
                loga = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "CMOQuaternion (anonymous namespace)::slerp(const CMOQuaternion &, const CMOQuaternion &, float)", "CoreLocation: %s\n", loga);
                if (loga != buf)
                {
                  free(loga);
                }

                v69 = v62;
              }
            }

            a3.f32[0] = (v67 - v68) * v69;
            v73 = vadd_f32(v71, vmul_n_f32(vsub_f32(v70, v71), v69));
            v74 = v68 + a3.f32[0];
            v75.f32[0] = sub_19B66BFF4(v66, a3);
            *v126 = v75.i32[0];
            *&v126[4] = v76;
            *&v126[8] = v77;
            *&v126[12] = v78;
            *buf = sub_19B66BF70(a2, v126, v75);
            *&buf[4] = v79;
            *&buf[8] = v80;
            *&buf[12] = v81;
            v82 = sub_19B66C31C(buf);
            v85 = 0;
            *v125 = v82;
            *&v125[1] = v83;
            *&v125[2] = v84;
            v86 = 0.0;
            do
            {
              v86 = v86 + (*&v125[v85] * *&v125[v85]);
              ++v85;
            }

            while (v85 != 3);
            if (sqrtf(v86) > 3.14159265)
            {
              *buf = sub_19B66C038(buf);
              *&buf[4] = v87;
              *&buf[8] = v88;
              *&buf[12] = v89;
              v82 = sub_19B66C31C(buf);
            }

            v90 = 0.0;
            if (v123 >= 0.0)
            {
              v90 = v62;
            }

            if (v90 > 1.0)
            {
              v90 = 1.0;
            }

            v124[0] = v90 * v82;
            v124[1] = v90 * v83;
            v124[2] = v90 * v84;
            *v91.i64 = sub_19B66C264(v126, v124);
            *v126 = sub_19B66BF70(v126, v66, v91);
            *&v126[4] = v92;
            *&v126[8] = v93;
            *&v126[12] = v94;
            v95 = *(a1 + 8) + *(a1 + 10) - 1;
            v96 = *(a1 + 12);
            if (v95 < v96)
            {
              v96 = 0;
            }

            v97 = v9 + ((v95 - v96) << 6);
            v98 = sub_19B447000(v97);
            v119 = v99;
            logb = v98;
            v101 = v100 + *(v97 + 24);
            v102 = sub_19B447000(a2);
            v117 = v103;
            v118 = v102;
            v105 = v101 + (((v104 + *(a2 + 24)) - v101) * v123);
            v106.f32[0] = sub_19B447000(v126);
            *&v107 = *(v97 + 48) + (*(a2 + 48) - *(v97 + 48)) * v62;
            *buf = *v126;
            v108 = vadd_f32(*(v97 + 16), __PAIR64__(v119, LODWORD(logb)));
            v106.i32[1] = v109;
            *&buf[16] = vsub_f32(vadd_f32(v108, vmul_n_f32(vsub_f32(vadd_f32(*(a2 + 16), __PAIR64__(v117, LODWORD(v118))), v108), v123)), v106);
            *&buf[24] = v105 - v110;
            *&buf[28] = v73;
            *&buf[36] = v74;
            buf[40] = *(a2 + 40);
            *&buf[44] = *(a2 + 44);
            v130 = v107;
            if (v57)
            {
              *(a1 + 8) = 0;
            }

            sub_19B62AA10((a1 + 8), buf);
            v57 = 0;
            v56 = v56 + *a1;
            result = 1;
            if (v56 >= v8)
            {
              goto LABEL_59;
            }
          }

          v115 = *(v60 + 16);
          *buf = *v60;
          *&buf[16] = v115;
          v116 = *(v60 + 48);
          *&buf[32] = *(v60 + 32);
          v130 = v116;
          *(a1 + 8) = 0;
          v23 = (a1 + 8);
          v24 = buf;
LABEL_23:
          sub_19B62AA10(v23, v24);
LABEL_24:
          result = 1;
          goto LABEL_59;
        }

        if (v12 == v7)
        {
          if (qword_1ED71C800 != -1)
          {
            dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
          }

          v40 = off_1ED71C808;
          if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_ERROR))
          {
            v41 = *(a2 + 48);
            v42 = *(a1 + 8);
            v43 = *(v9 + (v42 << 6) + 48);
            v44 = v42 + *(a1 + 10) - 1;
            v45 = *(a1 + 12);
            if (v44 < v45)
            {
              v45 = 0;
            }

            v46 = *(v9 + ((v44 - v45) << 6) + 48);
            *buf = 134218496;
            *&buf[4] = v41;
            *&buf[12] = 2048;
            *&buf[14] = v43;
            *&buf[22] = 2048;
            *&buf[24] = v46;
            _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[CMResampleAccessoryDeviceMotion]:[feedDMData] Too many consecutive over-closely spaced sampled received. This suggests an input sampling rate anomaly. Input timestamp: %.4f s, First / last timestamp in the buffer : %.4f s / %.4f s . The resampling will still continue but in a non-ideal rate.", buf, 0x20u);
          }

          v47 = sub_19B420058();
          if ((*(v47 + 160) & 0x80000000) == 0 || (*(v47 + 164) & 0x80000000) == 0 || (*(v47 + 168) & 0x80000000) == 0 || *(v47 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C800 != -1)
            {
              dispatch_once(&qword_1ED71C800, &unk_1F0E29260);
            }

            v48 = *(a2 + 48);
            v49 = *(a1 + 8);
            v50 = *(v9 + (v49 << 6) + 48);
            v51 = v49 + *(a1 + 10) - 1;
            v52 = *(a1 + 12);
            if (v51 < v52)
            {
              v52 = 0;
            }

            v53 = *(v9 + ((v51 - v52) << 6) + 48);
            *v126 = 134218496;
            *&v126[4] = v48;
            *&v126[12] = 2048;
            *&v126[14] = v50;
            v127 = 2048;
            v128 = v53;
            v54 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CMResampleAccessoryDeviceMotion::feedDMData(const InputData &)", "CoreLocation: %s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }
        }

        sub_19B62AA10((a1 + 8), a2);
      }

      result = 0;
      goto LABEL_59;
    }

LABEL_22:
    v23 = (a1 + 8);
    v24 = a2;
    goto LABEL_23;
  }

LABEL_59:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *sub_19B62AA10(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[32 * (v3 - v2)];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  *(v4 + 28) = a2[3];
  *(v4 + 4) = v6;
  *(v4 + 20) = v7;
  *(v4 + 12) = v5;
  v8 = result[1];
  v9 = *(result + 1);
  if (v9 <= v8)
  {
    v10 = *result + 1;
    if (v10 < v9)
    {
      LOWORD(v9) = 0;
    }

    *result = v10 - v9;
  }

  else
  {
    result[1] = v8 + 1;
  }

  return result;
}

uint64_t sub_19B62AAD4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 472);
  if (v2)
  {
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *result;
    return v2(&v3, *(a2 + 480));
  }

  return result;
}

uint64_t sub_19B62AB20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 496);
  if (v2)
  {
    v3 = *(result + 8);
    v4 = *(result + 16);
    v5 = *result;
    return v2(&v3, *(a2 + 504));
  }

  return result;
}

void sub_19B62AE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B62BB88(uint64_t a1, uint64_t a2)
{
  v4 = [CMAmbientPressureData alloc];
  LODWORD(v5) = *(a2 + 8);
  LODWORD(v6) = *(a2 + 12);
  v9 = objc_msgSend_initWithPressure_andTimestamp_(v4, v7, v8, v5, v6, *a2);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B62BC28;
  v13[3] = &unk_1E7532B90;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13[4] = v9;
  v13[5] = v11;
  objc_msgSend_addOperationWithBlock_(v10, v12, v13);
}

void sub_19B62BEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v45 - 73) < 0)
  {
    operator delete(v44[204]);
  }

  if (a44 < 0)
  {
    operator delete(*v44);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B62CD1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

uint64_t sub_19B62CDF4(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = objc_msgSend_attitudeReferenceFrame(v4, a2, a3);
  v6 = a1[5];
  v7 = a1[6];

  return MEMORY[0x1EEE66B58](v4, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v5);
}

uint64_t sub_19B62CF64(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, a1[7]);
}

uint64_t sub_19B62D6F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_attitudeReferenceFrame(v3, a2, a3);

  return MEMORY[0x1EEE66B58](v3, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v4);
}

uint64_t sub_19B62D7CC(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = objc_msgSend_attitudeReferenceFrame(v4, a2, a3);
  v6 = a1[5];
  v7 = a1[6];

  return MEMORY[0x1EEE66B58](v4, sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, v5);
}

uint64_t sub_19B62D93C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startDeviceMotionUpdatesPrivateUsingReferenceFrame_toQueue_withHandler_, a1[7]);
}

void sub_19B62DEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a19)
  {
    sub_19B41FFEC(a19);
  }

  if (a22)
  {
    sub_19B41FFEC(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19B62DF34(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a2 || ((v5 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CMErrorMessage"), v7 = objc_msgSend_objectForKeyedSubscript_(a2, v6, @"CMReturnCode"), !v5) ? (v8 = v7 == 0) : (v8 = 1), v8 || (objc_msgSend_BOOLValue(v7, a2, a3) & 1) == 0))
  {
    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
    objc_msgSend_removeItemAtURL_error_(v9, v10, *(a1 + 32), 0);
  }

  v11 = *(*(a1 + 40) + 16);

  return v11();
}

void sub_19B62E06C(uint64_t a1)
{
  v2 = sub_19B43D9C4();
  v5 = objc_msgSend_vendor(v2, v3, v4);
  v7 = objc_msgSend_proxyForService_(v5, v6, @"CLGyroCalibrationDatabase");
  if (objc_msgSend_syncgetWipeDatabase(v7, v8, v9))
  {
    *(*(a1 + 32) + 264) = 0x3F847AE147AE147BLL;
    *(*(a1 + 32) + 296) = 19;
    v10 = [CLDeviceMotionProperties alloc];
    v12 = objc_msgSend_initWithMode_(v10, v11, *(*(a1 + 32) + 296));
    if (!*(*(a1 + 32) + 256))
    {
      operator new();
    }

    v13 = sub_19B424AE0();
    v14 = *(a1 + 32);
    v15 = *(v14 + 256);
    v16 = *(v14 + 264);

    sub_19B439EF4(v13, v15, v16);
  }
}

uint64_t sub_19B62ECF8(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setAccelerometerDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62ED0C(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setAccelerometerDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62EF90(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setGyroDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62EFA4(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setGyroDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62F228(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setMagnetometerDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62F23C(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_setMagnetometerDataCallback_info_interval_, a1[5]);
}

uint64_t sub_19B62F730(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel_setDeviceMotionCallback_info_interval_fsync_, *(a1 + 40));
}

uint64_t sub_19B62F748(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel_setDeviceMotionCallback_info_interval_fsync_, *(a1 + 40));
}

void sub_19B62FACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a23);
  _Unwind_Resume(a1);
}

void *sub_19B62FB1C(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = result[1];
    v3 = v2[72];
    v2[72] = 0;
    if (v3)
    {
      sub_19B6B160C(v3);
      objc_msgSend_setFDisplayGravityHandler_(v2, v4, 0);
      v5 = sub_19B6B1560(v3);
      return MEMORY[0x19EAE76F0](v5, 0x1020C407EC6A881);
    }
  }

  return result;
}

void sub_19B62FB90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19B639A54(va, 0);
  _Unwind_Resume(a1);
}

void *sub_19B62FBBC(uint64_t a1)
{
  to[6] = *MEMORY[0x1E69E9840];
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = result;
    objc_copyWeak(to, (a1 + 32));
    objc_msgSend_updateDeviceMotionMode(v3, v4, v5);
    v6 = v3[1];
    operator new();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_19B62FD38(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void sub_19B62FD78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_19B42CAAC();
  sub_19B42C428(v2);
}

void sub_19B62FE00()
{
  v5 = *MEMORY[0x1E69E9840];
  IOHIDEventGetVendorDefinedData();
  if (qword_1EAFE2810 != -1)
  {
    dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
  }

  v0 = qword_1EAFE2838;
  if (os_log_type_enabled(qword_1EAFE2838, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v0, OS_LOG_TYPE_FAULT, "Empty payload", buf, 2u);
  }

  v1 = sub_19B420058();
  if ((*(v1 + 160) & 0x80000000) == 0 || (*(v1 + 164) & 0x80000000) == 0 || (*(v1 + 168) & 0x80000000) == 0 || *(v1 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2810 != -1)
    {
      dispatch_once(&qword_1EAFE2810, &unk_1F0E3A878);
    }

    v2 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "static void CLIspDataVisitor::onOscarData(void *, void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v2);
    if (v2 != buf)
    {
      free(v2);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_19B63019C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_19B42CAAC();
  sub_19B42C428(v2);
}

uint64_t sub_19B630224(uint64_t a1)
{
  *a1 = &unk_1F0E32D70;
  v2 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6302F8;
  v7[3] = &unk_1E75327D8;
  v7[4] = a1;
  sub_19B420C9C(v2, v7);

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_19B41FFEC(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_19B41FFEC(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  return a1;
}

void sub_19B6302F8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1ED71C830 != -1)
  {
    dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
  }

  v2 = off_1ED71C838;
  if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[CLIspDataVisitor] closing HidInterfaces", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E3A858);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CLIspDataVisitor::~CLIspDataVisitor()_block_invoke", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = v1[2];
  v1[1] = 0;
  v1[2] = 0;
  if (v5)
  {
    sub_19B41FFEC(v5);
  }

  v6 = v1[4];
  v1[3] = 0;
  v1[4] = 0;
  if (v6)
  {
    sub_19B41FFEC(v6);
  }

  v7 = v1[6];
  v1[5] = 0;
  v1[6] = 0;
  if (v7)
  {
    sub_19B41FFEC(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6304DC(uint64_t a1)
{
  sub_19B630224(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B630514(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, a2 + 1, 54);
  }

  return result;
}

uint64_t sub_19B630534()
{
  v2 = *MEMORY[0x1E69E9840];
  result = IOHIDEventGetVendorDefinedData();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B630710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v19, v20);
  _Unwind_Resume(a1);
}

void sub_19B630740(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 560) == 1)
  {
    v6[7] = v1;
    v6[8] = v2;
    *(v3 + 560) = 0;
    v5 = sub_19B420D84();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_19B6307D8;
    v6[3] = &unk_1E7532988;
    v6[4] = *(a1 + 32);
    sub_19B421668(v5, v6);
  }
}

uint64_t sub_19B6307D8(uint64_t result, const char *a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if ((*(v2 + 560) & 1) == 0)
  {
    *(v2 + 560) = 1;
    v8[0] = @"CMSidebandSensorFusionEnable";
    v3 = result + 32;
    v9[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, *(*(result + 32) + 560));
    v8[1] = @"CMSidebandSensorFusionLatency";
    v9[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v4, *(*v3 + 561));
    v8[2] = @"CMSidebandSensorFusionSnoop";
    v9[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v5, *(*v3 + 562));
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v9, v8, 3);
    sub_19B639BD4();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B630938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a11)
  {
    sub_19B41FFEC(a11);
  }

  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B631388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  (*(*v32 + 8))(v32);
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a32)
  {
    sub_19B41FFEC(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B631454(uint64_t a1, const char *a2)
{
  result = objc_msgSend_setSidebandSensorFusionEnable_measureLatency_withSnoopHandler_(*(a1 + 32), a2, *(a1 + 56), *(a1 + 57), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_19B631BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_19B631C4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 568))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v4 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEFAULT, "[MotionManager] CLIspDataVisitor reset", buf, 2u);
    }

    v5 = sub_19B420058();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v14 = 0;
      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMMotionManager setSidebandTimeSyncHandler:]_block_invoke", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = *(a1 + 32);
    operator new();
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B631EF0;
  v11[3] = &unk_1E7533870;
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  v8 = *(v12 + 568);
  v9 = *(v8 + 64);
  *(v8 + 64) = objc_msgSend_copy(v11, a2, a3);

  v10 = *MEMORY[0x1E69E9840];
}

intptr_t sub_19B631EF0(void *a1, uint64_t a2, uint64_t a3)
{
  *(*(a1[5] + 8) + 24) = a2;
  *(*(a1[6] + 8) + 24) = a3;
  return dispatch_semaphore_signal(*(a1[4] + 1088));
}

uint64_t sub_19B631F2C(uint64_t result, const char *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 568);
  if (v3)
  {
    v4 = result;
    v5 = *(v3 + 64);
    *(v3 + 64) = objc_msgSend_copy(*(result + 40), a2, a3);

    v6 = *(v4 + 32);
    result = *(v6 + 568);
    if (!*(result + 56) && !*(result + 64))
    {
      *(v6 + 568) = 0;
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_19B63207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B63218C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6321A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4[1];
  result = objc_msgSend_isDeviceMotionActive(v4, a2, a3);
  if ((result & 1) != 0 || *(v5 + 512))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *(v5 + 584) = *(a1 + 48);
  }

  return result;
}

void sub_19B632288(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isDeviceMotionActive(*(a1 + 32), a2, a3) & 1) != 0 || (v4 = *(a1 + 40), *(v4 + 512)))
  {
    if (qword_1ED71C800 != -1)
    {
      dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
    }

    v5 = off_1ED71C808;
    if (os_log_type_enabled(off_1ED71C808, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "DeviceMotion is active.  Cannot set power conservation mode", buf, 2u);
    }

    v6 = sub_19B420058();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C800 != -1)
      {
        dispatch_once(&qword_1ED71C800, &unk_1F0E3A778);
      }

      v7 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMMotionManager setPowerConservationMode:]_block_invoke", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  else
  {
    *(v4 + 588) = *(a1 + 48);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6327C8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2951, @"Invalid parameter not satisfying: %@", @"queue");
  }

  if (!*(a1 + 48))
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2952, @"Invalid parameter not satisfying: %@", @"handler");
  }

  result = objc_msgSend_isDeviceMotionAvailable(*(a1 + 40), a2, a3);
  if ((result & 1) == 0)
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    result = objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, *(a1 + 56), *(a1 + 40), @"CMMotionManager.mm", 2954, @"Device motion is unavailable on this platform");
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 624);
  if (v8 != *(a1 + 32))
  {

    result = *(a1 + 32);
    *(v7 + 624) = result;
  }

  v9 = *(v7 + 616);
  if (v9 != *(a1 + 48))
  {

    result = objc_msgSend_copy(*(a1 + 48), v10, v11);
    *(v7 + 616) = result;
  }

  return result;
}

void sub_19B632974(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 624);
  if (v2)
  {

    *(v1 + 624) = 0;
  }

  v3 = *(v1 + 616);
  if (v3)
  {

    *(v1 + 616) = 0;
  }
}

uint64_t sub_19B636864(void *a1)
{
  v1 = a1[7];
  v2 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startFactoryGyroUpdatesPrivateToQueue_atUpdateInterval_withHandler_residualHandler_, a1[5]);
}

uint64_t sub_19B636920(void *a1)
{
  v1 = a1[8];
  v2 = a1[6];
  v3 = a1[7];
  return MEMORY[0x1EEE66B58](a1[4], sel_startFactoryGyroUpdatesPrivateToQueue_atUpdateInterval_withHandler_residualHandler_, a1[5]);
}

uint64_t sub_19B636A5C(void *a1)
{
  v1 = a1[7];
  v2 = a1[8];
  v3 = a1[6];
  return MEMORY[0x1EEE66B58](a1[4], sel_startDeviceMotionUpdatesForKeyboardMotionPrivateToQueue_withGravityDeltaThreshold_notificationFrequency_andHandler_, a1[5]);
}

void sub_19B638564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a38)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void sub_19B638DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MEMORY[0x19EAE76F0](v5, 0x81C4018A671A6);
  sub_19B60DA60(va);
  _Unwind_Resume(a1);
}

double sub_19B639268(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*(&v39 + v12) * *(&v39 + v12));
    v12 += 4;
  }

  while (v12 != 12);
  if (sqrtf(v13) > 0.00000011921)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + (*(&v39 + v14) * *(&v39 + v14));
      v14 += 4;
    }

    while (v14 != 12);
    v16 = sqrtf(v15);
    v11 = v11 / v16;
    v10 = a2 / v16;
    v9 = a3 / v16;
  }

  v17 = 0;
  v39 = a4;
  v40 = a5;
  v18 = 0.0;
  v41 = a6;
  do
  {
    v18 = v18 + (*(&v39 + v17) * *(&v39 + v17));
    v17 += 4;
  }

  while (v17 != 12);
  if (sqrtf(v18) > 0.00000011921)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v39 + v19) * *(&v39 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20);
    v8 = a4 / v21;
    v7 = a5 / v21;
    v6 = a6 / v21;
  }

  v22 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
  v23 = 1.0;
  if (v22 < 1.0)
  {
    v23 = -1.0;
    if (v22 > -1.0)
    {
      v23 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
    }
  }

  *&result = acosf(v23);
  if (*&result < 0.7854)
  {
    v25 = 0;
    v39 = (v10 * v6) - (v9 * v7);
    v40 = (v9 * v8) - (v11 * v6);
    v41 = (v11 * v7) - (v10 * v8);
    v26 = 0.0;
    do
    {
      v26 = v26 + (*(&v39 + v25) * *(&v39 + v25));
      v25 += 4;
    }

    while (v25 != 12);
    if (sqrtf(v26) >= 1.0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v38[0] = (v10 * v6) - (v9 * v7);
    v38[1] = (v9 * v8) - (v11 * v6);
    v28 = 0.0;
    v38[2] = (v11 * v7) - (v10 * v8);
    do
    {
      v28 = v28 + (v38[v27] * v38[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = sqrtf(v28);
    v30 = -1.0;
    if (v29 > -1.0)
    {
LABEL_34:
      v31 = 0;
      v37[0] = (v10 * v6) - (v9 * v7);
      v37[1] = (v9 * v8) - (v11 * v6);
      v32 = 0.0;
      v37[2] = (v11 * v7) - (v10 * v8);
      do
      {
        v32 = v32 + (v37[v31] * v37[v31]);
        ++v31;
      }

      while (v31 != 3);
      v33 = sqrtf(v32);
      v30 = 1.0;
      if (v33 < 1.0)
      {
        v34 = 0;
        v36[0] = (v10 * v6) - (v9 * v7);
        v36[1] = (v9 * v8) - (v11 * v6);
        v35 = 0.0;
        v36[2] = (v11 * v7) - (v10 * v8);
        do
        {
          v35 = v35 + (v36[v34] * v36[v34]);
          ++v34;
        }

        while (v34 != 3);
        v30 = sqrtf(v35);
      }
    }

    *&result = asinf(v30);
  }

  return result;
}