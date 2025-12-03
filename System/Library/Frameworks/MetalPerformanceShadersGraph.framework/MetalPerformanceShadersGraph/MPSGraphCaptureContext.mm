@interface MPSGraphCaptureContext
- (MPSGraphCaptureContext)initWithOutputFolderPath:(id)path graphName:(id)name;
- (id)addFunctionWithBitCode:(id)code metalFunctionName:(id)name reflection:(id)reflection;
- (id)constantBufferName:(id)name;
- (id)dataWithBytes:(const void *)bytes length:(unint64_t)length;
- (id)functionNameForPipeline:(id)pipeline;
- (id)reflectionForPipeline:(id)pipeline;
- (id)wrapComputeEncoder:(id)encoder;
- (void)addPipeline:(id)pipeline functionName:(id)name withReflection:(id)reflection;
- (void)createNodeWithDispatchInfo:(id)info encoderContext:(void *)context;
- (void)dealloc;
- (void)setConstantBuffer:(id)buffer;
- (void)setFeeds:(id)feeds names:(id)names;
- (void)setInputBuffers:(id)buffers names:(id)names;
- (void)setOutputBuffers:(id)buffers names:(id)names;
- (void)setResults:(id)results names:(id)names;
- (void)writeToJsonFile:(__sFILE *)file;
- (void)writejsonFile:(id)file;
@end

@implementation MPSGraphCaptureContext

- (MPSGraphCaptureContext)initWithOutputFolderPath:(id)path graphName:(id)name
{
  pathCopy = path;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = MPSGraphCaptureContext;
  v8 = [(MPSGraphCaptureContext *)&v27 init];
  v9 = objc_autoreleasePoolPush();
  v10 = objc_opt_new();
  nodes = v8->_nodes;
  v8->_nodes = v10;

  v12 = objc_opt_new();
  links = v8->_links;
  v8->_links = v12;

  v14 = objc_opt_new();
  functions = v8->_functions;
  v8->_functions = v14;

  v16 = objc_opt_new();
  data = v8->_data;
  v8->_data = v16;

  v18 = objc_opt_new();
  portLinks = v8->_portLinks;
  v8->_portLinks = v18;

  v20 = objc_opt_new();
  pipelineReflectionDictionary = v8->_pipelineReflectionDictionary;
  v8->_pipelineReflectionDictionary = v20;

  v22 = objc_opt_new();
  pipelineFunctionNameDictionary = v8->_pipelineFunctionNameDictionary;
  v8->_pipelineFunctionNameDictionary = v22;

  v24 = objc_opt_new();
  constantBuffers = v8->_constantBuffers;
  v8->_constantBuffers = v24;

  operator new();
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    v4 = context[7];
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = context[5];
    context[5] = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = context[2];
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *context;
    *context = 0;
    if (v9)
    {
      operator delete(v9);
    }

    MEMORY[0x1E12E5B90](context, 0x10A0C40864A76ABLL);
  }

  self->_context = 0;
  v10.receiver = self;
  v10.super_class = MPSGraphCaptureContext;
  [(MPSGraphCaptureContext *)&v10 dealloc];
}

- (void)setInputBuffers:(id)buffers names:(id)names
{
  buffersCopy = buffers;
  namesCopy = names;
  v7 = getGraphPorts("input", buffersCopy, namesCopy, self->_context);
  inputPorts = self->_inputPorts;
  self->_inputPorts = v7;
}

- (void)setOutputBuffers:(id)buffers names:(id)names
{
  buffersCopy = buffers;
  namesCopy = names;
  v7 = getGraphPorts("output", buffersCopy, namesCopy, self->_context + 5);
  outputPorts = self->_outputPorts;
  self->_outputPorts = v7;
}

- (void)setFeeds:(id)feeds names:(id)names
{
  namesCopy = names;
  v6 = getBuffersFromTensorDatas(feeds);
  [(MPSGraphCaptureContext *)self setInputBuffers:v6 names:namesCopy];
}

- (void)setResults:(id)results names:(id)names
{
  namesCopy = names;
  v6 = getBuffersFromTensorDatas(results);
  [(MPSGraphCaptureContext *)self setOutputBuffers:v6 names:namesCopy];
}

