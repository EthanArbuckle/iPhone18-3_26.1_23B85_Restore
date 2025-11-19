@interface CAAccessibilityRamper
- (CAAccessibilityRamper)initWithDisplay:(id)a3;
- (void)rampCallback:(id)a3;
@end

@implementation CAAccessibilityRamper

- (void)rampCallback:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  [(CAAccessibilityRamper *)self axScaleBegin];
  v6 = v5;
  [(CAAccessibilityRamper *)self axScaleEnd];
  v8 = v7;
  [(CAWindowServerRamper *)self beginTime];
  if (v9 <= 0.0)
  {
    [a3 targetTimestamp];
    [(CAWindowServerRamper *)self setBeginTime:?];
  }

  [a3 targetTimestamp];
  v11 = v10;
  [(CAWindowServerRamper *)self beginTime];
  v13 = v11 - v12;
  [(CAWindowServerRamper *)self duration];
  if (v13 / v14 > 1.0 || ([a3 targetTimestamp], v16 = v15, -[CAWindowServerRamper beginTime](self, "beginTime"), v18 = v16 - v17, -[CAWindowServerRamper duration](self, "duration"), v20 = v18 / v19, v21 = 0.0, v20 >= 0.0))
  {
    [a3 targetTimestamp];
    v23 = v22;
    [(CAWindowServerRamper *)self beginTime];
    v25 = v23 - v24;
    [(CAWindowServerRamper *)self duration];
    v27 = v25 / v26;
    v21 = 1.0;
    if (v27 <= 1.0)
    {
      [a3 targetTimestamp];
      v29 = v28;
      [(CAWindowServerRamper *)self beginTime];
      v31 = v29 - v30;
      [(CAWindowServerRamper *)self duration];
      v21 = v31 / v32;
    }
  }

  v33 = pow(v6 / v8, 2.22044605e-16 - v21);
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v34 = v33 * v6;
  v35 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
  {
    v41 = 67109376;
    v42 = [(CAWindowServerRamper *)self id];
    v43 = 2048;
    v44 = v34;
    _os_log_impl(&dword_183AA6000, v35, OS_LOG_TYPE_DEFAULT, "Ramp %d: Setting AX Scale to %g", &v41, 0x12u);
  }

  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v36 = [(CAWindowServerRamper *)self display];
    *&v37 = v34;
    [(CAWindowServerDisplay *)v36 setAccessibilityColorMatrix:&xmmword_183E31CC8 scale:v37];
  }

  if (v21 == 1.0)
  {
    [a3 invalidate];
    Current = CFRunLoopGetCurrent();
    CFRunLoopStop(Current);
    if (x_log_get_windowserver(void)::once != -1)
    {
      dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
    }

    v39 = x_log_get_windowserver(void)::log;
    if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(CAWindowServerRamper *)self id];
      v41 = 67109120;
      v42 = v40;
      _os_log_impl(&dword_183AA6000, v39, OS_LOG_TYPE_DEFAULT, "Ramp %d: Complete", &v41, 8u);
    }
  }
}

- (CAAccessibilityRamper)initWithDisplay:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAAccessibilityRamper;
  v3 = [(CAWindowServerRamper *)&v6 initWithDisplay:a3];
  v4 = v3;
  if (v3)
  {
    [(CAAccessibilityRamper *)v3 setAxScaleBegin:NAN];
    [(CAAccessibilityRamper *)v4 setAxScaleEnd:NAN];
  }

  return v4;
}

@end