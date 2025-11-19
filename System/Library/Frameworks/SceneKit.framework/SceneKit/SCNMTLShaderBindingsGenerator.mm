@interface SCNMTLShaderBindingsGenerator
+ (void)allocateRegistry;
+ (void)deallocateRegistry;
+ (void)registerArgument:(id)a3 frequency:(int)a4 block:(id)a5;
+ (void)registerArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6;
+ (void)registerSemantic:(id)a3 withBlock:(id)a4;
+ (void)registerShadableArgumentBindingBlockForBuffers:(id)a3 textures:(id)a4 samplers:(id)a5;
- (BOOL)addPassResourceBindingsForArgument:(id)a3;
- (SCNMTLShaderBindingsGenerator)init;
- (id)_dictionaryForFrequency:(int)a3;
- (int64_t)_searchArguments:(id)a3 forArgumentNamed:(id)a4 type:(unint64_t)a5;
- (void)_checkForAssociatedSamplerOnBinding:(id)a3 argument:(id)a4;
- (void)_parseArguments:(id)a3 function:(id)a4 renderPipeline:(id)a5;
- (void)addResourceBindingsForArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6;
- (void)dealloc;
- (void)generateBindingsForPipeline:(id)a3 withReflection:(id)a4 program:(__C3DFXMetalProgram *)a5 material:(__C3DMaterial *)a6 geometry:(__C3DGeometry *)a7 pass:(__C3DFXPass *)a8;
@end

@implementation SCNMTLShaderBindingsGenerator

+ (void)allocateRegistry
{
  if (__semanticRegistry)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v2 allocateRegistry:v3];
    }
  }

  __semanticRegistry = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
  __argumentRegistry = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
}

- (SCNMTLShaderBindingsGenerator)init
{
  v5.receiver = self;
  v5.super_class = SCNMTLShaderBindingsGenerator;
  v2 = [(SCNMTLShaderBindingsGenerator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_generateLock._os_unfair_lock_opaque = 0;
    v2->_passBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_nodeBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_frameBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_shadableBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    v3->_lightBindings = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
  }

  return v3;
}

+ (void)deallocateRegistry
{
  if (!__semanticRegistry)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v2 deallocateRegistry:v3];
    }
  }

  __semanticRegistry = 0;
  __argumentRegistry = 0;
}

+ (void)registerSemantic:(id)a3 withBlock:(id)a4
{
  if ([__semanticRegistry objectForKey:?])
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v6 registerSemantic:v7 withBlock:v8, v9, v10, v11, v12, v13];
    }
  }

  [__semanticRegistry setObject:_Block_copy(a4) forKey:a3];
}

+ (void)registerArgument:(id)a3 frequency:(int)a4 block:(id)a5
{
  v6 = *&a4;
  if ([__argumentRegistry objectForKey:?])
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v8 registerArgument:v9 frequency:v10 block:v11, v12, v13, v14, v15];
    }
  }

  v16 = [[SCNMTLArgumentBinder alloc] initWithBlock:a5 frequency:v6 needsRenderResource:0];
  [__argumentRegistry setObject:v16 forKey:a3];
}

+ (void)registerArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v8 = *&a4;
  if ([__argumentRegistry objectForKey:?])
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v10 registerArgument:v11 frequency:v12 block:v13, v14, v15, v16, v17];
    }
  }

  v18 = [[SCNMTLArgumentBinder alloc] initWithBlock:a6 frequency:v8 needsRenderResource:v7];
  [__argumentRegistry setObject:v18 forKey:a3];
}

+ (void)registerShadableArgumentBindingBlockForBuffers:(id)a3 textures:(id)a4 samplers:(id)a5
{
  __shadableArgumentBindingBlocks = _Block_copy(a3);
  qword_27CDD9340 = _Block_copy(a4);
  qword_27CDD9348 = _Block_copy(a5);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLShaderBindingsGenerator;
  [(SCNMTLShaderBindingsGenerator *)&v3 dealloc];
}

