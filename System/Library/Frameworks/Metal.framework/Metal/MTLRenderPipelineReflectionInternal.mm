@interface MTLRenderPipelineReflectionInternal
- (MTLRenderPipelineReflectionInternal)initWithTileData:(id)a3 tileDynamicLibraries:(id)a4 functionType:(unint64_t)a5 device:(id)a6 options:(unint64_t)a7 flags:(id)a8;
- (id)formattedDescription:(unint64_t)a3;
- (id)fragmentBindings;
- (id)initWithTileData:(void *)a1 device:(NSObject *)a2 options:(uint64_t)a3 flags:(uint64_t)a4;
- (id)meshBindings;
- (id)objectBindings;
- (id)tileBindings;
- (id)vertexBindings;
- (void)dealloc;
- (void)initWithFragmentReader:(uint64_t)a3 dylibReaders:(unsigned int)a4 dylibReaderCount:(int)a5 dylibGlobalBindingCount:(void *)a6 device:(uint64_t)a7 flags:;
- (void)initWithFragmentReader:(void *)a3 device:(uint64_t)a4 flags:;
- (void)initWithReader:(uint64_t)a3 dylibReaders:(unsigned int)a4 dylibReaderCount:(int)a5 dylibGlobalBindingCount:(void *)a6 device:(uint64_t)a7 flags:;
- (void)initWithReader:(void *)a3 device:(uint64_t)a4 flags:;
- (void)setConstantSamplerUniqueIdentifiers:(id)a3;
- (void)setPerformanceStatistics:(id)a3;
@end

@implementation MTLRenderPipelineReflectionInternal