- (id)dataWithBytes:(const void *)bytes length:(unint64_t)length
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = [(NSMutableArray *)self->_data count];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data%u", v7];
  uTF8String = [(NSString *)self->_outputFolderPath UTF8String];
  v10 = strlen(uTF8String);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v10)
  {
    memmove(&__dst, uTF8String, v10);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  std::string::append(&__dst, [v8 UTF8String]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v13 = fopen(p_dst, "wb");
  if (!v13 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  fwrite(bytes, 1uLL, length, v13);
  fclose(v13);
  v18[0] = @"Name";
  v18[1] = @"FilePath";
  v19[0] = v8;
  v19[1] = v8;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [(NSMutableArray *)self->_data addObject:v14];
  v15 = v8;

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v15;
}

- (void)setConstantBuffer:(id)buffer
{
  bufferCopy = buffer;
  v4 = [MEMORY[0x1E696B098] valueWithPointer:?];
  v5 = -[MPSGraphCaptureContext dataWithBytes:length:](self, "dataWithBytes:length:", [bufferCopy contents], objc_msgSend(bufferCopy, "length"));
  [(NSMutableDictionary *)self->_constantBuffers setObject:v5 forKeyedSubscript:v4];
}

- (id)constantBufferName:(id)name
{
  v4 = [MEMORY[0x1E696B098] valueWithPointer:name];
  v5 = [(NSMutableDictionary *)self->_constantBuffers objectForKeyedSubscript:v4];

  return v5;
}

- (id)addFunctionWithBitCode:(id)code metalFunctionName:(id)name reflection:(id)reflection
{
  v47 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  nameCopy = name;
  reflectionCopy = reflection;
  v8 = [(NSMutableArray *)self->_functions count];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"function%u", v8];
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bc", v30];
  uTF8String = [(NSString *)self->_outputFolderPath UTF8String];
  v10 = strlen(uTF8String);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v10)
  {
    memmove(&__dst, uTF8String, v10);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  std::string::append(&__dst, [v32 UTF8String]);
  v12 = codeCopy;
  bytes = [codeCopy bytes];
  v14 = [codeCopy length];
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v16 = fopen(p_dst, "wb");
  fwrite(bytes, 1uLL, v14, v16);
  fclose(v16);
  v34 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  arguments = [reflectionCopy arguments];
  v18 = [arguments countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(arguments);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        if (![v21 type])
        {
          v44[0] = @"Name";
          name = [v21 name];
          v45[0] = name;
          v44[1] = @"Buffer";
          v42 = @"BindIndex";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "index")}];
          v43 = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v45[1] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];

          [v34 addObject:v25];
        }
      }

      v18 = [arguments countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v18);
  }

  v40[0] = @"Name";
  v40[1] = @"AirBitcodeFile";
  v41[0] = v30;
  v41[1] = v32;
  v40[2] = @"MetalFunctionName";
  v40[3] = @"Ports";
  v41[2] = nameCopy;
  v41[3] = v34;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
  [(NSMutableArray *)self->_functions addObject:v26];
  v27 = v30;

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v27;
}

- (void)addPipeline:(id)pipeline functionName:(id)name withReflection:(id)reflection
{
  nameCopy = name;
  reflectionCopy = reflection;
  v9 = [MEMORY[0x1E696B098] valueWithPointer:pipeline];
  [(NSMutableDictionary *)self->_pipelineReflectionDictionary setObject:reflectionCopy forKeyedSubscript:v9];
  [(NSMutableDictionary *)self->_pipelineFunctionNameDictionary setObject:nameCopy forKeyedSubscript:v9];
}