- (int64_t)_searchArguments:(id)a3 forArgumentNamed:(id)a4 type:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if ([objc_msgSend(v12 "name")])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [a3 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    if ([v12 type] == a5)
    {
      return [v12 index];
    }

    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = a4;
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: arguments named %@ is reserved for type %d", buf, 0x12u);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_parseArguments:(id)a3 function:(id)a4 renderPipeline:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLShaderBindingsGenerator *)v7 _parseArguments:v8 function:v9 renderPipeline:v10, v11, v12, v13, v14];
    }
  }

  v37 = SCNMTLFunctionTypeToProgramStage([a4 functionType]);
  self->_current.stage = v37;
  self->_current.arguments = a3;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = [a3 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v15)
  {
    v16 = *v46;
    do
    {
      v17 = 0;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v45 + 1) + 8 * v17);
        if ([v18 isActive] && objc_msgSend(v18, "type") != 3 && (objc_msgSend(v18, "type") || (objc_msgSend(objc_msgSend(v18, "name"), "hasPrefix:", @"vertexBuffer.") & 1) == 0) && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdIndicesBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdTessellationLevel") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdVertexBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingData") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingIndices") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingPatchParams") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingPatchArray") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingChannelCount") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingChannelDescriptors") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingPatchArrayIndex") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"osdFaceVaryingChannelsPackedData") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"vertexBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"indexBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"patchParamBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"perPatchVertexBuffer") & 1) == 0 && (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"patchTessBuffer") & 1) == 0)
        {
          v19 = [__argumentRegistry objectForKeyedSubscript:{objc_msgSend(v18, "name")}];
          if (v19)
          {
            [(SCNMTLShaderBindingsGenerator *)self addResourceBindingsForArgument:v18 frequency:*(v19 + 16) needsRenderResource:*(v19 + 20) block:*(v19 + 8)];
            goto LABEL_60;
          }

          if ([v18 type])
          {
            if ([v18 type] == 2 && self->_current.pass)
            {
LABEL_34:
              if ([(SCNMTLShaderBindingsGenerator *)self addPassResourceBindingsForArgument:v18])
              {
                goto LABEL_60;
              }
            }

LABEL_35:
            -[SCNMTLShaderBindingsGenerator addResourceBindingsForArgument:frequency:needsRenderResource:block:](self, "addResourceBindingsForArgument:frequency:needsRenderResource:block:", v18, 2, 1, __shadableArgumentBindingBlocks[[v18 type]]);
            goto LABEL_60;
          }

          if (([objc_msgSend(v18 "name")] & 1) != 0 || (objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"scn_nodes") & 1) != 0 || objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"scn_lights"))
          {
            nodeBindings = self->_nodeBindings;
            if ([objc_msgSend(v18 "name")])
            {
              nodeBindings = self->_lightBindings;
            }

            v20 = -[NSMutableDictionary objectForKeyedSubscript:](nodeBindings, "objectForKeyedSubscript:", [v18 name]);
            v28 = v20;
            if (v20)
            {
              v21 = v20;
            }

            else
            {
              v28 = objc_alloc_init(SCNMTLSemanticResourceBinding);
              [(SCNMTLResourceBinding *)v28 setArgument:v18];
              if ([v18 bufferDataType] == 1)
              {
                __src = 0;
                v43 = 0;
                v44 = 0;
                v38 = 0u;
                v39 = 0u;
                v40 = 0u;
                v41 = 0u;
                obj = [objc_msgSend(v18 "bufferStructType")];
                v31 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
                if (v31)
                {
                  v30 = *v39;
                  do
                  {
                    for (__n = 0; __n != v31; ++__n)
                    {
                      if (*v39 != v30)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v33 = *(*(&v38 + 1) + 8 * __n);
                      v22 = [__semanticRegistry objectForKeyedSubscript:{-[MTLStructMember name](v33, "name")}];
                      if (v22)
                      {
                        buf = v22;
                        DWORD2(buf) = [(MTLStructMember *)v33 offset];
                        HIDWORD(buf) = __structMemberSize(v33);
                        std::vector<SCNSemanticBinding>::emplace_back<SCNSemanticBinding const&>(&__src, &buf);
                      }

                      else
                      {
                        log = scn_default_log();
                        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                        {
                          v23 = [(MTLStructMember *)v33 name];
                          LODWORD(buf) = 138412290;
                          *(&buf + 4) = v23;
                          _os_log_impl(&dword_21BEF7000, log, OS_LOG_TYPE_DEFAULT, "Warning: unknown member in scn automated buffer : %@", &buf, 0xCu);
                        }
                      }
                    }

                    v31 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
                  }

                  while (v31);
                }

                [(SCNMTLSemanticResourceBinding *)v28 setSemanticsCount:(v43 - __src) >> 4];
                if ([(SCNMTLSemanticResourceBinding *)v28 semanticsCount])
                {
                  __na = 16 * [(SCNMTLSemanticResourceBinding *)v28 semanticsCount];
                  v28->_semantics = malloc_type_malloc(__na, 0x1080040FC6463CFuLL);
                  memcpy(v28->_semantics, __src, __na);
                  -[SCNMTLSemanticResourceBinding setBufferSize:](v28, "setBufferSize:", [v18 bufferDataSize]);
                }

                -[NSMutableDictionary setObject:forKeyedSubscript:](nodeBindings, "setObject:forKeyedSubscript:", v28, [v18 name]);
                if (__src)
                {
                  v43 = __src;
                  operator delete(__src);
                }
              }
            }

            *(&v28->super._indices.vertexIndex + (v37 != 0)) = [v18 index];
          }

          else if ([v18 bufferDataType] == 1 && ((objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"scn_frame") & 1) != 0 || objc_msgSend(objc_msgSend(v18, "name"), "isEqualToString:", @"scn_frame_multi")))
          {
            v24 = [v18 index];
            if (v37)
            {
              self->_sceneBuffer.fragmentIndex = v24;
            }

            else
            {
              self->_sceneBuffer.vertexIndex = v24;
            }
          }

          else
          {
            v25 = -[NSDictionary objectForKey:](self->_current.customBlocks, "objectForKey:", [v18 name]);
            if (!v25)
            {
              if (self->_current.pass && [v18 bufferDataType] == 1)
              {
                goto LABEL_34;
              }

              goto LABEL_35;
            }

            (*(__trampolineUserBufferBlock + 16))(__trampolineUserBufferBlock, v25, v18, self);
          }
        }

