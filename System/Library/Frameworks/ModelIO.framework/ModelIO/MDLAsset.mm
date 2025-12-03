@interface MDLAsset
+ (BOOL)canExportFileExtension:(NSString *)extension;
+ (BOOL)canImportFileExtension:(NSString *)extension;
+ (NSArray)placeLightProbesWithDensity:(float)value heuristic:(MDLProbePlacement)type usingIrradianceDataSource:(id)dataSource;
- (BOOL)exportAssetToURL:(NSURL *)URL error:(NSError *)error;
- (MDLAsset)init;
- (MDLAsset)initWithBufferAllocator:(id)bufferAllocator;
- (MDLAsset)initWithData:(id)data name:(id)name vertexDescriptor:(id)descriptor bufferAllocator:(id)allocator preserveTopology:(BOOL)topology error:(id *)error;
- (MDLAsset)initWithURL:(id)l options:(id)options error:(id *)error;
- (MDLObject)objectAtIndex:(NSUInteger)index;
- (MDLObject)objectAtIndexedSubscript:(NSUInteger)index;
- (MDLObject)objectAtPath:(NSString *)path;
- (NSArray)childObjectsOfClass:(Class)objectClass;
- (NSTimeInterval)endTime;
- (NSTimeInterval)startTime;
- (id)componentConformingToProtocol:(id)protocol;
- (id)components;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initThroughSCNKitBridgeWithURL:(id)l options:(id)options error:(id)error;
- (id)objectForKeyedSubscript:(id)subscript;
- (vector_float3)upAxis;
- (void)_bounds;
- (void)_commonInit;
- (void)_conformVertexBuffers:(id)buffers error:(id *)error;
- (void)dealloc;
- (void)enumerateChildObjectsOfClass:(Class)class usingBlock:(id)block stopPointer:(BOOL *)pointer;
- (void)loadTextures;
- (void)resolveTextures;
- (void)setComponent:(id)component forProtocol:(id)protocol;
@end

@implementation MDLAsset

- (void)_commonInit
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objects = self->_objects;
  self->_objects = v3;

  v5 = objc_alloc_init(MDLObjectContainer);
  masters = self->_masters;
  self->_masters = v5;

  v7 = objc_alloc_init(MDLObjectContainer);
  animations = self->_animations;
  self->_animations = v7;

  v9 = [MDLRelativeAssetResolver alloc];
  v11 = objc_msgSend_initWithAsset_(v9, v10, self);
  resolver = self->_resolver;
  self->_resolver = v11;

  *&self->_startTime = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->__timeCodesPerSecond = 60.0;
  temporaryFolderURL = self->_temporaryFolderURL;
  self->_temporaryFolderURL = 0;

  v16 = objc_msgSend_meters(MEMORY[0x277CCAE20], v14, v15);
  unitLength = self->_unitLength;
  self->_unitLength = v16;

  *self->_upAxis = xmmword_239F9C090;
  self->_metersPerUnit = 0.01;
  extents = self->_extents;
  self->_extents = 0;
}

- (void)_bounds
{
  v38 = *MEMORY[0x277D85DE8];
  a2[1].i64[0] = 0;
  a2[1].i64[1] = 0;
  __asm { FMOV            V0.4S, #-1.0 }

  *a2 = _Q0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = *(self + 16);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v33, v37, 16);
  if (v12)
  {
    v13 = *v34;
    v14 = MEMORY[0x277D860B8];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = objc_msgSend_transform(v16, v10, v11, v28, v29, v30, v31);
        v20 = v17;
        if (v17)
        {
          objc_msgSend_matrix(v17, v18, v19);
          v28 = v21;
          v29 = v22;
          v30 = v23;
          v31 = v24;
        }

        else
        {
          v25 = v14[1];
          v28 = *v14;
          v29 = v25;
          v26 = v14[3];
          v30 = v14[2];
          v31 = v26;
        }

        sub_239EAC1C8(v16, &v28, v32);
        sub_239EB1DF0(a2, v32);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v33, v37, 16);
    }

    while (v12);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setComponent:(id)component forProtocol:(id)protocol
{
  componentCopy = component;
  protocolCopy = protocol;
  components = self->_components;
  if (!components)
  {
    v9 = objc_opt_new();
    v10 = self->_components;
    self->_components = v9;

    components = self->_components;
  }

  objc_msgSend_setObject_forKey_(components, v6, componentCopy, protocolCopy);
}

- (id)componentConformingToProtocol:(id)protocol
{
  v3 = objc_msgSend_objectForKey_(self->_components, a2, protocol);

  return v3;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = objc_msgSend_componentConformingToProtocol_(self, a2, subscript);

  return v3;
}

- (id)components
{
  v3 = objc_msgSend_objectEnumerator(self->_components, a2, v2);
  v6 = objc_msgSend_allObjects(v3, v4, v5);

  return v6;
}

- (NSArray)childObjectsOfClass:(Class)objectClass
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(objectClass, v7, v6) & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v8, v12, @"ModelIOException", @"[%@ %@]: Requested class must be an MDLObject or a subclass of MDLObject", v10, v11);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v15, &v22, v26, 16);
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(selfCopy);
        }

        sub_239EAC7A0(objectClass, *(*(&v22 + 1) + 8 * i), v13);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v19, &v22, v26, 16);
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v7 = objc_msgSend_initWithString_(v3, v4, @"MDLAsset:\n");
  for (i = 0; i < objc_msgSend_count(self, v5, v6); ++i)
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(self, v9, i);
    v13 = objc_msgSend_recursiveDescription(v10, v11, v12);
    objc_msgSend_appendString_(v7, v14, v13);
  }

  return v7;
}

- (void)enumerateChildObjectsOfClass:(Class)class usingBlock:(id)block stopPointer:(BOOL *)pointer
{
  v39 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v36 = 0;
  if (pointer)
  {
    pointerCopy = pointer;
  }

  else
  {
    pointerCopy = &v36;
  }

  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v11, &v32, v38, 16);
  if (v12)
  {
    v13 = *v33;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v33 != v13)
      {
        objc_enumerationMutation(selfCopy);
      }

      v15 = *(*(&v32 + 1) + 8 * v14);
      if (objc_opt_isKindOfClass())
      {
        blockCopy[2](blockCopy, v15, pointerCopy);
      }

      if (*pointerCopy)
      {
        break;
      }

      objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v15, v16, class, v15, blockCopy, pointerCopy);
      if (*pointerCopy)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v17, &v32, v38, 16);
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = objc_msgSend_masters(selfCopy, v18, v19, 0);
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v20, &v28, v37, 16);
    if (v21)
    {
      v22 = *v29;
LABEL_17:
      v23 = 0;
      while (1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(selfCopy);
        }

        v24 = *(*(&v28 + 1) + 8 * v23);
        if (objc_opt_isKindOfClass())
        {
          blockCopy[2](blockCopy, v24, pointerCopy);
        }

        if (*pointerCopy)
        {
          break;
        }

        objc_msgSend_enumerateChildObjectsOfClass_root_usingBlock_stopPointer_(v24, v25, class, v24, blockCopy, pointerCopy);
        if (*pointerCopy)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(selfCopy, v26, &v28, v37, 16);
          if (v21)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)resolveTextures
{
  v6 = 0;
  v3 = objc_opt_class();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_239EACD60;
  v5[3] = &unk_278B40F58;
  v5[4] = self;
  objc_msgSend_enumerateChildObjectsOfClass_usingBlock_stopPointer_(self, v4, v3, v5, &v6);
}

