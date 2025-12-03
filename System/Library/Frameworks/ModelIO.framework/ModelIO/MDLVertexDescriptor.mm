@interface MDLVertexDescriptor
+ (id)_decodeVertexDescriptorAttributesWithCoder:(id)coder;
+ (id)_decodeVertexDescriptorLayoutsWithCoder:(id)coder;
+ (id)decodeVertexDescriptorWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (MDLVertexAttribute)attributeNamed:(NSString *)name;
- (MDLVertexDescriptor)init;
- (MDLVertexDescriptor)initWithVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_encodeVertexDescriptorAttributesWithCoder:(id)coder;
- (void)_encodeVertexDescriptorLayoutsWithCoder:(id)coder;
- (void)addOrReplaceAttribute:(MDLVertexAttribute *)attribute;
- (void)debugPrintToFile:(__sFILE *)file;
- (void)encodeVertexDescriptorWithCoder:(id)coder;
- (void)removeAttributeNamed:(NSString *)name;
- (void)reset;
- (void)setPackedOffsets;
- (void)setPackedStrides;
@end

@implementation MDLVertexDescriptor

- (MDLVertexDescriptor)init
{
  v21.receiver = self;
  v21.super_class = MDLVertexDescriptor;
  v2 = [(MDLVertexDescriptor *)&v21 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = objc_msgSend_initWithCapacity_(v3, v4, 31);
    attributes = v2->_attributes;
    v2->_attributes = v5;

    v7 = 31;
    do
    {
      v8 = v2->_attributes;
      v9 = objc_opt_new();
      objc_msgSend_addObject_(v8, v10, v9);

      --v7;
    }

    while (v7);
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_initWithCapacity_(v11, v12, 31);
    layouts = v2->_layouts;
    v2->_layouts = v13;

    v15 = 31;
    do
    {
      v16 = v2->_layouts;
      v17 = objc_opt_new();
      objc_msgSend_addObject_(v16, v18, v17);

      --v15;
    }

    while (v15);
    v19 = v2;
  }

  return v2;
}

- (MDLVertexDescriptor)initWithVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = vertexDescriptor;
  v62.receiver = self;
  v62.super_class = MDLVertexDescriptor;
  v5 = [(MDLVertexDescriptor *)&v62 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = objc_msgSend_attributes(v4, v7, v8);
    v12 = objc_msgSend_count(v9, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v6, v13, v12);
    attributes = v5->_attributes;
    v5->_attributes = v14;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = objc_msgSend_attributes(v4, v16, v17);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v58, v64, 16);
    if (v20)
    {
      v21 = *v59;
      do
      {
        v22 = 0;
        do
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v58 + 1) + 8 * v22);
          v24 = MEMORY[0x23EE7E350]();
          v26 = objc_msgSend_copyWithZone_(v23, v25, v24);
          objc_msgSend_addObject_(v5->_attributes, v27, v26);

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v28, &v58, v64, 16);
      }

      while (v20);
    }

    v29 = objc_alloc(MEMORY[0x277CBEB18]);
    v32 = objc_msgSend_layouts(v4, v30, v31);
    v35 = objc_msgSend_count(v32, v33, v34);
    v37 = objc_msgSend_initWithCapacity_(v29, v36, v35);
    layouts = v5->_layouts;
    v5->_layouts = v37;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v41 = objc_msgSend_layouts(v4, v39, v40, 0);
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v54, v63, 16);
    if (v43)
    {
      v44 = *v55;
      do
      {
        v45 = 0;
        do
        {
          if (*v55 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v54 + 1) + 8 * v45);
          v47 = MEMORY[0x23EE7E350]();
          v49 = objc_msgSend_copyWithZone_(v46, v48, v47);
          objc_msgSend_addObject_(v5->_layouts, v50, v49);

          ++v45;
        }

        while (v43 != v45);
        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v51, &v54, v63, 16);
      }

      while (v43);
    }
  }

  v52 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MDLVertexAttribute)attributeNamed:(NSString *)name
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = name;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_attributes(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (objc_msgSend_format(v14, v9, v10))
        {
          v15 = objc_msgSend_name(v14, v9, v10);
          isEqualToString = objc_msgSend_isEqualToString_(v4, v16, v15);

          if (isEqualToString)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MDLVertexDescriptor alloc];

  return objc_msgSend_initWithVertexDescriptor_(v4, v5, self);
}

