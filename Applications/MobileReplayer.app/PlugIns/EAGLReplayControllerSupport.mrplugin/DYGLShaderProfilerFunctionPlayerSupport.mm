@interface DYGLShaderProfilerFunctionPlayerSupport
- (BOOL)_getFramebufferWidth:(int *)a3 height:(int *)a4 numSamples:(int *)a5;
- (BOOL)shouldExecuteGraphicsFunction;
- (BOOL)shouldPerformPlaybackLoopIteration:(unsigned int)a3;
- (DYEAGLDebugFunctionPlayer)strongFunctionPlayer;
- (DYEAGLDebugPlaybackEngine)strongPlaybackEngine;
- (DYGLShaderProfilerFunctionPlayerSupport)initWithDebugEAGLPlaybackEngine:(id)a3 payLoad:(id)a4;
- (id).cxx_construct;
- (id)_queryShaderResult;
- (id)_valueFromKey:(id)a3;
- (id)queryShaderStart;
- (void)_backupAndSetupStates;
- (void)_endUSCSampling;
- (void)_harvestShaderBinaries;
- (void)_replaceColorAttachment;
- (void)_restoreColorAttachment;
- (void)_restoreStates;
- (void)_saveColorAttachmentFramebuffer:(unsigned int)a3;
- (void)_shouldEndUSCSampling;
- (void)_startUSCSampling;
- (void)dealloc;
- (void)executePlatformFunction;
- (void)performPlaybackLoopIterationPostCaptureActions:(unsigned int)a3;
- (void)performPlaybackLoopIterationPreCaptureActions:(unsigned int)a3;
@end

@implementation DYGLShaderProfilerFunctionPlayerSupport

- (DYEAGLDebugFunctionPlayer)strongFunctionPlayer
{
  WeakRetained = objc_loadWeakRetained(&self->_functionPlayer);

  return WeakRetained;
}