LABEL_60:
        ++v17;
      }

      while (v17 != v15);
      v26 = [a3 countByEnumeratingWithState:&v45 objects:v51 count:16];
      v15 = v26;
    }

    while (v26);
  }
}

- (void)generateBindingsForPipeline:(id)a3 withReflection:(id)a4 program:(__C3DFXMetalProgram *)a5 material:(__C3DMaterial *)a6 geometry:(__C3DGeometry *)a7 pass:(__C3DFXPass *)a8
{
  os_unfair_lock_lock(&self->_generateLock);
  self->_current.customBlocks = C3DFXMetalProgramGetBufferBindings(a5);
  self->_current.pass = a8;
  if (a6)
  {
    C3DMaterialGetCommonProfileIfNoTechnique(a6);
  }

  self->_sceneBuffer = -1;
  if ([a3 vertexFunction])
  {
    -[SCNMTLShaderBindingsGenerator _parseArguments:function:renderPipeline:](self, "_parseArguments:function:renderPipeline:", [a4 vertexArguments], objc_msgSend(a3, "vertexFunction"), a3);
  }

  if ([a3 fragmentFunction])
  {
    -[SCNMTLShaderBindingsGenerator _parseArguments:function:renderPipeline:](self, "_parseArguments:function:renderPipeline:", [a4 fragmentArguments], objc_msgSend(a3, "fragmentFunction"), a3);
  }

  if (self->_sceneBuffer.vertexIndex != 255 || self->_sceneBuffer.fragmentIndex != 255)
  {
    *(a3 + 4) = self->_sceneBuffer;
  }

  if ([(NSMutableDictionary *)self->_frameBindings count])
  {
    [a3 setFrameBufferBindings:{-[NSMutableDictionary allValues](self->_frameBindings, "allValues")}];
    [(NSMutableDictionary *)self->_frameBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_nodeBindings count])
  {
    [a3 setNodeBufferBindings:{-[NSMutableDictionary allValues](self->_nodeBindings, "allValues")}];
    [(NSMutableDictionary *)self->_nodeBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_passBindings count])
  {
    [a3 setPassBufferBindings:{-[NSMutableDictionary allValues](self->_passBindings, "allValues")}];
    [(NSMutableDictionary *)self->_passBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_shadableBindings count])
  {
    [a3 setShadableBufferBindings:{-[NSMutableDictionary allValues](self->_shadableBindings, "allValues")}];
    [(NSMutableDictionary *)self->_shadableBindings removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_lightBindings count])
  {
    [a3 setLightBufferBindings:{-[NSMutableDictionary allValues](self->_lightBindings, "allValues")}];
    [(NSMutableDictionary *)self->_lightBindings removeAllObjects];
  }

  [a3 _computeUsageForArguments:objc_msgSend(a4 function:{"vertexArguments"), objc_msgSend(a3, "vertexFunction")}];
  [a3 _computeUsageForArguments:objc_msgSend(a4 function:{"fragmentArguments"), objc_msgSend(a3, "fragmentFunction")}];

  os_unfair_lock_unlock(&self->_generateLock);
}