- (void)addOrReplaceAttribute:(MDLVertexAttribute *)attribute
{
  v46 = attribute;
  for (i = 0; ; i = v9 + 1)
  {
    v9 = i;
    if (objc_msgSend_count(self->_attributes, v4, v5) <= i)
    {
      break;
    }

    v10 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v7, i);
    objc_msgSend_time(v10, v11, v12);
    v14 = v13;
    objc_msgSend_time(v46, v15, v16);
    if (v14 != v18)
    {
      goto LABEL_8;
    }

    v19 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v17, v9);
    v23 = objc_msgSend_name(v19, v20, v21);
    if (!v23)
    {

LABEL_8:
      continue;
    }

    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v22, v9);
    v27 = objc_msgSend_name(v24, v25, v26);
    v30 = objc_msgSend_name(v46, v28, v29);
    isEqualToString = objc_msgSend_isEqualToString_(v27, v31, v30);

    if (isEqualToString)
    {
      objc_msgSend_setObject_atIndexedSubscript_(self->_attributes, v4, v46, v9);
      v45 = v46;
      goto LABEL_15;
    }
  }

  v33 = 0;
  while (1)
  {
    v35 = objc_msgSend_count(self->_attributes, v7, v8);
    v36 = v33;
    attributes = self->_attributes;
    if (v35 <= v33)
    {
      break;
    }

    v38 = objc_msgSend_objectAtIndexedSubscript_(attributes, v34, v33);
    v41 = objc_msgSend_format(v38, v39, v40);

    v33 = v36 + 1;
    if (!v41)
    {
      objc_msgSend_setObject_atIndexedSubscript_(self->_attributes, v7, v46, v36);
      v45 = v46;
      goto LABEL_15;
    }
  }

  objc_msgSend_addObject_(attributes, v34, v46);
  layouts = self->_layouts;
  v43 = objc_alloc_init(MDLVertexBufferLayout);
  objc_msgSend_addObject_(layouts, v44, v43);

  v45 = v46;
LABEL_15:
}

- (void)removeAttributeNamed:(NSString *)name
{
  v23 = name;
  for (i = 0; objc_msgSend_count(self->_attributes, v4, v5) > i; ++i)
  {
    v8 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v7, i);
    v12 = objc_msgSend_name(v8, v9, v10);
    if (v12)
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v11, i);
      v16 = objc_msgSend_name(v13, v14, v15);
      isEqualToString = objc_msgSend_isEqualToString_(v16, v17, v23);

      if (!isEqualToString)
      {
        continue;
      }

      v19 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v4, i);
      objc_msgSend_setName_(v19, v20, &stru_284D18478);

      v8 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v21, i);
      objc_msgSend_setFormat_(v8, v22, 0);
    }
  }
}

- (void)reset
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = 31;
  v6 = objc_msgSend_initWithCapacity_(v3, v5, 31);
  attributes = self->_attributes;
  self->_attributes = v6;

  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = objc_msgSend_initWithCapacity_(v8, v9, 31);
  layouts = self->_layouts;
  self->_layouts = v10;

  do
  {
    v12 = self->_attributes;
    v13 = objc_opt_new();
    objc_msgSend_addObject_(v12, v14, v13);

    v15 = self->_layouts;
    v16 = objc_opt_new();
    objc_msgSend_addObject_(v15, v17, v16);

    --v4;
  }

  while (v4);
}

