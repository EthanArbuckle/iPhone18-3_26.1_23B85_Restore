@interface RAWFilter
+ (id)filterWithDefaultsForClass:(Class)a3;
+ (id)filterWithDefaultsForName:(id)a3;
+ (id)filterWithName:(id)a3;
- (RAWFilter)initWithCoder:(id)a3;
- (id)apply:(id)a3 image:(id)a4 arguments:(id)a5 inoutSpace:(CGColorSpace *)a6 isPremultiplied:(BOOL)a7;
- (id)apply:(id)a3 image:(id)a4 arguments:(id)a5 inoutSpace:(CGColorSpace *)a6 isPremultiplied:(BOOL)a7 isAlphaOne:(BOOL)a8;
- (id)apply:(id)a3 image:(id)a4 extent:(CGRect)a5 roiCallback:(id)a6 arguments:(id)a7 inoutSpace:(CGColorSpace *)a8;
- (id)apply:(id)a3 image:(id)a4 extent:(CGRect)a5 roiCallback:(id)a6 arguments:(id)a7 inoutSpace:(CGColorSpace *)a8 isAlphaOne:(BOOL)a9;
- (id)applyMatrixToImage:(id)a3 vectorR:(id)a4 vectorG:(id)a5 vectorB:(id)a6 vectorBias:(id)a7 inSpace:(CGColorSpace *)a8 outSpace:(CGColorSpace *)a9;
- (void)encodeWithCoder:(id)a3;
- (void)setPrimitiveNumberValue:(id)a3 inVariable:(id *)a4 forKey:(id)a5;
- (void)takeAttributesFromDictionary:(id)a3;
- (void)takeAttributesFromDictionary:(id)a3 forKeys:(id)a4;
@end

@implementation RAWFilter

+ (id)filterWithName:(id)a3
{
  v3 = a3;
  if (objc_msgSend_hasPrefix_(v3, v4, @"RAW", v5, v6))
  {
    NSClassFromString(v3);
    v7 = objc_opt_new();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)takeAttributesFromDictionary:(id)a3
{
  v11 = a3;
  v8 = objc_msgSend_inputKeys(self, v4, v5, v6, v7);
  objc_msgSend_takeAttributesFromDictionary_forKeys_(self, v9, v11, v8, v10);
}

- (void)takeAttributesFromDictionary:(id)a3 forKeys:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v24, v28, 16);
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ((objc_msgSend_isEqualToString_(v13, v7, @"inputImage", v8, v9) & 1) == 0)
        {
          v17 = objc_msgSend_objectForKeyedSubscript_(v23, v7, @"valueBlock", v8, v9);
          if (v17 && (objc_msgSend_stringByReplacingCharactersInRange_withString_(v13, v14, 0, 5, &stru_284938540), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_opt_class(), NSStringFromClass(v19), v20 = objc_claimAutoreleasedReturnValue(), (v17)[2](v17, v20, v18), v21 = objc_claimAutoreleasedReturnValue(), v20, v18, v21) || (objc_msgSend_objectForKeyedSubscript_(v23, v14, v13, v15, v16), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            objc_msgSend_setValue_forKey_(self, v14, v21, v13, v16);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v24, v28, 16);
    }

    while (v10);
  }
}

+ (id)filterWithDefaultsForName:(id)a3
{
  v5 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], a2, a3, v3, v4);
  objc_msgSend_setDefaults(v5, v6, v7, v8, v9);

  return v5;
}

+ (id)filterWithDefaultsForClass:(Class)a3
{
  v3 = MEMORY[0x277CBF750];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_filterWithName_(v3, v6, v5, v7, v8);

  objc_msgSend_setDefaults(v9, v10, v11, v12, v13);

  return v9;
}