- (id)initWithTileData:(void *)a1 device:(NSObject *)a2 options:(uint64_t)a3 flags:(uint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = MTLRenderPipelineReflectionInternal;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    if (v6)
    {
      MTLArgumentDeserializer::MTLArgumentDeserializer(v10, a4);
      v11 = 0;
      v10[16] = 0;
      v10[17] = 0;
      v10[0] = &unk_1EF474FC8;
      v12 = "stageInBuffer";
      v13 = 0;
      v14 = 0;
      v15 = 0;
      ReflectionReaderFactory<MTLComputeReflectionReader>::Create(a4, a2);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (MTLRenderPipelineReflectionInternal)initWithTileData:(id)a3 tileDynamicLibraries:(id)a4 functionType:(unint64_t)a5 device:(id)a6 options:(unint64_t)a7 flags:(id)a8
{
  v17.receiver = self;
  v17.super_class = MTLRenderPipelineReflectionInternal;
  if ([(MTLRenderPipelineReflectionInternal *)&v17 init])
  {
    memset(v16, 0, sizeof(v16));
    if (a4)
    {
      v15 = 0;
      std::vector<MTLDynamicLibraryReflectionReader *>::resize(v16, [a4 count], &v15);
      readDynamicLibraryReflectionData(a6, v16[0], a4, a7);
    }

    v13 = MTLNewReflectionData(a3);
    if (a5 != 2)
    {
      if (a5 == 3)
      {
        ReflectionValidator<MTLComputeReflectionReader>::Validate(a6, a7, a3);
        ReflectionReaderFactory<MTLComputeReflectionReader>::Create(a7, v13);
      }

      abort();
    }

    ReflectionValidator<MTLFragmentReflectionReader>::Validate(a6, a7, a3);
    ReflectionReaderFactory<MTLFragmentReflectionReader>::Create(a7, v13);
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLRenderPipelineReflectionInternal;
  [(MTLRenderPipelineReflectionInternal *)&v3 dealloc];
}

- (void)setPerformanceStatistics:(id)a3
{
  v5 = a3;

  self->_performanceStatistics = a3;
}

- (void)setConstantSamplerUniqueIdentifiers:(id)a3
{
  constantSamplerUniqueIdentifiers = self->_constantSamplerUniqueIdentifiers;
  if (constantSamplerUniqueIdentifiers != a3)
  {

    self->_constantSamplerUniqueIdentifiers = a3;
  }
}

- (id)vertexBindings
{
  if (self->_vertexBindings)
  {
    return self->_vertexBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)fragmentBindings
{
  if (self->_fragmentBindings)
  {
    return self->_fragmentBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)tileBindings
{
  if (self->_tileBindings)
  {
    return self->_tileBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)objectBindings
{
  if (self->_objectBindings)
  {
    return self->_objectBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)meshBindings
{
  if (self->_meshBindings)
  {
    return self->_meshBindings;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (id)formattedDescription:(unint64_t)a3
{
  v96[2] = *MEMORY[0x1E69E9840];
  v49 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v50 = self;
  if ((self->_printStyle & 8) != 0)
  {
    v96[0] = v49;
    v96[1] = @"Object Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v96, 2)}];
    v95[0] = v5;
    v95[1] = @"bindingsCount =";
    v95[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_objectBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v95, 3)}];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = self->_objectBindings;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v94 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v74;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v74 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v73 + 1) + 8 * i);
          v13 = [v12 isArgument];
          v14 = @"Global";
          if (v13)
          {
            v14 = @"Argument";
          }

          v93[0] = v5;
          v93[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v14, v9];
          v93[2] = [v12 formattedDescription:a3 + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v93, 3)}];
          v9 = (v9 + 1);
        }

        v8 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v94 count:16];
      }

      while (v8);
    }
  }

  if ((v50->_printStyle & 0x10) != 0)
  {
    v92[0] = v49;
    v92[1] = @"Mesh Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v92, 2)}];
    v91[0] = v5;
    v91[1] = @"bindingsCount =";
    v91[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v50->_meshBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v91, 3)}];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obja = v50->_meshBindings;
    v15 = [(NSArray *)obja countByEnumeratingWithState:&v69 objects:v90 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v70;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(obja);
          }

          v20 = *(*(&v69 + 1) + 8 * j);
          v21 = [v20 isArgument];
          v22 = @"Global";
          if (v21)
          {
            v22 = @"Argument";
          }

          v89[0] = v5;
          v89[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v22, v17];
          v89[2] = [v20 formattedDescription:a3 + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v89, 3)}];
          v17 = (v17 + 1);
        }

        v16 = [(NSArray *)obja countByEnumeratingWithState:&v69 objects:v90 count:16];
      }

      while (v16);
    }
  }

  if (v50->_printStyle)
  {
    v88[0] = v49;
    v88[1] = @"Vertex Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v88, 2)}];
    v87[0] = v5;
    v87[1] = @"bindingsCount =";
    v87[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v50->_vertexBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v87, 3)}];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    objb = v50->_vertexBindings;
    v23 = [(NSArray *)objb countByEnumeratingWithState:&v65 objects:v86 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v66;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v66 != v26)
          {
            objc_enumerationMutation(objb);
          }

          v28 = *(*(&v65 + 1) + 8 * k);
          v29 = [v28 isArgument];
          v30 = @"Global";
          if (v29)
          {
            v30 = @"Argument";
          }

          v85[0] = v5;
          v85[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v30, v25];
          v85[2] = [v28 formattedDescription:a3 + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v85, 3)}];
          v25 = (v25 + 1);
        }

        v24 = [(NSArray *)objb countByEnumeratingWithState:&v65 objects:v86 count:16];
      }

      while (v24);
    }
  }

  if ((v50->_printStyle & 2) != 0)
  {
    v84[0] = v49;
    v84[1] = @"Fragment Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v84, 2)}];
    v83[0] = v5;
    v83[1] = @"bindingsCount =";
    v83[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v50->_fragmentBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v83, 3)}];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    objc = v50->_fragmentBindings;
    v31 = [(NSArray *)objc countByEnumeratingWithState:&v61 objects:v82 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v62;
      do
      {
        for (m = 0; m != v32; ++m)
        {
          if (*v62 != v34)
          {
            objc_enumerationMutation(objc);
          }

          v36 = *(*(&v61 + 1) + 8 * m);
          v37 = [v36 isArgument];
          v38 = @"Global";
          if (v37)
          {
            v38 = @"Argument";
          }

          v81[0] = v5;
          v81[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v38, v33];
          v81[2] = [v36 formattedDescription:a3 + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v81, 3)}];
          v33 = (v33 + 1);
        }

        v32 = [(NSArray *)objc countByEnumeratingWithState:&v61 objects:v82 count:16];
      }

      while (v32);
    }
  }

  if ((v50->_printStyle & 4) != 0)
  {
    v80[0] = v49;
    v80[1] = @"Tile Bindings:";
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v80, 2)}];
    v79[0] = v5;
    v79[1] = @"bindingsCount =";
    v79[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](v50->_tileBindings, "count")}];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v79, 3)}];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    objd = v50->_tileBindings;
    v39 = [(NSArray *)objd countByEnumeratingWithState:&v57 objects:v78 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = 0;
      v42 = *v58;
      do
      {
        for (n = 0; n != v40; ++n)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(objd);
          }

          v44 = *(*(&v57 + 1) + 8 * n);
          v45 = [v44 isArgument];
          v46 = @"Global";
          if (v45)
          {
            v46 = @"Argument";
          }

          v77[0] = v5;
          v77[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %u:", v46, v41];
          v77[2] = [v44 formattedDescription:a3 + 8];
          [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v77, 3)}];
          v41 = (v41 + 1);
        }

        v40 = [(NSArray *)objd countByEnumeratingWithState:&v57 objects:v78 count:16];
      }

      while (v40);
    }
  }

  v56.receiver = v50;
  v56.super_class = MTLRenderPipelineReflectionInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLRenderPipelineReflectionInternal description](&v56, sel_description), objc_msgSend(v6, "componentsJoinedByString:", @" "];
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)initWithReader:(void *)a3 device:(uint64_t)a4 flags:
{
  if (result)
  {
    return [(MTLRenderPipelineReflectionInternal *)result initWithReader:a2 dylibReaders:0 dylibReaderCount:0 dylibGlobalBindingCount:0 device:a3 flags:a4];
  }

  return result;
}