- (id)_dictionaryForFrequency:(int)a3
{
  if (a3 <= 3)
  {
    return *(&self->super.isa + qword_21C2A28E0[a3]);
  }

  return v3;
}

- (void)_checkForAssociatedSamplerOnBinding:(id)a3 argument:(id)a4
{
  v6 = -[SCNMTLShaderBindingsGenerator _searchArguments:forArgumentNamed:type:](self, "_searchArguments:forArgumentNamed:type:", self->_current.arguments, [objc_msgSend(a4 "name")], 3);
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    stage = self->_current.stage;
    if (stage == 1)
    {
      *(a3 + 12) = v6;
    }

    else if (stage)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(SCNMTLShaderBindingsGenerator *)&self->_current _checkForAssociatedSamplerOnBinding:v8 argument:v9, v10, v11, v12, v13, v14];
      }
    }

    else
    {
      *(a3 + 11) = v6;
    }
  }
}

- (void)addResourceBindingsForArgument:(id)a3 frequency:(int)a4 needsRenderResource:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v10 = [(SCNMTLShaderBindingsGenerator *)self _dictionaryForFrequency:*&a4];
  v11 = [v10 objectForKeyedSubscript:{objc_msgSend(a3, "name")}];
  if (v11)
  {
    v12 = v11;
    v13 = [(SCNMTLResourceBinding *)v11 type];
    if (v13 != [a3 type])
    {
      v14 = scn_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [SCNMTLShaderBindingsGenerator addResourceBindingsForArgument:a3 frequency:v12 needsRenderResource:? block:?];
      }
    }

    if ([(SCNMTLResourceBinding *)v12 bindBlock]!= a6)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v15 addResourceBindingsForArgument:v16 frequency:v17 needsRenderResource:v18 block:v19, v20, v21, v22];
      }
    }
  }

  else
  {
    v12 = objc_alloc_init(SCNMTLResourceBinding);
    [(SCNMTLResourceBinding *)v12 setBindBlock:a6];
    [(SCNMTLResourceBinding *)v12 setNeedsRenderResource:v7];
    [(SCNMTLResourceBinding *)v12 setArgument:a3];
    [v10 setObject:v12 forKeyedSubscript:{objc_msgSend(a3, "name")}];
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v12->_indices.fragmentIndex = [a3 index];
  }

  else if (stage)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLShaderBindingsGenerator *)&self->_current _checkForAssociatedSamplerOnBinding:v24 argument:v25, v26, v27, v28, v29, v30];
    }
  }

  else
  {
    v12->_indices.vertexIndex = [a3 index];
  }

  if ([a3 type] == 2)
  {
    [(SCNMTLShaderBindingsGenerator *)self _checkForAssociatedSamplerOnBinding:v12 argument:a3];
  }
}