- (void)setPrimitiveNumberValue:(id)a3 inVariable:(id *)a4 forKey:(id)a5
{
  obj = a3;
  v8 = a5;
  if (*a4 != obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      objc_msgSend_doubleValue(obj, v9, v10, v11, v12);
      v18 = objc_msgSend_numberWithDouble_(v13, v14, v15, v16, v17);

      obj = v18;
    }

    if (!*a4 || (objc_msgSend_isEqualToNumber_(obj, v9, *a4, v11, v12) & 1) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v9, v8, v11, v12);
      objc_storeStrong(a4, obj);
      objc_msgSend_didChangeValueForKey_(self, v19, v8, v20, v21);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v41 = a3;
  if (objc_msgSend_allowsKeyedCoding(v41, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_inputKeys(self, v8, v9, v10, v11);
    v20 = objc_msgSend_count(v12, v13, v14, v15, v16);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = objc_msgSend_objectAtIndexedSubscript_(v12, v17, i, v18, v19);
        v26 = objc_msgSend_valueForKey_(self, v23, v22, v24, v25);
        if (v26)
        {
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          v31 = objc_msgSend_initWithFormat_(v27, v28, @"CI_%@", v29, v30, v22);
          TypeID = CGColorSpaceGetTypeID();
          if (TypeID == CFGetTypeID(v26) && ((v35 = sub_2338F2BB4(), v36 = CFEqual(v26, v35), v37 = @"Adobe RGB Linear", v36) || (v37 = CGColorSpaceCopyICCData(v26)) != 0))
          {
            v38 = v37;

            v26 = v38;
            objc_msgSend_encodeObject_forKey_(v41, v39, v38, v31, v40);
          }

          else
          {
            v38 = 0;
            objc_msgSend_encodeObject_forKey_(v41, v33, v26, v31, v34);
          }
        }
      }
    }
  }

  else
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v8, @"CIRequiresKeyedArchiver", @"CoreImage doesn't support old-style archiving", v11);
  }
}

- (RAWFilter)initWithCoder:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_allowsKeyedCoding(v4, v5, v6, v7, v8) & 1) == 0)
  {
    v18 = 0;
    goto LABEL_27;
  }

  v13 = objc_msgSend_init(self, v9, v10, v11, v12);
  v18 = v13;
  if (!v13)
  {
    self = 0;
    goto LABEL_27;
  }

  v19 = objc_msgSend_inputKeys(v13, v14, v15, v16, v17);
  v27 = objc_msgSend_count(v19, v20, v21, v22, v23);
  if (!v27)
  {
    goto LABEL_24;
  }

  v56 = v18;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  do
  {
    v32 = v31;
    v33 = v30;
    v31 = objc_msgSend_objectAtIndexedSubscript_(v19, v24, v28, v25, v26);

    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = objc_msgSend_initWithFormat_(v34, v35, @"CI_%@", v36, v37, v31);

    if (!objc_msgSend_containsValueForKey_(v4, v38, v30, v39, v40))
    {

      v29 = 0;
      goto LABEL_22;
    }

    v44 = objc_msgSend_decodeObjectForKey_(v4, v41, v30, v42, v43);

    v29 = v44;
    if (!v29)
    {
      goto LABEL_22;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v29) && CFEqual(v29, @"Adobe RGB Linear"))
    {
      v46 = sub_2338F2BB4();
    }

    else
    {
      v51 = CFDataGetTypeID();
      v50 = v29;
      if (v51 != CFGetTypeID(v29))
      {
        goto LABEL_20;
      }

      v50 = v29;
      if (CFDataGetLength(v29) < 0xFB)
      {
        goto LABEL_20;
      }

      BytePtr = CFDataGetBytePtr(v29);
      v50 = v29;
      if (!BytePtr)
      {
        goto LABEL_20;
      }

      v50 = v29;
      if (*(BytePtr + 9) != 1886610273)
      {
        goto LABEL_20;
      }

      v50 = v29;
      if (*(BytePtr + 4) != 541214546)
      {
        goto LABEL_20;
      }

      v53 = CGDataProviderCreateWithCopyOfData();
      v50 = v29;
      if (!v53)
      {
        goto LABEL_20;
      }

      ICCBased = CGColorSpaceCreateICCBased(3uLL, 0, v53, 0);
      CGDataProviderRelease(v53);
      v46 = CFAutorelease(ICCBased);
    }

    v47 = v46;

    if (v47)
    {
      v50 = v47;
LABEL_20:

      v29 = v50;
    }

    objc_msgSend_setValue_forKey_(v56, v48, v29, v31, v49);
