@interface MDLMaterial
+ (id)decodeMaterialWithCoder:(id)a3 allocator:(id)a4;
- (BidirectionalScatteringDistributionFunction)bsdf;
- (MDLMaterial)init;
- (MDLMaterial)initWithName:(NSString *)name scatteringFunction:(MDLScatteringFunction *)scatteringFunction;
- (MDLMaterial)initWithName:(id)a3;
- (MDLMaterial)initWithName:(id)a3 physicallyPlausibleBSDF:(PhysicallyPlausibleDistribution *)a4;
- (MDLMaterialProperty)objectAtIndexedSubscript:(NSUInteger)idx;
- (MDLMaterialProperty)objectForKeyedSubscript:(NSString *)name;
- (MDLMaterialProperty)propertyNamed:(NSString *)name;
- (MDLMaterialProperty)propertyWithSemantic:(MDLMaterialSemantic)semantic;
- (MDLScatteringFunction)scatteringFunction;
- (NSArray)propertiesWithSemantic:(MDLMaterialSemantic)semantic;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)conformToMatProperties;
- (void)encodeMaterialWithCoder:(id)a3 allocator:(id)a4;
- (void)loadTexturesUsingArchiveAssetResolver:(id)a3 cache:(id)a4;
- (void)loadTexturesUsingResolver:(id)a3 cache:(id)a4;
- (void)removeAllProperties;
- (void)resolveTexturesWithResolver:(id)resolver;
- (void)setProperty:(MDLMaterialProperty *)property;
- (void)setScatteringFunction:(id)a3;
@end

@implementation MDLMaterial

- (MDLScatteringFunction)scatteringFunction
{
  scatteringFunction = self->_scatteringFunction;
  if (!scatteringFunction)
  {
    v4 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(self, v5, v4);

    scatteringFunction = self->_scatteringFunction;
  }

  return scatteringFunction;
}

- (void)setScatteringFunction:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_scatteringFunction, a3);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  builtinProperties = self->_builtinProperties;
  self->_builtinProperties = v6;

  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v9[i]);
      if (strstr(Attributes, "MDLMaterialProperty"))
      {
        v12 = MEMORY[0x277CCACA8];
        Name = property_getName(v9[i]);
        v15 = objc_msgSend_stringWithFormat_(v12, v14, @"%s", Name);
        v17 = objc_msgSend_valueForKey_(v5, v16, v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(self->_builtinProperties, v18, v17);
        }
      }
    }
  }

  free(v9);
  v21 = objc_msgSend_superclass(v5, v19, v20);
  v22 = class_copyPropertyList(v21, &outCount);
  if (outCount)
  {
    for (j = 0; j < outCount; ++j)
    {
      v24 = property_getAttributes(v22[j]);
      if (strstr(v24, "MDLMaterialProperty"))
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = property_getName(v22[j]);
        v28 = objc_msgSend_stringWithFormat_(v25, v27, @"%s", v26);
        v30 = objc_msgSend_valueForKey_(v5, v29, v28);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(self->_builtinProperties, v31, v30);
        }
      }
    }
  }

  free(v22);
}

