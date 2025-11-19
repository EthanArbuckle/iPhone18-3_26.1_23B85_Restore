@interface VCIDRScheduler
+ (unsigned)computeGcdForX:(unsigned int)a3 y:(unsigned int)a4;
- (BOOL)computeCaptureFramerate;
- (VCIDRScheduler)initWithStreams:(id)a3 captureFramerate:(unsigned int)a4;
- (void)computeBasePeriod;
- (void)computeCaptureFramerate;
- (void)computeGroupList;
- (void)computeSchedulerItemList;
- (void)computeSchedulerItemsBudget;
- (void)computeSchedulerItemsPosition;
- (void)computeStreamsIDRPosition;
- (void)dealloc;
- (void)placeRemainingItems:(id)a3 placedItems:(id)a4 leftItem:(id)a5 rightItem:(id)a6;
- (void)realignStreams;
@end

@implementation VCIDRScheduler

- (VCIDRScheduler)initWithStreams:(id)a3 captureFramerate:(unsigned int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCIDRScheduler;
  v6 = [(VCIDRScheduler *)&v10 init];
  if (v6)
  {
    v6->_streams = a3;
    v6->_captureFramerate = a4;
    v6->_schedulerGroups = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_schedulerItems = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(VCIDRScheduler *)v6 computeBasePeriod];
    if (![(VCIDRScheduler *)v6 computeCaptureFramerate])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCIDRScheduler initWithStreams:v7 captureFramerate:v8];
        }
      }

      v6 = 0;
    }

    [(VCIDRScheduler *)v6 computeGroupList];
    [(VCIDRScheduler *)v6 computeSchedulerItemList];
    [(VCIDRScheduler *)v6 computeSchedulerItemsBudget];
    [(VCIDRScheduler *)v6 computeSchedulerItemsPosition];
    [(VCIDRScheduler *)v6 computeStreamsIDRPosition];
    [(VCIDRScheduler *)v6 realignStreams];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCIDRScheduler;
  [(VCIDRScheduler *)&v3 dealloc];
}

+ (unsigned)computeGcdForX:(unsigned int)a3 y:(unsigned int)a4
{
  if (!a3)
  {
    return a4;
  }

  do
  {
    result = a3;
    a3 = a4 % a3;
    a4 = result;
  }

  while (a3);
  return result;
}

- (void)computeBasePeriod
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (BOOL)computeCaptureFramerate
{
  v34 = *MEMORY[0x1E69E9840];
  p_captureFramerate = &self->_captureFramerate;
  HIDWORD(v3) = 652835029 * self->_captureFramerate * self->_basePeriodMs;
  LODWORD(v3) = HIDWORD(v3);
  if ((v3 >> 3) < 0x418938)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    streams = self->_streams;
    v6 = [(NSArray *)streams countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(streams);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = *p_captureFramerate;
        if (v11 % [v10 framerate])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)streams countByEnumeratingWithState:&v30 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_20;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v4)
      {
        v17 = *p_captureFramerate;
        v19 = 136316162;
        v20 = v15;
        v21 = 2080;
        v22 = "[VCIDRScheduler computeCaptureFramerate]";
        v23 = 1024;
        v24 = 90;
        v25 = 1024;
        v26 = v17;
        v27 = 1024;
        v28 = [v10 framerate];
        _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d Configured max capture frame _captureFramerate=%d is incompatible with streamInfo.framerate=%d", &v19, 0x28u);
        goto LABEL_20;
      }
    }

    else
    {
LABEL_13:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *p_captureFramerate;
          v19 = 136315906;
          v20 = v12;
          v21 = 2080;
          v22 = "[VCIDRScheduler computeCaptureFramerate]";
          v23 = 1024;
          v24 = 94;
          v25 = 1024;
          v26 = v14;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Computed capture frame rate: %d", &v19, 0x22u);
        }
      }

      LOBYTE(v4) = 1;
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_20:
      LOBYTE(v4) = 0;
      return v4;
    }

    VRTraceErrorLogLevelToCSTR();
    v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [VCIDRScheduler computeCaptureFramerate];
      goto LABEL_20;
    }
  }

  return v4;
}