- (void)loadTextures
{
  v9 = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_239EACF88;
  v7[3] = &unk_278B40F80;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  objc_msgSend_enumerateChildObjectsOfClass_usingBlock_stopPointer_(self, v6, v4, v7, &v9);
}

- (NSTimeInterval)startTime
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_childObjectsOfClass_(self, v4, v3);
  startTime = self->_startTime;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v5;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v31, v35, 16);
  if (v11)
  {
    v12 = *v32;
    do
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = objc_msgSend_transform(*(*(&v31 + 1) + 8 * v13), v9, v10, v31);
        v17 = v14;
        if (v14)
        {
          objc_msgSend_minimumTime(v14, v15, v16);
          v19 = v18;
          objc_msgSend_maximumTime(v17, v20, v21);
          if (v19 != v24)
          {
            objc_msgSend_minimumTime(v17, v22, v23);
            if (v27 < startTime)
            {
              objc_msgSend_minimumTime(v17, v25, v26);
              startTime = v28;
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v31, v35, 16);
    }

    while (v11);
  }

  if (startTime == 1.79769313e308)
  {
    startTime = 0.0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return startTime;
}

- (NSTimeInterval)endTime
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_childObjectsOfClass_(self, v4, v3);
  endTime = self->_endTime;
  v32 = 0u;
  v33 = 0u;
  if (endTime == 1.79769313e308)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = endTime;
  }

  v34 = 0uLL;
  v35 = 0uLL;
  v8 = v5;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v36, 16);
  if (v12)
  {
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend_transform(*(*(&v32 + 1) + 8 * i), v10, v11, v32);
        v18 = v15;
        if (v15)
        {
          objc_msgSend_minimumTime(v15, v16, v17);
          v20 = v19;
          objc_msgSend_maximumTime(v18, v21, v22);
          if (v20 != v25)
          {
            objc_msgSend_maximumTime(v18, v23, v24);
            if (v28 > v7)
            {
              objc_msgSend_maximumTime(v18, v26, v27);
              v7 = v29;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v32, v36, 16);
    }

    while (v12);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  v6 = objc_msgSend_allocWithZone_(v4, v5, zone);

  return objc_msgSend_init(v6, v7, v8);
}

+ (BOOL)canExportFileExtension:(NSString *)extension
{
  v3 = objc_msgSend_lowercaseString(extension, a2, extension);
  if (objc_msgSend_isEqualToString_(v3, v4, @"obj") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v5, @"stl") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v6, @"abc") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v7, @"ply") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v8, @"usd") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v9, @"usda"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v10, @"usdc");
  }

  return isEqualToString;
}

+ (BOOL)canImportFileExtension:(NSString *)extension
{
  v3 = objc_msgSend_lowercaseString(extension, a2, extension);
  if (objc_msgSend_isEqualToString_(v3, v4, @"abc") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v5, @"usd") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v6, @"usda") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v7, @"usdc") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v8, @"usdz") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v9, @"obj") & 1) != 0 || (objc_msgSend_isEqualToString_(v3, v10, @"ply"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v11, @"stl");
  }

  return isEqualToString;
}

- (MDLAsset)init
{
  v11.receiver = self;
  v11.super_class = MDLAsset;
  v2 = [(MDLAsset *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MDLMeshBufferDataAllocator);
    bufferAllocator = v2->_bufferAllocator;
    v2->_bufferAllocator = v3;

    objc_msgSend__commonInit(v2, v5, v6);
    sub_239F45530(0, v7, v8);
    v9 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_temporaryFolderURL)
  {
    v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2);
    temporaryFolderURL = self->_temporaryFolderURL;
    v13 = 0;
    v7 = objc_msgSend_removeItemAtURL_error_(v4, v6, temporaryFolderURL, &v13);
    v8 = v13;

    if ((v7 & 1) == 0)
    {
      v11 = objc_msgSend_path(self->_temporaryFolderURL, v9, v10);
      NSLog(&cfstr_FailedToRemove.isa, v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = self;
  v12.super_class = MDLAsset;
  [(MDLAsset *)&v12 dealloc];
}

- (MDLAsset)initWithBufferAllocator:(id)bufferAllocator
{
  v4 = bufferAllocator;
  v14.receiver = self;
  v14.super_class = MDLAsset;
  v5 = [(MDLAsset *)&v14 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MDLMeshBufferDataAllocator);
    }

    v7 = v5->_bufferAllocator;
    v5->_bufferAllocator = v6;

    objc_msgSend__commonInit(v5, v8, v9);
    sub_239F45530(v4 != 0, v10, v11);
    v12 = v5;
  }

  return v5;
}

