@interface CABrightnessRamper
- (CABrightnessRamper)initWithDisplay:(id)display;
- (void)rampCallback:(id)callback;
@end

@implementation CABrightnessRamper

- (void)rampCallback:(id)callback
{
  v134 = *MEMORY[0x1E69E9840];
  [(CABrightnessRamper *)self sdrNitsBegin];
  v6 = v5;
  [(CABrightnessRamper *)self sdrNitsEnd];
  v102 = v7;
  [(CABrightnessRamper *)self headroomBegin];
  v9 = v8;
  [(CABrightnessRamper *)self headroomEnd];
  v101 = v10;
  [(CABrightnessRamper *)self limitBegin];
  v12 = v11;
  [(CABrightnessRamper *)self limitEnd];
  v100 = v13;
  [(CABrightnessRamper *)self contrastEnhancerBegin];
  v15 = v14;
  [(CABrightnessRamper *)self contrastEnhancerEnd];
  v99 = v16;
  [(CABrightnessRamper *)self lowAmbientStrengthBegin];
  v110 = v17;
  [(CABrightnessRamper *)self lowAmbientStrengthEnd];
  v98 = v18;
  [(CABrightnessRamper *)self highAmbientStrengthBegin];
  v108 = v19;
  [(CABrightnessRamper *)self highAmbientStrengthEnd];
  v97 = v20;
  [(CABrightnessRamper *)self contrastPreservationBegin];
  v107 = v21;
  [(CABrightnessRamper *)self contrastPreservationEnd];
  v96 = v22;
  [(CABrightnessRamper *)self indicatorNitsBegin];
  v106 = v23;
  [(CABrightnessRamper *)self indicatorNitsEnd];
  v95 = v24;
  [(CABrightnessRamper *)self indicatorLimitBegin];
  v105 = v25;
  [(CABrightnessRamper *)self indicatorLimitEnd];
  v94 = v26;
  [(CAWindowServerRamper *)self beginTime];
  if (v27 <= 0.0)
  {
    [callback targetTimestamp];
    [(CAWindowServerRamper *)self setBeginTime:?];
  }

  v113 = 0;
  [callback targetTimestamp];
  v29 = v28;
  [(CAWindowServerRamper *)self beginTime];
  v31 = v29 - v30;
  [(CAWindowServerRamper *)self duration];
  if (v31 / v32 > 1.0 || ([callback targetTimestamp], v34 = v33, -[CAWindowServerRamper beginTime](self, "beginTime"), v36 = v34 - v35, -[CAWindowServerRamper duration](self, "duration"), v38 = 0.0, v36 / v37 >= 0.0))
  {
    [callback targetTimestamp];
    v40 = v39;
    [(CAWindowServerRamper *)self beginTime];
    v42 = v40 - v41;
    [(CAWindowServerRamper *)self duration];
    v38 = 1.0;
    if (v42 / v43 <= 1.0)
    {
      [callback targetTimestamp];
      v45 = v44;
      [(CAWindowServerRamper *)self beginTime];
      v47 = v45 - v46;
      [(CAWindowServerRamper *)self duration];
      v38 = v47 / v48;
    }
  }

  v103 = v6;
  v104 = v38;
  v49 = 2.22044605e-16 - v38;
  v93 = pow(v6 / v102, 2.22044605e-16 - v38);
  v92 = pow(v9 / v101, v49);
  v50 = pow(v12 / v100, v49);
  v52 = v108;
  v51 = v110;
  v53 = v98 - v110;
  v54 = v97 - v108;
  v56 = v106;
  v55 = v107;
  v57 = v105;
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    v57 = v105;
    v56 = v106;
    v55 = v107;
    v52 = v108;
    v51 = v110;
  }

  v111 = v92 * v9;
  v58 = v50 * v12;
  v109 = v15 + v104 * (v99 - v15);
  v59 = v51 + v104 * v53;
  v60 = v52 + v104 * v54;
  v61 = v55 + v104 * (v96 - v107);
  v62 = v56 + v104 * (v95 - v106);
  v63 = x_log_get_windowserver(void)::log;
  v64 = v57 + v104 * (v94 - v105);
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67111424;
    v115 = [(CAWindowServerRamper *)self id];
    v116 = 2048;
    v117 = v93 * v103;
    v118 = 2048;
    v119 = v92 * v9;
    v120 = 2048;
    v121 = v58;
    v122 = 2048;
    v123 = v15 + v104 * (v99 - v15);
    v124 = 2048;
    v125 = v59;
    v126 = 2048;
    v127 = v60;
    v128 = 2048;
    v129 = v61;
    v130 = 2048;
    v131 = v62;
    v132 = 2048;
    v133 = v64;
    _os_log_impl(&dword_183AA6000, v63, OS_LOG_TYPE_DEFAULT, "Ramp %d: Setting SDR brightness to %g nits, headroom to %g, limit to %g, contrast enhancer to %g, low_amb_str to %g, high_amb_str to %g, contrast_preservation to %g, indicator_nits to %g indicator_limit to %g", buf, 0x62u);
  }

  if (COERCE_UNSIGNED_INT64(fabs(v93 * v103)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display = [(CAWindowServerRamper *)self display];
    *&v66 = v93 * v103;
    [(CAWindowServerDisplay *)display setSDRBrightness:v66];
  }

  if (COERCE_UNSIGNED_INT64(fabs(v92 * v9)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display2 = [(CAWindowServerRamper *)self display];
    HIDWORD(v68) = HIDWORD(v111);
    *&v68 = v111;
    [(CAWindowServerDisplay *)display2 setHeadroom:v68];
  }

  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display3 = [(CAWindowServerRamper *)self display];
    *&v70 = v58;
    [(CAWindowServerDisplay *)display3 setBrightnessLimit:v70];
  }

  if (COERCE_UNSIGNED_INT64(fabs(v15 + v104 * (v99 - v15))) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display4 = [(CAWindowServerRamper *)self display];
    HIDWORD(v72) = HIDWORD(v109);
    *&v72 = v109;
    [(CAWindowServerDisplay *)display4 setContrastEnhancer:v72];
  }

  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display5 = [(CAWindowServerRamper *)self display];
    *&v74 = v59;
    [(CAWindowServerDisplay *)display5 setLowAmbientAdaptation:v74];
  }

  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display6 = [(CAWindowServerRamper *)self display];
    *&v76 = v60;
    [(CAWindowServerDisplay *)display6 setHighAmbientAdaptation:v76];
  }

  if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display7 = [(CAWindowServerRamper *)self display];
    *&v78 = v61;
    [(CAWindowServerDisplay *)display7 setContrastPreservation:v78];
  }

  if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display8 = [(CAWindowServerRamper *)self display];
    *&v80 = v62;
    [(CAWindowServerDisplay *)display8 setIndicatorBrightness:v80];
  }

  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    display9 = [(CAWindowServerRamper *)self display];
    *&v82 = v64;
    [(CAWindowServerDisplay *)display9 setIndicatorBrightnessLimit:v82];
  }

  v83 = mach_absolute_time();
  v84 = CATimeWithHostTime(v83);
  display10 = [(CAWindowServerRamper *)self display];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __35__CABrightnessRamper_rampCallback___block_invoke;
  v112[3] = &unk_1E6DED858;
  v112[4] = self;
  *&v112[5] = v93 * v103;
  *&v112[6] = v92 * v9;
  *&v112[7] = v58;
  *&v112[8] = v15 + v104 * (v99 - v15);
  *&v112[9] = v84;
  if (![(CAWindowServerDisplay *)display10 commitBrightness:&v113 withBlock:v112])
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v86 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v90 = [(CAWindowServerRamper *)self id];
      *&v91 = COERCE_DOUBLE([objc_msgSend(v113 "localizedDescription")]);
      *buf = 67109378;
      v115 = v90;
      v116 = 2080;
      v117 = *&v91;
      _os_log_error_impl(&dword_183AA6000, v86, OS_LOG_TYPE_ERROR, "Ramp %d: Error setting brightness: %s", buf, 0x12u);
    }

    [(CADisplayLink *)[(CAWindowServerRamper *)self link] invalidate];
  }

  if (v104 == 1.0)
  {
    [callback invalidate];
    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v88 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v89 = [(CAWindowServerRamper *)self id];
      *buf = 67109120;
      v115 = v89;
      _os_log_impl(&dword_183AA6000, v88, OS_LOG_TYPE_DEFAULT, "Ramp %d: Complete", buf, 8u);
    }
  }
}