- (DYEAGLDebugPlaybackEngine)strongPlaybackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (DYGLShaderProfilerFunctionPlayerSupport)initWithDebugEAGLPlaybackEngine:(id)a3 payLoad:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = DYGLShaderProfilerFunctionPlayerSupport;
  v8 = [(DYGLShaderProfilerFunctionPlayerSupport *)&v22 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_playbackEngine, v6);
    v11 = [v6 player];
    objc_storeWeak(&v9->_functionPlayer, v11);

    objc_storeStrong(&v9->_payLoad, a4);
    v12 = [(NSDictionary *)v10->_payLoad objectForKeyedSubscript:@"function flag"];
    functionFlag = v10->_functionFlag;
    v10->_functionFlag = v12;

    if ([(NSArray *)v10->_functionFlag count])
    {
      v14 = [(NSDictionary *)v9->_payLoad objectForKeyedSubscript:@"harvest draw call footprint"];
      v10->_harvestDrawCallFootprint = [v14 BOOLValue];

      v15 = [(NSDictionary *)v10->_payLoad objectForKeyedSubscript:@"usc sampling period"];
      v10->_uscSampling_Period = [v15 unsignedIntValue];

      if (v10->_uscSampling_Period)
      {
        v16 = [(NSDictionary *)v9->_payLoad objectForKeyedSubscript:@"draw call num"];
        v17 = [v16 unsignedIntValue];

        v10->_uscSampling_SampleBufferSize = 0x2000000;
        v18 = 60 * v17 * v10->_uscSampling_Period;
        if (v18 <= 0x6666)
        {
          v19 = 26214;
        }

        else
        {
          v19 = v18;
        }

        v10->_uscSampling_AddressBufferSize = 40 * v19;
        if (vm_allocate(mach_task_self_, &v9->_uscSampling_SampleBuffer, 0x2000000uLL, 1))
        {
          goto LABEL_8;
        }

        sub_E484(&v9->_uscSampling_AddressBuffer.__begin_, v19);
        memset(v10->_uscSampling_SampleBuffer, 255, v10->_uscSampling_SampleBufferSize);
        memset(v10->_uscSampling_AddressBuffer.__begin_, 255, v10->_uscSampling_AddressBufferSize);
      }

      v20 = IOServiceMatching("IOAcceleratorES");
      dword_2A6C0 = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
      v9 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (void)dealloc
{
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  [v3 setDelegate:0];

  payLoad = self->_payLoad;
  self->_payLoad = 0;

  uscSampling_SampleBuffer = self->_uscSampling_SampleBuffer;
  if (uscSampling_SampleBuffer)
  {
    vm_deallocate(mach_task_self_, uscSampling_SampleBuffer, self->_uscSampling_SampleBufferSize);
  }

  frameTiming_PerformanceStatisticsArray = self->_frameTiming_PerformanceStatisticsArray;
  self->_frameTiming_PerformanceStatisticsArray = 0;

  if (dword_2A6C0)
  {
    IOObjectRelease(dword_2A6C0);
    dword_2A6C0 = 0;
  }

  v7.receiver = self;
  v7.super_class = DYGLShaderProfilerFunctionPlayerSupport;
  [(DYGLShaderProfilerFunctionPlayerSupport *)&v7 dealloc];
}

- (id)queryShaderStart
{
  v3 = +[DYFuture future];
  self->_queryShaderState = 1;
  v4 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  [v4 setDelegate:self];

  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  v6 = [v5 loopCount];

  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  [v7 setLoopCount:0xFFFFFFFFLL];

  v8 = [NSString stringWithUTF8String:object_getClassName(self)];
  v9 = [NSString stringWithFormat:@"gputools.%@.%p", v8, self];
  v10 = dispatch_queue_create([v9 UTF8String], 0);

  v11 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  v12 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  v13 = [v11 playbackToFunction:{objc_msgSend(v12, "targetFunctionIndex")}];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_E818;
  v19[3] = &unk_247A0;
  v19[4] = self;
  v14 = v3;
  v20 = v14;
  [v13 notifyOnQueue:v10 handler:v19];
  v15 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  [v15 setLoopCount:v6];

  v16 = v20;
  v17 = v14;

  return v14;
}

- (id)_valueFromKey:(id)a3
{
  v3 = a3;
  if (dword_2A6C0 && (CFProperty = IORegistryEntryCreateCFProperty(dword_2A6C0, v3, kCFAllocatorDefault, 0)) != 0)
  {
    v5 = [NSString stringWithString:CFProperty];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_queryShaderResult
{
  v22 = +[NSMutableDictionary dictionary];
  v25 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_drawCallInfo, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_drawCallInfo;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v2)
  {
    v3 = *v27;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v27 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 footprint]);
        v7 = [v5 vertexShaderKey];
        v8 = [v5 fragmentShaderKey];
        v9 = [NSDictionary dictionaryWithObjectsAndKeys:v6, @"footprint", v7, @"vertex shader key", v8, @"fragment shader key", 0];
        [v25 addObject:v9];
      }

      v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v2);
  }

  [v22 setObject:v25 forKey:@"draw call info"];
  v10 = self;
  [v22 setObject:self->_vertexShaderInfo forKey:@"vertex shader info"];
  [v22 setObject:self->_fragmentShaderInfo forKey:@"fragment shader info"];
  uscSampling_SampleBuffer = self->_uscSampling_SampleBuffer;
  if (uscSampling_SampleBuffer)
  {
    v12 = [NSData dataWithBytes:uscSampling_SampleBuffer length:self->_uscSampling_SampleBufferSize];
    [v22 setObject:v12 forKey:@"usc sampling sample data"];

    v13 = [NSData dataWithBytes:self->_uscSampling_AddressBuffer.__begin_ length:self->_uscSampling_AddressBufferSize];
    [v22 setObject:v13 forKey:@"usc sampling address data"];

    v10 = self;
  }

  if (v10->_frameTiming_FrameTimeStatistics.__ptr_)
  {
    v14 = [[NSMutableArray alloc] initWithCapacity:*(v10->_frameTiming_FrameTimeStatistics.__ptr_ + 56)];
    ptr = v10->_frameTiming_FrameTimeStatistics.__ptr_;
    if (ptr[56])
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = [NSNumber numberWithUnsignedLongLong:*(*ptr + 8 * ((v16 + ptr[57] + ptr[6]) % ptr[6]))];
        [v14 addObject:v18];

        ++v17;
        ptr = self->_frameTiming_FrameTimeStatistics.__ptr_;
        --v16;
      }

      while (v17 < ptr[56]);
    }

    [v22 setObject:v14 forKey:@"frametime"];

    v10 = self;
  }

  frameTiming_PerformanceStatisticsArray = v10->_frameTiming_PerformanceStatisticsArray;
  if (frameTiming_PerformanceStatisticsArray)
  {
    [v22 setObject:frameTiming_PerformanceStatisticsArray forKey:@"performance statistics"];
  }

  v20 = [(DYGLShaderProfilerFunctionPlayerSupport *)v10 _valueFromKey:@"MetalPluginName"];
  if (v20)
  {
    [v22 setObject:v20 forKeyedSubscript:@"MetalPluginName"];
  }

  return v22;
}