- (void)_conformVertexBuffers:(id)buffers error:(id *)error
{
  v161 = *MEMORY[0x277D85DE8];
  obj = buffers;
  buffersCopy = buffers;
  v7 = buffersCopy;
  if (buffersCopy)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v8 = objc_msgSend_layouts(buffersCopy, v5, v6);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v155, v160, 16);
    if (!v12)
    {
LABEL_40:

      goto LABEL_41;
    }

    v13 = 0;
    v14 = *v156;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v156 != v14)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_msgSend_stride(*(*(&v155 + 1) + 8 * i), v10, v11, obj))
        {
          ++v13;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v155, v160, 16);
    }

    while (v12);

    if (v13)
    {
      if (!self->_bufferAllocator)
      {
        v18 = objc_alloc_init(MDLMeshBufferDataAllocator);
        bufferAllocator = self->_bufferAllocator;
        self->_bufferAllocator = v18;
      }

      v20 = objc_msgSend_layouts(v7, v16, v17);
      v23 = objc_msgSend_count(v20, v21, v22);
      p_vertexDescriptor = &self->_vertexDescriptor;
      v27 = objc_msgSend_layouts(self->_vertexDescriptor, v25, v26);
      v30 = v23 != objc_msgSend_count(v27, v28, v29);

      for (j = 0; ; ++j)
      {
        v34 = objc_msgSend_layouts(v7, v31, v32);
        v37 = objc_msgSend_count(v34, v35, v36) <= j;

        if ((v37 | v30))
        {
          break;
        }

        v40 = objc_msgSend_layouts(v7, v38, v39);
        v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, j);
        v45 = objc_msgSend_stride(v42, v43, v44);
        v48 = objc_msgSend_layouts(*p_vertexDescriptor, v46, v47);
        v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, j);
        v30 = v45 != objc_msgSend_stride(v50, v51, v52);
      }

      for (k = 0; ; ++k)
      {
        v54 = objc_msgSend_attributes(v7, v38, v39);
        v57 = objc_msgSend_count(v54, v55, v56) <= k;

        if ((v57 | v30))
        {
          break;
        }

        v60 = objc_msgSend_attributes(v7, v58, v59);
        v62 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, k);
        v65 = objc_msgSend_name(v62, v63, v64);
        v68 = objc_msgSend_attributes(*p_vertexDescriptor, v66, v67);
        v70 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, k);
        v73 = objc_msgSend_name(v70, v71, v72);
        isEqualToString = objc_msgSend_isEqualToString_(v65, v74, v73);

        v78 = objc_msgSend_attributes(v7, v76, v77);
        v80 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, k);
        v83 = objc_msgSend_format(v80, v81, v82);
        v86 = objc_msgSend_attributes(*p_vertexDescriptor, v84, v85);
        v88 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, k);
        if (v83 == objc_msgSend_format(v88, v89, v90))
        {
          v30 = isEqualToString ^ 1;
        }

        else
        {
          v30 = 1;
        }

        v93 = objc_msgSend_attributes(v7, v91, v92);
        v95 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, k);
        v98 = objc_msgSend_offset(v95, v96, v97);
        v101 = objc_msgSend_attributes(*p_vertexDescriptor, v99, v100);
        v103 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, k);
        if (v98 != objc_msgSend_offset(v103, v104, v105))
        {
          v30 = 1;
        }

        v108 = objc_msgSend_attributes(v7, v106, v107);
        v110 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, k);
        v113 = objc_msgSend_bufferIndex(v110, v111, v112);
        v116 = objc_msgSend_attributes(*p_vertexDescriptor, v114, v115);
        v118 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, k);
        if (v113 != objc_msgSend_bufferIndex(v118, v119, v120))
        {
          v30 = 1;
        }

        v123 = objc_msgSend_attributes(v7, v121, v122);
        v125 = objc_msgSend_objectAtIndexedSubscript_(v123, v124, k);
        objc_msgSend_time(v125, v126, v127);
        v129 = v128;
        v132 = objc_msgSend_attributes(*p_vertexDescriptor, v130, v131);
        v134 = objc_msgSend_objectAtIndexedSubscript_(v132, v133, k);
        objc_msgSend_time(v134, v135, v136);
        if (v129 != v137)
        {
          v30 = 1;
        }
      }

      if (v30)
      {
        v138 = objc_opt_class();
        objc_msgSend_childObjectsOfClass_(self, v139, v138);
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v8 = v152 = 0u;
        v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v140, &v151, v159, 16);
        if (v141)
        {
          v142 = *v152;
          do
          {
            for (m = 0; m != v141; ++m)
            {
              if (*v152 != v142)
              {
                objc_enumerationMutation(v8);
              }

              v144 = *(*(&v151 + 1) + 8 * m);
              v146 = v144;
              if (v144)
              {
                objc_msgSend_setVertexDescriptor_(v144, v145, v7);
              }
            }

            v141 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v147, &v151, v159, 16);
          }

          while (v141);
        }

        objc_storeStrong(p_vertexDescriptor, obj);
        goto LABEL_40;
      }
    }
  }

LABEL_41:

  v148 = *MEMORY[0x277D85DE8];
}

- (MDLAsset)initWithData:(id)data name:(id)name vertexDescriptor:(id)descriptor bufferAllocator:(id)allocator preserveTopology:(BOOL)topology error:(id *)error
{
  dataCopy = data;
  nameCopy = name;
  descriptorCopy = descriptor;
  allocatorCopy = allocator;
  v46.receiver = self;
  v46.super_class = MDLAsset;
  v18 = [(MDLAsset *)&v46 init];
  if (v18)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    *v43 = 0u;
    *obj = 0u;
    HIDWORD(v42) = 1070141403;
    LOBYTE(v43[0]) = 1;
    WORD1(v43[0]) = 256;
    HIDWORD(v43[0]) = 1078530011;
    sub_239E552A0(&v43[1], "");
    v45 = 0uLL;
    if (allocatorCopy)
    {
      objc_storeStrong(&v42, allocator);
    }

    if (descriptorCopy)
    {
      objc_storeStrong(&obj[1], descriptor);
    }

    LOBYTE(obj[0]) = topology;
    if (v42)
    {
      v19 = v42;
    }

    else
    {
      v19 = objc_opt_new();
    }

    bufferAllocator = v18->_bufferAllocator;
    v18->_bufferAllocator = v19;

    *v18->_upAxis = xmmword_239F9C090;
    v18->_metersPerUnit = 0.01;
    objc_msgSend__commonInit(v18, v21, v22);
    v25 = objc_msgSend_pathExtension(nameCopy, v23, v24);
    v28 = objc_msgSend_lowercaseString(v25, v26, v27);

    if (objc_msgSend_isEqualToString_(v28, v29, @"usdz"))
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      sub_239E55EAC(v39, 0);
    }

    if (error)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      v35 = objc_msgSend_stringWithFormat_(v30, v34, @"[%@ %@]: only accepts usdz file", v32, v33);

      *error = sub_239EADFF4(v35);
    }

    v36 = v18;

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[1]);
    }
  }

  return v18;
}

- (MDLAsset)initWithURL:(id)l options:(id)options error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  v164.receiver = self;
  v164.super_class = MDLAsset;
  v11 = [(MDLAsset *)&v164 init];
  if (!v11)
  {
    goto LABEL_125;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v159 = 0u;
  HIDWORD(v160) = 1070141403;
  LOBYTE(v161) = 1;
  WORD1(v161) = 256;
  DWORD1(v161) = 1078530011;
  sub_239E552A0(&v161 + 8, "");
  v163 = 0uLL;
  sub_239E55358(optionsCopy, &v159);
  objc_storeStrong(&v11->_URL, l);
  if (v160)
  {
    v12 = v160;
  }

  else
  {
    v12 = objc_opt_new();
  }

  bufferAllocator = v11->_bufferAllocator;
  v11->_bufferAllocator = v12;

  objc_msgSend__commonInit(v11, v14, v15);
  URL = v11->_URL;
  if (!URL)
  {
    goto LABEL_121;
  }

  memset(&__str, 0, sizeof(__str));
  v19 = objc_msgSend_path(URL, v16, v17);
  v20 = v19;
  v22 = objc_msgSend_cStringUsingEncoding_(v20, v21, 4);
  sub_239E552A0(&__str, v22);

  v23 = std::string::rfind(&__str, 46, 0xFFFFFFFFFFFFFFFFLL);
  v156 = 0uLL;
  v157 = 0;
  if (v23 == -1)
  {
    v34 = *(&v159 + 1);
    v35 = v160;
    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, &v156);
  }

  else
  {
    std::string::basic_string(v126, &__str, v23 + 1, 0xFFFFFFFFFFFFFFFFLL, &v149);
    if (SHIBYTE(v157) < 0)
    {
      operator delete(v156);
    }

    v157 = *&v126[16];
    v156 = *v126;
    if (v126[23] >= 0)
    {
      v26 = SHIBYTE(v157);
    }

    else
    {
      v26 = *(&v156 + 1);
    }

    v27 = HIBYTE(v157);
    if (v26)
    {
      v28 = 0;
      v29 = v126[23] >> 63;
      do
      {
        v30 = v156;
        if ((v29 & 1) == 0)
        {
          v30 = &v156;
        }

        v31 = __toupper(*(v30 + v28));
        if (v157 >= 0)
        {
          v32 = &v156;
        }

        else
        {
          v32 = v156;
        }

        *(v32 + v28++) = v31;
        v27 = HIBYTE(v157);
        v29 = SHIBYTE(v157) >> 63;
        v33 = *(&v156 + 1);
        if (v157 >= 0)
        {
          v33 = SHIBYTE(v157);
        }
      }

      while (v28 < v33);
    }

    v34 = *(&v159 + 1);
    v35 = v160;
    if (v27 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, &v156);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v156);
    }
  }
  v36 = ;
  sub_239E55914(v36, v35 != 0, v34 != 0, v11->_isSceneKitBridged);

  if ((SHIBYTE(v157) & 0x80000000) == 0)
  {
    if (SHIBYTE(v157) == 3)
    {
      v37 = &v156;
      goto LABEL_31;
    }

LABEL_35:
    v124 = 0;
    v41 = 1;
    goto LABEL_36;
  }

  if (*(&v156 + 1) != 3)
  {
    goto LABEL_35;
  }

  v37 = v156;
