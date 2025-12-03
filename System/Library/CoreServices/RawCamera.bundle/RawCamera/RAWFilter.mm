@interface RAWFilter
+ (id)filterWithDefaultsForClass:(Class)class;
+ (id)filterWithDefaultsForName:(id)name;
+ (id)filterWithName:(id)name;
- (RAWFilter)initWithCoder:(id)coder;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied isAlphaOne:(BOOL)one;
- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space;
- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space isAlphaOne:(BOOL)one;
- (id)applyMatrixToImage:(id)image vectorR:(id)r vectorG:(id)g vectorB:(id)b vectorBias:(id)bias inSpace:(CGColorSpace *)space outSpace:(CGColorSpace *)outSpace;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimitiveNumberValue:(id)value inVariable:(id *)variable forKey:(id)key;
- (void)takeAttributesFromDictionary:(id)dictionary;
- (void)takeAttributesFromDictionary:(id)dictionary forKeys:(id)keys;
@end

@implementation RAWFilter

+ (id)filterWithName:(id)name
{
  nameCopy = name;
  if (objc_msgSend_hasPrefix_(nameCopy, v4, @"RAW", v5, v6))
  {
    NSClassFromString(nameCopy);
    v7 = objc_opt_new();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)takeAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8 = objc_msgSend_inputKeys(self, v4, v5, v6, v7);
  objc_msgSend_takeAttributesFromDictionary_forKeys_(self, v9, dictionaryCopy, v8, v10);
}