- (BOOL)shouldExecuteGraphicsFunction
{
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:0];
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v3 function];

  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6 = [v5 gliDispatch];

  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v8 = [v7 gliContext];

  if (self->_queryShaderState == 4)
  {
    [(DYGLShaderProfilerFunctionPlayerSupport *)self _restoreColorAttachment];
  }

  v9 = *v4;
  if (*v4 > 822)
  {
    v10 = v9 - 823;
    if (v10 > 0x1F)
    {
      goto LABEL_13;
    }

    v11 = 1 << v10;
    if ((v11 & 0xF0004000) == 0 && (v11 & 3) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    LODWORD(v64) = 0;
    v6[104](v8, 36006, &v64);
    v12 = v64;
    v65 = v4 + 2;
    *(sub_124E8(&self->_lastUpdatedFramebuffer.__table_.__bucket_list_.__ptr_, v4 + 2) + 6) = v12;
    goto LABEL_13;
  }

  if ((v9 - 139) <= 7 && ((1 << (v9 + 117)) & 0x91) != 0 || v9 == 28 || v9 == 36)
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  if (![v13 mainExecutionMode] || self->_queryShaderState != 3)
  {

    goto LABEL_21;
  }

  v14 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v15 = [v14 currentExecutionModeFunctionIndex];
  v16 = [(NSArray *)self->_functionFlag count];

  if (v16 <= v15)
  {
    goto LABEL_21;
  }

  functionFlag = self->_functionFlag;
  v18 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v19 = -[NSArray objectAtIndexedSubscript:](functionFlag, "objectAtIndexedSubscript:", [v18 currentExecutionModeFunctionIndex]);
  v20 = [v19 objectForKeyedSubscript:@"flag"];
  v21 = [v20 unsignedIntValue];

  if ((v21 & 1) == 0)
  {
    if ((v21 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_49:
    [(DYGLShaderProfilerFunctionPlayerSupport *)self _replaceColorAttachment];
    if ((v21 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

  v65 = v4 + 2;
  [(DYGLShaderProfilerFunctionPlayerSupport *)self _saveColorAttachmentFramebuffer:*(sub_124E8(&self->_lastUpdatedFramebuffer.__table_.__bucket_list_.__ptr_, v4 + 2) + 6)];
  if ((v21 & 4) != 0)
  {
    goto LABEL_49;
  }

LABEL_18:
  if ((v21 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_50:
  (v6[10])(v8, 0x4000);
LABEL_21:
  v22 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v23 = [v22 isFunctionEnabled];

  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v24 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v25 = [v24 mainExecutionMode];

  if ((v25 & 1) == 0)
  {
    goto LABEL_46;
  }

  v26 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v27 = [v26 currentExecutionModeFunctionIndex];
  v28 = [(NSArray *)self->_functionFlag count];

  if (v28 <= v27)
  {
    goto LABEL_37;
  }

  queryShaderState = self->_queryShaderState;
  if (queryShaderState > 4)
  {
    if (queryShaderState == 5)
    {
      result = 1;
      if ((*v4 - 139) <= 7 && ((1 << (*v4 + 117)) & 0x91) != 0 || (*v4 - 823) < 2)
      {
        if (!self->_uscSampling_Enabled)
        {
          [(DYGLShaderProfilerFunctionPlayerSupport *)self _startUSCSampling];
          return 1;
        }

        if (self->_shouldStopUSCSampling && !self->_uscSamplingEnded)
        {
          [(DYGLShaderProfilerFunctionPlayerSupport *)self _endUSCSampling];
          return 1;
        }
      }

      return result;
    }

    if (queryShaderState == 6)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (queryShaderState == 2)
  {
    result = 1;
    if ((*v4 - 139) <= 7 && ((1 << (*v4 + 117)) & 0x91) != 0 || (*v4 - 823) < 2)
    {
      v40 = objc_opt_new();
      [(NSMutableArray *)self->_drawCallInfo addObject:v40];
      self->_drawCallIndex = [(NSMutableArray *)self->_drawCallInfo count];

      return 1;
    }

    return result;
  }

  if (queryShaderState != 3)
  {
LABEL_37:
    v34 = *v4;
    if (*v4 <= 822)
    {
      if (((v34 - 139) > 7 || ((1 << (v34 + 117)) & 0x91) == 0) && v34 != 382 && v34 != 384)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v35 = v34 - 823;
      if (v35 > 0x16 || ((1 << v35) & 0x780003) == 0)
      {
        goto LABEL_46;
      }
    }

    v36 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v37 = [v36 currentExecutionModeFunctionIndex];
    v38 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
    v39 = [v38 targetFunctionIndex];

    if (v37 < v39)
    {
      goto LABEL_46;
    }

    return 0;
  }

  result = 0;
  v31 = *v4;
  if (*v4 <= 133)
  {
    v41 = (v31 - 24);
    if (v41 > 0x36)
    {
      goto LABEL_46;
    }

    if (((1 << v41) & 0x4000000000401FLL) != 0)
    {
      return result;
    }

    if (v41 != 12)
    {
      goto LABEL_46;
    }

    v42 = *v4[9];
    if (v42 != 0x4000)
    {
      (v6[10])(v8, v42 & 0xFFFFBFFF);
    }

    return 0;
  }

  if (v31 > 836)
  {
    if ((v31 - 851) < 4)
    {
      v43 = *v4[9];
      return v43 == 34041 || (v43 - 6145) < 2;
    }

    if (v31 == 837)
    {
      return result;
    }

    goto LABEL_46;
  }

  if ((v31 - 134) > 0x11)
  {
    goto LABEL_77;
  }

  v32 = 1 << (v31 + 122);
  if ((v32 & 0x1220) != 0)
  {
LABEL_78:
    v45 = self->_functionFlag;
    v46 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v47 = -[NSArray objectAtIndexedSubscript:](v45, "objectAtIndexedSubscript:", [v46 currentExecutionModeFunctionIndex]);
    v48 = [v47 objectForKeyedSubscript:@"flag"];
    v49 = [v48 unsignedIntValue];

    v64 = v4[2];
    if ((v49 & 0x30) != 0)
    {
      if (!sub_5308(&self->_drawCallIndexMap.__table_.__bucket_list_.__ptr_, &v64))
      {
        v65 = &v64;
        v50 = sub_1271C(&self->_drawCallIndexMap.__table_.__bucket_list_.__ptr_, &v64);
        v52 = v50 + 3;
        v51 = v50[3];
        if (v51)
        {
          v50[4] = v51;
          operator delete(v51);
          *v52 = 0;
          v52[1] = 0;
          v52[2] = 0;
        }

        *v52 = 0;
        v52[1] = 0;
        v52[2] = 0;
      }

      v65 = &v64;
      v53 = sub_1271C(&self->_drawCallIndexMap.__table_.__bucket_list_.__ptr_, &v64);
      v54 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
      LODWORD(v65) = [v54 currentExecutionModeFunctionIndex];
      sub_F738(v53 + 3, &v65, &self->_drawCallIndex);
    }

    ++self->_drawCallIndex;
    if ((v49 & 0x10) != 0)
    {
      (v6[336])(v8, 32769, 0, 32771, 0);
      (v6[337])(v8, self->_drawCallIndex / 255.0, BYTE1(self->_drawCallIndex) / 255.0, BYTE2(self->_drawCallIndex) / 255.0, HIBYTE(self->_drawCallIndex) / 255.0);
    }

    else if ((v49 & 0x20) != 0)
    {
      v55 = self->_functionFlag;
      v56 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
      v57 = -[NSArray objectAtIndexedSubscript:](v55, "objectAtIndexedSubscript:", [v56 currentExecutionModeFunctionIndex]);
      v58 = [v57 objectForKeyedSubscript:@"parameters"];

      (v6[336])(v8, 32769, 1, 32771, 1);
      v59 = [v58 objectForKeyedSubscript:@"blending draw call scale"];

      if (v59)
      {
        v60 = [v58 objectForKeyedSubscript:@"blending draw call scale"];
        v61 = [v60 unsignedIntValue];

        (v6[337])(v8, 0.0039216, 1.0 / ((1 << v61) * 255.0), 1.0 / ((1 << (2 * v61)) * 255.0), 1.0 / ((1 << (3 * v61)) * 255.0));
      }

      else
      {
        v62 = [v58 objectForKeyedSubscript:@"blending draw call bit start"];
        v63 = [v62 unsignedIntValue];

        (v6[337])(v8, (1 << v63) / 255.0, ((1 << v63) >> 8) / 255.0, ((1 << v63) >> 16) / 255.0, ((1 << v63) >> 24) / 255.0);
      }
    }

    else
    {
      (v6[336])(v8, 0, 0, 0, 0);
    }

    return 1;
  }

  if ((v32 & 0x20001) == 0)
  {
LABEL_77:
    if ((v31 - 823) < 2)
    {
      goto LABEL_78;
    }

LABEL_46:
    [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:0];
    return 1;
  }

  result = 0;
  v33 = *v4[9];
  if (v33 != 3024 && v33 != 3042)
  {
    goto LABEL_46;
  }

  return result;
}

- (void)executePlatformFunction
{
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v3 function];

  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6 = [v5 gliDispatch];

  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v8 = [v7 gliContext];

  v9 = *v4;
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:0];
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:0];
  if (self->_queryShaderState == 3)
  {
    v10 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    if ([v10 mainExecutionMode])
    {
      v11 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
      v12 = [v11 currentExecutionModeFunctionIndex];
      v13 = [(NSArray *)self->_functionFlag count];

      if (v13 > v12)
      {
        functionFlag = self->_functionFlag;
        v15 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
        v16 = -[NSArray objectAtIndexedSubscript:](functionFlag, "objectAtIndexedSubscript:", [v15 currentExecutionModeFunctionIndex]);
        v17 = [v16 objectForKeyedSubscript:@"flag"];
        v18 = [v17 unsignedIntValue];

        if (v18)
        {
          [(DYGLShaderProfilerFunctionPlayerSupport *)self _saveColorAttachmentFramebuffer:*(sub_124E8(&self->_lastUpdatedFramebuffer.__table_.__bucket_list_.__ptr_, v4 + 2) + 6)];
          if ((v18 & 4) == 0)
          {
LABEL_6:
            if ((v18 & 2) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        else if ((v18 & 4) == 0)
        {
          goto LABEL_6;
        }

        [(DYGLShaderProfilerFunctionPlayerSupport *)self _replaceColorAttachment];
        if ((v18 & 2) != 0)
        {
LABEL_21:
          v6[10](v8, 0x4000);
          goto LABEL_22;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  if ((self->_queryShaderState - 5) > 1)
  {
    goto LABEL_22;
  }

  v19 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  if (([v19 mainExecutionMode] & 1) == 0)
  {

    goto LABEL_22;
  }

  v20 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v21 = [v20 currentExecutionModeFunctionIndex];
  v22 = [(NSArray *)self->_functionFlag count];

  if (v22 <= v21 || (v9 + 8190) > 0xC || ((1 << (v9 - 2)) & 0x1801) == 0)
  {
LABEL_22:
    v23 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v24 = [v23 isFunctionEnabled];
    if (v9 == -8188)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 == 1)
    {
      *(sub_124E8(&self->_lastUpdatedFramebuffer.__table_.__bucket_list_.__ptr_, v4 + 2) + 6) = 0;
    }

    return;
  }

  if (self->_queryShaderState == 6)
  {
    [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];

    [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:1];
  }

  else
  {
    (v6[90])(v8);

    [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];
  }
}

- (BOOL)shouldPerformPlaybackLoopIteration:(unsigned int)a3
{
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:0];
  return self->_queryShaderState != 0;
}

- (void)performPlaybackLoopIterationPreCaptureActions:(unsigned int)a3
{
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:0];
  queryShaderState = self->_queryShaderState;
  if (queryShaderState <= 3)
  {
    if (queryShaderState != 1)
    {
      if (queryShaderState == 2)
      {
        if (self->_harvestDrawCallFootprint)
        {
          [(DYGLShaderProfilerFunctionPlayerSupport *)self _backupAndSetupStates];
          self->_drawCallIndex = 0;
          sub_129B4(&self->_colorAttachmentMap);
          sub_12A54(&self->_drawCallIndexMap);
          v15 = 3;
          goto LABEL_29;
        }
      }

      else
      {
        if (queryShaderState != 3)
        {
          return;
        }

        [(DYGLShaderProfilerFunctionPlayerSupport *)self _restoreStates];
      }

      v15 = 4;
      goto LABEL_29;
    }

    v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
    self->_backup_enableWireframePresent = [v7 enableWireframePresent];

    v8 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
    [v8 setEnableWireframePresent:0];

    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_functionFlag, "count") >> 2}];
    drawCallInfo = self->_drawCallInfo;
    self->_drawCallInfo = v9;

    v11 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_functionFlag, "count") >> 2}];
    vertexShaderInfo = self->_vertexShaderInfo;
    self->_vertexShaderInfo = v11;

    v13 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](self->_functionFlag, "count") >> 2}];
    fragmentShaderInfo = self->_fragmentShaderInfo;
    self->_fragmentShaderInfo = v13;

    self->_drawCallIndex = 0;
    v15 = 2;
LABEL_29:
    self->_queryShaderState = v15;
    return;
  }

  if (queryShaderState > 5)
  {
    if (queryShaderState == 6)
    {
      self->_frameTiming_FrameTimeStart = mach_absolute_time();
      if (!self->_frameTiming_Done)
      {
        return;
      }

      LODWORD(v27) = 0;
      v16 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
      v17 = [v16 context];
      [v17 setParameter:1414 to:&v27];

      backup_enableWireframePresent = self->_backup_enableWireframePresent;
      v19 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
      [v19 setEnableWireframePresent:backup_enableWireframePresent];

      v15 = 7;
      goto LABEL_29;
    }

    if (queryShaderState == 7)
    {
      self->_queryShaderState = 0;
    }

    return;
  }

  if (queryShaderState == 4)
  {
    self->_uscSampling_FrameIndexStart = a3;
    self->_uscSampling_TimeStart = mach_absolute_time();
    v15 = 5;
    goto LABEL_29;
  }

  if ([(DYGLShaderProfilerFunctionPlayerSupport *)self _uscSamplingEnded])
  {
    ptr = self->_frameTiming_FrameTimeStatistics.__ptr_;
    if (!ptr)
    {
      operator new();
    }

    sub_10190(ptr);
    frameTiming_PerformanceStatisticsArray = self->_frameTiming_PerformanceStatisticsArray;
    if (frameTiming_PerformanceStatisticsArray)
    {
      [(NSMutableArray *)frameTiming_PerformanceStatisticsArray removeAllObjects];
    }

    else
    {
      v21 = [NSMutableArray alloc];
      v22 = [v21 initWithCapacity:kDYExperimentFrameTimeArraySizeDefault];
      v23 = self->_frameTiming_PerformanceStatisticsArray;
      self->_frameTiming_PerformanceStatisticsArray = v22;
    }

    self->_frameTiming_FrameIndexStart = a3;
    v24 = mach_absolute_time();
    self->_frameTiming_GlobalTimeStart = v24;
    self->_frameTiming_FrameTimeStart = v24;
    self->_frameTiming_Done = 0;
    LODWORD(v27) = 0;
    v25 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v26 = [v25 context];
    [v26 setParameter:1414 to:&v27];

    v15 = 6;
    goto LABEL_29;
  }

  [(DYGLShaderProfilerFunctionPlayerSupport *)self _shouldEndUSCSampling];
}