LABEL_31:
  v38 = *v37;
  v39 = *(v37 + 2);
  if (v38 != 21587 || v39 != 76)
  {
    goto LABEL_35;
  }

  v58 = objc_alloc(MEMORY[0x277CBEA90]);
  v59 = v11->_URL;
  v155 = 0;
  v124 = objc_msgSend_initWithContentsOfURL_options_error_(v58, v60, v59, 3, &v155);
  v61 = v155;
  v63 = v61;
  if (v61)
  {
    NSLog(&stru_284D193F8.isa, v61);
  }

  else
  {
    if (v124)
    {
      v41 = 1;
      goto LABEL_94;
    }

    v99 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, @"Could not load data from %@", v11->_URL);
    NSLog(&stru_284D193F8.isa, v99);
  }

  v41 = 0;
LABEL_94:

LABEL_36:
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = sub_239EAF5EC;
  v153 = sub_239EAF5FC;
  v154 = 0;
  if (sub_239E55C70(v11->_URL))
  {
    byte_27DF91228 = 1;
  }

  v42 = *MEMORY[0x277D861B8];
  v45 = sandbox_extension_issue_file();
  v46 = MEMORY[0x277CCACA8];
  if (!v45)
  {
    v53 = objc_msgSend_path(v11->_URL, v43, v44);
    v55 = objc_msgSend_stringWithFormat_(v46, v54, @"Unable to issue extension for path %@", v53);
    v56 = v150[5];
    v150[5] = v55;

    v57 = sub_239EADFF4(v150[5]);
    v47 = 0;
    NSLog(&stru_284D193F8.isa, v150[5]);
    goto LABEL_109;
  }

  v47 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v43, v45, 4);
  free(v45);
  if (v41)
  {
    v49 = objc_autoreleasePoolPush();
    v145 = 0;
    v146 = &v145;
    v147 = *"";
    v148 = 0;
    if (SHIBYTE(v157) < 0)
    {
      if (*(&v156 + 1) != 3 || (*v156 == 16975 ? (v64 = *(v156 + 2) == 74) : (v64 = 0), !v64))
      {
        if (*(&v156 + 1) != 3 || (*v156 == 19536 ? (v65 = *(v156 + 2) == 89) : (v65 = 0), !v65))
        {
          if (*(&v156 + 1) != 3)
          {
            goto LABEL_74;
          }

          v52 = v156;
LABEL_67:
          v66 = *v52;
          v67 = *(v52 + 2);
          if (v66 != 21587 || v67 != 76)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else
    {
      if (SHIBYTE(v157) != 3)
      {
        goto LABEL_74;
      }

      if ((v156 != 16975 || BYTE2(v156) != 74) && (v156 != 19536 || BYTE2(v156) != 89))
      {
        v52 = &v156;
        goto LABEL_67;
      }
    }

    if ((byte_27DF91228 & 1) == 0)
    {
      v69 = objc_alloc(MEMORY[0x277CCAE80]);
      v71 = objc_msgSend_initWithServiceName_(v69, v70, @"com.apple.ModelIO.AssetLoader");
      v73 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v72, &unk_284D2E178);
      objc_msgSend_setRemoteObjectInterface_(v71, v74, v73);

      v144[0] = MEMORY[0x277D85DD0];
      v144[1] = 3221225472;
      v144[2] = sub_239EAF604;
      v144[3] = &unk_278B40FA8;
      v144[4] = &v145;
      objc_msgSend_setInterruptionHandler_(v71, v75, v144);
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = sub_239EAF640;
      v143[3] = &unk_278B40FA8;
      v143[4] = &v145;
      objc_msgSend_setInvalidationHandler_(v71, v76, v143);
      objc_msgSend_resume(v71, v77, v78);
      v142[0] = MEMORY[0x277D85DD0];
      v142[1] = 3221225472;
      v142[2] = sub_239EAF67C;
      v142[3] = &unk_278B40FD0;
      v142[4] = &v149;
      v142[5] = &v145;
      v80 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v71, v79, v142);
      v81 = v11->_URL;
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = sub_239EAF710;
      v141[3] = &unk_278B40FF8;
      v141[4] = &v149;
      v141[5] = &v145;
      objc_msgSend_loadURL_extensionToken_withReply_(v80, v82, v81, v47, v141);

      if (v146[3])
      {
        goto LABEL_107;
      }
    }

LABEL_74:
    if (SHIBYTE(v157) < 0)
    {
      if (*(&v156 + 1) != 3 || (*v156 == 16975 ? (v84 = *(v156 + 2) == 74) : (v84 = 0), !v84))
      {
        if (*(&v156 + 1) != 3 || (*v156 == 21333 ? (v85 = *(v156 + 2) == 68) : (v85 = 0), !v85))
        {
          if (*(&v156 + 1) == 4)
          {
            v83 = v156;
LABEL_90:
            if (*v83 == 1094996821)
            {
              goto LABEL_106;
            }
          }

LABEL_103:
          if (sub_239E55D74(&v156, "USDC") || sub_239E55D74(&v156, "USDZ") || sub_239E55D74(&v156, "ABC"))
          {
            goto LABEL_106;
          }

          if (sub_239E55D74(&v156, "PLY") && (v146[3] & 1) == 0)
          {
            v137 = 0;
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v127 = 0u;
            v128 = 0u;
            memset(v126, 0, sizeof(v126));
            sub_239EE1FC4(v126, 0);
            v139 = 0;
            v140 = 0;
            __p = 0;
            sub_239EE5374(v126, v11->_URL, v11, &__p);
            v110 = HIBYTE(v140);
            v111 = HIBYTE(v140);
            if (v140 < 0)
            {
              v110 = v139;
            }

            if (v110)
            {
              v112 = objc_alloc(MEMORY[0x277CCACA8]);
              if (v140 >= 0)
              {
                v114 = objc_msgSend_initWithUTF8String_(v112, v113, &__p);
              }

              else
              {
                v114 = objc_msgSend_initWithUTF8String_(v112, v113, __p);
              }

              v115 = v150[5];
              v150[5] = v114;

              v111 = HIBYTE(v140);
            }

            if (v111 < 0)
            {
              operator delete(__p);
            }

            sub_239EE20A4(v126);
          }

          else if (sub_239E55D74(&v156, "STL") && (v146[3] & 1) == 0)
          {
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            v117 = v124;
            v120 = objc_msgSend_bytes(v117, v118, v119);
            v123 = objc_msgSend_length(v124, v121, v122);
            sub_239EB75C0(p_str, v120, v123, v11);
          }

          else if (sub_239E55D74(&v156, "IES"))
          {
            v100 = [MDLPhotometricLight alloc];
            v102 = objc_msgSend_initWithIESProfile_(v100, v101, lCopy);
            objc_msgSend_generateCubemapFromLight_(v102, v103, 128);
            objc_msgSend_generateSphericalHarmonicsFromLight_(v102, v104, 3);
            objc_msgSend_addObject_(v11, v105, v102);
          }

          else
          {
            v106 = objc_alloc(MEMORY[0x277CCACA8]);
            v108 = objc_msgSend_initWithFormat_(v106, v107, @"Could not load asset with unknown extension from %@", v11->_URL);
            v109 = v150[5];
            v150[5] = v108;
          }

LABEL_107:
          _Block_object_dispose(&v145, 8);
          objc_autoreleasePoolPop(v49);
          v88 = v150[5];
          if (v88)
          {
            v57 = sub_239EADFF4(v88);
            NSLog(&stru_284D193F8.isa, v150[5]);
LABEL_109:
            if (v57)
            {
              goto LABEL_113;
            }

            goto LABEL_110;
          }

          goto LABEL_110;
        }

LABEL_106:
        *&v128 = 0;
        v127 = 0u;
        memset(v126, 0, sizeof(v126));
        sub_239E55EAC(v126, 0);
      }
    }

    else
    {
      if (HIBYTE(v157) != 3)
      {
        if (HIBYTE(v157) == 4)
        {
          v83 = &v156;
          goto LABEL_90;
        }

        goto LABEL_103;
      }

      if (v156 != 16975 || BYTE2(v156) != 74)
      {
        if (v156 != 21333 || BYTE2(v156) != 68)
        {
          goto LABEL_103;
        }

        goto LABEL_106;
      }
    }

    *&v128 = 0;
    v127 = 0u;
    memset(v126, 0, sizeof(v126));
    sub_239E8EC98(v126, 0);
    v139 = 0;
    v140 = 0;
    __p = 0;
    sub_239E8ED7C(v126, v11->_URL, &v159, v11, &__p);
    v93 = HIBYTE(v140);
    v94 = HIBYTE(v140);
    if (v140 < 0)
    {
      v93 = v139;
    }

    if (v93)
    {
      v95 = objc_alloc(MEMORY[0x277CCACA8]);
      if (v140 >= 0)
      {
        v97 = objc_msgSend_initWithUTF8String_(v95, v96, &__p);
      }

      else
      {
        v97 = objc_msgSend_initWithUTF8String_(v95, v96, __p);
      }

      v98 = v150[5];
      v150[5] = v97;

      v94 = HIBYTE(v140);
    }

    if (v94 < 0)
    {
      operator delete(__p);
    }

    sub_239E8ED40(v126);
    goto LABEL_107;
  }

LABEL_110:
  v89 = *(&v159 + 1);
  if (!*(&v159 + 1))
  {
    objc_storeStrong(&v159 + 1, v11->_vertexDescriptor);
    v89 = *(&v159 + 1);
  }

  v125 = 0;
  objc_msgSend__conformVertexBuffers_error_(v11, v48, v89, &v125);
  v57 = v125;
  objc_storeStrong(&v11->_vertexDescriptor, *(&v159 + 1));
LABEL_113:
  if (error)
  {
    v90 = v57;
    *error = v57;
  }

  _Block_object_dispose(&v149, 8);
  if (SHIBYTE(v157) < 0)
  {
    operator delete(v156);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (!v57)
    {
LABEL_121:
      objc_msgSend_resolveTextures(v11, v16, v17);
      v57 = 0;
    }
  }

  else if (!v57)
  {
    goto LABEL_121;
  }

  v91 = v11;

  if (SHIBYTE(v162) < 0)
  {
    operator delete(*(&v161 + 1));
  }

LABEL_125:
  return v11;
}

