@interface CAWindowServerRamper
- (CAWindowServerRamper)initWithDisplay:(id)a3;
- (void)rampCallback:(id)a3;
- (void)runRamp;
@end

@implementation CAWindowServerRamper

- (void)runRamp
{
  [(CAWindowServerRamper *)self setLink:[CADisplayLink displayLinkWithDisplay:[(CAWindowServerRamper *)self cadisplay] target:self selector:sel_rampCallback_]];
  v3 = [(CAWindowServerRamper *)self link];
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [(CADisplayLink *)v3 addToRunLoop:v4 forMode:*MEMORY[0x1E695D918]];
  v5 = [MEMORY[0x1E695DFD0] currentRunLoop];

  [v5 run];
}

- (void)rampCallback:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (x_log_get_windowserver(void)::once != -1)
  {
    dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
  }

  v3 = x_log_get_windowserver(void)::log;
  if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_183AA6000, v3, OS_LOG_TYPE_ERROR, "rampCallback unimplemented", v4, 2u);
  }
}

- (CAWindowServerRamper)initWithDisplay:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CAWindowServerRamper;
  v4 = [(CAWindowServerRamper *)&v14 init];
  v5 = v4;
  if (v4)
  {
    [(CAWindowServerRamper *)v4 setDisplay:a3];
    v6 = +[CADisplay displays];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 displayId];
          if (v12 == [a3 displayId])
          {
            [(CAWindowServerRamper *)v5 setCadisplay:v11];
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
    v5->_id = atomic_fetch_add(&_id_generator, 1uLL);
    v5->_beginTime = -1.0;
  }

  return v5;
}

@end