- (void)_startUSCSampling
{
  if (self->_uscSampling_SampleBuffer)
  {
    v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v4 = *([v3 gliDispatch] + 89);
    v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v4([v5 gliContext]);

    v6 = self->_uscSampling_AddressBufferSize / 0x28uLL;
    v13[0] = self->_uscSampling_AddressBuffer.__begin_;
    v13[1] = v6;
    uscSampling_SampleBufferSize = self->_uscSampling_SampleBufferSize;
    v13[2] = self->_uscSampling_SampleBuffer;
    v13[3] = uscSampling_SampleBufferSize / 0xCuLL;
    v13[4] = uscSampling_SampleBufferSize;
    v8 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v9 = [v8 context];
    [v9 setParameter:1411 to:v13];

    v12 = 0;
    v10 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v11 = [v10 context];
    [v11 setParameter:1412 to:&v12];

    self->_uscSampling_Enabled = 1;
  }
}

- (void)_shouldEndUSCSampling
{
  v3 = mach_absolute_time();
  self->_uscSampling_TimeEnd = v3;
  v4 = v3 - self->_uscSampling_TimeStart;
  if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
  {
    v4 = __udivti3();
  }

  if (v4 >= 1000000000 * self->_uscSampling_Period)
  {
    self->_shouldStopUSCSampling = 1;
  }
}