- (id)initThroughSCNKitBridgeWithURL:(id)l options:(id)options error:(id)error
{
  lCopy = l;
  optionsCopy = options;
  errorCopy = error;
  self->_isSceneKitBridged = 1;
  v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v11, @"kMDLAssetPreserveTopology");
  v15 = objc_msgSend_BOOLValue(v12, v13, v14);

  if (v15)
  {
    v24 = errorCopy;
    v17 = &v24;
    v18 = objc_msgSend_initWithURL_bufferAllocator_preserveIndexing_options_error_(self, v16, lCopy, 0, 1, optionsCopy, &v24);
  }

  else
  {
    v23 = errorCopy;
    v17 = &v23;
    v18 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_preserveTopology_error_(self, v16, lCopy, 0, 0, 0, &v23);
  }

  v19 = v18;
  v20 = *v17;

  v21 = v19;
  return v21;
}

- (BOOL)exportAssetToURL:(NSURL *)URL error:(NSError *)error
{
  v6 = URL;
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  v9 = objc_msgSend_path(v6, v7, v8);
  v10 = v9;
  v12 = objc_msgSend_cStringUsingEncoding_(v10, v11, 4);
  sub_239E552A0(v59, v12);

  v15 = objc_msgSend_pathExtension(v6, v13, v14);
  v18 = objc_msgSend_lowercaseString(v15, v16, v17);

  sub_239F453B0(v18);
  v19 = &stru_284D18478;
  if ((objc_msgSend_isEqualToString_(v18, v20, @"usd") & 1) != 0 || (objc_msgSend_isEqualToString_(v18, v21, @"usda") & 1) != 0 || objc_msgSend_isEqualToString_(v18, v22, @"usdc"))
  {
    *&v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    sub_239E55EAC(&v43, 0);
  }

  if (!objc_msgSend_isEqualToString_(v18, v23, @"abc"))
  {
    if (objc_msgSend_isEqualToString_(v18, v26, @"stl"))
    {
      if (v60 >= 0)
      {
        v31 = v59;
      }

      else
      {
        v31 = v59[0];
      }

      if (!sub_239EB8C88(v31, self))
      {
        v36 = v59;
        if (v60 < 0)
        {
          v36 = v59[0];
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"Could not save STL file to %s", v36);
        goto LABEL_43;
      }

LABEL_24:
      v24 = 1;
      goto LABEL_8;
    }

    if (objc_msgSend_isEqualToString_(v18, v30, @"obj"))
    {
      *&v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      sub_239E8EC98(&v43, 0);
      sub_239E9156C(&v43, v6, self, &v56);
      if (v58 < 0)
      {
        v41 = v57;
        operator delete(v56);
        if (v41)
        {
          goto LABEL_28;
        }
      }

      else if (v58)
      {
LABEL_28:
        v35 = v59;
        if (v60 < 0)
        {
          v35 = v59[0];
        }

        v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"Could not save OBJ file to %s", v35);
        v24 = 0;
        goto LABEL_46;
      }

      v24 = 1;
LABEL_46:
      sub_239E8ED40(&v43);
      goto LABEL_5;
    }

    if (!objc_msgSend_isEqualToString_(v18, v33, @"ply"))
    {
      v40 = v59;
      if (v60 < 0)
      {
        v40 = v59[0];
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v37, @"Unknown extension on URL: %s", v40);
      goto LABEL_43;
    }

    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    sub_239EE1FC4(&v43, 0);
    sub_239EE5928(&v43, v6, self, &v56);
    if (v58 < 0)
    {
      v42 = v57;
      operator delete(v56);
      if (v42)
      {
        goto LABEL_37;
      }
    }

    else if (v58)
    {
LABEL_37:
      v39 = v59;
      if (v60 < 0)
      {
        v39 = v59[0];
      }

      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v38, @"Could not save PLY file to %s", v39);
      v24 = 0;
      goto LABEL_49;
    }

    v24 = 1;