- (void)resolveTexturesWithResolver:(id)resolver
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = resolver;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v54 = self;
  v6 = self->_builtinProperties;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v63, v69, 16);
  if (v10)
  {
    v11 = *v64;
    do
    {
      v12 = 0;
      do
      {
        if (*v64 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v63 + 1) + 8 * v12);
        v14 = objc_msgSend_URLValue(v13, v8, v9);
        if (v14)
        {
        }

        else
        {
          v17 = objc_msgSend_stringValue(v13, v15, v16);
          if (v17)
          {
            v18 = objc_msgSend_stringValue(v13, v8, v9);
            v21 = objc_msgSend_length(v18, v19, v20) == 0;

            if (!v21)
            {
              objc_msgSend_addObject_(v5, v8, v13);
            }
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v63, v69, 16);
      v10 = v22;
    }

    while (v22);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v23 = v54->_userProperties;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v59, v68, 16);
  if (v27)
  {
    v28 = *v60;
    do
    {
      v29 = 0;
      do
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(v23);
        }

        v30 = *(*(&v59 + 1) + 8 * v29);
        v31 = objc_msgSend_URLValue(v30, v25, v26);
        if (v31)
        {
        }

        else
        {
          v34 = objc_msgSend_stringValue(v30, v32, v33);
          if (v34)
          {
            v35 = objc_msgSend_stringValue(v30, v25, v26);
            v38 = objc_msgSend_length(v35, v36, v37) == 0;

            if (!v38)
            {
              objc_msgSend_addObject_(v5, v25, v30);
            }
          }
        }

        ++v29;
      }

      while (v27 != v29);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v59, v68, 16);
      v27 = v39;
    }

    while (v39);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = v5;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v55, v67, 16);
  if (v44)
  {
    v45 = *v56;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v56 != v45)
        {
          objc_enumerationMutation(v40);
        }

        v47 = *(*(&v55 + 1) + 8 * i);
        v48 = objc_msgSend_stringValue(v47, v42, v43);
        v50 = objc_msgSend_resolveAssetNamed_(v4, v49, v48);
        objc_msgSend_setURLValue_(v47, v51, v50);

        objc_msgSend_setType_(v47, v52, 1);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v55, v67, 16);
    }

    while (v44);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)loadTexturesUsingArchiveAssetResolver:(id)a3 cache:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v63 = a3;
  v6 = a4;
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v7 = self->_builtinProperties;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v73, v79, 16);
  if (v11)
  {
    v12 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v15 = objc_msgSend_stringValue(v14, v9, v10, v63);
        if (v15)
        {
          v16 = objc_msgSend_stringValue(v14, v9, v10);
          v19 = objc_msgSend_length(v16, v17, v18) == 0;

          if (!v19)
          {
            objc_msgSend_addObject_(v64, v9, v14);
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v73, v79, 16);
    }

    while (v11);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v20 = self->_userProperties;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v69, v78, 16);
  if (v24)
  {
    v25 = *v70;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v70 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v69 + 1) + 8 * j);
        v28 = objc_msgSend_stringValue(v27, v22, v23, v63);
        if (v28)
        {
          v29 = objc_msgSend_stringValue(v27, v22, v23);
          v32 = objc_msgSend_length(v29, v30, v31) == 0;

          if (!v32)
          {
            objc_msgSend_addObject_(v64, v22, v27);
          }
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v69, v78, 16);
    }

    while (v24);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v33 = v64;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v65, v77, 16);
  if (v37)
  {
    v38 = *v66;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v66 != v38)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v65 + 1) + 8 * k);
        if (!v6)
        {
          v47 = objc_msgSend_stringValue(*(*(&v65 + 1) + 8 * k), v35, v36);
          v49 = objc_msgSend_textureNamed_assetResolver_(MDLTexture, v50, v47, v63);
          goto LABEL_30;
        }

        v41 = objc_msgSend_stringValue(*(*(&v65 + 1) + 8 * k), v35, v36);
        v43 = objc_msgSend_objectForKey_(v6, v42, v41);
        v44 = v43 == 0;

        if (!v44)
        {
          v47 = objc_msgSend_stringValue(v40, v45, v46);
          v49 = objc_msgSend_objectForKey_(v6, v48, v47);
LABEL_30:
          v51 = v49;
          goto LABEL_32;
        }

        v52 = objc_msgSend_stringValue(v40, v45, v46);
        v51 = objc_msgSend_textureNamed_assetResolver_(MDLTexture, v53, v52, v63);

        v47 = objc_msgSend_stringValue(v40, v54, v55);
        objc_msgSend_setObject_forKeyedSubscript_(v6, v56, v51, v47);
LABEL_32:

        if (v51)
        {
          v60 = objc_msgSend_textureSamplerValue(v40, v57, v58);
          if (!v60)
          {
            v60 = objc_alloc_init(MDLTextureSampler);
          }

          objc_msgSend_setTexture_(v60, v59, v51, v63);
          objc_msgSend_setTextureSamplerValue_(v40, v61, v60);
        }
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v65, v77, 16);
    }

    while (v37);
  }

  v62 = *MEMORY[0x277D85DE8];
}

- (void)loadTexturesUsingResolver:(id)a3 cache:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v60 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_resolveTexturesWithResolver_(self, v9, v60);
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v10 = self->_builtinProperties;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v69, v75, 16);
    if (v14)
    {
      v15 = *v70;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v70 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v69 + 1) + 8 * i);
          v18 = objc_msgSend_URLValue(v17, v12, v13);
          v19 = v18 == 0;

          if (!v19)
          {
            objc_msgSend_addObject_(v8, v12, v17);
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v69, v75, 16);
      }

      while (v14);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v20 = self->_userProperties;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v65, v74, 16);
    if (v24)
    {
      v25 = *v66;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v66 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v65 + 1) + 8 * j);
          v28 = objc_msgSend_URLValue(v27, v22, v23);
          v29 = v28 == 0;

          if (!v29)
          {
            objc_msgSend_addObject_(v8, v22, v27);
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v65, v74, 16);
      }

      while (v24);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v30 = v8;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v61, v73, 16);
    if (!v34)
    {
LABEL_38:

      goto LABEL_39;
    }

    v35 = *v62;