- (void)setPackedStrides
{
  v72 = *MEMORY[0x277D85DE8];
  v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = self->_attributes;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v65, v71, 16);
  if (v6)
  {
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = MEMORY[0x277CCABB0];
        v10 = objc_msgSend_bufferIndex(*(*(&v65 + 1) + 8 * i), v4, v5);
        v12 = objc_msgSend_numberWithUnsignedLong_(v9, v11, v10);
        objc_msgSend_addObject_(v56, v13, v12);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v65, v71, 16);
    }

    while (v6);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = v56;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v14, &v61, v70, 16);
  if (v15)
  {
    v52 = *v62;
    do
    {
      v53 = v15;
      for (j = 0; j != v53; ++j)
      {
        if (*v62 != v52)
        {
          objc_enumerationMutation(obja);
        }

        v19 = *(*(&v61 + 1) + 8 * j);
        for (k = objc_msgSend_count(self->_layouts, v16, v17, v52); ; ++k)
        {
          v23 = objc_msgSend_unsignedLongValue(v19, v20, v21);
          layouts = self->_layouts;
          if (k >= v23)
          {
            break;
          }

          v27 = objc_alloc_init(MDLVertexBufferLayout);
          objc_msgSend_addObject_(layouts, v28, v27);
        }

        v29 = objc_msgSend_unsignedLongValue(v19, v24, v25);
        v31 = objc_msgSend_objectAtIndexedSubscript_(layouts, v30, v29);
        v31[1] = 0;

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v32 = self->_attributes;
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v57, v69, 16);
        if (v36)
        {
          v37 = *v58;
          do
          {
            for (m = 0; m != v36; ++m)
            {
              if (*v58 != v37)
              {
                objc_enumerationMutation(v32);
              }

              v39 = *(*(&v57 + 1) + 8 * m);
              v40 = objc_msgSend_bufferIndex(v39, v34, v35);
              if (v40 == objc_msgSend_unsignedLongValue(v19, v41, v42))
              {
                v43 = objc_msgSend_format(v39, v34, v35);
                v44 = sub_239E6FF8C(v43);
                v45 = self->_layouts;
                v48 = objc_msgSend_unsignedLongValue(v19, v46, v47);
                v50 = objc_msgSend_objectAtIndexedSubscript_(v45, v49, v48);
                v50[1] += v44;
              }
            }

            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v57, v69, 16);
          }

          while (v36);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v16, &v61, v70, 16);
    }

    while (v15);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)setPackedOffsets
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  obj = self->_attributes;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v48, v54, 16);
  if (v6)
  {
    v7 = *v49;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = MEMORY[0x277CCABB0];
        v10 = objc_msgSend_bufferIndex(*(*(&v48 + 1) + 8 * i), v4, v5);
        v12 = objc_msgSend_numberWithUnsignedLong_(v9, v11, v10);
        objc_msgSend_addObject_(v39, v13, v12);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v48, v54, 16);
    }

    while (v6);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = v39;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v14, &v44, v53, 16);
  if (v15)
  {
    v35 = *v45;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v17 = *(*(&v44 + 1) + 8 * j);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v18 = selfCopy->_attributes;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v40, v52, 16);
        if (v22)
        {
          v23 = 0;
          v24 = *v41;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v41 != v24)
              {
                objc_enumerationMutation(v18);
              }

              v26 = *(*(&v40 + 1) + 8 * k);
              v27 = objc_msgSend_bufferIndex(v26, v20, v21, v35);
              if (v27 == objc_msgSend_unsignedLongValue(v17, v28, v29))
              {
                objc_msgSend_setOffset_(v26, v20, v23);
                v32 = objc_msgSend_format(v26, v30, v31);
                v23 += sub_239E6FF8C(v32);
              }
            }

            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v40, v52, 16);
          }

          while (v22);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v33, &v44, v53, 16);
    }

    while (v15);
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)debugPrintToFile:(__sFILE *)file
{
  v58 = *MEMORY[0x277D85DE8];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_attributes;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v52, v57, 16);
  if (v7)
  {
    v8 = 0;
    v9 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v12 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
        if ((objc_msgSend_isEqual_(v11, v13, v12) & 1) == 0)
        {
          v16 = objc_msgSend_format(v11, v14, v15) == 0;

          if (v16)
          {
            goto LABEL_10;
          }

          v12 = objc_msgSend_name(v11, v5, v6);
          v17 = v12;
          v19 = objc_msgSend_cStringUsingEncoding_(v12, v18, 4);
          v22 = objc_msgSend_format(v11, v20, v21);
          v23 = sub_239F1DDD8(v22);
          v26 = objc_msgSend_offset(v11, v24, v25);
          v29 = objc_msgSend_bufferIndex(v11, v27, v28);
          fprintf(file, "%lu %s %s off=%lu buf%lu\n", v8, v19, v23, v26, v29);
        }

LABEL_10:
        ++v8;
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v52, v57, 16);
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = self->_layouts;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v30, &v48, v56, 16);
  if (v33)
  {
    v34 = 0;
    v35 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v48 + 1) + 8 * j);
        v38 = objc_msgSend_null(MEMORY[0x277CBEB68], v31, v32);
        if (objc_msgSend_isEqual_(v37, v39, v38))
        {
        }

        else
        {
          v42 = objc_msgSend_stride(v37, v40, v41) == 0;

          if (!v42)
          {
            v43 = objc_msgSend_stride(v37, v31, v32);
            fprintf(file, "%lu stride=%lu\n", v34, v43);
          }
        }

        ++v34;
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v31, &v48, v56, 16);
    }

    while (v33);
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArray = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_isEqualToArray_(self->_attributes, v6, v5[1]))
      {
        isEqualToArray = objc_msgSend_isEqualToArray_(self->_layouts, v7, v5[2]);
      }

      else
      {
        isEqualToArray = 0;
      }
    }

    else
    {
      isEqualToArray = 0;
    }
  }

  return isEqualToArray;
}