- (id)reflectionForPipeline:(id)pipeline
{
  v4 = [MEMORY[0x1E696B098] valueWithPointer:pipeline];
  v5 = [(NSMutableDictionary *)self->_pipelineReflectionDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)functionNameForPipeline:(id)pipeline
{
  v4 = [MEMORY[0x1E696B098] valueWithPointer:pipeline];
  v5 = [(NSMutableDictionary *)self->_pipelineFunctionNameDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (id)wrapComputeEncoder:(id)encoder
{
  encoderCopy = encoder;
  v5 = [[MPSCaptureCommandEncoder alloc] initWithCommandEncoder:encoderCopy captureContext:self];

  return v5;
}

- (void)createNodeWithDispatchInfo:(id)info encoderContext:(void *)context
{
  v159 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v93 = objc_opt_new();
  contextCopy = context;
  v86 = *(context + 3);
  MPSLibrary::getComputePipelineStateInfo();
  v90 = v122;
  v87 = [MEMORY[0x1E696B098] valueWithPointer:v86];
  v89 = [(NSMutableDictionary *)self->_pipelineFileNameDictionary objectForKeyedSubscript:?];
  selfCopy = self;
  if (!v89)
  {
    v6 = v121;
    v7 = [(MPSGraphCaptureContext *)self addFunctionWithBitCode:v123 metalFunctionName:v6 reflection:v90];
    [(NSMutableDictionary *)self->_pipelineFileNameDictionary setObject:v7 forKeyedSubscript:v87];
    v89 = v7;
    performanceStatistics = [v90 performanceStatistics];
    v9 = performanceStatistics;
    if (performanceStatistics)
    {
      v10 = [performanceStatistics objectForKeyedSubscript:*MEMORY[0x1E6973FA0]];
      v11 = v10;
      if (v10)
      {
        intValue = [v10 intValue];
        if (intValue >= 1)
        {
          v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], "Function ", 9);
          v14 = v6;
          uTF8String = [v6 UTF8String];
          v16 = strlen(uTF8String);
          v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, uTF8String, v16);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " spilled ", 9);
          v19 = MEMORY[0x1E12E56E0](v18, intValue);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " bytes\n", 7);
          selfCopy->_doNotWriteJsonFile = 1;
        }
      }
    }

    self = selfCopy;
  }

  v20 = [(NSMutableArray *)self->_nodes count];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v100 = [MEMORY[0x1E696AEC0] stringWithFormat:@"node%u", v20];
  [v93 setObject:? forKeyedSubscript:?];
  [v93 setObject:v89 forKeyedSubscript:@"Function"];
  [v93 setObject:array forKeyedSubscript:@"OutputPortStorage"];
  [v93 setObject:infoCopy forKeyedSubscript:@"Dispatch"];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [v90 arguments];
  v98 = [obj countByEnumeratingWithState:&v117 objects:v158 count:16];
  if (v98)
  {
    v97 = *v118;
    do
    {
      for (i = 0; i != v98; ++i)
      {
        if (*v118 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v103 = *(*(&v117 + 1) + 8 * i);
        if ([v103 type] == 1)
        {
          if (*(contextCopy[4] + 8 * [v103 index]))
          {
            v156[0] = @"Size";
            v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            v157[0] = v22;
            v156[1] = @"BindIndex";
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v103, "index")}];
            v157[1] = v23;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v157 forKeys:v156 count:2];

            [array2 addObject:v21];
            goto LABEL_12;
          }
        }

        else if (![v103 type])
        {
          v24 = *contextCopy + 32 * [v103 index];
          v101 = *(v24 + 8);
          if (*(v24 + 16) == 1)
          {
            v154[0] = @"Source";
            v152[0] = @"Data";
            null = [MEMORY[0x1E695DFB0] null];
            v153[0] = null;
            v152[1] = @"Port";
            v153[1] = *(v24 + 24);
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:2];
            v155[0] = v26;
            v154[1] = @"Offset";
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v101];
            v155[1] = v27;
            v154[2] = @"Dest";
            v151[0] = v100;
            v150[0] = @"Node";
            v150[1] = @"Port";
            name = [v103 name];
            v151[1] = name;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v151 forKeys:v150 count:2];
            v155[2] = v29;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v155 forKeys:v154 count:3];

            [(NSMutableArray *)selfCopy->_links addObject:v21];
            goto LABEL_12;
          }

          if (*v24)
          {
            v30 = *v24;
            context = self->_context;
            v32 = v30;
            v33 = std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::find<void *>(context, v32);
            v106 = v32;
            if (v33)
            {
              v34 = v33[3];

              if (v34)
              {
                v148[0] = @"Source";
                v147[0] = selfCopy->_graphName;
                v146[0] = @"Graph";
                v146[1] = @"Port";
                v35 = [v34 objectForKeyedSubscript:@"Name"];
                v147[1] = v35;
                v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v147 forKeys:v146 count:2];
                v149[0] = v36;
                v148[1] = @"Offset";
                v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v101];
                v149[1] = v37;
                v148[2] = @"Dest";
                v145[0] = v100;
                v144[0] = @"Node";
                v144[1] = @"Port";
                name2 = [v103 name];
                v145[1] = name2;
                v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v145 forKeys:v144 count:2];
                v149[2] = v39;
                v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v149 forKeys:v148 count:3];

                [(NSMutableArray *)selfCopy->_portLinks addObject:v40];
                v41 = 1;
                goto LABEL_27;
              }

              v41 = 0;
            }

            else
            {
              v41 = 0;
              v34 = v32;
LABEL_27:
            }

            lastNodeWrittingToBuffer = selfCopy->_lastNodeWrittingToBuffer;
            v43 = [MEMORY[0x1E696B098] valueWithPointer:v106];
            v92 = [(NSMutableDictionary *)lastNodeWrittingToBuffer objectForKeyedSubscript:v43];

            if (v92)
            {
              v115 = 0u;
              v116 = 0u;
              v114 = 0u;
              v113 = 0u;
              v104 = v92;
              v44 = [v104 countByEnumeratingWithState:&v113 objects:v143 count:16];
              if (v44)
              {
                v105 = *v114;
                do
                {
                  for (j = 0; j != v44; ++j)
                  {
                    if (*v114 != v105)
                    {
                      objc_enumerationMutation(v104);
                    }

                    v46 = *(*(&v113 + 1) + 8 * j);
                    v47 = [v46 objectForKeyedSubscript:@"BufferInfo"];
                    v48 = v47;
                    bytes = [v47 bytes];

                    v50 = *bytes;
                    if (v50 == [v106 length])
                    {
                      v51 = bytes[1];
                      if (v51 == [v106 gpuAddress])
                      {
                        v52 = [v46 objectForKeyedSubscript:@"Node"];
                        v141[0] = @"Source";
                        v139[0] = @"Node";
                        v53 = [v52 objectForKeyedSubscript:@"Name"];
                        v140[0] = v53;
                        v139[1] = @"Port";
                        v54 = [v46 objectForKeyedSubscript:@"Argument"];
                        v140[1] = v54;
                        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
                        v142[0] = v55;
                        v141[1] = @"Offset";
                        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v101];
                        v142[1] = v56;
                        v141[2] = @"Dest";
                        v138[0] = v100;
                        v137[0] = @"Node";
                        v137[1] = @"Port";
                        name3 = [v103 name];
                        v138[1] = name3;
                        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:2];
                        v142[2] = v58;
                        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:3];

                        [(NSMutableArray *)selfCopy->_links addObject:v59];
                        v41 = 1;
                      }
                    }
                  }

                  v44 = [v104 countByEnumeratingWithState:&v113 objects:v143 count:16];
                }

                while (v44);
              }
            }

            v21 = v106;
            if ([v103 access] == 1)
            {
              v60 = selfCopy->_context;
              v61 = v106;
              v62 = std::__hash_table<std::__hash_value_type<void *,void *>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,void *>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,void *>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,void *>>>::find<void *>(v60 + 5, v61);
              if (v62)
              {
                v63 = v62[3];

                if (v63)
                {
                  v135[0] = @"Dest";
                  v134[0] = selfCopy->_graphName;
                  v133[0] = @"Graph";
                  v133[1] = @"Port";
                  v64 = [v63 objectForKeyedSubscript:@"Name"];
                  v134[1] = v64;
                  v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v134 forKeys:v133 count:2];
                  v136[0] = v65;
                  v135[1] = @"Source";
                  v132[0] = v100;
                  v131[0] = @"Node";
                  v131[1] = @"Port";
                  name4 = [v103 name];
                  v132[1] = name4;
                  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:2];
                  v136[1] = v67;
                  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:2];

                  [(NSMutableArray *)selfCopy->_portLinks addObject:v68];
                  goto LABEL_47;
                }
              }

              else
              {
              }

              if ((v41 & 1) == 0)
              {
LABEL_47:
                v129[0] = @"Port";
                name5 = [v103 name];
                v130[0] = name5;
                v129[1] = @"Buffer";
                v127[0] = @"Size";
                v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v61, "length")}];
                v128[0] = v70;
                v127[1] = @"Offset";
                v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v101];
                v128[1] = v71;
                v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
                v130[1] = v72;
                v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];

                [array addObject:v73];
              }

              v21 = v106;
            }