LABEL_23:
    v36 = 0;
    while (1)
    {
      if (*v62 != v35)
      {
        objc_enumerationMutation(v30);
      }

      v37 = *(*(&v61 + 1) + 8 * v36);
      if (v6)
      {
        v38 = objc_msgSend_URLValue(*(*(&v61 + 1) + 8 * v36), v32, v33);
        v40 = objc_msgSend_objectForKey_(v6, v39, v38);
        v41 = v40 == 0;

        if (v41)
        {
          v49 = objc_msgSend_URLValue(v37, v42, v43);
          v48 = objc_msgSend_textureWithURL_(MDLTexture, v50, v49);

          v44 = objc_msgSend_URLValue(v37, v51, v52);
          objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v48, v44);
          goto LABEL_32;
        }

        v44 = objc_msgSend_URLValue(v37, v42, v43);
        v46 = objc_msgSend_objectForKeyedSubscript_(v6, v45, v44);
      }

      else
      {
        v44 = objc_msgSend_URLValue(*(*(&v61 + 1) + 8 * v36), v32, v33);
        v46 = objc_msgSend_textureWithURL_(MDLTexture, v47, v44);
      }

      v48 = v46;
LABEL_32:

      if (v48)
      {
        v57 = objc_msgSend_textureSamplerValue(v37, v54, v55);
        if (!v57)
        {
          v57 = objc_alloc_init(MDLTextureSampler);
        }

        objc_msgSend_setTexture_(v57, v56, v48);
        objc_msgSend_setTextureSamplerValue_(v37, v58, v57);
      }

      if (v34 == ++v36)
      {
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v61, v73, 16);
        if (!v34)
        {
          goto LABEL_38;
        }

        goto LABEL_23;
      }
    }
  }

  objc_msgSend_loadTexturesUsingArchiveAssetResolver_cache_(self, v7, v60, v6);
LABEL_39:

  v59 = *MEMORY[0x277D85DE8];
}

- (MDLMaterial)init
{
  v11.receiver = self;
  v11.super_class = MDLMaterial;
  v2 = [(MDLMaterial *)&v11 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284D18478;

    v5 = objc_opt_new();
    userProperties = v3->_userProperties;
    v3->_userProperties = v5;

    v7 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(v3, v8, v7);

    v9 = v3;
  }

  return v3;
}

- (MDLMaterial)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MDLMaterial;
  v6 = [(MDLMaterial *)&v14 init];
  if (v6)
  {
    if (v4)
    {
      v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v5, v4);
    }

    else
    {
      v7 = &stru_284D18478;
    }

    name = v6->_name;
    v6->_name = &v7->isa;

    v9 = objc_opt_new();
    userProperties = v6->_userProperties;
    v6->_userProperties = v9;

    scatteringFunction = v6->_scatteringFunction;
    v6->_scatteringFunction = 0;

    v12 = v6;
  }

  return v6;
}

- (MDLMaterial)initWithName:(NSString *)name scatteringFunction:(MDLScatteringFunction *)scatteringFunction
{
  v6 = name;
  v7 = scatteringFunction;
  v17.receiver = self;
  v17.super_class = MDLMaterial;
  v9 = [(MDLMaterial *)&v17 init];
  if (v9)
  {
    if (v6)
    {
      v10 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v8, v6);
    }

    else
    {
      v10 = &stru_284D18478;
    }

    v11 = v9->_name;
    v9->_name = &v10->isa;

    v12 = objc_opt_new();
    userProperties = v9->_userProperties;
    v9->_userProperties = v12;

    objc_msgSend_setScatteringFunction_(v9, v14, v7);
    v15 = v9;
  }

  return v9;
}

- (MDLMaterial)initWithName:(id)a3 physicallyPlausibleBSDF:(PhysicallyPlausibleDistribution *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = MDLMaterial;
  v8 = [(MDLMaterial *)&v18 init];
  if (v8)
  {
    if (v6)
    {
      v9 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v7, v6);
    }

    else
    {
      v9 = &stru_284D18478;
    }

    name = v8->_name;
    v8->_name = &v9->isa;

    v11 = objc_opt_new();
    userProperties = v8->_userProperties;
    v8->_userProperties = v11;

    v13 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(v8, v14, v13);
    v15 = v13[11];
    *(v15 + 112) = a4[1].var1.var2;
    *(v15 + 120) = a4[1].var1.var3;
    *(v15 + 96) = *&a4[1].var1.var0;
    *(v15 + 128) = *&a4[1].var1.var5;
    *(v15 + 136) = a4[1].var1.var7;
    v16 = v8;
  }

  return v8;
}