LABEL_49:
    sub_239EE20A4(&v43);
    goto LABEL_5;
  }

  if (v60 >= 0)
  {
    v27 = v59;
  }

  else
  {
    v27 = v59[0];
  }

  if (sub_239EFF72C(v27, self))
  {
    goto LABEL_24;
  }

  v29 = v59;
  if (v60 < 0)
  {
    v29 = v59[0];
  }

  objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v28, @"Could not save file to %s", v29);
LABEL_43:
  v19 = v24 = 0;
LABEL_5:
  if (error && !v24)
  {
    sub_239EADFF4(v19);
    *error = v24 = 0;
  }

LABEL_8:

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  return v24;
}

- (MDLObject)objectAtPath:(NSString *)path
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = path;
  v7 = v4;
  if (v4 && objc_msgSend_length(v4, v5, v6))
  {
    v40 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v8, @"/");
    v41 = objc_msgSend_stringByTrimmingCharactersInSet_(v7, v9, v40);
    v11 = objc_msgSend_componentsSeparatedByString_(v41, v10, @"/");
    v14 = v11;
    if (v11 && objc_msgSend_count(v11, v12, v13))
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v15 = self->_objects;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v42, v46, 16);
      if (v18)
      {
        v19 = *v43;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v42 + 1) + 8 * i);
            v22 = objc_msgSend_objectAtIndexedSubscript_(v14, v17, 0);
            v25 = objc_msgSend_name(v21, v23, v24);
            isEqualToString = objc_msgSend_isEqualToString_(v22, v26, v25);

            if (isEqualToString)
            {
              if (objc_msgSend_count(v14, v17, v28) < 2)
              {
                v29 = v21;
              }

              else
              {
                v31 = objc_msgSend_objectAtIndexedSubscript_(v14, v30, 0);
                v34 = objc_msgSend_length(v31, v32, v33);
                v36 = objc_msgSend_substringFromIndex_(v41, v35, v34 + 1);
                v29 = objc_msgSend_objectAtPath_(v21, v37, v36);
              }

              goto LABEL_19;
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v42, v46, 16);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v29 = 0;
LABEL_19:
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v29;
}

- (MDLObject)objectAtIndexedSubscript:(NSUInteger)index
{
  if (objc_msgSend_count(self->_objects, a2, index) <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_objects, v5, index);
  }

  return v6;
}

- (MDLObject)objectAtIndex:(NSUInteger)index
{
  if (objc_msgSend_count(self->_objects, a2, index) <= index)
  {
    v6 = 0;
  }

  else
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_objects, v5, index);
  }

  return v6;
}

- (vector_float3)upAxis
{
  v2 = *self->_upAxis;
  result.i64[1] = a2;
  result.i64[0] = self;
  return result;
}