LABEL_12:

            self = selfCopy;
            continue;
          }
        }
      }

      v98 = [obj countByEnumeratingWithState:&v117 objects:v158 count:16];
    }

    while (v98);
  }

  if ([array2 count])
  {
    [v93 setObject:array2 forKeyedSubscript:@"ThreadgroupBuffers"];
  }

  v74 = objc_opt_new();
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  arguments = [v90 arguments];
  v76 = [arguments countByEnumeratingWithState:&v109 objects:v126 count:16];
  if (v76)
  {
    v77 = *v110;
    do
    {
      for (k = 0; k != v76; ++k)
      {
        if (*v110 != v77)
        {
          objc_enumerationMutation(arguments);
        }

        v79 = *(*(&v109 + 1) + 8 * k);
        if (![v79 type] && objc_msgSend(v79, "access") == 1)
        {
          v80 = *(*contextCopy + 32 * [v79 index]);
          v108[0] = [v80 length];
          v108[1] = [v80 gpuAddress];
          v125[0] = v93;
          v124[0] = @"Node";
          v124[1] = @"Argument";
          name6 = [v79 name];
          v125[1] = name6;
          v124[2] = @"BufferInfo";
          v82 = [MEMORY[0x1E695DEF0] dataWithBytes:v108 length:16];
          v125[2] = v82;
          v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:3];

          v84 = [MEMORY[0x1E696B098] valueWithPointer:v80];
          v85 = [v74 objectForKeyedSubscript:v84];
          if (!v85)
          {
            v85 = objc_opt_new();
            [v74 setObject:v85 forKeyedSubscript:v84];
          }

          [v85 addObject:v83];
        }
      }

      v76 = [arguments countByEnumeratingWithState:&v109 objects:v126 count:16];
    }

    while (v76);
  }

  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __68__MPSGraphCaptureContext_createNodeWithDispatchInfo_encoderContext___block_invoke;
  v107[3] = &unk_1E86D4D58;
  v107[4] = selfCopy;
  [v74 enumerateKeysAndObjectsUsingBlock:v107];
  [(NSMutableArray *)selfCopy->_nodes addObject:v93];
}