- (void)conformToMatProperties
{
  v3 = &off_278B402A0;
  v4 = 1536;
  do
  {
    v5 = objc_msgSend_propertyWithSemantic_(self, a2, *(v3 - 2));
    objc_msgSend_setName_(v5, v6, *v3);

    v3 += 4;
    v4 -= 32;
  }

  while (v4);
}

- (MDLMaterialProperty)propertyNamed:(NSString *)name
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = name;
  if (v4)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = self->_userProperties;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v40, v45, 16);
    if (v9)
    {
      v10 = *v41;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = objc_msgSend_name(v12, v7, v8);
        isEqualToString = objc_msgSend_isEqualToString_(v4, v14, v13);

        if (isEqualToString)
        {
          goto LABEL_20;
        }

        if (v9 == ++v11)
        {
          v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v40, v45, 16);
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_builtinProperties;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v36, v44, 16);
    if (v19)
    {
      v20 = *v37;
LABEL_12:
      v21 = 0;
      while (1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v36 + 1) + 8 * v21);
        v22 = objc_msgSend_name(v12, v17, v18, v36);
        v24 = objc_msgSend_isEqualToString_(v4, v23, v22);

        if (v24)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v17, &v36, v44, 16);
          if (v19)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }

LABEL_20:
      v32 = v12;
      goto LABEL_21;
    }

LABEL_18:

    v27 = objc_msgSend_baseMaterial(self, v25, v26);
    v28 = v27 == 0;

    if (!v28)
    {
      v5 = objc_msgSend_baseMaterial(self, v29, v30);
      v32 = objc_msgSend_propertyNamed_(v5, v31, v4);
LABEL_21:
      v33 = v32;

      goto LABEL_23;
    }
  }

  v33 = 0;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (MDLMaterialProperty)propertyWithSemantic:(MDLMaterialSemantic)semantic
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_userProperties;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v32, v37, 16);
  if (v8)
  {
    v9 = *v33;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v32 + 1) + 8 * v10);
      if (v11[19] == semantic)
      {
        goto LABEL_19;
      }

      if (v8 == ++v10)
      {
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v32, v37, 16);
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_builtinProperties;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v28, v36, 16);
  if (v14)
  {
    v15 = *v29;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v29 != v15)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v28 + 1) + 8 * v16);
      if (v11[19] == semantic)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v28, v36, 16);
        if (v14)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v24 = v11;
    goto LABEL_20;
  }

LABEL_17:

  v19 = objc_msgSend_baseMaterial(self, v17, v18, v28);
  v20 = v19 == 0;

  if (!v20)
  {
    v5 = objc_msgSend_baseMaterial(self, v21, v22);
    v24 = objc_msgSend_propertyWithSemantic_(v5, v23, semantic);
LABEL_20:
    v25 = v24;

    goto LABEL_21;
  }

  v25 = 0;