- (void)initWithReader:(uint64_t)a3 dylibReaders:(unsigned int)a4 dylibReaderCount:(int)a5 dylibGlobalBindingCount:(void *)a6 device:(uint64_t)a7 flags:
{
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v50.receiver = a1;
    v50.super_class = MTLRenderPipelineReflectionInternal;
    v13 = objc_msgSendSuper2(&v50, sel_init);
    v14 = v13;
    if (v13)
    {
      v13[1] = a7;
      v13[27] = 4;
      v15 = *(a2 + 8);
      *(v13 + 22) = *(v15 + 48);
      v16 = *(v15 + 16);
      v47 = *(v15 + 36);
      v49 = (v16 - v47);
      v48 = *(v15 + 8);
      v17 = *(v15 + 24);
      if (v16 || *(v13 + 22) != -1)
      {
        v13[7] = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v48 count:v49];
        v18 = *(v14 + 22);
        if (v18 != -1)
        {
          TraceBufferBinding = CreateTraceBufferBinding(v18);
          [v14[7] addObject:TraceBufferBinding];
        }
      }

      v20 = *(*(a2 + 8) + 32);
      v21 = [v14[7] count];
      v22 = v20 + a5;
      v23 = (v20 + a5 + v21);
      if (v22 + v21)
      {
        v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v23];
        v25 = [v24 addObjectsFromArray:v14[7]];
        if (v20)
        {
          do
          {
            v29 = *v17++;
            v25 = [v24 addObject:v29];
            --v20;
          }

          while (v20);
        }

        if (a4)
        {
          v30 = 0;
          v31 = a4;
          do
          {
            v32 = *(a3 + 8 * v30);
            if (v32)
            {
              v33 = *(*(v32 + 8) + 32);
              if (v33)
              {
                v34 = 0;
                v35 = 8 * v33;
                do
                {
                  v36 = *(*(*(v32 + 8) + 24) + v34);
                  v25 = [v24 containsObject:v36];
                  if ((v25 & 1) == 0)
                  {
                    v25 = [v24 addObject:v36];
                  }

                  v34 += 8;
                }

                while (v35 != v34);
              }
            }

            ++v30;
          }

          while (v30 != v31);
        }

        v37 = OUTLINED_FUNCTION_1_6(v25, v26, v27, v28);
        if (v37)
        {
          v38 = v37;
          v39 = MEMORY[0];
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (MEMORY[0] != v39)
              {
                objc_enumerationMutation(v24);
              }

              _MTLFixIABReflectionOffsets(*(8 * i), a6);
            }

            v38 = OUTLINED_FUNCTION_1_6(v41, v42, v43, v44);
          }

          while (v38);
        }

        v14[24] = v24;
      }

      if (v47)
      {
        v14[8] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v48 + 8 * v49 count:v47];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)initWithFragmentReader:(void *)a3 device:(uint64_t)a4 flags:
{
  if (result)
  {
    return [(MTLRenderPipelineReflectionInternal *)result initWithFragmentReader:a2 dylibReaders:0 dylibReaderCount:0 dylibGlobalBindingCount:0 device:a3 flags:a4];
  }

  return result;
}

- (void)initWithFragmentReader:(uint64_t)a3 dylibReaders:(unsigned int)a4 dylibReaderCount:(int)a5 dylibGlobalBindingCount:(void *)a6 device:(uint64_t)a7 flags:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [(MTLRenderPipelineReflectionInternal *)a1 initWithReader:a2 dylibReaders:a3 dylibReaderCount:a4 dylibGlobalBindingCount:a5 device:a6 flags:a7];
  v9 = v8;
  if (v8)
  {
    v8[27] = 4;
    v10 = *(a2 + 16);
    if (*(v10 + 136) == 1)
    {
      v8[9] = *(v10 + 128);
    }
  }

  return v9;
}

@end