- (BOOL)addPassResourceBindingsForArgument:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = [(SCNMTLShaderBindingsGenerator *)self _dictionaryForFrequency:3];
  v6 = [v5 objectForKeyedSubscript:{objc_msgSend(a3, "name")}];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = scn_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v7 addPassResourceBindingsForArgument:v8, v9, v10, v11, v12, v13, v14];
      }
    }

    v15 = [(SCNMTLResourceBinding *)v6 type];
    if (v15 != [a3 type])
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)a3 addPassResourceBindingsForArgument:v6];
      }
    }

    v17 = v6;
    if ([(SCNMTLResourceBinding *)v6 bindBlock])
    {
      v18 = scn_default_log();
      v17 = v6;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v18 addPassResourceBindingsForArgument:v19, v20, v21, v22, v23, v24, v25];
        v17 = v6;
      }
    }
  }

  else
  {
    v17 = objc_alloc_init(SCNMTLPassResourceBinding);
    [(SCNMTLResourceBinding *)v17 setBindBlock:0];
    [(SCNMTLResourceBinding *)v17 setNeedsRenderResource:0];
    [(SCNMTLResourceBinding *)v17 setArgument:a3];
  }

  stage = self->_current.stage;
  if (stage == 1)
  {
    v17->super._indices.fragmentIndex = [a3 index];
  }

  else if (stage)
  {
    v27 = scn_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLShaderBindingsGenerator *)&self->_current _checkForAssociatedSamplerOnBinding:v27 argument:v28, v29, v30, v31, v32, v33];
    }
  }

  else
  {
    v17->super._indices.vertexIndex = [a3 index];
  }

  if ([a3 type] == 2)
  {
    if (v6)
    {
LABEL_22:
      [(SCNMTLShaderBindingsGenerator *)self _checkForAssociatedSamplerOnBinding:v17 argument:a3];
      goto LABEL_24;
    }

    InputWithName = C3DFXPassGetInputWithName(self->_current.pass, [a3 name]);
    if (InputWithName)
    {
      v17->_samplerInput = InputWithName;
      goto LABEL_22;
    }
  }

  else
  {
    if ([a3 type])
    {
LABEL_24:
      if (v6)
      {
LABEL_26:
        LOBYTE(InputWithName) = 1;
        return InputWithName;
      }

LABEL_25:
      [v5 setObject:v17 forKeyedSubscript:{objc_msgSend(a3, "name")}];
      goto LABEL_26;
    }

    if ([a3 bufferDataType] != 1)
    {
      v35 = scn_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLShaderBindingsGenerator *)v35 addPassResourceBindingsForArgument:v36, v37, v38, v39, v40, v41, v42];
      }
    }

    if (v6)
    {
      v43 = [(SCNMTLPassResourceBinding *)v17 bufferSize];
      if (v43 != [a3 bufferDataSize])
      {
        v44 = scn_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLShaderBindingsGenerator *)v44 addPassResourceBindingsForArgument:v45, v46, v47, v48, v49, v50, v51];
        }
      }

      goto LABEL_26;
    }

    v80 = a3;
    p_isa = &v17->super.super.isa;
    v79 = v5;
    __p = 0;
    v87 = 0;
    v88 = 0;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v52 = [objc_msgSend(a3 "bufferStructType")];
    v53 = [v52 countByEnumeratingWithState:&v82 objects:v91 count:16];
    if (v53)
    {
      v54 = *v83;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v83 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v82 + 1) + 8 * i);
          v57 = C3DFXPassGetInputWithName(self->_current.pass, [v56 name]);
          if (v57)
          {
            v58 = [v56 arrayType];
            if ([v56 dataType] == 2 && (v59 = objc_msgSend(v58, "elementType"), v59 == SCNMTLDataTypeFromC3DBaseType(v57[10])) || (v60 = objc_msgSend(v56, "dataType"), v60 == SCNMTLDataTypeFromC3DBaseType(v57[10])) && *(v57 + 3) == 1)
            {
              v61 = [v56 offset];
              if (v58)
              {
                [v58 arrayLength];
                Size = SCNMTLDataTypeGetSize([v58 elementType]);
                v63 = [v58 arrayLength];
                v64 = *(v57 + 3);
                if (v63 < v64)
                {
                  LODWORD(v64) = v63;
                }
              }

              else
              {
                Size = SCNMTLDataTypeGetSize([v56 dataType]);
                v64 = *(v57 + 3);
              }

              v67 = Size * v64;
              v68 = v87;
              if (v87 >= v88)
              {
                v70 = (v87 - __p) >> 4;
                v71 = v70 + 1;
                if ((v70 + 1) >> 60)
                {
                  std::string::__throw_length_error[abi:nn200100]();
                }

                v72 = v88 - __p;
                if ((v88 - __p) >> 3 > v71)
                {
                  v71 = v72 >> 3;
                }

                if (v72 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v73 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v73 = v71;
                }

                if (v73)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<SCNPassInputBinding>>(&__p, v73);
                }

                v74 = 16 * v70;
                *v74 = v57;
                *(v74 + 8) = v61;
                *(v74 + 12) = v67;
                v69 = 16 * v70 + 16;
                v75 = (v74 - (v87 - __p));
                memcpy(v75, __p, v87 - __p);
                v76 = __p;
                __p = v75;
                v87 = v69;
                v88 = 0;
                if (v76)
                {
                  operator delete(v76);
                }
              }

              else
              {
                *v87 = v57;
                v69 = (v68 + 16);
                *(v68 + 2) = v61;
                *(v68 + 3) = v67;
              }

              v87 = v69;
            }

            else
            {
              v65 = scn_default_log();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = [v56 name];
                *buf = 138412290;
                v90 = v66;
                _os_log_impl(&dword_21BEF7000, v65, OS_LOG_TYPE_DEFAULT, "Warning: struct member does not match pass description : %@", buf, 0xCu);
              }
            }
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v82 objects:v91 count:16];
      }

      while (v53);
    }

    if (v87 != __p)
    {
      v17 = p_isa;
      [p_isa setInputsCount:(v87 - __p) >> 4];
      v5 = v79;
      a3 = v80;
      v77 = 16 * [p_isa inputsCount];
      p_isa[6] = malloc_type_malloc(v77, 0x1020040EDED9539uLL);
      memcpy(p_isa[6], __p, v77);
      [p_isa setBufferSize:{objc_msgSend(v80, "bufferDataSize")}];
      if (__p)
      {
        v87 = __p;
        operator delete(__p);
      }

      goto LABEL_25;
    }

    if (v87)
    {
      v87 = __p;
      operator delete(__p);
    }

    LOBYTE(InputWithName) = 0;
  }

  return InputWithName;
}

- (void)addResourceBindingsForArgument:(void *)a1 frequency:(void *)a2 needsRenderResource:block:.cold.1(void *a1, void *a2)
{
  [a1 type];
  [a2 type];
  OUTLINED_FUNCTION_2_14(&dword_21BEF7000, v3, v4, "Assertion '%s' failed. Argument with the same name cannot have different types (%d != %d)", v5, v6, v7, v8, 2u);
}

- (void)addPassResourceBindingsForArgument:(void *)a1 .cold.2(void *a1, void *a2)
{
  [a1 type];
  [a2 type];
  OUTLINED_FUNCTION_2_14(&dword_21BEF7000, v3, v4, "Assertion '%s' failed. Argument with the same name cannot have different types (%d != %d)", v5, v6, v7, v8, 2u);
}

@end