- (void)_endUSCSampling
{
  v11 = 0;
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v3 context];
  [v4 setParameter:1413 to:&v11];

  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6 = *([v5 gliDispatch] + 89);
  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6([v7 gliContext]);

  v8 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer:0];
  v9 = [v8 context];
  [v9 setParameter:1411 to:&v10];

  self->_uscSamplingEnded = 1;
}

- (void)performPlaybackLoopIterationPostCaptureActions:(unsigned int)a3
{
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldReturn:1];
  [(DYGLShaderProfilerFunctionPlayerSupport *)self setShouldCallSuper:0];
  if (self->_queryShaderState == 6)
  {
    v5 = mach_absolute_time();
    ptr = self->_frameTiming_FrameTimeStatistics.__ptr_;
    v7 = v5 - self->_frameTiming_FrameTimeStart;
    if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
    {
      v7 = __udivti3();
    }

    v18 = *&v7;
    sub_10754(ptr, &v18);
    v8 = [(NSMutableArray *)self->_frameTiming_PerformanceStatisticsArray count];
    if (v8 == kDYExperimentFrameTimeArraySizeDefault)
    {
      [(NSMutableArray *)self->_frameTiming_PerformanceStatisticsArray removeObjectAtIndex:0];
    }

    if (dword_2A6C0 && (CFProperty = IORegistryEntryCreateCFProperty(dword_2A6C0, @"PerformanceStatistics", kCFAllocatorDefault, 0)) != 0)
    {
      v10 = CFProperty;
      [(NSMutableArray *)self->_frameTiming_PerformanceStatisticsArray addObject:CFProperty];
    }

    else
    {
      frameTiming_PerformanceStatisticsArray = self->_frameTiming_PerformanceStatisticsArray;
      v10 = +[NSNull null];
      [(NSMutableArray *)frameTiming_PerformanceStatisticsArray addObject:v10];
    }

    v12 = self->_frameTiming_FrameTimeStatistics.__ptr_;
    v13 = v12[56];
    v14 = v12[6];
    if (v13 >= v14)
    {
      if (a3 - self->_frameTiming_FrameIndexStart > 0x7F)
      {
        goto LABEL_16;
      }

      v15 = v5 - self->_frameTiming_GlobalTimeStart;
      if (g_DYTimebaseInfo != *(&g_DYTimebaseInfo + 1))
      {
        v16 = self->_frameTiming_FrameTimeStatistics.__ptr_;
        v15 = __udivti3();
        v12 = v16;
      }

      if (v15 >= 0x3B9ACA01 || (*(*(v12 + 19) + 8 * ((v12[57] + v14) % v14)) - *(*(v12 + 13) + 8 * ((v12[57] + v14) % v14))) / *(*(v12 + 7) + 8 * ((v12[57] + v14) % v14)) < kDYExperimentFrameTimeVariationLimit1 || v13 >= kDYExperimentFrameTimeVariationArraySizeDefault && (v17 = 0.0, v18 = 0.0, sub_109F4(v12, kDYExperimentFrameTimeVariationArraySizeDefault, &v18, &v17)) && v17 < kDYExperimentFrameTimeVariationLimit2 && v17 - v18 < kDYExperimentFrameTimeVariationRangeMax)
      {
LABEL_16:
        self->_frameTiming_Done = 1;
      }
    }
  }
}