- (void)writeToJsonFile:(__sFILE *)file
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = @"Graph";
  graphName = self->_graphName;
  v28[0] = @"Name";
  v28[1] = @"MetalArguments";
  v29[0] = graphName;
  v29[1] = &stru_1F5B58250;
  v29[2] = self->_functions;
  v28[2] = @"Functions";
  v28[3] = @"Ports";
  v26[0] = @"Inputs";
  v26[1] = @"Outputs";
  outputPorts = self->_outputPorts;
  v27[0] = self->_inputPorts;
  v27[1] = outputPorts;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
  data = self->_data;
  v29[3] = v7;
  v28[4] = @"Data";
  v28[5] = @"Nodes";
  nodes = self->_nodes;
  v29[4] = data;
  v29[5] = nodes;
  links = self->_links;
  v28[6] = @"Links";
  v28[7] = @"PortLinks";
  portLinks = self->_portLinks;
  v29[6] = links;
  v29[7] = portLinks;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  v31[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  jsonData = self->_jsonData;
  self->_jsonData = v13;

  v15 = self->_jsonData;
  v25 = 0;
  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v15 options:9 error:&v25];
  v17 = v25;
  v18 = v16;
  bytes = [v16 bytes];
  v20 = [v16 length];
  v21 = v20;
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  v24 = v20;
  if (v20)
  {
    memmove(__dst, bytes, v20);
  }

  *(__dst + v21) = 0;
  v22 = v16;
  fwrite([v16 bytes], objc_msgSend(v16, "length"), 1uLL, file);
  if (v24 < 0)
  {
    operator delete(__dst[0]);
  }
}

- (void)writejsonFile:(id)file
{
  fileCopy = file;
  if (!self->_doNotWriteJsonFile)
  {
    uTF8String = [(NSString *)self->_outputFolderPath UTF8String];
    v6 = strlen(uTF8String);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v6;
    if (v6)
    {
      memmove(&__dst, uTF8String, v6);
    }

    __dst.__r_.__value_.__s.__data_[v7] = 0;
    std::string::append(&__dst, "/");
    std::string::append(&__dst, [fileCopy UTF8String]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    v9 = fopen(p_dst, "w");
    if (!v9 && MTLReportFailureTypeEnabled())
    {
      v10 = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __dst.__r_.__value_.__r.__words[0];
      }

      v11 = v10;
      MTLReportFailure();
    }

    [(MPSGraphCaptureContext *)self writeToJsonFile:v9, v11];
    fclose(v9);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }
}

@end