- (void)computeGroupList
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)computeSchedulerItemList
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)computeSchedulerItemsBudget
{
  v53 = *MEMORY[0x1E69E9840];
  framesPerBasePeriod = self->_framesPerBasePeriod;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  schedulerItems = self->_schedulerItems;
  v5 = [(NSMutableArray *)schedulerItems countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v50;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(schedulerItems);
        }

        v7 += [*(*(&v49 + 1) + 8 * i) weightFactor];
      }

      v6 = [(NSMutableArray *)schedulerItems countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    v12 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        basePeriodMs = self->_basePeriodMs;
        v14 = self->_framesPerBasePeriod;
        *buf = 136316418;
        v39 = v10;
        v40 = 2080;
        v41 = "[VCIDRScheduler computeSchedulerItemsBudget]";
        v42 = 1024;
        v43 = 128;
        v44 = 1024;
        *v45 = basePeriodMs;
        *&v45[4] = 1024;
        *&v45[6] = v7;
        v46 = 1024;
        v47 = v14;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Total budget: time:%dms weight:%d frames:%d", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v29 = self->_basePeriodMs;
      v30 = self->_framesPerBasePeriod;
      *buf = 136316418;
      v39 = v10;
      v40 = 2080;
      v41 = "[VCIDRScheduler computeSchedulerItemsBudget]";
      v42 = 1024;
      v43 = 128;
      v44 = 1024;
      *v45 = v29;
      *&v45[4] = 1024;
      *&v45[6] = v7;
      v46 = 1024;
      v47 = v30;
      _os_log_debug_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Total budget: time:%dms weight:%d frames:%d", buf, 0x2Eu);
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_schedulerItems;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (v15)
  {
    v18 = v15;
    v19 = *v35;
    *&v16 = 136315906;
    v31 = v16;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v34 + 1) + 8 * j);
        v22 = self->_basePeriodMs;
        if (v7)
        {
          v22 = [*(*(&v34 + 1) + 8 * j) weightFactor] * v22 / v7;
        }

        LODWORD(v17) = self->_captureFramerate;
        v23 = llround(v22 * v17 / 1000.0);
        if (v23 <= 1)
        {
          v23 = 1;
        }

        if (v23 >= framesPerBasePeriod)
        {
          v24 = framesPerBasePeriod;
        }

        else
        {
          v24 = v23;
        }

        [v21 setBudgetInCaptureFrames:{v24, v31}];
        v25 = [v21 budgetInCaptureFrames];
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          v28 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v39 = v26;
              v40 = 2080;
              v41 = "[VCIDRScheduler computeSchedulerItemsBudget]";
              v42 = 1024;
              v43 = 135;
              v44 = 2112;
              *v45 = v21;
              _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Bugdet computed for item: %@", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = v31;
            v39 = v26;
            v40 = 2080;
            v41 = "[VCIDRScheduler computeSchedulerItemsBudget]";
            v42 = 1024;
            v43 = 135;
            v44 = 2112;
            *v45 = v21;
            _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Bugdet computed for item: %@", buf, 0x26u);
          }
        }

        framesPerBasePeriod -= v25;
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)placeRemainingItems:(id)a3 placedItems:(id)a4 leftItem:(id)a5 rightItem:(id)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = [a3 objectAtIndexedSubscript:0];
  v9 = [a5 framePosition];
  v51 = [a5 budgetInCaptureFrames] + v9;
  [a3 removeObject:v8];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  obj = a3;
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v47 = a5;
  v12 = [a5 budgetInCaptureFrames];
  v13 = [v8 budgetInCaptureFrames];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v58 = v14;
        v59 = 2080;
        v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
        v61 = 1024;
        v62 = 156;
        v63 = 1024;
        *v64 = v51;
        *&v64[4] = 1024;
        *&v64[6] = v12;
        v65 = 1024;
        v66 = v13;
        v67 = 2112;
        v68 = v8;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Position next item (start position=%d leftDist=%d rightDist=%d): %@", buf, 0x38u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v58 = v14;
      v59 = 2080;
      v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
      v61 = 1024;
      v62 = 156;
      v63 = 1024;
      *v64 = v51;
      *&v64[4] = 1024;
      *&v64[6] = v12;
      v65 = 1024;
      v66 = v13;
      v67 = 2112;
      v68 = v8;
      _os_log_debug_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Position next item (start position=%d leftDist=%d rightDist=%d): %@", buf, 0x38u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    v19 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v58 = v17;
        v59 = 2080;
        v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
        v61 = 1024;
        v62 = 157;
        v63 = 2112;
        *v64 = v47;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Left item: %@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    v22 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v58 = v20;
        v59 = 2080;
        v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
        v61 = 1024;
        v62 = 158;
        v63 = 2112;
        *v64 = a6;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Right item: %@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:];
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    v25 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v58 = v23;
        v59 = 2080;
        v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
        v61 = 1024;
        v62 = 159;
        v63 = 2112;
        *v64 = obj;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remaining items: %@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:];
    }
  }

  v49 = v10;
  v44 = v8;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v26 = [obj countByEnumeratingWithState:&v53 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v54;
    v29 = v11;
    do
    {
      v30 = 0;
      do
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v53 + 1) + 8 * v30);
        if (v12 > v13 || v12 == v13 && (v37 = [a6 weightFactor], v37 < objc_msgSend(v47, "weightFactor")))
        {
          [v11 addObject:v31];
          v13 += [v31 budgetInCaptureFrames];
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_46;
          }

          v32 = VRTraceErrorLogLevelToCSTR();
          v33 = *MEMORY[0x1E6986650];
          v34 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v58 = v32;
              v59 = 2080;
              v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
              v61 = 1024;
              v62 = 165;
              v63 = 1024;
              *v64 = v51;
              *&v64[4] = 1024;
              *&v64[6] = v12;
              v65 = 1024;
              v66 = v13;
              v67 = 2112;
              v68 = v31;
              v35 = v33;
              v36 = " [%s] %s:%d Place item in the right bucket (position=%d leftDist=%d rightDist=%d): %@ ";