- (void)_replaceColorAttachment
{
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v36 = [v3 function];

  v4 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v5 = [v4 gliDispatch];

  v6 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v7 = [v6 gliContext];

  v50 = 0;
  v5[104](v7, 36006, &v50 + 4);
  v5[104](v7, 36007, &v50);
  v49 = 0;
  v48 = 0;
  if (![(DYGLShaderProfilerFunctionPlayerSupport *)self _getFramebufferWidth:&v49 + 4 height:&v49 numSamples:&v48])
  {
    self->_error = 1;
  }

  v8 = kDYReservedGLNameFootprintRenderbuffer;
  v5[666](v7, 36161, kDYReservedGLNameFootprintRenderbuffer);
  if (v48)
  {
    (v5[756])(v7, 36161);
  }

  else
  {
    (v5[669])(v7, 36161, 32856, HIDWORD(v49), v49);
  }

  v9 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v10 = [v9 context];
  sub_4528(v47, v10);

  v11 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v45 = v47;
  v46 = [v11 gliDispatch];

  v12 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v13 = [v12 captureSessionInfo];
  v14 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v15 = [v13 contextInfoForContext:{objc_msgSend(v14, "ctxID")}];
  [v15 api];

  v44 = 1;
  v16 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v17 = *([v16 currentContextInfo] + 13);

  if (v17 >= 3)
  {
    v5[104](v7, 36063, &v44);
  }

  v38 = self;
  __src[0] = 0;
  __src[1] = 0;
  v43 = 0;
  if (v44 >= 1)
  {
    for (i = 0; i < v44; ++i)
    {
      GPUTools::GL::GetFramebufferAttachmentInfo();
      v19 = __src[1];
      if (__src[1] >= v43)
      {
        v22 = __src[0];
        v23 = __src[1] - __src[0];
        v24 = (__src[1] - __src[0]) >> 5;
        v25 = v24 + 1;
        if ((v24 + 1) >> 59)
        {
          sub_243C();
        }

        v26 = v43 - __src[0];
        if ((v43 - __src[0]) >> 4 > v25)
        {
          v25 = v26 >> 4;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFE0)
        {
          v25 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          sub_13174(__src, v25);
        }

        v27 = (32 * v24);
        v28 = v40;
        *v27 = v39;
        v27[1] = v28;
        v21 = (32 * v24 + 32);
        memcpy(0, v22, v23);
        v29 = __src[0];
        __src[0] = 0;
        __src[1] = v21;
        v43 = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v20 = v40;
        *__src[1] = v39;
        v19[1] = v20;
        v21 = v19 + 2;
      }

      __src[1] = v21;
      if (i)
      {
        v30 = 0;
      }

      else
      {
        v30 = v8;
      }

      (v5[679])(v7, 36009, (i + 36064), 36161, v30);
    }
  }

  v31 = (v37 + 16);
  if (!sub_5308(&v38->_colorAttachmentMap.__table_.__bucket_list_.__ptr_, (v37 + 16)))
  {
    v39 = 0u;
    v40 = 0u;
    v41 = 1065353216;
    v51 = v37 + 16;
    v32 = sub_131BC(&v38->_colorAttachmentMap.__table_.__bucket_list_.__ptr_, v31);
    sub_13478((v32 + 3), &v39);
    sub_459C(&v39);
  }

  *&v39 = v37 + 16;
  v33 = sub_131BC(&v38->_colorAttachmentMap.__table_.__bucket_list_.__ptr_, v31);
  LODWORD(v51) = HIDWORD(v50);
  *&v39 = &v51;
  v34 = sub_1351C(v33 + 3, &v51);
  v35 = v34[3];
  if (v35)
  {
    v34[4] = v35;
    operator delete(v35);
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
  }

  *(v34 + 3) = *__src;
  v34[5] = v43;
  __src[1] = 0;
  v43 = 0;
  __src[0] = 0;
  (v5[12])(v7, 0.0, 0.0, 0.0, 0.0);
  (v5[10])(v7, 0x4000);
  v5[666](v7, 36161, v50);
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

- (void)_saveColorAttachmentFramebuffer:(unsigned int)a3
{
  if (a3)
  {
    v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v4 = *([v3 function] + 2);
    DYHarvestRenderbufferInfo();
  }
}

- (void)_harvestShaderBinaries
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6 = *([v5 currentContextInfo] + 13);

  if (v6 >= 2)
  {
    v25 = 0u;
    *v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__src = 0u;
    v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
    v8 = [v7 context];
    [v8 getParameter:1407 to:__src];

    if (__src[0])
    {
      if (*__src[0] == -17958193)
      {
        v9 = LODWORD(__src[1]);
        if (LODWORD(__src[1]))
        {
          [v3 setLength:LODWORD(__src[1])];
          v10 = [v3 mutableBytes];
          memcpy(v10, __src[0], v9);
        }
      }
    }

    if (v26[0])
    {
      if (*v26[0] == -17958193)
      {
        v11 = LODWORD(v26[1]);
        if (LODWORD(v26[1]))
        {
          [v4 setLength:LODWORD(v26[1])];
          v12 = [v4 mutableBytes];
          memcpy(v12, v26[0], v11);
        }
      }
    }
  }

  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v3 dy_crc32]);
  v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v4 dy_crc32]);
  v15 = [(NSMutableArray *)self->_drawCallInfo objectAtIndexedSubscript:self->_drawCallIndex - 1];
  [v15 setVertexShaderKey:v13];
  [v15 setFragmentShaderKey:v14];
  v16 = [(NSMutableDictionary *)self->_vertexShaderInfo objectForKey:v13];

  if (!v16)
  {
    vertexShaderInfo = self->_vertexShaderInfo;
    v18 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"binary", 0];
    [(NSMutableDictionary *)vertexShaderInfo setObject:v18 forKey:v13];
  }

  v19 = [(NSMutableDictionary *)self->_fragmentShaderInfo objectForKey:v14];

  if (!v19)
  {
    fragmentShaderInfo = self->_fragmentShaderInfo;
    v21 = [NSDictionary dictionaryWithObjectsAndKeys:v4, @"binary", 0];
    [(NSMutableDictionary *)fragmentShaderInfo setObject:v21 forKey:v14];
  }
}

