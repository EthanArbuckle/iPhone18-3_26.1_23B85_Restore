@interface VNHomographyTrackerState
- (VNHomographyTrackerState)init;
- (id).cxx_construct;
- (void)ICReportFrameAnalysis:(id)a3 forPresentationTime:(id *)a4 withStats:(id)a5;
- (void)dealloc;
@end

@implementation VNHomographyTrackerState

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

- (void)ICReportFrameAnalysis:(id)a3 forPresentationTime:(id *)a4 withStats:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v7 = a5;
  v8 = [v44 objectAtIndexedSubscript:0];
  [v8 floatValue];
  v42 = v9;
  v10 = [v44 objectAtIndexedSubscript:3];
  [v10 floatValue];
  v37 = v11;
  v12 = [v44 objectAtIndexedSubscript:6];
  [v12 floatValue];
  v36 = v13;

  v14 = [v44 objectAtIndexedSubscript:1];
  [v14 floatValue];
  v40 = v15;
  v16 = [v44 objectAtIndexedSubscript:4];
  [v16 floatValue];
  v35 = v17;
  v18 = [v44 objectAtIndexedSubscript:7];
  [v18 floatValue];
  v34 = v19;

  v20 = [v44 objectAtIndexedSubscript:2];
  [v20 floatValue];
  v38 = v21;
  v22 = [v44 objectAtIndexedSubscript:5];
  [v22 floatValue];
  v33 = v23;
  v24 = [v44 objectAtIndexedSubscript:8];
  [v24 floatValue];
  v32 = v25;

  v26 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69A8BB8]];
  [v26 floatValue];
  v28 = v27;
  v29 = v42;
  DWORD1(v29) = v37;
  DWORD2(v29) = v36;
  v43 = v29;
  v30 = v40;
  DWORD1(v30) = v35;
  DWORD2(v30) = v34;
  v41 = v30;
  v31 = v38;
  DWORD1(v31) = v33;
  DWORD2(v31) = v32;
  v39 = v31;

  os_unfair_lock_lock(&self->_resultsLock);
  *(&v45 + 1) = DWORD2(v43);
  *&v45 = v43;
  v47 = DWORD2(v41);
  v46 = v41;
  v48 = 0;
  v50 = DWORD2(v39);
  v49 = v39;
  v51 = 0;
  v52 = v28;
  std::vector<std::tuple<simd_float3x3,float>>::push_back[abi:ne200100](&self->_transformsAndConfidences, &v45);
  os_unfair_lock_unlock(&self->_resultsLock);
  dispatch_semaphore_signal(self->_analysisSemaphore);
}

- (void)dealloc
{
  if (self->_analysisSession)
  {
    ICDestroyResult();
    self->_analysisSession = 0;
  }

  v3.receiver = self;
  v3.super_class = VNHomographyTrackerState;
  [(VNHomographyTrackerState *)&v3 dealloc];
}

- (VNHomographyTrackerState)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VNHomographyTrackerState;
  v2 = [(VNHomographyTrackerState *)&v9 init];
  v3 = v2;
  if (v2 && (v10 = *MEMORY[0x1E69A8BA0], v11[0] = v2, [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1], v4 = objc_claimAutoreleasedReturnValue(), v3->_analysisSession = ICAnalysisInit(), v4, v3->_analysisSession) && (v5 = dispatch_semaphore_create(0), analysisSemaphore = v3->_analysisSemaphore, v3->_analysisSemaphore = v5, analysisSemaphore, v3->_analysisSemaphore))
  {
    v3->_analysisPreRollFramesRemaining = 5;
    v3->_resultsLock._os_unfair_lock_opaque = 0;
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end