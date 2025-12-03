@interface ARCoachingDotsRenderer
- (id)init:(id)init pixelFormat:(unint64_t)format metalLibrary:(id)library sampleCount:(int)count;
- (void)encode:(__n128)encode renderCommandEncoder:(__n128)encoder mvp:(__n128)mvp visibility:(float)visibility renderParams:(double)params time:(uint64_t)time;
@end

@implementation ARCoachingDotsRenderer

- (id)init:(id)init pixelFormat:(unint64_t)format metalLibrary:(id)library sampleCount:(int)count
{
  v97 = *MEMORY[0x277D85DE8];
  initCopy = init;
  libraryCopy = library;
  v86.receiver = self;
  v86.super_class = ARCoachingDotsRenderer;
  v12 = [(ARCoachingDotsRenderer *)&v86 init];
  v13 = v12;
  if (v12)
  {
    countCopy = count;
    v12->_pixelFormat = format;
    v14 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v15 = objc_alloc_init(MEMORY[0x277CD6D70]);
    v85 = 0;
    v16 = [libraryCopy newFunctionWithName:@"DotsVertex" constantValues:v15 error:&v85];
    v17 = v85;
    [v14 setVertexFunction:v16];

    v82 = v15;
    if (!v17)
    {
      goto LABEL_12;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
    }

    v18 = ARShouldUseLogTypeError_internalOSVersion_1;
    v19 = _ARLogCoaching_4();
    v20 = v19;
    if (v18 == 1)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        NSStringFromClass(v21);
        v22 = v79 = initCopy;
        localizedDescription = [v17 localizedDescription];
        localizedFailureReason = [v17 localizedFailureReason];
        localizedRecoverySuggestion = [v17 localizedRecoverySuggestion];
        *buf = 138544386;
        v88 = v22;
        v89 = 2048;
        v90 = v13;
        v91 = 2112;
        v92 = localizedDescription;
        v93 = 2112;
        v94 = localizedFailureReason;
        v95 = 2112;
        v96 = localizedRecoverySuggestion;
        v26 = "%{public}@ <%p>: Failed to load vertex function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v27 = v20;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_23D3AE000, v27, v28, v26, buf, 0x34u);

        initCopy = v79;
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      NSStringFromClass(v29);
      v22 = v79 = initCopy;
      localizedDescription = [v17 localizedDescription];
      localizedFailureReason = [v17 localizedFailureReason];
      localizedRecoverySuggestion = [v17 localizedRecoverySuggestion];
      *buf = 138544386;
      v88 = v22;
      v89 = 2048;
      v90 = v13;
      v91 = 2112;
      v92 = localizedDescription;
      v93 = 2112;
      v94 = localizedFailureReason;
      v95 = 2112;
      v96 = localizedRecoverySuggestion;
      v26 = "Error: %{public}@ <%p>: Failed to load vertex function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
      v27 = v20;
      v28 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    v15 = v82;
LABEL_12:

    v84 = 0;
    v30 = [libraryCopy newFunctionWithName:@"DotsFragment" constantValues:v15 error:&v84];
    v31 = v84;
    [v14 setFragmentFunction:v30];

    if (!v31)
    {
LABEL_22:
      colorAttachments = [v14 colorAttachments];
      v45 = [colorAttachments objectAtIndexedSubscript:0];
      [v45 setBlendingEnabled:1];

      colorAttachments2 = [v14 colorAttachments];
      v47 = [colorAttachments2 objectAtIndexedSubscript:0];
      [v47 setRgbBlendOperation:0];

      colorAttachments3 = [v14 colorAttachments];
      v49 = [colorAttachments3 objectAtIndexedSubscript:0];
      [v49 setAlphaBlendOperation:0];

      colorAttachments4 = [v14 colorAttachments];
      v51 = [colorAttachments4 objectAtIndexedSubscript:0];
      [v51 setSourceRGBBlendFactor:4];

      colorAttachments5 = [v14 colorAttachments];
      v53 = [colorAttachments5 objectAtIndexedSubscript:0];
      [v53 setDestinationRGBBlendFactor:5];

      colorAttachments6 = [v14 colorAttachments];
      v55 = [colorAttachments6 objectAtIndexedSubscript:0];
      [v55 setSourceAlphaBlendFactor:4];

      colorAttachments7 = [v14 colorAttachments];
      v57 = [colorAttachments7 objectAtIndexedSubscript:0];
      [v57 setDestinationAlphaBlendFactor:5];

      colorAttachments8 = [v14 colorAttachments];
      v59 = [colorAttachments8 objectAtIndexedSubscript:0];
      [v59 setPixelFormat:format];

      [v14 setRasterSampleCount:countCopy];
      vertexFunction = [v14 vertexFunction];
      if (!vertexFunction)
      {
        goto LABEL_34;
      }

      v61 = vertexFunction;
      fragmentFunction = [v14 fragmentFunction];

      if (!fragmentFunction)
      {
        goto LABEL_34;
      }

      v83 = 0;
      v63 = [initCopy newRenderPipelineStateWithDescriptor:v14 error:&v83];
      v31 = v83;
      pipelineState = v13->_pipelineState;
      v13->_pipelineState = v63;

      if (!v31)
      {
        goto LABEL_34;
      }

      if (ARShouldUseLogTypeError_onceToken_1 != -1)
      {
        [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
      }

      v65 = ARShouldUseLogTypeError_internalOSVersion_1;
      v66 = _ARLogCoaching_4();
      v67 = v66;
      if (v65 == 1)
      {
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          v68 = objc_opt_class();
          v69 = NSStringFromClass(v68);
          localizedDescription2 = [v31 localizedDescription];
          localizedFailureReason2 = [v31 localizedFailureReason];
          localizedRecoverySuggestion2 = [v31 localizedRecoverySuggestion];
          *buf = 138544386;
          v88 = v69;
          v89 = 2048;
          v90 = v13;
          v91 = 2112;
          v92 = localizedDescription2;
          v93 = 2112;
          v94 = localizedFailureReason2;
          v95 = 2112;
          v96 = localizedRecoverySuggestion2;
          v73 = "%{public}@ <%p>: Failed to create pipeline state for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
          v74 = v67;
          v75 = OS_LOG_TYPE_ERROR;
LABEL_32:
          _os_log_impl(&dword_23D3AE000, v74, v75, v73, buf, 0x34u);

          v15 = v82;
        }
      }

      else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v76 = objc_opt_class();
        v69 = NSStringFromClass(v76);
        localizedDescription2 = [v31 localizedDescription];
        localizedFailureReason2 = [v31 localizedFailureReason];
        localizedRecoverySuggestion2 = [v31 localizedRecoverySuggestion];
        *buf = 138544386;
        v88 = v69;
        v89 = 2048;
        v90 = v13;
        v91 = 2112;
        v92 = localizedDescription2;
        v93 = 2112;
        v94 = localizedFailureReason2;
        v95 = 2112;
        v96 = localizedRecoverySuggestion2;
        v73 = "Error: %{public}@ <%p>: Failed to create pipeline state for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v74 = v67;
        v75 = OS_LOG_TYPE_INFO;
        goto LABEL_32;
      }

LABEL_34:
      goto LABEL_35;
    }

    if (ARShouldUseLogTypeError_onceToken_1 != -1)
    {
      [ARCoachingDotsRenderer init:pixelFormat:metalLibrary:sampleCount:];
    }

    v32 = ARShouldUseLogTypeError_internalOSVersion_1;
    v33 = _ARLogCoaching_4();
    v34 = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        NSStringFromClass(v35);
        v36 = v80 = initCopy;
        localizedDescription3 = [v31 localizedDescription];
        localizedFailureReason3 = [v31 localizedFailureReason];
        localizedRecoverySuggestion3 = [v31 localizedRecoverySuggestion];
        *buf = 138544386;
        v88 = v36;
        v89 = 2048;
        v90 = v13;
        v91 = 2112;
        v92 = localizedDescription3;
        v93 = 2112;
        v94 = localizedFailureReason3;
        v95 = 2112;
        v96 = localizedRecoverySuggestion3;
        v40 = "%{public}@ <%p>: Failed to load fragment function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v41 = v34;
        v42 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_23D3AE000, v41, v42, v40, buf, 0x34u);

        initCopy = v80;
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      NSStringFromClass(v43);
      v36 = v80 = initCopy;
      localizedDescription3 = [v31 localizedDescription];
      localizedFailureReason3 = [v31 localizedFailureReason];
      localizedRecoverySuggestion3 = [v31 localizedRecoverySuggestion];
      *buf = 138544386;
      v88 = v36;
      v89 = 2048;
      v90 = v13;
      v91 = 2112;
      v92 = localizedDescription3;
      v93 = 2112;
      v94 = localizedFailureReason3;
      v95 = 2112;
      v96 = localizedRecoverySuggestion3;
      v40 = "Error: %{public}@ <%p>: Failed to load fragment function for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
      v41 = v34;
      v42 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    v15 = v82;
    goto LABEL_22;
  }