- (void)takeAttributesFromDictionary:(id)dictionary forKeys:(id)keys
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = keys;
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
          v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"valueBlock", v8, v9);
          if (v17 && (objc_msgSend_stringByReplacingCharactersInRange_withString_(v13, v14, 0, 5, &stru_284938540), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_opt_class(), NSStringFromClass(v19), v20 = objc_claimAutoreleasedReturnValue(), (v17)[2](v17, v20, v18), v21 = objc_claimAutoreleasedReturnValue(), v20, v18, v21) || (objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, v13, v15, v16), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
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

+ (id)filterWithDefaultsForName:(id)name
{
  v5 = objc_msgSend_filterWithName_(MEMORY[0x277CBF750], a2, name, v3, v4);
  objc_msgSend_setDefaults(v5, v6, v7, v8, v9);

  return v5;
}

+ (id)filterWithDefaultsForClass:(Class)class
{
  v3 = MEMORY[0x277CBF750];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_filterWithName_(v3, v6, v5, v7, v8);

  objc_msgSend_setDefaults(v9, v10, v11, v12, v13);

  return v9;
}

- (void)setPrimitiveNumberValue:(id)value inVariable:(id *)variable forKey:(id)key
{
  obj = value;
  keyCopy = key;
  if (*variable != obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      objc_msgSend_doubleValue(obj, v9, v10, v11, v12);
      v18 = objc_msgSend_numberWithDouble_(v13, v14, v15, v16, v17);

      obj = v18;
    }

    if (!*variable || (objc_msgSend_isEqualToNumber_(obj, v9, *variable, v11, v12) & 1) == 0)
    {
      objc_msgSend_willChangeValueForKey_(self, v9, keyCopy, v11, v12);
      objc_storeStrong(variable, obj);
      objc_msgSend_didChangeValueForKey_(self, v19, keyCopy, v20, v21);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (objc_msgSend_allowsKeyedCoding(coderCopy, v4, v5, v6, v7))
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
            objc_msgSend_encodeObject_forKey_(coderCopy, v39, v38, v31, v40);
          }

          else
          {
            v38 = 0;
            objc_msgSend_encodeObject_forKey_(coderCopy, v33, v26, v31, v34);
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

- (RAWFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ((objc_msgSend_allowsKeyedCoding(coderCopy, v5, v6, v7, v8) & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_27;
  }

  v13 = objc_msgSend_init(self, v9, v10, v11, v12);
  selfCopy = v13;
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

  v56 = selfCopy;
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

    if (!objc_msgSend_containsValueForKey_(coderCopy, v38, v30, v39, v40))
    {

      v29 = 0;
      goto LABEL_22;
    }

    v44 = objc_msgSend_decodeObjectForKey_(coderCopy, v41, v30, v42, v43);

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

  selfCopy = v56;
LABEL_24:
  self = selfCopy;

  selfCopy = self;
LABEL_27:

  return selfCopy;
}

- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space
{
  v8 = objc_msgSend_apply_image_extent_roiCallback_arguments_inoutSpace_isAlphaOne_(self, a2, apply, image, callback, arguments, space, 0, extent.origin.x, extent.origin.y, extent.size.width, extent.size.height);

  return v8;
}

- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space isAlphaOne:(BOOL)one
{
  oneCopy = one;
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v69 = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  imageCopy = image;
  callbackCopy = callback;
  argumentsCopy = arguments;
  v58 = imageCopy;
  v24 = objc_msgSend_count(argumentsCopy, v20, v21, v22, v23);
  v25 = sub_233755CB8(v24 + 1);
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v67 = imageCopy;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, &v67, 1, v27);
  v32 = v28;
  if (argumentsCopy)
  {
    objc_msgSend_arrayByAddingObjectsFromArray_(v28, v29, argumentsCopy, v30, v31);
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
        if (space && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v42 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v41, v35, space, v36, v37);
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

  if (oneCopy)
  {
    v65 = *MEMORY[0x277CBFA00];
    v38 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, 1, v47, v48);
    v66 = v38;
    v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v66, &v65, 1);
    objc_msgSend_applyWithExtent_roiCallback_arguments_options_(applyCopy, v51, callbackCopy, v25, v50, x, y, width, height);
  }

  else
  {
    v50 = 0;
    objc_msgSend_applyWithExtent_roiCallback_arguments_options_(applyCopy, v46, callbackCopy, v25, 0, x, y, width, height);
  }
  v55 = ;
  if (oneCopy)
  {
  }

  if (space)
  {
    v56 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v55, v52, space, v53, v54);

    v55 = v56;
  }

  return v55;
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied
{
  v7 = objc_msgSend_apply_image_arguments_inoutSpace_isPremultiplied_isAlphaOne_(self, a2, apply, image, arguments, space, premultiplied, 0);

  return v7;
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied isAlphaOne:(BOOL)one
{
  oneCopy = one;
  premultipliedCopy = premultiplied;
  v91 = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  imageCopy = image;
  argumentsCopy = arguments;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v79 = applyCopy;
    v21 = objc_msgSend_count(argumentsCopy, v17, v18, v19, v20);
    v22 = sub_233755CB8(v21 + 1);
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v89 = imageCopy;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, &v89, 1, v24);
    v29 = v25;
    if (argumentsCopy)
    {
      objc_msgSend_arrayByAddingObjectsFromArray_(v25, v26, argumentsCopy, v27, v28);
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
          if (space && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v39 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v38, v32, space, v33, v34);
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

    if (premultipliedCopy)
    {
      v30 = objc_msgSend_objectAtIndexedSubscript_(v22, v43, 0, v45, v46);
      v51 = objc_msgSend_imageByUnpremultiplyingAlpha(v30, v47, v48, v49, v50);

      objc_msgSend_setObject_atIndexedSubscript_(v22, v52, v51, 0, v53);
    }

    objc_msgSend_extent(imageCopy, v43, v44, v45, v46);
    v61 = v57;
    v62 = v58;
    v63 = v59;
    v64 = v60;
    if (oneCopy)
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
    if (oneCopy)
    {
    }

    if (premultipliedCopy)
    {
      v76 = objc_msgSend_imageByPremultiplyingAlpha(v75, v71, v72, v73, v74);

      v75 = v76;
    }

    if (space)
    {
      v77 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v75, v71, space, v73, v74);

      v75 = v77;
    }

    v70 = v75;
  }

  else
  {
    v69 = objc_msgSend_name(applyCopy, v13, v14, v15, v16);
    NSLog(&cfstr_KernelShouldBe.isa, v69);

    v70 = 0;
  }

  return v70;
}

- (id)applyMatrixToImage:(id)image vectorR:(id)r vectorG:(id)g vectorB:(id)b vectorBias:(id)bias inSpace:(CGColorSpace *)space outSpace:(CGColorSpace *)outSpace
{
  imageCopy = image;
  rCopy = r;
  gCopy = g;
  bCopy = b;
  biasCopy = bias;
  objc_msgSend_W(rCopy, v19, v20, v21, v22);
  if (v27 == 0.0 && (objc_msgSend_W(gCopy, v23, v24, v25, v26), v32 == 0.0) && (objc_msgSend_W(bCopy, v28, v29, v30, v31), v37 == 0.0) && (objc_msgSend_W(biasCopy, v33, v34, v35, v36), v42 == 0.0))
  {
    if (space)
    {
      v45 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(imageCopy, v38, space, v40, v41);

      imageCopy = v45;
    }

    v50 = objc_msgSend_vectorWithX_Y_Z_W_(MEMORY[0x277CBF788], v38, v39, v40, v41, 0.0, 0.0, 0.0, 1.0);
    v51 = biasCopy;
    if (!biasCopy)
    {
      v51 = objc_msgSend_vectorWithX_Y_Z_(MEMORY[0x277CBF788], v46, v47, v48, v49, 0.0, 0.0, 0.0);
    }

    v52 = objc_msgSend_filteredImage_keysAndValues_(imageCopy, v46, @"CIColorMatrix", @"inputRVector", v49, rCopy, @"inputGVector", gCopy, @"inputBVector", bCopy, @"inputAVector", v50, @"inputBiasVector", v51, 0);

    if (!biasCopy)
    {
    }

    if (outSpace)
    {
      v56 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v52, v53, outSpace, v54, v55);

      imageCopy = v56;
    }

    else
    {
      imageCopy = v52;
    }
  }

  else
  {
    NSLog(&cfstr_VectorsOfRGBBi.isa);
  }

  v43 = imageCopy;

  return imageCopy;
}

@end