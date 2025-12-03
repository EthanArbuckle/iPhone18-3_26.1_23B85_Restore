@interface CAWhitePointRamper
- (CAWhitePointRamper)initWithDisplay:(id)display;
- (void)rampCallback:(id)callback;
@end

@implementation CAWhitePointRamper

- (void)rampCallback:(id)callback
{
  v62 = *MEMORY[0x1E69E9840];
  [(CAWindowServerRamper *)self beginTime];
  if (v5 <= 0.0)
  {
    [callback targetTimestamp];
    [(CAWindowServerRamper *)self setBeginTime:?];
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  [callback targetTimestamp];
  v7 = v6;
  [(CAWindowServerRamper *)self beginTime];
  v9 = v7 - v8;
  [(CAWindowServerRamper *)self duration];
  if (v9 / v10 > 1.0 || ([callback targetTimestamp], v12 = v11, -[CAWindowServerRamper beginTime](self, "beginTime"), v14 = v12 - v13, -[CAWindowServerRamper duration](self, "duration"), v16 = 0.0, v14 / v15 >= 0.0))
  {
    [callback targetTimestamp];
    v18 = v17;
    [(CAWindowServerRamper *)self beginTime];
    v20 = v18 - v19;
    [(CAWindowServerRamper *)self duration];
    v16 = 1.0;
    if (v20 / v21 <= 1.0)
    {
      [callback targetTimestamp];
      v23 = v22;
      [(CAWindowServerRamper *)self beginTime];
      v25 = v23 - v24;
      [(CAWindowServerRamper *)self duration];
      v16 = v25 / v26;
    }
  }

  [(CAWhitePointRamper *)self scaleStart];
  v28 = v27;
  [(CAWhitePointRamper *)self scaleEnd];
  v30 = v29;
  [(CAWhitePointRamper *)self scaleStart];
  v31 = 0;
  v33 = v16 * (v30 - v32);
  do
  {
    if (self)
    {
      [(CAWhitePointRamper *)self whitePointStart];
      v34 = *&buf[v31];
      [(CAWhitePointRamper *)self whitePointEnd];
      v35 = *(v55 + v31);
      [(CAWhitePointRamper *)self whitePointStart];
    }

    else
    {
      v58 = 0;
      memset(buf, 0, sizeof(buf));
      v34 = *&buf[v31];
      v56 = 0;
      memset(v55, 0, sizeof(v55));
      v35 = *(v55 + v31);
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    v36 = v34 + v16 * (v35 - *(v53 + v31));
    *(&v59 + v31) = v36;
    v31 += 4;
  }

  while (v31 != 36);
  v37 = v33 + v28;
  if ((LODWORD(v37) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = v33 + v28;
  }

  display = [(CAWindowServerRamper *)self display];
  *&v40 = v38;
  [(CAWindowServerDisplay *)display setWhitePointMatrix:&v59 scale:v40];
  *&v55[0] = 0;
  display2 = [(CAWindowServerRamper *)self display];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v49 = v59;
  v48[2] = __35__CAWhitePointRamper_rampCallback___block_invoke;
  v48[3] = &unk_1E6DED858;
  v50 = v60;
  v51 = v61;
  v48[4] = self;
  v52 = v38;
  if (![(CAWindowServerDisplay *)display2 commitBrightness:v55 withBlock:v48])
  {
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v42 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
    {
      v46 = [(CAWindowServerRamper *)self id];
      v47 = [objc_msgSend(*&v55[0] "localizedDescription")];
      *buf = 67109378;
      *&buf[4] = v46;
      *&buf[8] = 2080;
      *&buf[10] = v47;
      _os_log_error_impl(&dword_183AA6000, v42, OS_LOG_TYPE_ERROR, "WhitePoint ramp %d: Error setting whitepoint: %s", buf, 0x12u);
    }

    [(CADisplayLink *)[(CAWindowServerRamper *)self link] invalidate];
  }

  if (v16 == 1.0)
  {
    [callback invalidate];
    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v44 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [(CAWindowServerRamper *)self id];
      *buf = 67109120;
      *&buf[4] = v45;
      _os_log_impl(&dword_183AA6000, v44, OS_LOG_TYPE_DEFAULT, "WhitePoint ramp %d: Complete", buf, 8u);
    }
  }
}

void __35__CAWhitePointRamper_rampCallback___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 48);
  v6 = *(a1 + 52);
  v8 = *(a1 + 56);
  v7 = *(a1 + 60);
  v9 = *(a1 + 64);
  v14 = *(a1 + 68);
  v10 = *(a1 + 72);
  v15 = CATimeWithHostTime([objc_msgSend(a2 objectForKeyedSubscript:{@"brightnessTransactionPresentationTime", "unsignedLongLongValue"}]);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v11 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) id];
    v13 = *(a1 + 76);
    *buf = 67111936;
    v17 = v12;
    v18 = 2048;
    v19 = v13;
    v20 = 2048;
    v21 = v3;
    v22 = 2048;
    v23 = v4;
    v24 = 2048;
    v25 = v5;
    v26 = 2048;
    v27 = v6;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = v14;
    v36 = 2048;
    v37 = v10;
    v38 = 2048;
    v39 = v15;
    _os_log_impl(&dword_183AA6000, v11, OS_LOG_TYPE_DEFAULT, "Whitepoint ramp %d\n\t scale %g\n [%g %g %g]\n\t[%g %g %g]\n\t[%g %g %g]\n\tHit glass at time %.3f\n", buf, 0x76u);
  }
}

- (CAWhitePointRamper)initWithDisplay:(id)display
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAWhitePointRamper;
  v3 = [(CAWindowServerRamper *)&v8 initWithDisplay:display];
  v5 = v3;
  if (v3)
  {
    LODWORD(v4) = 2143289344;
    [(CAWhitePointRamper *)v3 setScaleEnd:v4];
    LODWORD(v6) = 2143289344;
    [(CAWhitePointRamper *)v5 setScaleStart:v6];
  }

  return v5;
}

@end