- (BOOL)_getFramebufferWidth:(int *)a3 height:(int *)a4 numSamples:(int *)a5
{
  v9 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v10 = [v9 gliDispatch];

  v11 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v12 = [v11 gliContext];

  v36[0] = 1;
  v13 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v14 = [v13 context];
  sub_4528(v35, v14);

  v15 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v32 = a3;
  [v15 gliDispatch];

  v16 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v17 = [v16 captureSessionInfo];
  v18 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v19 = [v17 contextInfoForContext:{objc_msgSend(v18, "ctxID")}];
  [v19 api];

  v20 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v21 = *([v20 currentContextInfo] + 13);

  if (v21 >= 3)
  {
    v10[104](v12, 36063, v36);
    if (v36[0] < -1)
    {
      goto LABEL_11;
    }
  }

  v30 = a4;
  v31 = a5;
  v23 = 0;
  v24 = 0;
  *&v22 = 0x8000000080000000;
  v33 = v22;
  v25 = 0x7FFFFFFF;
  do
  {
    v26 = v23 + 36064;
    GPUTools::GL::GetFramebufferAttachmentInfo();
    if (v34)
    {
      GPUTools::GL::GetImageInfo();
      *(&v27 + 1) = *(&v33 + 1);
      *&v27 = vmin_s32(0x100000000, *&v33);
      v33 = v27;
      if (v25 > 0)
      {
        v25 = 0;
      }

      v24 = 1;
    }

    v23 = v26 - 36063;
  }

  while (v26 - 36064 <= v36[0]);
  if (v24)
  {
    *v32 = v33;
    *v30 = DWORD1(v33);
    v28 = 1;
    *v31 = v25;
  }

  else
  {
LABEL_11:
    v28 = 0;
  }

  return v28;
}

