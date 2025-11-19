@interface DYGLExperimentResultsGenerator
- (void)begin;
- (void)end;
- (void)onGraphicsFunctionEnd;
- (void)onPlatformFunctionEnd;
- (void)startTiming;
- (void)stopTiming;
@end

@implementation DYGLExperimentResultsGenerator

- (void)startTiming
{
  v3 = [(DYGLExperimentResultsGenerator *)self functionPlayer];
  v4 = [(DYGLExperimentResultsGenerator *)self experiment];
  v5 = [v4 enableExperimentFinish];

  if (v5)
  {
    (*([v3 gliDispatch] + 89))(objc_msgSend(v3, "gliContext"));
  }

  v6.receiver = self;
  v6.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v6 startTiming];
}

- (void)stopTiming
{
  v3 = [(DYGLExperimentResultsGenerator *)self functionPlayer];
  v4 = [(DYGLExperimentResultsGenerator *)self experiment];
  v5 = [v4 enableExperimentFinish];

  if (v5)
  {
    (*([v3 gliDispatch] + 89))(objc_msgSend(v3, "gliContext"));
  }

  v6.receiver = self;
  v6.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v6 stopTiming];
}

- (void)begin
{
  v18.receiver = self;
  v18.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v18 begin];
  v2 = objc_opt_new();
  overrides = self->_overrides;
  self->_overrides = v2;

  v4 = [(DYGLExperimentResultsGenerator *)self functionPlayer];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DYGLExperimentResultsGenerator *)self experiment];
  v6 = [v5 overrideTypeStrings];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    v9 = kDYFunctionPlayerOverrideDisablePresentKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isEqualToString:v9])
        {
          DYDisableBufferSwaps();
          v12 = 0;
        }

        else
        {
          v12 = [[DYEAGLFunctionPlayerOverride alloc] initWithFunctionPlayer:v4 overrideKey:v11];
          if (v12)
          {
            [(NSMutableArray *)self->_overrides addObject:v12];
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)end
{
  overrides = self->_overrides;
  self->_overrides = 0;

  v4.receiver = self;
  v4.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v4 end];
}

- (void)onGraphicsFunctionEnd
{
  v3 = [(DYGLExperimentResultsGenerator *)self experiment];
  v4 = [v3 profilingFlags];

  if ((v4 & 0x40) != 0)
  {
    v5 = [(DYGLExperimentResultsGenerator *)self functionPlayer];
    v6 = [v5 context];
    [v5 ctxID];
    [v5 currentFileFunctionIndex];
    DYAddPerFunctionProfilingData();
  }

  v7.receiver = self;
  v7.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v7 onGraphicsFunctionEnd];
}

- (void)onPlatformFunctionEnd
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_overrides;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v6) onPlatformFunctionEnd];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v7 = [(DYGLExperimentResultsGenerator *)self experiment];
  v8 = ([v7 profilingFlags] & 0x40) == 0;

  if (!v8)
  {
    v9 = [(DYGLExperimentResultsGenerator *)self functionPlayer];
    v10 = [(DYGLExperimentResultsGenerator *)self prevFileFunctionIndex];
    if (v10 != [v9 currentFileFunctionIndex])
    {
      v11 = [v9 context];
      [v9 ctxID];
      [v9 currentFileFunctionIndex];
      DYAddPerFunctionProfilingData();
    }
  }

  v12.receiver = self;
  v12.super_class = DYGLExperimentResultsGenerator;
  [(DYGLExperimentResultsGenerator *)&v12 onPlatformFunctionEnd];
}

@end