LABEL_22:
    ++v28;
  }

  while (v27 != v28);

  v18 = v56;
LABEL_24:
  self = v18;

  v18 = self;
LABEL_27:

  return v18;
}

- (id)apply:(id)a3 image:(id)a4 extent:(CGRect)a5 roiCallback:(id)a6 arguments:(id)a7 inoutSpace:(CGColorSpace *)a8
{
  v8 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, a2, a3, a4, a6, a7, a8, 0, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height);

  return v8;
}

- (id)apply:(id)a3 image:(id)a4 extent:(CGRect)a5 roiCallback:(id)a6 arguments:(id)a7 inoutSpace:(CGColorSpace *)a8 isAlphaOne:(BOOL)a9
{
  v9 = a9;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v69 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v18 = a4;
  v60 = a6;
  v19 = a7;
  v58 = v18;
  v24 = objc_msgSend_count(v19, v20, v21, v22, v23);
  v25 = sub_233755CB8(v24 + 1);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v67 = v18;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, &v67, 1, v27);
  v32 = v28;
  if (v19)
  {
    objc_msgSend_arrayByAddingObjectsFromArray_(v28, v29, v19, v30, v31);
  }

  else
  {
    objc_msgSend_arrayByAddingObjectsFromArray_(v28, v29, MEMORY[0x277CBEBF8], v30, v31);
  }
  v33 = ;

  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v61, v68, 16);
  if (v38)
  {
    v39 = *v62;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v62 != v39)
        {
          objc_enumerationMutation(v33);
        }

        v41 = *(*(&v61 + 1) + 8 * i);
        if (a8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v42 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v41, v35, a8, v36, v37);
          objc_msgSend_addObject_(v25, v43, v42, v44, v45);
        }

        else
        {
          objc_msgSend_addObject_(v25, v35, v41, v36, v37);
        }
      }

      v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v35, &v61, v68, 16);
    }

    while (v38);
  }

  if (v9)
  {
    v65 = *MEMORY[0x277CBFA00];
    v38 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, 1, v47, v48);
    v66 = v38;
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v66, &v65, 1);
    objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v59, v51, v60, v25, v50, x, y, width, height);
  }

  else
  {
    v50 = 0;
    objc_msgSend_applyWithExtent_roiCallback_arguments_options_(v59, v46, v60, v25, 0, x, y, width, height);
  }
  v55 = ;
  if (v9)
  {
  }

  if (a8)
  {
    v56 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v55, v52, a8, v53, v54);

    v55 = v56;
  }

  return v55;
}

- (id)apply:(id)a3 image:(id)a4 arguments:(id)a5 inoutSpace:(CGColorSpace *)a6 isPremultiplied:(BOOL)a7
{
  v7 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_isAlphaOne_(self, a2, a3, a4, a5, a6, a7, 0);

  return v7;
}