LABEL_21:
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (NSArray)propertiesWithSemantic:(MDLMaterialSemantic)semantic
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, semantic);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = self->_userProperties;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v37, v42, 16);
  if (v9)
  {
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if (*(v12 + 152) == semantic)
        {
          objc_msgSend_addObject_(v5, v8, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v37, v42, 16);
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = self->_builtinProperties;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v33, v41, 16);
  if (v16)
  {
    v17 = *v34;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v33 + 1) + 8 * j);
        if (*(v19 + 152) == semantic)
        {
          objc_msgSend_addObject_(v5, v15, v19, v33);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v33, v41, 16);
    }

    while (v16);
  }

  if (objc_msgSend_count(v5, v20, v21) || (objc_msgSend_baseMaterial(self, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == 0, v25, v26))
  {
    v24 = v5;
  }

  else
  {
    v29 = objc_msgSend_baseMaterial(self, v27, v28);
    v24 = objc_msgSend_propertiesWithSemantic_(v29, v30, semantic);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)setProperty:(MDLMaterialProperty *)property
{
  v4 = property;
  if (v4)
  {
    v11 = v4;
    v7 = objc_msgSend_name(v4, v5, v6);
    v9 = objc_msgSend_propertyNamed_(self, v8, v7);

    if (v9)
    {
      objc_msgSend_setProperties_(v9, v10, v11);
    }

    else
    {
      objc_msgSend_addObject_(self->_userProperties, v10, v11);
    }

    v4 = v11;
  }
}

- (void)removeAllProperties
{
  v3 = objc_opt_new();
  userProperties = self->_userProperties;
  self->_userProperties = v3;

  MEMORY[0x2821F96F8]();
}

- (BidirectionalScatteringDistributionFunction)bsdf
{
  scatteringFunction = self->_scatteringFunction;
  if (!scatteringFunction)
  {
    v4 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(self, v5, v4);

    scatteringFunction = self->_scatteringFunction;
  }

  return scatteringFunction->_bsdf.__ptr_;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  v12 = 0;
  if (var0 < objc_msgSend_count(self->_builtinProperties, a2, a3) && a5 != 0)
  {
    v14 = var0;
    do
    {
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v10, v14);
      a4[v12] = v15;

      ++v14;
      ++v12;
    }

    while (v14 < objc_msgSend_count(self->_builtinProperties, v16, v17) && v12 < a5);
  }

  for (i = var0 - objc_msgSend_count(self->_builtinProperties, v10, v11); i < objc_msgSend_count(self->_userProperties, v19, v20) && v12 < a5; ++i)
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_userProperties, v22, i);
    a4[v12] = v24;

    ++v12;
  }

  if (a5 > v12)
  {
    bzero(&a4[v12], 8 * (a5 - v12));
  }

  bzero(&unk_27DF90E20, 0x400uLL);
  a3->var1 = a4;
  a3->var2 = &unk_27DF90E20;
  a3->var0 += a5;
  return v12;
}

- (MDLMaterialProperty)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (objc_msgSend_count(self->_builtinProperties, a2, idx) <= idx)
  {
    userProperties = self->_userProperties;
    v9 = idx - objc_msgSend_count(self->_builtinProperties, v5, v6);
    objc_msgSend_objectAtIndexedSubscript_(userProperties, v10, v9);
    goto LABEL_5;
  }

  if (objc_msgSend_count(self->_builtinProperties, v5, v6) > idx)
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v7, idx);
    v11 = LABEL_5:;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (MDLMaterialProperty)objectForKeyedSubscript:(NSString *)name
{
  v5 = name;
  if (v5)
  {
    v6 = objc_msgSend_propertyNamed_(self, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeMaterialWithCoder:(id)a3 allocator:(id)a4
{
  v26 = a3;
  v6 = a4;
  v9 = objc_msgSend_count(self->_userProperties, v7, v8);
  objc_msgSend_encodeInteger_forKey_(v26, v10, v9, @"userProperties.count");
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v14 = objc_msgSend_objectAtIndexedSubscript_(self->_userProperties, v11, i);
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"userProperties[%ld]", i);
      objc_msgSend_encodeMaterialPropertyWithCoder_forKey_allocator_(v14, v17, v26, v16, v6);
    }
  }

  v18 = objc_msgSend_count(self->_builtinProperties, v11, v12);
  objc_msgSend_encodeInteger_forKey_(v26, v19, v18, @"builtinProperties.count");
  if (v18 >= 1)
  {
    for (j = 0; j != v18; ++j)
    {
      v22 = objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v20, j);
      v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v23, @"builtinProperties[%ld]", j);
      objc_msgSend_encodeMaterialPropertyWithCoder_forKey_allocator_(v22, v25, v26, v24, v6);
    }
  }
}

+ (id)decodeMaterialWithCoder:(id)a3 allocator:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MDLMaterial);
  v10 = objc_msgSend_decodeIntegerForKey_(v5, v8, @"userProperties.count");
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v9, @"userProperties[%ld]", i);
      v14 = objc_msgSend_decodeMaterialPropertyWithCoder_forKey_allocator_(MDLMaterialProperty, v13, v5, v12, v6);

      objc_msgSend_addObject_(v7->_userProperties, v15, v14);
    }
  }

  v17 = objc_msgSend_decodeIntegerForKey_(v5, v9, @"builtinProperties.count");
  if (v17 >= 1)
  {
    for (j = 0; j != v17; ++j)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"builtinProperties[%ld]", j);
      v21 = objc_msgSend_decodeMaterialPropertyWithCoder_forKey_allocator_(MDLMaterialProperty, v20, v5, v19, v6);

      objc_msgSend_addObject_(v7->_builtinProperties, v22, v21);
    }
  }

  return v7;
}

@end