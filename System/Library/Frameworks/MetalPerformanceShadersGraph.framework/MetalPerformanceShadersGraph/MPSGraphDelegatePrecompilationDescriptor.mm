@interface MPSGraphDelegatePrecompilationDescriptor
- (MPSGraphDelegatePrecompilationDescriptor)initWithArchitecture:(id)architecture aneOptionsURL:(id)l;
- (MPSGraphDelegatePrecompilationDescriptor)initWithArchitecture:(id)architecture gpuCoreCount:(unint64_t)count aneOptionsURL:(id)l;
- (void)validatePrecompilationOptions;
@end

@implementation MPSGraphDelegatePrecompilationDescriptor

- (MPSGraphDelegatePrecompilationDescriptor)initWithArchitecture:(id)architecture aneOptionsURL:(id)l
{
  v64[24] = *MEMORY[0x1E69E9840];
  architectureCopy = architecture;
  lCopy = l;
  v39.receiver = self;
  v39.super_class = MPSGraphDelegatePrecompilationDescriptor;
  v6 = [(MPSGraphDelegatePrecompilationDescriptor *)&v39 init];
  v7 = v6;
  if (v6)
  {
    [(MPSGraphDelegatePrecompilationDescriptor *)v6 setArchitecture:architectureCopy];
    v36 = architectureCopy;
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 13, "p"];
    v64[0] = &unk_1F5B75C20;
    v35 = v40;
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 13, "g"];
    v64[1] = &unk_1F5B75C38;
    v33 = v41;
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 13, "s"];
    v42 = v32;
    v64[2] = &unk_1F5B75C50;
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 13, "c"];
    v43 = v31;
    v64[3] = &unk_1F5B75C68;
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 13, "d"];
    v44 = v30;
    v64[4] = &unk_1F5B75C80;
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 14, "p"];
    v45 = v29;
    v64[5] = &unk_1F5B75C98;
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 14, "g"];
    v46 = v28;
    v64[6] = &unk_1F5B75CB0;
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 14, "s"];
    v47 = v27;
    v64[7] = &unk_1F5B75CC8;
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 14, "c"];
    v48 = v26;
    v64[8] = &unk_1F5B75CE0;
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 14, "d"];
    v49 = v25;
    v64[9] = &unk_1F5B75CF8;
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 15, "p"];
    v50 = v24;
    v64[10] = &unk_1F5B75C98;
    v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 15, "g"];
    v64[11] = &unk_1F5B75CB0;
    v23 = v51;
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 15, "s"];
    v52 = v22;
    v64[12] = &unk_1F5B75D10;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 15, "c"];
    v53 = v21;
    v64[13] = &unk_1F5B75D28;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 15, "d"];
    v54 = v20;
    v64[14] = &unk_1F5B75D40;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 16, "p"];
    v55 = v19;
    v64[15] = &unk_1F5B75D58;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 16, "g"];
    v56 = v18;
    v64[16] = &unk_1F5B75CB0;
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 16, "s"];
    v57 = v34;
    v64[17] = &unk_1F5B75D70;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 16, "c"];
    v58 = v8;
    v64[18] = &unk_1F5B75D28;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 17, "p"];
    v59 = v9;
    v64[19] = &unk_1F5B75D58;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 17, "g"];
    v60 = v10;
    v64[20] = &unk_1F5B75CB0;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 17, "s"];
    v61 = v11;
    v64[21] = &unk_1F5B75D70;
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 17, "c"];
    v62 = v12;
    v64[22] = &unk_1F5B75D28;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%i%s", @"h", 17, "d"];
    v63 = v13;
    v64[23] = &unk_1F5B75D40;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v40 count:24];

    v15 = [v14 objectForKeyedSubscript:v36];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    [(MPSGraphDelegatePrecompilationDescriptor *)v7 setGpuCoreCount:unsignedIntegerValue];
    [(MPSGraphDelegatePrecompilationDescriptor *)v7 setAneOptionsURL:lCopy];
  }

  return v7;
}

- (MPSGraphDelegatePrecompilationDescriptor)initWithArchitecture:(id)architecture gpuCoreCount:(unint64_t)count aneOptionsURL:(id)l
{
  architectureCopy = architecture;
  lCopy = l;
  NSLog(&cfstr_WarningGpuCore.isa);
  v9 = [(MPSGraphDelegatePrecompilationDescriptor *)self initWithArchitecture:architectureCopy aneOptionsURL:lCopy];

  return v9;
}

- (void)validatePrecompilationOptions
{
  architecture = [(MPSGraphDelegatePrecompilationDescriptor *)self architecture];
  if (!architecture || (v4 = architecture, -[MPSGraphDelegatePrecompilationDescriptor architecture](self, "architecture"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  if ((![(MPSGraphDelegatePrecompilationDescriptor *)self gpuCoreCount]|| ![(MPSGraphDelegatePrecompilationDescriptor *)self gpuCoreCount]) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  aneOptionsURL = [(MPSGraphDelegatePrecompilationDescriptor *)self aneOptionsURL];

  if (aneOptionsURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    aneOptionsURL2 = [(MPSGraphDelegatePrecompilationDescriptor *)self aneOptionsURL];
    path = [aneOptionsURL2 path];
    v11 = [defaultManager fileExistsAtPath:path];

    if ((v11 & 1) == 0 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v12 = MEMORY[0x1E695DEF0];
    aneOptionsURL3 = [(MPSGraphDelegatePrecompilationDescriptor *)self aneOptionsURL];
    v20 = 0;
    v14 = [v12 dataWithContentsOfURL:aneOptionsURL3 options:2 error:&v20];
    v15 = v20;

    if (!v14 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v18 = 0;
    v19 = 0;
    v16 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:&v19 error:&v18];
    v17 = v18;

    if (!v16)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }
}

@end