- (id)apply:(id)a3 image:(id)a4 arguments:(id)a5 inoutSpace:(CGColorSpace *)a6 isPremultiplied:(BOOL)a7 isAlphaOne:(BOOL)a8
{
  v80 = a8;
  v81 = a7;
  v91 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v82 = a4;
  v12 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = v11;
    v21 = objc_msgSend_count(v12, v17, v18, v19, v20);
    v22 = sub_233755CB8(v21 + 1);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v89 = v82;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, &v89, 1, v24);
    v29 = v25;
    if (v12)
    {
      objc_msgSend_arrayByAddingObjectsFromArray_(v25, v26, v12, v27, v28);
    }

    else
    {
      objc_msgSend_arrayByAddingObjectsFromArray_(v25, v26, MEMORY[0x277CBEBF8], v27, v28);
    }
    v30 = ;

    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v83, v90, 16);
    if (v35)
    {
      v36 = *v84;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v84 != v36)
          {
            objc_enumerationMutation(v30);
          }

          v38 = *(*(&v83 + 1) + 8 * i);
          if (a6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v39 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v38, v32, a6, v33, v34);
            objc_msgSend_addObject_(v22, v40, v39, v41, v42);
          }

          else
          {
            objc_msgSend_addObject_(v22, v32, v38, v33, v34);
          }
        }

        v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v83, v90, 16);
      }

      while (v35);
    }

    if (v81)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(v22, v43, 0, v45, v46);
      v51 = objc_msgSend_imageByUnpremultiplyingAlpha(v30, v47, v48, v49, v50);

      objc_msgSend_setObject_atIndexedSubscript_(v22, v52, v51, 0, v53);
    }

    objc_msgSend_extent(v82, v43, v44, v45, v46);
    v61 = v57;
    v62 = v58;
    v63 = v59;
    v64 = v60;
    if (v80)
    {
      v87 = *MEMORY[0x277CBFA00];
      v30 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v54, 1, v55, v56);
      v88 = v30;
      v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, &v88, &v87, 1);
      objc_msgSend_applyWithExtent_arguments_options_(v79, v67, v22, v66, v68, v61, v62, v63, v64);
    }

    else
    {
      v66 = 0;
      objc_msgSend_applyWithExtent_arguments_options_(v79, v54, v22, 0, v56, v57, v58, v59, v60);
    }
    v75 = ;
    if (v80)
    {
    }

    if (v81)
    {
      v76 = objc_msgSend_imageByPremultiplyingAlpha(v75, v71, v72, v73, v74);

      v75 = v76;
    }

    if (a6)
    {
      v77 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v75, v71, a6, v73, v74);

      v75 = v77;
    }

    v70 = v75;
  }

  else
  {
    v69 = objc_msgSend_name(v11, v13, v14, v15, v16);
    NSLog(&cfstr_KernelShouldBe.isa, v69);

    v70 = 0;
  }

  return v70;
}

- (id)applyMatrixToImage:(id)a3 vectorR:(id)a4 vectorG:(id)a5 vectorB:(id)a6 vectorBias:(id)a7 inSpace:(CGColorSpace *)a8 outSpace:(CGColorSpace *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  objc_msgSend_W(v15, v19, v20, v21, v22);
  if (v27 == 0.0 && (objc_msgSend_W(v16, v23, v24, v25, v26), v32 == 0.0) && (objc_msgSend_W(v17, v28, v29, v30, v31), v37 == 0.0) && (objc_msgSend_W(v18, v33, v34, v35, v36), v42 == 0.0))
  {
    if (a8)
    {
      v45 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v14, v38, a8, v40, v41);

      v14 = v45;
    }

    v50 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v38, v39, v40, v41, 0.0, 0.0, 0.0, 1.0);
    v51 = v18;
    if (!v18)
    {
      v51 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v46, v47, v48, v49, 0.0, 0.0, 0.0);
    }

    v52 = objc_msgSend_filteredImage_keysAndValues_(v14, v46, @"CIColorMatrix", @"inputRVector", v49, v15, @"inputGVector", v16, @"inputBVector", v17, @"inputAVector", v50, @"inputBiasVector", v51, 0);

    if (!v18)
    {
    }

    if (a9)
    {
      v56 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v52, v53, a9, v54, v55);

      v14 = v56;
    }

    else
    {
      v14 = v52;
    }
  }

  else
  {
    NSLog(&cfstr_VectorsOfRGBBi.isa);
  }

  v43 = v14;

  return v14;
}

@end