+ (NSArray)placeLightProbesWithDensity:(float)value heuristic:(MDLProbePlacement)type usingIrradianceDataSource:(id)dataSource
{
  v328 = *MEMORY[0x277D85DE8];
  v8 = dataSource;
  if (value <= 0.0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v9, v13, @"ModelIOException", @"[%@ %@]: density must be greater than 0", v11, v12);
  }

  if (type == MDLProbePlacementIrradianceDistribution && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v14 = MEMORY[0x277CBEAD8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v14, v18, @"ModelIOException", @"[%@ %@]: must implement sphericalHarmonicsCoefficientsAtPosition: selector if using heuristic type MDLProbePlacementIrradianceDistribution", v16, v17);
  }

  v264 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_boundingBox(v8, v19, v20);
  v260 = v21;
  v262 = v22;
  if ((vmovn_s32(vmvnq_s8(vcgeq_f32(v21, v22))).u8[0] & 1) == 0)
  {
    *(&v23 + 1) = 0;
    LODWORD(v23) = v22.i32[0];
    v24 = vmovn_s32(vmvnq_s8(vcgeq_f32(v21, v22))).i16[1];
    v25 = 1.0 / value;
    do
    {
      DWORD1(v23) = v262.i32[1];
      v26 = v23;
      if (v24)
      {
        DWORD2(v27) = DWORD2(v23);
      }

      else
      {
        do
        {
          DWORD2(v23) = v262.i32[2];
          *obj = v23;
          HIDWORD(v23) = HIDWORD(v26);
          if (v262.f32[2] <= v260.f32[2])
          {
            v272 = v23;
            LODWORD(v26) = v262.i32[2];
            do
            {
              *v274 = v26;
              v28 = [MDLTransform alloc];
              v31 = objc_msgSend_initWithIdentity(v28, v29, v30);
              objc_msgSend_setTranslation_(v31, v32, v33, *&v272);
              v34 = objc_alloc_init(MDLLightProbe);
              objc_msgSend_setTransform_(v34, v35, v31);
              objc_msgSend_addObject_(v264, v36, v34);
              v37 = *v274;
              *&v37 = *v274 + v25;
              *v275 = v37;
              v38 = *obj;
              DWORD2(v38) = v37;
              *obj = v38;
              v39 = v38;
              HIDWORD(v39) = HIDWORD(v272);
              v265 = v39;

              v26 = *v275;
              v23 = v265;
              v272 = v265;
            }

            while (*v275 <= v260.f32[2]);
          }

          v27 = *obj;
          *(&v27 + 1) = *(&v23 + 1) + v25;
          DWORD2(v27) = obj[1];
          v26 = v27;
          HIDWORD(v26) = HIDWORD(v23);
          v40 = (*(&v23 + 1) + v25) > v260.f32[1];
          v23 = v27;
        }

        while (!v40);
      }

      *&v23 = *&v26 + v25;
      *(&v23 + 1) = __PAIR64__(HIDWORD(v26), DWORD2(v27));
    }

    while ((*&v26 + v25) <= v260.f32[0]);
  }

  if (type == MDLProbePlacementIrradianceDistribution)
  {
    v249 = v264;
    v273 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v44 = 0;
    v45 = vsubq_f32(v260, v262);
    v46 = fabsf(*v45.i32);
    v256 = v45;
    v47 = vabs_f32(*&vextq_s8(v45, v45, 4uLL));
    if (v47.f32[0] >= v47.f32[1])
    {
      *&v43 = v47.f32[0];
    }

    else
    {
      *&v43 = v47.f32[1];
    }

    if (v46 >= *&v43)
    {
      *&v43 = v46;
    }

    *v258 = v43;
    if (v47.f32[1] < v47.f32[0])
    {
      v47.f32[0] = v47.f32[1];
    }

    if (v47.f32[0] < v46)
    {
      v46 = v47.f32[0];
    }

    v48 = v46 * 0.05;
    do
    {
      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      obja = v249;
      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v49, &v313, v327, 16);
      if (v52)
      {
        v53 = *v314;
        v266 = vdupq_lane_s32(v258[0], 0);
        do
        {
          v54 = 0;
          do
          {
            if (*v314 != v53)
            {
              objc_enumerationMutation(obja);
            }

            v55 = *(*(&v313 + 1) + 8 * v54);
            objc_msgSend_position(v55, v50, v51);
            v58 = objc_msgSend_sphericalHarmonicsCoefficientsAtPosition_(v8, v56, v57);
            v61 = objc_msgSend_sphericalHarmonicsLevel(v8, v59, v60);
            objc_msgSend_calculateIrradianceGradientUsingSamples_ofSize_fromSH_withLevel_(MDLLightProbe, v62, &unk_27DF89740, 26, v58, v61);
            v66 = v65;
            v67 = vmulq_f32(v65, v65);
            v67.f32[0] = vaddv_f32(*v67.f32) + v67.f32[2];
            if (v67.f32[0] == 0.0)
            {
              objc_msgSend_addObject_(v273, v63, v55, *v67.i64);
LABEL_38:
              v72 = v58;
              goto LABEL_39;
            }

            *v276 = v66;
            objc_msgSend_position(v55, v63, v64, *v67.i64);
            v277 = vmlaq_f32(v70, v266, *v276);
            v71 = vmovn_s32(vmvnq_s8(vcgeq_f32(v277, v262)));
            if (v71.i8[0])
            {
              goto LABEL_38;
            }

            if (v71.i8[2])
            {
              goto LABEL_38;
            }

            v73 = vmovn_s32(vmvnq_s8(vcgeq_f32(v260, v277)));
            if (vorr_s8(vdup_lane_s16(v71, 2), v73).u8[0] & 1) != 0 || (v73.i8[2] & 1) != 0 || (v73.i8[4])
            {
              goto LABEL_38;
            }

            v72 = objc_msgSend_sphericalHarmonicsCoefficientsAtPosition_(v8, v68, v69, *v277.i64);

            v76 = objc_msgSend_sphericalHarmonicsLevel(v8, v74, v75);
            objc_msgSend_calculateIrradianceGradientUsingSamples_ofSize_fromSH_withLevel_(MDLLightProbe, v77, &unk_27DF89740, 26, v72, v76);
            v79 = vmulq_f32(v78, v78);
            if ((vaddv_f32(*v79.f32) + v79.f32[2]) != 0.0)
            {
              v80 = [MDLTransform alloc];
              v83 = objc_msgSend_initWithIdentity(v80, v81, v82);
              objc_msgSend_setTranslation_(v83, v84, v85, *v277.i64);
              objc_msgSend_setTransform_(v55, v86, v83);
            }

LABEL_39:

            ++v54;
          }

          while (v52 != v54);
          v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v50, &v313, v327, 16);
          v52 = v87;
        }

        while (v87);
      }

      v88 = *v258;
      *&v88 = *v258 * 0.5;
      *v258 = v88;
    }

    while (*&v88 >= v48 || v44++ < 9);
    v90.i64[0] = 0x3F0000003F000000;
    v90.i64[1] = 0x3F0000003F000000;
    v91 = vmulq_f32(vaddq_f32(v260, v262), v90);
    v92 = v256;
    v93 = vmulq_f32(v256, v90);
    v94 = 0.5 * v93.f32[0];
    v95 = vmuls_lane_f32(0.5, *v93.f32, 1);
    v93.f32[0] = vmuls_lane_f32(0.5, v93, 2);
    v92.f32[0] = v91.f32[0] - v94;
    v96 = v92;
    v96.f32[1] = v91.f32[1] - v95;
    v97 = v96;
    v97.f32[2] = v91.f32[2] - v93.f32[0];
    v96.f32[2] = v93.f32[0] + v91.f32[2];
    v326[0] = v97;
    v326[1] = v96;
    v98 = v95 + v91.f32[1];
    v92.f32[1] = v98;
    v99 = v92;
    v99.f32[2] = v91.f32[2] - v93.f32[0];
    v92.f32[2] = v93.f32[0] + v91.f32[2];
    v326[2] = v99;
    v326[3] = v92;
    v91.f32[0] = v94 + v91.f32[0];
    v100 = v91;
    v100.i32[1] = v96.i32[1];
    v101 = v100;
    v101.f32[2] = v91.f32[2] - v93.f32[0];
    v91.f32[1] = v98;
    v102 = v91;
    v102.f32[2] = v91.f32[2] - v93.f32[0];
    v91.f32[2] = v93.f32[0] + v91.f32[2];
    v100.f32[2] = v91.f32[2];
    v326[4] = v101;
    v326[5] = v100;
    v326[6] = v102;
    v326[7] = v91;
    memset(v325, 0, sizeof(v325));
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v278 = v273;
    v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v278, v103, &v309, v324, 16);
    if (v106)
    {
      v107 = *v310;
      do
      {
        for (i = 0; i != v106; ++i)
        {
          if (*v310 != v107)
          {
            objc_enumerationMutation(v278);
          }

          v109 = *(*(&v309 + 1) + 8 * i);
          objc_msgSend_position(v109, v104, v105);
          v111 = 0;
          v112 = -1;
          v113 = 3.4028e38;
          do
          {
            v114 = vsubq_f32(v326[v111], v110);
            v115 = vmulq_f32(v114, v114);
            v116 = vaddv_f32(*v115.f32);
            if ((v116 + v115.f32[2]) < v113)
            {
              v113 = v116 + v115.f32[2];
              v112 = v111;
            }

            ++v111;
          }

          while (v111 != 8);
          v117 = *(v325 + v112);
          if (v117)
          {
            v118 = v117;
            objc_msgSend_position(v118, v119, v120);
            v122 = vsubq_f32(v326[v112], v121);
            v123 = vmulq_f32(v122, v122);
            if ((vaddv_f32(*v123.f32) + v123.f32[2]) >= v113)
            {
              objc_storeStrong(v325 + v112, v109);
            }
          }

          else
          {
            objc_storeStrong(v325 + v112, v109);
          }
        }

        v106 = objc_msgSend_countByEnumeratingWithState_objects_count_(v278, v104, &v309, v324, 16);
      }

      while (v106);
    }

    v255 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (j = 0; j != 64; j += 8)
    {
      v125 = *(v325 + j);
      v128 = v125;
      if (v125)
      {
        objc_msgSend_position(v125, v126, v127);
        v267 = v129;
        v130 = objc_alloc_init(_MDLProbeCluster);
        objc_msgSend_setCentroid_(v130, v131, v132, v267);
        v133 = objc_alloc_init(MEMORY[0x277CBEB58]);
        objc_msgSend_setProbes_(v130, v134, v133);

        v137 = objc_msgSend_probes(v130, v135, v136);
        objc_msgSend_addObject_(v137, v138, v128);

        objc_msgSend_addObject_(v255, v139, v130);
      }
    }

    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    v250 = v278;
    v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v140, &v305, v323, 16);
    if (v143)
    {
      v268 = *v306;
      do
      {
        for (k = 0; k != v143; ++k)
        {
          if (*v306 != v268)
          {
            objc_enumerationMutation(v250);
          }

          v145 = *(*(&v305 + 1) + 8 * k);
          objc_msgSend_position(v145, v141, v142);
          *v279 = v146;
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v147 = v255;
          v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v148, &v301, v322, 16);
          if (v151)
          {
            v152 = *v302;
            v153 = 3.4028e38;
            v154 = 8;
            do
            {
              for (m = 0; m != v151; ++m)
              {
                if (*v302 != v152)
                {
                  objc_enumerationMutation(v147);
                }

                v156 = *(*(&v301 + 1) + 8 * m);
                objc_msgSend_centroid(v156, v149, v150);
                v158 = vsubq_f32(v157, *v279);
                v159 = vmulq_f32(v158, v158);
                v160 = vaddv_f32(*v159.f32) + v159.f32[2];
                if (v160 < v153)
                {
                  v154 = objc_msgSend_indexOfObject_(v147, v149, v156);
                  v153 = v160;
                }
              }

              v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v147, v149, &v301, v322, 16);
            }

            while (v151);
          }

          else
          {
            v154 = 8;
          }

          v162 = objc_msgSend_objectAtIndexedSubscript_(v147, v161, v154);
          v165 = objc_msgSend_probes(v162, v163, v164);
          objc_msgSend_addObject_(v165, v166, v145);

          objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v162, v167, MEMORY[0x277CBEBF8]);
        }

        v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v141, &v305, v323, 16);
      }

      while (v143);
    }

    v168 = 0;