void __35__CABrightnessRamper_rampCallback___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = CATimeWithHostTime([objc_msgSend(a2 objectForKeyedSubscript:{@"brightnessTransactionPresentationTime", "unsignedLongLongValue"}]);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v4 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) id];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = (v3 - *(a1 + 72)) * 1000.0;
    v11[0] = 67110656;
    v11[1] = v5;
    v12 = 2048;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v10;
    _os_log_impl(&dword_183AA6000, v4, OS_LOG_TYPE_DEFAULT, "Ramp %d: Setting SDR brightness to %g nits, headroom to %g, limit to %g, contrast enhancer to %g [Hit the glass at time %.3f, took %.3f msec]", v11, 0x44u);
  }
}

- (CABrightnessRamper)initWithDisplay:(id)display
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CABrightnessRamper;
  v3 = [(CAWindowServerRamper *)&v6 initWithDisplay:display];
  v4 = v3;
  if (v3)
  {
    [(CABrightnessRamper *)v3 setSdrNitsBegin:NAN];
    [(CABrightnessRamper *)v4 setSdrNitsEnd:NAN];
    [(CABrightnessRamper *)v4 setHeadroomBegin:NAN];
    [(CABrightnessRamper *)v4 setHeadroomEnd:NAN];
    [(CABrightnessRamper *)v4 setLimitBegin:NAN];
    [(CABrightnessRamper *)v4 setLimitEnd:NAN];
    [(CABrightnessRamper *)v4 setContrastEnhancerBegin:NAN];
    [(CABrightnessRamper *)v4 setContrastEnhancerEnd:NAN];
    [(CABrightnessRamper *)v4 setLowAmbientStrengthBegin:NAN];
    [(CABrightnessRamper *)v4 setLowAmbientStrengthEnd:NAN];
    [(CABrightnessRamper *)v4 setHighAmbientStrengthBegin:NAN];
    [(CABrightnessRamper *)v4 setHighAmbientStrengthEnd:NAN];
    [(CABrightnessRamper *)v4 setContrastPreservationBegin:NAN];
    [(CABrightnessRamper *)v4 setContrastPreservationEnd:NAN];
    [(CABrightnessRamper *)v4 setIndicatorNitsBegin:NAN];
    [(CABrightnessRamper *)v4 setIndicatorNitsEnd:NAN];
    [(CABrightnessRamper *)v4 setIndicatorLimitBegin:NAN];
    [(CABrightnessRamper *)v4 setIndicatorLimitEnd:NAN];
  }

  return v4;
}

@end