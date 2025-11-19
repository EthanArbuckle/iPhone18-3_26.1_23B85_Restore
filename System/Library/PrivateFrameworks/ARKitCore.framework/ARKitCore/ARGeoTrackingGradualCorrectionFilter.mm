@interface ARGeoTrackingGradualCorrectionFilter
- (BOOL)getCurrentENUFromVIO:(id *)a3;
- (__n128)initWithTargetTransform:(__n128 *)a3;
- (id).cxx_construct;
- (void)ENUFromVIOTarget;
- (void)setENUFromVIOTarget:(__int128 *)a3;
- (void)setTargetRotation:(uint64_t)a3;
- (void)setTargetTranslation:(ARGeoTrackingGradualCorrectionFilter *)self;
- (void)updateWithVIOPose:(uint64_t)a3 timestamp:(_OWORD *)a4;
@end

@implementation ARGeoTrackingGradualCorrectionFilter

- (__n128)initWithTargetTransform:(__n128 *)a3
{
  v17.receiver = a1;
  v17.super_class = ARGeoTrackingGradualCorrectionFilter;
  v4 = [(ARGeoTrackingGradualCorrectionFilter *)&v17 init];
  if (v4)
  {
    v4->_targetLock._os_unfair_lock_opaque = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[3];
    *&v4->_anon_10[32] = a3[2];
    *&v4->_anon_10[48] = v8;
    *v4->_anon_10 = v6;
    *&v4->_anon_10[16] = v7;
    v9 = a3[4];
    v10 = a3[5];
    v11 = a3[7];
    *&v4->_anon_10[96] = a3[6];
    *&v4->_anon_10[112] = v11;
    *&v4->_anon_10[64] = v9;
    *&v4->_anon_10[80] = v10;
    v4->_lastTimestamp = -1.0;
    v12 = *a3;
    v13 = a3[1];
    v14 = a3[3];
    *&v4[1]._anon_10[16] = a3[2];
    *&v4[1]._anon_10[32] = v14;
    *&v4[1].super.isa = v12;
    *v4[1]._anon_10 = v13;
    result = a3[4];
    v15 = a3[5];
    v16 = a3[7];
    *&v4[1]._anon_10[80] = a3[6];
    *&v4[1]._anon_10[96] = v16;
    *&v4[1]._anon_10[48] = result;
    *&v4[1]._anon_10[64] = v15;
  }

  return result;
}

- (void)ENUFromVIOTarget
{
  os_unfair_lock_lock((a1 + 280));
  v4 = *(a1 + 416);
  a2[4] = *(a1 + 400);
  a2[5] = v4;
  v5 = *(a1 + 448);
  a2[6] = *(a1 + 432);
  a2[7] = v5;
  v6 = *(a1 + 352);
  *a2 = *(a1 + 336);
  a2[1] = v6;
  v7 = *(a1 + 384);
  a2[2] = *(a1 + 368);
  a2[3] = v7;

  os_unfair_lock_unlock((a1 + 280));
}

- (void)setENUFromVIOTarget:(__int128 *)a3
{
  os_unfair_lock_lock((a1 + 280));
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[3];
  *(a1 + 368) = a3[2];
  *(a1 + 384) = v7;
  *(a1 + 336) = v5;
  *(a1 + 352) = v6;
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[7];
  *(a1 + 432) = a3[6];
  *(a1 + 448) = v10;
  *(a1 + 400) = v8;
  *(a1 + 416) = v9;

  os_unfair_lock_unlock((a1 + 280));
}

- (void)setTargetTranslation:(ARGeoTrackingGradualCorrectionFilter *)self
{
  v5 = v2[1];
  v6 = *v2;
  os_unfair_lock_lock(&self->_targetLock);
  *&v4 = v5;
  *(&v4 + 1) = 1.0;
  *&self[1]._anon_10[80] = v6;
  *&self[1]._anon_10[96] = v4;

  os_unfair_lock_unlock(&self->_targetLock);
}