LABEL_41:
              _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0x38u);
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316674;
            v58 = v32;
            v59 = 2080;
            v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
            v61 = 1024;
            v62 = 165;
            v63 = 1024;
            *v64 = v51;
            *&v64[4] = 1024;
            *&v64[6] = v12;
            v65 = 1024;
            v66 = v13;
            v67 = 2112;
            v68 = v31;
            v41 = v33;
            v42 = " [%s] %s:%d Place item in the right bucket (position=%d leftDist=%d rightDist=%d): %@ ";
LABEL_49:
            _os_log_debug_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_DEBUG, v42, buf, 0x38u);
          }
        }

        else
        {
          [v49 addObject:v31];
          v12 += [v31 budgetInCaptureFrames];
          v51 += [v31 budgetInCaptureFrames];
          if (VRTraceGetErrorLogLevelForModule() < 8)
          {
            goto LABEL_46;
          }

          v38 = VRTraceErrorLogLevelToCSTR();
          v39 = *MEMORY[0x1E6986650];
          v40 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316674;
              v58 = v38;
              v59 = 2080;
              v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
              v61 = 1024;
              v62 = 170;
              v63 = 1024;
              *v64 = v51;
              *&v64[4] = 1024;
              *&v64[6] = v12;
              v65 = 1024;
              v66 = v13;
              v67 = 2112;
              v68 = v31;
              v35 = v39;
              v36 = " [%s] %s:%d Place item in the left bucket (position=%d leftDist=%d rightDist=%d): %@ ";
              goto LABEL_41;
            }
          }

          else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316674;
            v58 = v38;
            v59 = 2080;
            v60 = "[VCIDRScheduler placeRemainingItems:placedItems:leftItem:rightItem:]";
            v61 = 1024;
            v62 = 170;
            v63 = 1024;
            *v64 = v51;
            *&v64[4] = 1024;
            *&v64[6] = v12;
            v65 = 1024;
            v66 = v13;
            v67 = 2112;
            v68 = v31;
            v41 = v39;
            v42 = " [%s] %s:%d Place item in the left bucket (position=%d leftDist=%d rightDist=%d): %@ ";
            goto LABEL_49;
          }
        }

        v11 = v29;
LABEL_46:
        ++v30;
      }

      while (v27 != v30);
      v43 = [obj countByEnumeratingWithState:&v53 objects:v52 count:16];
      v27 = v43;
    }

    while (v43);
  }

  [v44 setFramePosition:v51];
  [a4 addObject:v44];
  if ([v49 count])
  {
    [(VCIDRScheduler *)self placeRemainingItems:v49 placedItems:a4 leftItem:v47 rightItem:v44];
  }

  if ([v11 count])
  {
    [(VCIDRScheduler *)self placeRemainingItems:v11 placedItems:a4 leftItem:v44 rightItem:a6];
  }
}

- (void)computeSchedulerItemsPosition
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)computeStreamsIDRPosition
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_schedulerGroups allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) computeStreamsIDRPosition];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)realignStreams
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  streams = self->_streams;
  v4 = [(NSArray *)streams countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v27;
    v8 = -1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(streams);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 weightFactor] < v8)
        {
          v8 = [v10 weightFactor];
          v6 = [v10 framePosition];
        }
      }

      v5 = [(NSArray *)streams countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_streams;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        v17 = [v16 framePosition];
        v18 = [v16 framePosition];
        if (v17 >= v6)
        {
          v19 = v18 - v6;
        }

        else
        {
          v19 = v18 - v6 + [v16 framesPerIdrPeriod];
        }

        [v16 setFramePosition:v19];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)initWithStreams:(uint64_t)a1 captureFramerate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  v4 = 2080;
  v5 = "[VCIDRScheduler initWithStreams:captureFramerate:]";
  v6 = 1024;
  v7 = 39;
  _os_log_error_impl(&dword_1DB56E000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to compute a valid capture framerate", &v2, 0x1Cu);
}

- (void)computeCaptureFramerate
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  v4 = 85;
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Computed capture frame rate is not a valid _captureFramerate=%d", v3, 0x22u);
}

- (void)placeRemainingItems:placedItems:leftItem:rightItem:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)placeRemainingItems:placedItems:leftItem:rightItem:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)placeRemainingItems:placedItems:leftItem:rightItem:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end