LABEL_91:
    if (v168 > 4)
    {
      goto LABEL_134;
    }

    v245 = v168;
    v299 = 0u;
    v300 = 0u;
    v297 = 0u;
    v298 = 0u;
    v259 = v255;
    v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v259, v169, &v297, v321, 16);
    if (!v170)
    {

      goto LABEL_134;
    }

    v246 = v170;
    v247 = *v298;
    v172 = 1;
LABEL_94:
    v248 = 0;
    while (1)
    {
      if (*v298 != v247)
      {
        objc_enumerationMutation(v259);
      }

      v173 = *(*(&v297 + 1) + 8 * v248);
      v252 = objc_msgSend_indexOfObject_(v259, v171, v173);
      v253 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v295 = 0u;
      v296 = 0u;
      v293 = 0u;
      v294 = 0u;
      v251 = objc_msgSend_probes(v173, v174, v175);
      v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v176, &v293, v320, 16);
      if (v179)
      {
        break;
      }

LABEL_117:

      v287 = 0u;
      v288 = 0u;
      v285 = 0u;
      v286 = 0u;
      v209 = v253;
      v213 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v210, &v285, v318, 16);
      if (v213)
      {
        v214 = *v286;
        do
        {
          for (n = 0; n != v213; ++n)
          {
            if (*v286 != v214)
            {
              objc_enumerationMutation(v209);
            }

            v216 = *(*(&v285 + 1) + 8 * n);
            v217 = objc_msgSend_probes(v173, v211, v212);
            objc_msgSend_removeObject_(v217, v218, v216);
          }

          v213 = objc_msgSend_countByEnumeratingWithState_objects_count_(v209, v211, &v285, v318, 16);
        }

        while (v213);
      }

      if (++v248 == v246)
      {
        v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(v259, v171, &v297, v321, 16);
        if (!v246)
        {

          v168 = v245 + ((v172 & 1) == 0);
          if (v172)
          {
LABEL_134:
            v283 = 0u;
            v284 = 0u;
            v281 = 0u;
            v282 = 0u;
            v221 = v255;
            v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v222, &v281, v317, 16);
            if (v225)
            {
              v226 = *v282;
              do
              {
                for (ii = 0; ii != v225; ++ii)
                {
                  if (*v282 != v226)
                  {
                    objc_enumerationMutation(v221);
                  }

                  v228 = *(*(&v281 + 1) + 8 * ii);
                  if ((objc_msgSend_isEmpty(v228, v223, v224) & 1) == 0)
                  {
                    v229 = [MDLTransform alloc];
                    v232 = objc_msgSend_initWithIdentity(v229, v230, v231);
                    objc_msgSend_centroid(v228, v233, v234);
                    objc_msgSend_setTranslation_(v232, v235, v236);
                    v237 = objc_alloc_init(MDLLightProbe);
                    objc_msgSend_setTransform_(v237, v238, v232);
                    objc_msgSend_addObject_(obja, v239, v237);
                  }
                }

                v225 = objc_msgSend_countByEnumeratingWithState_objects_count_(v221, v223, &v281, v317, 16);
              }

              while (v225);
            }

            v242 = objc_msgSend_allObjects(v250, v240, v241);
            objc_msgSend_removeObjectsInArray_(obja, v243, v242);

            v42 = obja;
            for (jj = 56; jj != -8; jj -= 8)
            {
            }

LABEL_129:
            v41 = v264;
            goto LABEL_130;
          }

          goto LABEL_91;
        }

        goto LABEL_94;
      }
    }

    v257 = *v294;
LABEL_99:
    v180 = 0;
    v254 = v179;
    while (1)
    {
      if (*v294 != v257)
      {
        objc_enumerationMutation(v251);
      }

      v263 = *(*(&v293 + 1) + 8 * v180);
      objc_msgSend_position(v263, v177, v178);
      *v280 = v181;
      objc_msgSend_centroid(v173, v182, v183);
      v269 = v184;
      v291 = 0u;
      v292 = 0u;
      v289 = 0u;
      v290 = 0u;
      v185 = v259;
      v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v186, &v289, v319, 16);
      if (v188)
      {
        v261 = v180;
        v189 = 0;
        v190 = vsubq_f32(v269, *v280);
        v191 = vmulq_f32(v190, v190);
        v192 = vaddv_f32(*v191.f32) + v191.f32[2];
        v193 = *v290;
        v194 = v252;
        do
        {
          for (kk = 0; kk != v188; ++kk)
          {
            if (*v290 != v193)
            {
              objc_enumerationMutation(v185);
            }

            v196 = *(*(&v289 + 1) + 8 * kk);
            if ((objc_msgSend_isEqual_(v173, v187, v196) & 1) == 0)
            {
              objc_msgSend_centroid(v196, v187, v197);
              v199 = vsubq_f32(v198, *v280);
              v200 = vmulq_f32(v199, v199);
              v201 = vaddv_f32(*v200.f32) + v200.f32[2];
              if (v201 < v192)
              {
                v194 = objc_msgSend_indexOfObject_(v185, v187, v196);
                v172 = 0;
                v189 = 1;
                v192 = v201;
              }
            }
          }

          v188 = objc_msgSend_countByEnumeratingWithState_objects_count_(v185, v187, &v289, v319, 16);
        }

        while (v188);

        v179 = v254;
        v180 = v261;
        if ((v189 & 1) == 0)
        {
          goto LABEL_115;
        }

        v185 = objc_msgSend_objectAtIndex_(v185, v177, v194);
        v204 = objc_msgSend_probes(v185, v202, v203);
        objc_msgSend_addObject_(v204, v205, v263);

        objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v185, v206, MEMORY[0x277CBEBF8]);
        objc_msgSend_addObject_(v253, v207, v263);
        objc_msgSend_calculateCentroidNotIncludingSamplesinArray_(v173, v208, v253);
      }

LABEL_115:
      if (++v180 == v179)
      {
        v179 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v177, &v293, v320, 16);
        if (!v179)
        {
          goto LABEL_117;
        }

        goto LABEL_99;
      }
    }
  }

  if (type)
  {
    v42 = 0;
    goto LABEL_129;
  }

  v41 = v264;
  v42 = v264;
LABEL_130:

  v219 = *MEMORY[0x277D85DE8];

  return v42;
}

@end