- (void)setTargetRotation:(uint64_t)a3
{
  os_unfair_lock_lock(a1 + 70);
  for (i = 0; i != 24; i += 8)
  {
    v6 = *(a3 + i * 4 + 16);
    v7 = &a1[i + 84];
    *&v7->_os_unfair_lock_opaque = *(a3 + i * 4);
    *&v7[4]._os_unfair_lock_opaque = v6;
  }

  os_unfair_lock_unlock(a1 + 70);
}

- (BOOL)getCurrentENUFromVIO:(id *)a3
{
  v3 = *self->_anon_10;
  v4 = *&self->_anon_10[16];
  v5 = *&self->_anon_10[48];
  *(a3 + 2) = *&self->_anon_10[32];
  *(a3 + 3) = v5;
  *a3 = v3;
  *(a3 + 1) = v4;
  v6 = *&self->_anon_10[64];
  v7 = *&self->_anon_10[80];
  v8 = *&self->_anon_10[112];
  *(a3 + 6) = *&self->_anon_10[96];
  *(a3 + 7) = v8;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  return 1;
}

- (void)updateWithVIOPose:(uint64_t)a3 timestamp:(_OWORD *)a4
{
  STACK[0xAC8] = *MEMORY[0x1E69E9840];
  *&STACK[0x8B0] = 0u;
  *&STACK[0x8C0] = 0u;
  *&STACK[0x890] = 0u;
  *&STACK[0x8A0] = 0u;
  *&STACK[0x870] = 0u;
  *&STACK[0x880] = 0u;
  *&STACK[0x850] = 0u;
  *&STACK[0x860] = 0u;
  v54 = a4[5];
  *&STACK[0x910] = a4[4];
  *&STACK[0x920] = v54;
  v55 = a4[7];
  *&STACK[0x930] = a4[6];
  *&STACK[0x940] = v55;
  v56 = a4[1];
  *&STACK[0x8D0] = *a4;
  *&STACK[0x8E0] = v56;
  v57 = a4[3];
  *&STACK[0x8F0] = a4[2];
  *&STACK[0x900] = v57;
  __invert_d4();
  *&STACK[0x930] = 0u;
  *&STACK[0x940] = 0u;
  *&STACK[0x910] = 0u;
  *&STACK[0x920] = 0u;
  *&STACK[0x8F0] = 0u;
  *&STACK[0x900] = 0u;
  *&STACK[0x8D0] = 0u;
  *&STACK[0x8E0] = 0u;
  ConvertIMU(&STACK[0x850], &STACK[0x8D0]);
  if (*(a1 + 272) >= 0.0)
  {
    STACK[0x848] = 0;
    STACK[0x840] = 0;
    RelativeMotionAndYaw = GetRelativeMotionAndYaw((a1 + 144), &STACK[0x8D0], &STACK[0x848], &STACK[0x840]);
    os_unfair_lock_lock((a1 + 280));
    v63 = *(a1 + 416);
    *&STACK[0x800] = *(a1 + 400);
    *&STACK[0x810] = v63;
    v64 = *(a1 + 448);
    *&STACK[0x820] = *(a1 + 432);
    *&STACK[0x830] = v64;
    v65 = *(a1 + 352);
    *a52.columns[0].f64 = *(a1 + 336);
    *&a52.columns[0].f64[2] = v65;
    v66 = *(a1 + 384);
    *&STACK[0x7E0] = *(a1 + 368);
    *&STACK[0x7F0] = v66;
    os_unfair_lock_unlock((a1 + 280));
    if (RelativeMotionAndYaw)
    {
      v67 = *&STACK[0x840];
      v68 = (a1 + 16);
      v69 = *(a1 + 272);
      v155 = *&STACK[0x940];
      v156 = *&STACK[0x930];
      v70 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*&a52.columns[0].f64[2], *&STACK[0x930]), *&STACK[0x7F0], *&STACK[0x930], 1), *&STACK[0x810], v155.f64[0]), *&STACK[0x830], v155, 1);
      v157 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a1 + 32), *&STACK[0x930]), *(a1 + 64), *&STACK[0x930], 1), *(a1 + 96), *&STACK[0x940]), *(a1 + 128), *&STACK[0x940], 1);
      v158 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*(a1 + 16), *&STACK[0x930]), *(a1 + 48), *&STACK[0x930], 1), *(a1 + 80), *&STACK[0x940]), *(a1 + 112), *&STACK[0x940], 1);
      v71 = vsubq_f64(v70, v157);
      v153 = v70.f64[0] - v157.f64[0];
      v154 = vsubq_f64(vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*a52.columns[0].f64, *&STACK[0x930]), *&STACK[0x7E0], *&STACK[0x930], 1), *&STACK[0x800], v155.f64[0]), *&STACK[0x820], v155, 1), v158);
      v71.f64[0] = v70.f64[0] - v157.f64[0];
      v70.f64[0] = vmulq_f64(v71, v71).f64[0];
      v72 = vmulq_f64(v154, v154);
      v72.f64[0] = sqrt(v70.f64[0] + vaddvq_f64(v72));
      vars0 = v72;
      v73 = (v72.f64[0] + -1.0) / 10.0;
      if (v73 > 1.0)
      {
        v73 = 1.0;
      }

      if (v73 >= 0.0)
      {
        v74 = v73;
      }

      else
      {
        v74 = 0.0;
      }

      a50 = 0.0;
      GetRelativeMotionAndYaw((a1 + 16), &a52, &a51, &a50);
      v75 = a50;
      v76 = fabs(a50);
      if (vars0.f64[0] <= 5.0 && v76 <= 5.0)
      {
        v100 = a2 - v69;
        v101 = *&STACK[0x848];
        v102 = fabs(v67) * 0.01;
        v103 = (v76 + -1.0) / 10.0;
        if (v103 > 1.0)
        {
          v103 = 1.0;
        }

        if (v103 < 0.0)
        {
          v103 = 0.0;
        }

        v104 = v102 + v100 * v103;
        if (v104 < v76)
        {
          v76 = v104;
        }

        if (v76 < 0.0001)
        {
          v76 = 0.0;
        }

        if (a50 >= 0.0)
        {
          v105 = v76;
        }

        else
        {
          v105 = -v76;
        }

        Transform4DofFromMatrix((a1 + 16), &a45);
        a44 = 0;
        a41 = 0u;
        a42 = 0;
        a43 = v105 + a48;
        *&STACK[0xAB0] = 0u;
        *&STACK[0xAA0] = 0u;
        *&STACK[0xA90] = 0u;
        *&STACK[0xA80] = 0u;
        *&STACK[0xA70] = 0u;
        *&STACK[0xA60] = 0u;
        *&STACK[0xA50] = 0u;
        *&STACK[0xA40] = 0u;
        MatrixFromTransform4Dof(&a41, &STACK[0xA40]);
        v106 = vdupq_laneq_s64(v156, 1);
        v107 = vdupq_lane_s64(*&v155.f64[0], 0);
        v108 = vdupq_laneq_s64(v155, 1);
        v109 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*&STACK[0xA40], *v156.i64), v106, *&STACK[0xA60]), v107, *&STACK[0xA80]), v108, *&STACK[0xAA0]);
        v110 = v157.f64[0] - vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(*&STACK[0xA50], *v156.i64), v106, *&STACK[0xA70]), v107, *&STACK[0xA90]), v108, *&STACK[0xAB0]).f64[0];
        v111 = 0.0;
        v112 = 0uLL;
        if (vars0.f64[0] > 0.0001)
        {
          v113 = v101 * 0.1 + v100 * v74;
          if (vars0.f64[0] < v113)
          {
            v113 = vars0.f64[0];
          }

          v112 = vdivq_f64(vmulq_n_f64(v154, v113), vdupq_lane_s64(*&vars0.f64[0], 0));
          v111 = v153 * v113 / vars0.f64[0];
        }

        v114 = *&STACK[0xA60];
        v115 = *&STACK[0xA70];
        v116 = *&STACK[0xA70];
        *&STACK[0x9F0] = *&STACK[0xA60];
        *&STACK[0xA00] = v115;
        v117 = *&STACK[0xA80];
        v118 = *&STACK[0xA90];
        v119 = *&STACK[0xA90];
        *&STACK[0xA10] = *&STACK[0xA80];
        *&STACK[0xA20] = v118;
        v120 = *&STACK[0xA40];
        v121 = *&STACK[0xA50];
        v122 = *&STACK[0xA50];
        *&STACK[0x9D0] = *&STACK[0xA40];
        *&STACK[0x9E0] = v121;
        v123 = v110 + v111;
        v124 = vaddq_f64(vsubq_f64(v158, v109), v112);
        __asm { FMOV            V3.2D, #1.0 }

        *&_Q3 = v123;
        v130 = *(a1 + 96);
        *&STACK[0x990] = *(a1 + 80);
        *&STACK[0x9A0] = v130;
        v131 = *(a1 + 128);
        *&STACK[0x9B0] = *(a1 + 112);
        *&STACK[0x9C0] = v131;
        v132 = *(a1 + 32);
        *&STACK[0x950] = *v68;
        *&STACK[0x960] = v132;
        v133 = *(a1 + 64);
        *&STACK[0x970] = *(a1 + 48);
        *&STACK[0x980] = v133;
        a35 = v114;
        a36 = v116;
        a37 = v117;
        a38 = v119;
        a33 = v120;
        a34 = v122;
        v159 = _Q3;
        vars0a = v124;
        a39 = v124;
        a40 = _Q3;
        v134 = *&STACK[0x810];
        a29 = *&STACK[0x800];
        a30 = v134;
        v135 = *&STACK[0x830];
        a31 = *&STACK[0x820];
        a32 = v135;
        a25 = *a52.columns[0].f64;
        a26 = *&a52.columns[0].f64[2];
        v136 = *&STACK[0x7F0];
        a27 = *&STACK[0x7E0];
        a28 = v136;
        v137 = *&STACK[0x920];
        a21 = *&STACK[0x910];
        a22 = v137;
        v138 = *&STACK[0x940];
        a23 = *&STACK[0x930];
        a24 = v138;
        v139 = *&STACK[0x8E0];
        a17 = *&STACK[0x8D0];
        a18 = v139;
        v140 = *&STACK[0x900];
        a19 = *&STACK[0x8F0];
        a20 = v140;
        if ((SanityCheck(&STACK[0x950], &a33, &a25, &a17) & 1) == 0)
        {
          v141 = _ARLogGeneral();
          if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
          {
            v142 = objc_opt_class();
            v143 = NSStringFromClass(v142);
            LODWORD(STACK[0x950]) = 138543618;
            STACK[0x954] = v143;
            LOWORD(STACK[0x95C]) = 2048;
            STACK[0x95E] = a1;
            _os_log_impl(&dword_1C241C000, v141, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection Pose update does not improve", &STACK[0x950], 0x16u);
          }
        }

        v144 = *&STACK[0xA00];
        *(a1 + 48) = *&STACK[0x9F0];
        *(a1 + 64) = v144;
        v145 = *&STACK[0xA20];
        *(a1 + 80) = *&STACK[0xA10];
        *(a1 + 96) = v145;
        v146 = *&STACK[0x9E0];
        *v68 = *&STACK[0x9D0];
        *(a1 + 32) = v146;
        *(a1 + 112) = vars0a;
        *(a1 + 128) = v159;
        *(a1 + 272) = a2;
        v147 = *&STACK[0x8D0];
        v148 = *&STACK[0x8E0];
        v149 = *&STACK[0x900];
        *(a1 + 176) = *&STACK[0x8F0];
        *(a1 + 192) = v149;
        *(a1 + 144) = v147;
        *(a1 + 160) = v148;
        v150 = *&STACK[0x910];
        v151 = *&STACK[0x920];
        v152 = *&STACK[0x940];
        *(a1 + 240) = *&STACK[0x930];
        *(a1 + 256) = v152;
        *(a1 + 208) = v150;
        *(a1 + 224) = v151;
      }

      else
      {
        v78 = _ARLogGeneral();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          LODWORD(STACK[0xA40]) = 138544130;
          STACK[0xA44] = v80;
          LOWORD(STACK[0xA4C]) = 2048;
          STACK[0xA4E] = a1;
          LOWORD(STACK[0xA56]) = 2048;
          STACK[0xA58] = *&vars0.f64[0];
          LOWORD(STACK[0xA60]) = 2048;
          *&STACK[0xA62] = v75;
          _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection Pose update to strong (%f m ,%f deg) - resetting filter", &STACK[0xA40], 0x2Au);
        }

        *(a1 + 272) = a2;
        v81 = *&STACK[0x920];
        *(a1 + 208) = *&STACK[0x910];
        *(a1 + 224) = v81;
        v82 = *&STACK[0x940];
        *(a1 + 240) = *&STACK[0x930];
        *(a1 + 256) = v82;
        v83 = *&STACK[0x8E0];
        *(a1 + 144) = *&STACK[0x8D0];
        *(a1 + 160) = v83;
        v84 = *&STACK[0x900];
        *(a1 + 176) = *&STACK[0x8F0];
        *(a1 + 192) = v84;
        v85 = *&STACK[0x7F0];
        *(a1 + 48) = *&STACK[0x7E0];
        *(a1 + 64) = v85;
        v86 = *&a52.columns[0].f64[2];
        *v68 = *a52.columns[0].f64;
        *(a1 + 32) = v86;
        v87 = *&STACK[0x830];
        *(a1 + 112) = *&STACK[0x820];
        *(a1 + 128) = v87;
        v88 = *&STACK[0x810];
        *(a1 + 80) = *&STACK[0x800];
        *(a1 + 96) = v88;
      }
    }

    else
    {
      v89 = _ARLogGeneral();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        v90 = objc_opt_class();
        v91 = NSStringFromClass(v90);
        LODWORD(STACK[0xA40]) = 138543618;
        STACK[0xA44] = v91;
        LOWORD(STACK[0xA4C]) = 2048;
        STACK[0xA4E] = a1;
        _os_log_impl(&dword_1C241C000, v89, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GradualCorrection GetRelativeMotionAndYaw failed - resetting filter", &STACK[0xA40], 0x16u);
      }

      *(a1 + 272) = a2;
      v92 = *&STACK[0x920];
      *(a1 + 208) = *&STACK[0x910];
      *(a1 + 224) = v92;
      v93 = *&STACK[0x940];
      *(a1 + 240) = *&STACK[0x930];
      *(a1 + 256) = v93;
      v94 = *&STACK[0x8E0];
      *(a1 + 144) = *&STACK[0x8D0];
      *(a1 + 160) = v94;
      v95 = *&STACK[0x900];
      *(a1 + 176) = *&STACK[0x8F0];
      *(a1 + 192) = v95;
      v96 = *&STACK[0x7F0];
      *(a1 + 48) = *&STACK[0x7E0];
      *(a1 + 64) = v96;
      v97 = *&a52.columns[0].f64[2];
      *(a1 + 16) = *a52.columns[0].f64;
      *(a1 + 32) = v97;
      v98 = *&STACK[0x830];
      *(a1 + 112) = *&STACK[0x820];
      *(a1 + 128) = v98;
      v99 = *&STACK[0x810];
      *(a1 + 80) = *&STACK[0x800];
      *(a1 + 96) = v99;
    }
  }

  else
  {
    *(a1 + 272) = a2;
    v58 = *&STACK[0x920];
    *(a1 + 208) = *&STACK[0x910];
    *(a1 + 224) = v58;
    v59 = *&STACK[0x940];
    *(a1 + 240) = *&STACK[0x930];
    *(a1 + 256) = v59;
    v60 = *&STACK[0x8E0];
    *(a1 + 144) = *&STACK[0x8D0];
    *(a1 + 160) = v60;
    v61 = *&STACK[0x900];
    *(a1 + 176) = *&STACK[0x8F0];
    *(a1 + 192) = v61;
  }
}

- (id).cxx_construct
{
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 18) = 0u;
  return self;
}

@end