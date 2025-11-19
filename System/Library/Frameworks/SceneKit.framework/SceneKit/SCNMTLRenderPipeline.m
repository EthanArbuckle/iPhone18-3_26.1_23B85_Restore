@interface SCNMTLRenderPipeline
- (BOOL)matchesRenderPassDescriptor:(id)a3;
- (SCNMTLRenderPipeline)init;
- (id)description;
- (void)_computeUsageForArguments:(id)a3 function:(id)a4;
- (void)dealloc;
@end

@implementation SCNMTLRenderPipeline

- (SCNMTLRenderPipeline)init
{
  v3.receiver = self;
  v3.super_class = SCNMTLRenderPipeline;
  result = [(SCNMTLRenderPipeline *)&v3 init];
  if (result)
  {
    result->_sceneBuffer = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLRenderPipeline;
  [(SCNMTLRenderPipeline *)&v3 dealloc];
}

- (id)description
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"<%@: %p>", NSStringFromClass(v4), self];
  [v3 appendFormat:@"<state: %@>", self->_state];
  if (self->_frameBufferBindings)
  {
    [v3 appendString:@"\n\tFrameBuffer bindings:\n"];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    frameBufferBindings = self->_frameBufferBindings;
    v6 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(frameBufferBindings);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          [v3 appendString:@"\t\t"];
          [v3 appendString:{objc_msgSend(v10, "name")}];
        }

        v7 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v7);
    }
  }

  if (self->_nodeBufferBindings)
  {
    [v3 appendString:@"\n\tNode bindings:\n"];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    nodeBufferBindings = self->_nodeBufferBindings;
    v12 = [(NSArray *)nodeBufferBindings countByEnumeratingWithState:&v48 objects:v59 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v49;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(nodeBufferBindings);
          }

          v16 = *(*(&v48 + 1) + 8 * j);
          [v3 appendString:@"\t\t"];
          [v3 appendString:{objc_msgSend(v16, "name")}];
        }

        v13 = [(NSArray *)nodeBufferBindings countByEnumeratingWithState:&v48 objects:v59 count:16];
      }

      while (v13);
    }
  }

  if (self->_passBufferBindings)
  {
    [v3 appendString:@"\n\tPass bindings:\n"];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    passBufferBindings = self->_passBufferBindings;
    v18 = [(NSArray *)passBufferBindings countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v45;
      do
      {
        for (k = 0; k != v19; ++k)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(passBufferBindings);
          }

          v22 = *(*(&v44 + 1) + 8 * k);
          [v3 appendString:@"\t\t"];
          [v3 appendString:{objc_msgSend(v22, "name")}];
        }

        v19 = [(NSArray *)passBufferBindings countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v19);
    }
  }

  if (self->_shadableBufferBindings)
  {
    [v3 appendString:@"\n\tShadable bindings:\n"];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    shadableBufferBindings = self->_shadableBufferBindings;
    v24 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v40 objects:v57 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (m = 0; m != v25; ++m)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(shadableBufferBindings);
          }

          v28 = *(*(&v40 + 1) + 8 * m);
          [v3 appendString:@"\t\t"];
          [v3 appendString:{objc_msgSend(v28, "name")}];
        }

        v25 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v40 objects:v57 count:16];
      }

      while (v25);
    }
  }

  if (self->_lightBufferBindings)
  {
    [v3 appendString:@"\n\tLight bindings:\n"];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    lightBufferBindings = self->_lightBufferBindings;
    v30 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v36 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v37;
      do
      {
        for (n = 0; n != v31; ++n)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(lightBufferBindings);
          }

          v34 = *(*(&v36 + 1) + 8 * n);
          [v3 appendString:@"\t\t"];
          [v3 appendString:{objc_msgSend(v34, "name")}];
        }

        v31 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v36 objects:v56 count:16];
      }

      while (v31);
    }
  }

  return v3;
}

- (BOOL)matchesRenderPassDescriptor:(id)a3
{
  v5 = 0;
  p_renderPassDesc = &self->_renderPassDesc;
  while (1)
  {
    v7 = [objc_msgSend(objc_msgSend(a3 "colorAttachments")];
    v8 = p_renderPassDesc->colorFormat[v5];
    if (v8 != [v7 pixelFormat])
    {
      break;
    }

    if (v7)
    {
      sampleCount = self->_renderPassDesc.sampleCount;
      if ([v7 sampleCount] != sampleCount)
      {
        break;
      }
    }

    if (++v5 == 8)
    {
      v10 = [objc_msgSend(a3 "depthAttachment")];
      depthFormat = self->_renderPassDesc.depthFormat;
      if (depthFormat == [v10 pixelFormat])
      {
        if (!v10 || (v12 = self->_renderPassDesc.sampleCount, [v10 sampleCount] == v12))
        {
          v13 = [objc_msgSend(a3 "stencilAttachment")];
          stencilFormat = self->_renderPassDesc.stencilFormat;
          if (stencilFormat == [v13 pixelFormat])
          {
            if (!v13)
            {
              return 1;
            }

            v15 = self->_renderPassDesc.sampleCount;
            if ([v13 sampleCount] == v15)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

- (void)_computeUsageForArguments:(id)a3 function:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = SCNMTLFunctionTypeToProgramStage([a4 functionType]);
  if (v6 >= 2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderPipeline *)v7 _computeUsageForArguments:v8 function:v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = self + 4 * v6;
  *(v15 + 34) = 0;
  v16 = v15 + 136;
  *(v16 - 4) = 0;
  *(v16 - 2) = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(a3);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        if ([v21 isActive])
        {
          v22 = [v21 type];
          v23 = v16 - 16;
          if (!v22)
          {
            goto LABEL_15;
          }

          if (v22 == 3)
          {
            v23 = v16;
LABEL_15:
            *v23 |= 1 << [v21 index];
            continue;
          }

          v23 = v16 - 8;
          if (v22 == 2)
          {
            goto LABEL_15;
          }
        }
      }

      v18 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }
}

@end