LABEL_35:

  v77 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)encode:(__n128)encode renderCommandEncoder:(__n128)encoder mvp:(__n128)mvp visibility:(float)visibility renderParams:(double)params time:(uint64_t)time
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = *(self + 16);
  v16 = a10;
  v17 = a9;
  [v16 setRenderPipelineState:v15];
  v36[0] = a2;
  v36[1] = encode;
  v36[2] = encoder;
  v36[3] = mvp;
  v18 = [v17 newBufferWithBytes:v36 length:64 options:0];
  [v16 setVertexBuffer:v18 offset:0 atIndex:0];
  v37[4] = xmmword_23D3DC590;
  v37[5] = unk_23D3DC5A0;
  v37[6] = xmmword_23D3DC5B0;
  v37[7] = unk_23D3DC5C0;
  v37[0] = xmmword_23D3DC550;
  v37[1] = unk_23D3DC560;
  v37[2] = xmmword_23D3DC570;
  v37[3] = unk_23D3DC580;
  v19 = [v17 newBufferWithBytes:v37 length:128 options:0];
  [v16 setVertexBuffer:v19 offset:0 atIndex:1];
  v20 = a11[5] + params;
  v21 = cosf(v20);
  *&v22 = a11[2];
  v23 = (1.0 - (a11[3] * v21)) * 0.5;
  *(&v22 + 1) = v23;
  v35 = 0;
  v31 = *a11;
  v32 = 1048576000;
  v24 = fmax(visibility, 0.0);
  v33 = v24;
  v34 = v22;
  *&v35 = a11[4];
  v25 = [v17 newBufferWithBytes:&v31 length:32 options:0];

  [v16 setFragmentBuffer:v25 offset:0 atIndex:0];
  [v16 drawPrimitives:4 vertexStart:0 vertexCount:4];

  v26 = *MEMORY[0x277D85DE8];
}

@end