- (void)_backupAndSetupStates
{
  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v3 = [v5 gliDispatch];

  v6 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v6 gliContext];

  v3[103](v4, 3106, self->_backup_color_clear_value);
  v3[99](v4, 3107, self->_backup_color_writemask);
  v3[104](v4, 3042, &self->_backup_blend);
  v3[103](v4, 32773, self->_backup_blend_color);
  v3[104](v4, 32970, &self->_backup_blend_dst_alpha);
  v3[104](v4, 32968, &self->_backup_blend_dst_rgb);
  v3[104](v4, 34877, &self->_backup_blend_equation_alpha);
  v3[104](v4, 32777, &self->_backup_blend_equation_rgb);
  v3[104](v4, 32971, &self->_backup_blend_src_alpha);
  v3[104](v4, 32969, &self->_backup_blend_src_rgb);
  v3[104](v4, 3024, &self->_backup_dither);
  (v3[72])(v4, 3042);
  v3[458](v4, 35445, (&loc_8A74 + 1));
  (v3[63])(v4, 3024);
  (v3[49])(v4, 1, 1, 1, 1);
  (v3[12])(v4, 0.0, 0.0, 0.0, 0.0);
  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  self->_backup_enableWireframePresent = [v7 enableWireframePresent];
}

- (void)_restoreStates
{
  v8 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v3 = [v8 gliDispatch];

  v9 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v9 gliContext];

  v3[12](v4, self->_backup_color_clear_value[0], self->_backup_color_clear_value[1], self->_backup_color_clear_value[2], self->_backup_color_clear_value[3]);
  (v3[49])(v4, self->_backup_color_writemask[0], self->_backup_color_writemask[1], self->_backup_color_writemask[2], self->_backup_color_writemask[3]);
  if (self->_backup_blend)
  {
    v5 = 72;
  }

  else
  {
    v5 = 63;
  }

  (v3[v5])(v4, 3042);
  v3[337](v4, self->_backup_blend_color[0], self->_backup_blend_color[1], self->_backup_blend_color[2], self->_backup_blend_color[3]);
  (v3[336])(v4, self->_backup_blend_src_rgb, self->_backup_blend_dst_rgb, self->_backup_blend_src_alpha, self->_backup_blend_dst_alpha);
  (v3[458])(v4, self->_backup_blend_equation_rgb, self->_backup_blend_equation_alpha);
  if (self->_backup_dither)
  {
    v6 = 72;
  }

  else
  {
    v6 = 63;
  }

  (v3[v6])(v4, 3024);
  backup_enableWireframePresent = self->_backup_enableWireframePresent;
  v10 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongPlaybackEngine];
  [v10 setEnableWireframePresent:backup_enableWireframePresent];
}

- (void)_restoreColorAttachment
{
  v3 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v4 = [v3 function];

  v5 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v6 = [v5 gliDispatch];

  v7 = [(DYGLShaderProfilerFunctionPlayerSupport *)self strongFunctionPlayer];
  v8 = [v7 gliContext];

  v9 = sub_5308(&self->_colorAttachmentMap.__table_.__bucket_list_.__ptr_, v4 + 2);
  if (v9)
  {
    v10 = v9;
    v25 = self;
    v26 = 0;
    v6[104](v8, 36006, &v26);
    v24 = v10;
    v11 = v10[5];
    if (v11)
    {
      while (1)
      {
        if ((v6[671])(v8, *(v11 + 4)))
        {
          v6[672](v8, 36009, *(v11 + 4));
          v13 = v11[3];
          v12 = v11[4];
          if (v13 != v12)
          {
            break;
          }
        }

LABEL_23:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_24;
        }
      }

      v14 = 36064;
      while (1)
      {
        v15 = v13[2];
        if (v15 != 5890)
        {
          if (v15 == 36161)
          {
            (v6[679])(v8, 36009, v14, 36161, v13[1]);
          }

          else
          {
            (v6[679])(v8, 36009, v14, 36161, 0);
          }

          goto LABEL_20;
        }

        v16 = v13[3];
        if (v16 == 35866 || v16 == 32879)
        {
          v18 = v6[691];
          v19 = v13[1];
          v20 = v13[5];
          v21 = v13[6];
        }

        else
        {
          v18 = v6[677];
          v20 = v13[1];
          v19 = v13[4];
          v21 = v13[5];
          if (!v19)
          {
            v22 = v8;
            v23 = v14;
            v19 = 3553;
            goto LABEL_19;
          }
        }

        v22 = v8;
        v23 = v14;
LABEL_19:
        v18(v22, 36009, v23, v19, v20, v21);
LABEL_20:
        v13 += 8;
        v14 = (v14 + 1);
        if (v13 == v12)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_24:
    v6[672](v8, 36009, v26);
    sub_64A8(&v25->_colorAttachmentMap.__table_.__bucket_list_.__ptr_, v24, v27);
    sub_1342C(v27);
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 44) = 1065353216;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 54) = 1065353216;
  *(self + 43) = 0;
  *(self + 44) = 0;
  *(self + 42) = 0;
  *(self + 50) = 0;
  return self;
}

@end