- (id)description
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = objc_msgSend_attributes(self, v4, v5);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v32, v36, 16);
  if (v10)
  {
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if (objc_msgSend_format(v13, v8, v9))
        {
          objc_msgSend_addObject_(v31, v8, v13);
          v16 = objc_msgSend_bufferIndex(v13, v14, v15);
          v19 = objc_msgSend_layouts(self, v17, v18);
          v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v16);
          v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v22, v16);
          objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v21, v23);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v32, v36, 16);
    }

    while (v10);
  }

  v25 = MEMORY[0x277CCACA8];
  v26 = objc_opt_class();
  v28 = objc_msgSend_stringWithFormat_(v25, v27, @"<%@: %p attributes:%@ layouts:%@>", v26, self, v31, v3);

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (void)_encodeVertexDescriptorLayoutsWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_layouts(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  objc_msgSend_encodeInt32_forKey_(coderCopy, v10, v9, @"layouts.count");
  v11 = v9 << 32;
  if (v9 << 32)
  {
    v12 = 0;
    v13 = v11 >> 32;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    do
    {
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = objc_msgSend_initWithFormat_(v15, v16, @"layouts[%zu]", v12);
      v20 = objc_msgSend_layouts(self, v18, v19);
      v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, v12);

      v25 = objc_msgSend_stride(v22, v23, v24);
      v27 = objc_msgSend_stringByAppendingString_(v17, v26, @".stride");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v28, v25, v27);

      ++v12;
    }

    while (v14 != v12);
  }
}

- (void)_encodeVertexDescriptorAttributesWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_attributes(self, v4, v5);
  v9 = objc_msgSend_count(v6, v7, v8);

  objc_msgSend_encodeInt32_forKey_(coderCopy, v10, v9, @"attributes.count");
  if (v9 << 32)
  {
    v11 = 0;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    do
    {
      v13 = objc_alloc(MEMORY[0x277CCACA8]);
      v15 = objc_msgSend_initWithFormat_(v13, v14, @"attributes[%zu]", v11);
      v18 = objc_msgSend_attributes(self, v16, v17);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v11);

      v23 = objc_msgSend_name(v20, v21, v22);
      v25 = objc_msgSend_stringByAppendingString_(v15, v24, @".name");
      objc_msgSend_encodeObject_forKey_(coderCopy, v26, v23, v25);

      v29 = objc_msgSend_bufferIndex(v20, v27, v28);
      v31 = objc_msgSend_stringByAppendingString_(v15, v30, @".bufferIndex");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v32, v29, v31);

      v35 = objc_msgSend_format(v20, v33, v34);
      v37 = objc_msgSend_stringByAppendingString_(v15, v36, @".format");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v38, v35, v37);

      v41 = objc_msgSend_offset(v20, v39, v40);
      v43 = objc_msgSend_stringByAppendingString_(v15, v42, @".offset");
      objc_msgSend_encodeInteger_forKey_(coderCopy, v44, v41, v43);

      objc_msgSend_time(v20, v45, v46);
      v48 = v47;
      v50 = objc_msgSend_stringByAppendingString_(v15, v49, @".time");
      objc_msgSend_encodeDouble_forKey_(coderCopy, v51, v50, v48);

      ++v11;
    }

    while (v12 != v11);
  }
}

+ (id)_decodeVertexDescriptorAttributesWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"attributes.count");
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = objc_msgSend_initWithFormat_(v10, v11, @"attributes[%zu]", i);
      v13 = objc_alloc_init(MDLVertexAttribute);
      v14 = objc_opt_class();
      v16 = objc_msgSend_stringByAppendingString_(v12, v15, @".name");
      v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v14, v16);
      objc_msgSend_setName_(v13, v19, v18);

      v21 = objc_msgSend_stringByAppendingString_(v12, v20, @".bufferIndex");
      v23 = objc_msgSend_decodeIntegerForKey_(coderCopy, v22, v21);
      objc_msgSend_setBufferIndex_(v13, v24, v23);

      v26 = objc_msgSend_stringByAppendingString_(v12, v25, @".format");
      v28 = objc_msgSend_decodeIntegerForKey_(coderCopy, v27, v26);
      objc_msgSend_setFormat_(v13, v29, v28);

      v31 = objc_msgSend_stringByAppendingString_(v12, v30, @".offset");
      v33 = objc_msgSend_decodeIntegerForKey_(coderCopy, v32, v31);
      objc_msgSend_setOffset_(v13, v34, v33);

      v36 = objc_msgSend_stringByAppendingString_(v12, v35, @".time");
      objc_msgSend_decodeDoubleForKey_(coderCopy, v37, v36);
      objc_msgSend_setTime_(v13, v38, v39);

      objc_msgSend_addObject_(v8, v40, v13);
    }
  }

  return v8;
}

+ (id)_decodeVertexDescriptorLayoutsWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"layouts.count");
  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend_initWithCapacity_(v6, v7, v5);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = objc_msgSend_initWithFormat_(v10, v11, @"layouts[%zu]", i);
      v13 = objc_alloc_init(MDLVertexBufferLayout);
      v15 = objc_msgSend_stringByAppendingString_(v12, v14, @".stride");
      v17 = objc_msgSend_decodeIntegerForKey_(coderCopy, v16, v15);
      objc_msgSend_setStride_(v13, v18, v17);

      objc_msgSend_addObject_(v8, v19, v13);
    }
  }

  return v8;
}

- (void)encodeVertexDescriptorWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend__encodeVertexDescriptorAttributesWithCoder_(self, v4, coderCopy);
  objc_msgSend__encodeVertexDescriptorLayoutsWithCoder_(self, v5, coderCopy);
}

+ (id)decodeVertexDescriptorWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MDLVertexDescriptor);
  v7 = objc_msgSend__decodeVertexDescriptorAttributesWithCoder_(self, v6, coderCopy);
  objc_msgSend_setAttributes_(v5, v8, v7);

  v10 = objc_msgSend__decodeVertexDescriptorLayoutsWithCoder_(self, v9, coderCopy);
  objc_msgSend_setLayouts_(v5, v11, v10);

  return v5;
}

@end