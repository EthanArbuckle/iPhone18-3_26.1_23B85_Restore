@interface VNImageClassifier
+ (BOOL)_dumpIntermediatesFullImage:(id)a3 imageURL:(id)a4 requiredImageSource:(const __CVBuffer *)a5 imageProcessingType:(int)a6 error:(id *)a7;
+ (BOOL)_dumpIntermediatesTiles:(id)a3 imageURL:(id)a4 requiredImageSource:(const __CVBuffer *)a5 imageProcessingType:(int)a6 allocatedTileCount:(unsigned int)a7 imageTiles:(const void *)a8 bytesPerPixel:(int)a9 numTiles:(unsigned int)a10 scaleFactor:(float)a11 augmentationMode:(unsigned int)a12 scalingImage:(BOOL)a13 error:(id *)a14;
+ (BOOL)computeImageCropWithImage:(id)a3 regionOfInterest:(CGRect)a4 usingDescriptorProcessor:(ImageDescriptorProcessorAbstract *)a5 scalingImage:(BOOL)a6 options:(id)a7 pixelBuffer:(__CVBuffer *)a8 error:(id *)a9;
+ (BOOL)computeImageDescriptorsWithImage:(id)a3 pixelBuffer:(const __CVBuffer *)a4 regionOfInterest:(CGRect)a5 usingDescriptorProcessor:(ImageDescriptorProcessorAbstract *)a6 tileCount:(int)a7 augmentationMode:(unsigned int)a8 resultantDescriptorBuffer:(void *)a9 options:(id)a10 metalContext:(id)a11 canceller:(id)a12 tileColumns:(unint64_t *)a13 tileRows:(unint64_t *)a14 error:(id *)a15;
+ (BOOL)computeLabelsAndConfidence:(void *)a3 usingDescriptorBuffer:(void *)a4 populateLabelsAndConfidence:(void *)a5 options:(id)a6 metalContext:(id)a7 error:(id *)a8;
+ (id)classifyImageHierarchicallyWithDescriptors:(const void *)a3 usingImageClassifier:(void *)a4 hierarchicalClassifier:(ImageClassifier_HierarchicalModel *)a5 minimumClassificationConfidence:(float)a6 minimumClassificationConfidenceRatio:(float)a7 maximumLeafLabels:(unint64_t)a8 maximumHierarchicalLabels:(unint64_t)a9 options:(id)a10 metalContext:(id)a11 error:(id *)a12;
+ (id)classifyImageWithDescriptors:(const void *)a3 usingImageClassifier:(void *)a4 andMinConfidenceForClassification:(float)a5 options:(id)a6 metalContext:(id)a7 error:(id *)a8;
@end

@implementation VNImageClassifier

+ (BOOL)_dumpIntermediatesTiles:(id)a3 imageURL:(id)a4 requiredImageSource:(const __CVBuffer *)a5 imageProcessingType:(int)a6 allocatedTileCount:(unsigned int)a7 imageTiles:(const void *)a8 bytesPerPixel:(int)a9 numTiles:(unsigned int)a10 scaleFactor:(float)a11 augmentationMode:(unsigned int)a12 scalingImage:(BOOL)a13 error:(id *)a14
{
  v18 = a3;
  v64 = a4;
  v65 = [v18 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
  v19 = [v18 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
  v20 = v19;
  v21 = 1;
  if (a5 && v65)
  {
    v63 = v19;
    if (v19)
    {
      v22 = [v64 path];
      v24 = v22;
      if (v22)
      {
        v25 = [v22 lastPathComponent];

        v26 = v25;
      }

      else
      {
        v26 = @"<binary-data>";
      }

      *&v23 = a11;
      v27 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      [v63 setObject:v27 forKey:@"scalingFactor"];

      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a12];
      [v63 setObject:v28 forKey:@"augmentationMode"];

      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a10];
      [v63 setObject:v29 forKey:@"numTiles"];

      [v63 setObject:v26 forKey:@"imageID"];
      v20 = v63;
    }

    v30 = [v65 stringByAppendingString:@"/"];
    v62 = [MEMORY[0x1E696AC08] defaultManager];
    v31 = [MEMORY[0x1E695DFF8] fileURLWithPath:v30];
    v32 = [v62 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:a14];

    v59 = v32;
    if (v32)
    {
      v57 = v30;
      v58 = [v64 path];
      ++image_name_offset;
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      v60 = [v33 stringValue];

      if (v58)
      {
        v34 = [v58 lastPathComponent];
        v35 = [v34 stringByDeletingPathExtension];

        v36 = v35;
      }

      else
      {
        v36 = v60;
      }

      v61 = v36;
      v37 = [v30 stringByAppendingString:?];
      v38 = [v37 stringByAppendingString:@"_tile_"];

      if (a7)
      {
        v39 = 0;
        v40 = a7;
        do
        {
          v41 = objc_autoreleasePoolPush();
          v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v39];
          v43 = [v42 stringValue];
          v44 = [v38 stringByAppendingString:v43];

          v45 = [v44 stringByAppendingString:@".png"];
          v46 = [v45 UTF8String];
          v47 = (*a8 + 32 * v39);
          *v68 = *v47;
          *__n = v47[1];
          PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
          saveVImage(v46, v68, PixelFormatType);

          v49 = *a8 + 32 * v39;
          v68[1] = *(v49 + 8);
          __n[0] = *(v49 + 16);
          __n[1] = __n[0] * a9;
          v50 = malloc_type_calloc(__n[1] * v68[1], 1uLL, 0x816A1B8uLL);
          v68[0] = v50;
          if (v68[1])
          {
            v51 = 0;
            v52 = *(*a8 + 32 * v39);
            v53 = __n[1];
            do
            {
              memcpy(v50, v52, v53);
              ++v51;
              v52 += *(*a8 + 32 * v39 + 24);
              v53 = __n[1];
              v50 += __n[1];
            }

            while (v51 < v68[1]);
          }

          v54 = [v44 stringByAppendingString:@".vdump"];
          ImageProcessing_save([v54 UTF8String], v68, a6);

          free(v68[0]);
          objc_autoreleasePoolPop(v41);
          ++v39;
        }

        while (v39 != v40);
      }

      v30 = v57;
      v20 = v63;
      if (v63)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:image_name_offset];
        [v63 setObject:v55 forKey:@"debugID"];
      }
    }

    v21 = v59;
  }

  return v21;
}

+ (BOOL)_dumpIntermediatesFullImage:(id)a3 imageURL:(id)a4 requiredImageSource:(const __CVBuffer *)a5 imageProcessingType:(int)a6 error:(id *)a7
{
  v11 = a4;
  v12 = [a3 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
  v13 = v12;
  v14 = 1;
  if (a5 && v12)
  {
    v15 = [v12 stringByAppendingString:@"/"];
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v15];
    v14 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:a7];

    if (v14)
    {
      ++image_name_offset;
      v28 = v16;
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
      v19 = [v18 stringValue];

      if (v11)
      {
        v20 = [v11 lastPathComponent];
        v21 = [v20 stringByDeletingPathExtension];

        v19 = v21;
      }

      v27 = v19;
      v22 = [v15 stringByAppendingString:v19];
      v23 = objc_autoreleasePoolPush();
      v24 = [v22 stringByAppendingString:@"_source_scaled.png"];
      saveCVPixelBuffer([v24 UTF8String], a5);
      CVPixelBufferLockBaseAddress(a5, 1uLL);
      v29[0] = CVPixelBufferGetBaseAddress(a5);
      v29[1] = CVPixelBufferGetHeight(a5);
      v29[2] = CVPixelBufferGetWidth(a5);
      v29[3] = CVPixelBufferGetBytesPerRow(a5);
      v25 = [v22 stringByAppendingString:@"_source_scaled.vdump"];
      ImageProcessing_save([v25 UTF8String], v29, a6);
      CVPixelBufferUnlockBaseAddress(a5, 1uLL);
      NSLog(&cfstr_VnImageClassif.isa, v15);

      objc_autoreleasePoolPop(v23);
      v16 = v28;
    }
  }

  return v14;
}

+ (id)classifyImageHierarchicallyWithDescriptors:(const void *)a3 usingImageClassifier:(void *)a4 hierarchicalClassifier:(ImageClassifier_HierarchicalModel *)a5 minimumClassificationConfidence:(float)a6 minimumClassificationConfidenceRatio:(float)a7 maximumLeafLabels:(unint64_t)a8 maximumHierarchicalLabels:(unint64_t)a9 options:(id)a10 metalContext:(id)a11 error:(id *)a12
{
  v18 = a10;
  v19 = [VNValidationUtilities originatingRequestSpecifierInOptions:v18 error:a12];
  if (v19)
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x5812000000;
    v56 = __Block_byref_object_copy__23604;
    v57 = __Block_byref_object_dispose__23605;
    v58 = "";
    v59 = 0u;
    v60 = 0u;
    v61 = 1065353216;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x5812000000;
    v49[3] = __Block_byref_object_copy__23604;
    v49[4] = __Block_byref_object_dispose__23605;
    v49[5] = "";
    __p = 0u;
    v51 = 0u;
    v52 = 1065353216;
    v20 = [v18 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
    v21 = [v20 BOOLValue];

    v48 = 1;
    if ([VNValidationUtilities getMTLGPUPriority:&v48 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:v18 withDefaultValue:1 error:a12]&& (!a8 || (aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 3221225472, aBlock[2] = __248__VNImageClassifier_classifyImageHierarchicallyWithDescriptors_usingImageClassifier_hierarchicalClassifier_minimumClassificationConfidence_minimumClassificationConfidenceRatio_maximumLeafLabels_maximumHierarchicalLabels_options_metalContext_error___block_invoke, aBlock[3] = &unk_1E77B4920, v47 = v21, aBlock[6] = a4, aBlock[7] = v48, v45 = a7, v46 = a6, aBlock[8] = a8, aBlock[9] = a3, aBlock[4] = &v53, aBlock[5] = v49, v22 = _Block_copy(aBlock), v23 = VNExecuteBlock(v22, a12), v22, v23)))
    {
      v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v54[9]];
      v25 = [v18 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __248__VNImageClassifier_classifyImageHierarchicallyWithDescriptors_usingImageClassifier_hierarchicalClassifier_minimumClassificationConfidence_minimumClassificationConfidenceRatio_maximumLeafLabels_maximumHierarchicalLabels_options_metalContext_error___block_invoke_2;
      v34[3] = &unk_1E77B4948;
      v38 = &v53;
      v35 = v19;
      v26 = v24;
      v36 = v26;
      v37 = v25;
      v40 = a9;
      v41 = a5;
      v39 = v49;
      v42 = a6;
      v43 = a7;
      v27 = v25;
      v28 = _Block_copy(v34);
      if (VNExecuteBlock(v28, a12))
      {
        v29 = v26;
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

    _Block_object_dispose(v49, 8);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v51);
    v30 = __p;
    *&__p = 0;
    if (v30)
    {
      operator delete(v30);
    }

    _Block_object_dispose(&v53, 8);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v60);
    v31 = v59;
    *&v59 = 0;
    if (v31)
    {
      operator delete(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t __248__VNImageClassifier_classifyImageHierarchicallyWithDescriptors_usingImageClassifier_hierarchicalClassifier_minimumClassificationConfidence_minimumClassificationConfidenceRatio_maximumLeafLabels_maximumHierarchicalLabels_options_metalContext_error___block_invoke(uint64_t a1)
{
  (*(**(a1 + 48) + 48))(*(a1 + 48), *(a1 + 88), *(a1 + 56));
  v2 = *(a1 + 48);
  v3 = *(a1 + 80);
  *(v2 + 104) = v3;
  if (v3 < 0.0)
  {
    goto LABEL_11;
  }

  v4 = *(a1 + 84);
  *(v2 + 100) = v4;
  if (v4 < 0.0)
  {
    goto LABEL_11;
  }

  v5 = *(a1 + 64);
  if (v5 > 0x7FFFFFFE)
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  *(v2 + 108) = v5;
  if (v5 <= 0)
  {
LABEL_11:
    exception = __cxa_allocate_exception(8uLL);
    *exception = 3964;
    __cxa_throw(exception, MEMORY[0x1E69E54B0], 0);
  }

  *(v2 + 96) = 1;
  vision::mod::ImageClassifierAbstract::classifyDescriptors(__p, v2, *(a1 + 72), 1);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(*(*(a1 + 32) + 8) + 48, __p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v12);
  v6 = __p[0];
  __p[0] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  *(v7 + 100) = 0x3400000000000000;
  *(v7 + 108) = 0x7FFFFFFF;
  *(v7 + 96) = 0;
  vision::mod::ImageClassifierAbstract::classifyDescriptors(__p, v7, *(a1 + 72), 0);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(*(*(a1 + 40) + 8) + 48, __p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v12);
  v8 = __p[0];
  __p[0] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 1;
}

uint64_t __248__VNImageClassifier_classifyImageHierarchicallyWithDescriptors_usingImageClassifier_hierarchicalClassifier_minimumClassificationConfidence_minimumClassificationConfidenceRatio_maximumLeafLabels_maximumHierarchicalLabels_options_metalContext_error___block_invoke_2(uint64_t a1)
{
  for (i = *(*(*(a1 + 56) + 8) + 64); i; i = *i)
  {
    v3 = i + 2;
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (*(i + 39) < 0)
    {
      v3 = *v3;
    }

    v5 = [v4 initWithUTF8String:v3];
    v6 = [VNClassificationObservation alloc];
    LODWORD(v7) = *(i + 10);
    v8 = [(VNClassificationObservation *)v6 initWithOriginatingRequestSpecifier:*(a1 + 32) identifier:v5 confidence:v7];
    [*(a1 + 40) addObject:v8];
  }

  if (*(a1 + 48))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    for (j = *(*(*(a1 + 56) + 8) + 64); j; j = *j)
    {
      LODWORD(v10) = *(j + 10);
      v12 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
      v13 = j + 2;
      if (*(j + 39) < 0)
      {
        v13 = *v13;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
      [v9 setObject:v12 forKey:v14];
    }

    [*(a1 + 48) setObject:v9 forKey:@"labelsAndConfidence"];
    v15 = *(a1 + 48);
    LODWORD(v16) = *(a1 + 88);
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v15 setObject:v17 forKey:@"MinConfidenceForClassificationRaw"];
  }

  if (*(a1 + 72))
  {
    vision::mod::ImageClassifier_HierarchicalModel::infer(__p, *(a1 + 80), (*(*(a1 + 64) + 8) + 48), 1);
    ImageClassifier_getLabelsAuto(&v44, v43, *(a1 + 88), *(a1 + 92));
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v43);
    v18 = __p[0];
    __p[0] = 0;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = *(a1 + 72);
    if ((v19 | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
    {
      v39 = v45;
      if (v19 < (v45 - v44) >> 5)
      {
        v40 = &v44[32 * v19];
        while (v39 != v40)
        {
          v41 = *(v39 - 9);
          v39 -= 4;
          if (v41 < 0)
          {
            operator delete(*v39);
          }
        }

        v45 = v40;
      }
    }

    if (*(a1 + 48))
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v22 = v44;
      v23 = v45;
      if (v44 != v45)
      {
        do
        {
          LODWORD(v21) = *(v22 + 6);
          v24 = [MEMORY[0x1E696AD98] numberWithFloat:{v21, __p[0]}];
          v25 = v22;
          if (*(v22 + 23) < 0)
          {
            v25 = *v22;
          }

          v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
          [v20 setObject:v24 forKey:v26];

          v22 += 4;
        }

        while (v22 != v23);
      }

      [*(a1 + 48) setObject:v20 forKey:{@"hierarchicalLabelsAndConfidence", __p[0]}];
      v27 = *(a1 + 48);
      LODWORD(v28) = *(a1 + 88);
      v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      [v27 setObject:v29 forKey:@"MinConfidenceForHierarchical"];
    }

    v30 = v44;
    v31 = v45;
    if (v44 != v45)
    {
      do
      {
        v32 = objc_alloc(MEMORY[0x1E696AEC0]);
        v33 = v30;
        if (*(v30 + 23) < 0)
        {
          v33 = *v30;
        }

        v34 = [v32 initWithUTF8String:{v33, __p[0]}];
        v35 = [VNClassificationObservation alloc];
        LODWORD(v36) = *(v30 + 6);
        v37 = [(VNClassificationObservation *)v35 initWithOriginatingRequestSpecifier:*(a1 + 32) identifier:v34 confidence:v36];
        [*(a1 + 40) addObject:v37];

        v30 += 4;
      }

      while (v30 != v31);
    }

    __p[0] = &v44;
    std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  return 1;
}

+ (id)classifyImageWithDescriptors:(const void *)a3 usingImageClassifier:(void *)a4 andMinConfidenceForClassification:(float)a5 options:(id)a6 metalContext:(id)a7 error:(id *)a8
{
  v13 = a6;
  v14 = a7;
  v15 = [VNValidationUtilities originatingRequestSpecifierInOptions:v13 error:a8];
  if (v15)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x5812000000;
    v49 = __Block_byref_object_copy__23604;
    v50 = __Block_byref_object_dispose__23605;
    v51 = "";
    __p = 0u;
    v53 = 0u;
    v54 = 1065353216;
    v16 = [v13 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
    v17 = [v16 BOOLValue];

    v45 = 1;
    if ([VNValidationUtilities getMTLGPUPriority:&v45 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:v13 withDefaultValue:1 error:a8])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __132__VNImageClassifier_classifyImageWithDescriptors_usingImageClassifier_andMinConfidenceForClassification_options_metalContext_error___block_invoke;
      aBlock[3] = &unk_1E77B48F8;
      v44 = v17;
      aBlock[4] = &v46;
      aBlock[5] = a4;
      aBlock[6] = v45;
      aBlock[7] = a3;
      v18 = _Block_copy(aBlock);
      if (VNExecuteBlock(v18, a8))
      {
        v39 = v18;
        v40 = v14;
        ImageClassifier_getLabelsAuto(&v41, v47[8], a5, 0.1);
        v19 = [v13 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
        if (v19)
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v22 = v41;
          for (i = v42; v22 != i; v22 += 4)
          {
            LODWORD(v21) = *(v22 + 6);
            v24 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
            v25 = v22;
            if (*(v22 + 23) < 0)
            {
              v25 = *v22;
            }

            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
            [v20 setObject:v24 forKey:v26];
          }

          [v19 setObject:v20 forKey:@"labelsAndConfidence"];
          *&v27 = a5;
          v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
          [v19 setObject:v28 forKey:@"MinConfidenceForClassificationRaw"];
        }

        v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v42 - v41) >> 5];
        v31 = v41;
        for (j = v42; v31 != j; v31 += 4)
        {
          v32 = [VNClassificationObservation alloc];
          v33 = v31;
          if (*(v31 + 23) < 0)
          {
            v33 = *v31;
          }

          v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v33];
          LODWORD(v35) = *(v31 + 6);
          v36 = [(VNClassificationObservation *)v32 initWithOriginatingRequestSpecifier:v15 identifier:v34 confidence:v35];

          if (v36)
          {
            [v29 addObject:v36];
          }
        }

        v55 = &v41;
        std::vector<std::pair<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v55);
        v18 = v39;
        v14 = v40;
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

    _Block_object_dispose(&v46, 8);
    std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v53);
    v37 = __p;
    *&__p = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

uint64_t __132__VNImageClassifier_classifyImageWithDescriptors_usingImageClassifier_andMinConfidenceForClassification_options_metalContext_error___block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 48))(*(a1 + 40), *(a1 + 64), *(a1 + 48));
  vision::mod::ImageClassifierAbstract::classifyDescriptors(__p, *(a1 + 40), *(a1 + 56), 1);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(*(*(a1 + 32) + 8) + 48, __p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(__p[2]);
  v2 = __p[0];
  __p[0] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 1;
}

+ (BOOL)computeLabelsAndConfidence:(void *)a3 usingDescriptorBuffer:(void *)a4 populateLabelsAndConfidence:(void *)a5 options:(id)a6 metalContext:(id)a7 error:(id *)a8
{
  v12 = a6;
  v13 = [v12 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
  v14 = [v13 BOOLValue];

  v20 = 1;
  if ([VNValidationUtilities getMTLGPUPriority:&v20 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:v12 withDefaultValue:1 error:a8])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __125__VNImageClassifier_computeLabelsAndConfidence_usingDescriptorBuffer_populateLabelsAndConfidence_options_metalContext_error___block_invoke;
    v18[3] = &__block_descriptor_65_e9_B16__0__8l;
    v19 = v14;
    v18[4] = a3;
    v18[5] = v20;
    v18[6] = a5;
    v18[7] = a4;
    v15 = _Block_copy(v18);
    v16 = VNExecuteBlock(v15, a8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __125__VNImageClassifier_computeLabelsAndConfidence_usingDescriptorBuffer_populateLabelsAndConfidence_options_metalContext_error___block_invoke(uint64_t a1)
{
  (*(**(a1 + 32) + 48))(*(a1 + 32), *(a1 + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  *(v2 + 100) = 0x3400000000000000;
  *(v2 + 108) = 0x7FFFFFFF;
  vision::mod::ImageClassifierAbstract::classifyDescriptorsNoComulative(&v8, v2, *(a1 + 56), 0);
  v3 = *(a1 + 48);
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
    v6 = *v3;
    if (v5 != v4)
    {
      do
      {
        v5 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::~__hash_table(v5 - 40);
      }

      while (v5 != v4);
      v6 = *v3;
    }

    v3[1] = v4;
    operator delete(v6);
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  *v3 = v8;
  v3[2] = v9;
  v8 = 0uLL;
  v9 = 0;
  v10 = &v8;
  std::vector<std::unordered_map<std::string,float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  return 1;
}

+ (BOOL)computeImageDescriptorsWithImage:(id)a3 pixelBuffer:(const __CVBuffer *)a4 regionOfInterest:(CGRect)a5 usingDescriptorProcessor:(ImageDescriptorProcessorAbstract *)a6 tileCount:(int)a7 augmentationMode:(unsigned int)a8 resultantDescriptorBuffer:(void *)a9 options:(id)a10 metalContext:(id)a11 canceller:(id)a12 tileColumns:(unint64_t *)a13 tileRows:(unint64_t *)a14 error:(id *)a15
{
  v20 = a3;
  v21 = a10;
  v22 = a12;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __219__VNImageClassifier_computeImageDescriptorsWithImage_pixelBuffer_regionOfInterest_usingDescriptorProcessor_tileCount_augmentationMode_resultantDescriptorBuffer_options_metalContext_canceller_tileColumns_tileRows_error___block_invoke;
  aBlock[3] = &unk_1E77B48B0;
  v37 = a4;
  v23 = v21;
  v43 = a7;
  v32 = v23;
  v35 = &v49;
  v36 = &v45;
  v38 = a6;
  v24 = v22;
  v44 = a8;
  v33 = v24;
  v39 = a9;
  v40 = a1;
  v25 = v20;
  v34 = v25;
  v41 = a13;
  v42 = a14;
  v26 = _Block_copy(aBlock);
  v27 = VNExecuteBlock(v26, a15);
  if (*(v46 + 6))
  {
    v28 = 0;
    do
    {
      free(*(v50[3] + 8 * v28++));
    }

    while (v28 < *(v46 + 6));
  }

  free(v50[3]);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  return v27;
}

uint64_t __219__VNImageClassifier_computeImageDescriptorsWithImage_pixelBuffer_regionOfInterest_usingDescriptorProcessor_tileCount_augmentationMode_resultantDescriptorBuffer_options_metalContext_canceller_tileColumns_tileRows_error___block_invoke(uint64_t a1, void *a2)
{
  Width = CVPixelBufferGetWidth(*(a1 + 72));
  Height = CVPixelBufferGetHeight(*(a1 + 72));
  v6 = [*(a1 + 32) objectForKey:@"VNImageClassifierProcessingOption_ImageProcessingType"];
  v7 = [v6 unsignedIntegerValue];

  v8 = *(a1 + 72);
  if (v7 == 1)
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v8, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*(a1 + 72), 0);
    v10 = 1;
  }

  else
  {
    BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v8);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(*(a1 + 72));
    v10 = 4;
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"VNImageClassifierProcessingOption_AveragedSideLength"];
  v12 = [v11 unsignedIntegerValue];

  if (Width <= Height)
  {
    v13 = Height;
  }

  else
  {
    v13 = Width;
  }

  v14 = (v13 / v12) | 1;
  if (*(a1 + 120))
  {
    v15 = *(a1 + 120);
  }

  else
  {
    v15 = v14;
  }

  v16 = vcvtms_s32_f32((Width / Height) * v15);
  v17 = vcvtms_s32_f32((Height / Width) * v15);
  if (Width <= Height)
  {
    v17 = v15;
  }

  else
  {
    v16 = v15;
  }

  if (Width < v12 || (v16 >= 2 ? (v20 = (v16 - 1), v18 = vcvtms_u32_f32(((Width - v12) / (v12 * v20)) * v12), v19 = v12 + v18 * v20) : (v18 = 0, v19 = v12), Height < v12))
  {
    if (a2)
    {
      VNErrorForCVMLStatus(0x107C);
      *a2 = v21 = 0;
      return v21;
    }

    return 0;
  }

  v86 = v10;
  v22 = Width - v19;
  v23 = v22 >> 1;
  if (v17 >= 2)
  {
    v26 = (v17 - 1);
    v24 = vcvtms_u32_f32(((Height - v12) / (v12 * v26)) * v12);
    v25 = v12 + v24 * v26;
  }

  else
  {
    v24 = 0;
    v25 = v12;
  }

  v27 = Height - v25;
  v80 = v7;
  if ((Width + -1.0) >= v23 && (v28 = (v27 >> 1), (Height + -1.0) >= v28))
  {
    v29 = BaseAddressOfPlane + BytesPerRowOfPlane * v28 + v23 * v10;
  }

  else
  {
    v29 = 0;
  }

  v30 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v31 = *(*(a1 + 56) + 8);
  v85 = a2;
  v82 = Width - (v22 & 0xFFFFFFFFFFFFFFFELL);
  if (v18)
  {
    v32 = (Width - (v22 & 0xFFFFFFFFFFFFFFFELL) - v12) / v18 + 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = v10;
  v34 = Height - v30;
  if (v24)
  {
    v35 = v24;
    v36 = (v34 - v12) / v24 + 1;
  }

  else
  {
    v35 = 0;
    v36 = 1;
  }

  v84 = v32;
  v81 = v32 * v36;
  v37 = v36;
  v38 = malloc_type_calloc(v32 * v36, 8uLL, 0x2004093837F09uLL);
  *(v31 + 24) = v38;
  if (!v38)
  {
LABEL_54:
    v55 = 4219;
LABEL_56:
    if (v85)
    {
      VNErrorForCVMLStatus(v55);
      *v85 = v21 = 0;
      return v21;
    }

    return 0;
  }

  v79 = v15;
  v39 = v84;
  v40 = v37;
  if (v37 >= 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = v82 + -1.0;
    v45 = v34 + -1.0;
    if (v84 <= 1)
    {
      v46 = 1;
    }

    else
    {
      v46 = v84;
    }

    v78 = v33;
    v76 = v35;
    v77 = v40;
    v75 = v46;
    while (v39 < 1)
    {
LABEL_51:
      v42 += v35;
      if (++v41 >= v40)
      {
        goto LABEL_52;
      }
    }

    v83 = v41;
    v47 = 0;
    v48 = v43;
    while (1)
    {
      v49 = malloc_type_malloc(0x20uLL, 0x1080040ABB4582EuLL);
      if (!v49)
      {
        goto LABEL_54;
      }

      if (v44 < v47 || v45 < v42 || v29 == 0)
      {
        free(v49);
        v55 = 4221;
        goto LABEL_56;
      }

      *v49 = v29 + BytesPerRowOfPlane * v42 + v47 * v86;
      v49[1] = v12;
      v49[2] = v12;
      v49[3] = BytesPerRowOfPlane;
      *(*(v31 + 24) + 8 * v48) = v49;
      v47 += v18;
      ++v48;
      if (!--v46)
      {
        v43 = v48;
        v33 = v78;
        v39 = v84;
        v35 = v76;
        v40 = v77;
        v41 = v83;
        v46 = v75;
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  v52 = v40;
  v53 = v33;
  *(*(*(a1 + 64) + 8) + 24) = v81;
  v54 = *(*(*(a1 + 64) + 8) + 24);
  v102 = 0;
  v103 = 0;
  v101 = 0;
  if (v54)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<vImage_Buffer>>(v54);
  }

  v57 = 0;
  v58 = [*(a1 + 32) objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
  v59 = [v58 BOOLValue];

  v100 = 1;
  if ([VNValidationUtilities getMTLGPUPriority:&v100 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:*(a1 + 32) withDefaultValue:1 error:v85])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = __219__VNImageClassifier_computeImageDescriptorsWithImage_pixelBuffer_regionOfInterest_usingDescriptorProcessor_tileCount_augmentationMode_resultantDescriptorBuffer_options_metalContext_canceller_tileColumns_tileRows_error___block_invoke_2;
    aBlock[3] = &unk_1F1974058;
    v60 = *(a1 + 80);
    v99 = v59;
    v91 = v60;
    v92 = v100;
    v97 = v80;
    v61 = *(a1 + 40);
    v98 = *(a1 + 124);
    v90 = v61;
    __p = 0;
    v94 = 0;
    v95 = 0;
    std::vector<vImage_Buffer>::__init_with_size[abi:ne200100]<vImage_Buffer*,vImage_Buffer*>(&__p, 0, 0, 0);
    v96 = *(a1 + 88);
    v62 = _Block_copy(aBlock);
    if (VNExecuteBlock(v62, v85) & 1) != 0 && ([*(a1 + 32) objectForKeyedSubscript:@"VNImageClassifierProcessingOption_ScaleImage"], v63 = objc_claimAutoreleasedReturnValue(), v88 = objc_msgSend(v63, "BOOLValue"), v63, objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"VNImageClassifierProcessingOption_ScaleFactor"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "floatValue"), v66 = v65, v64, v67 = *(a1 + 96), v68 = *(a1 + 32), objc_msgSend(*(a1 + 48), "fileURL"), v69 = objc_claimAutoreleasedReturnValue(), BYTE4(v74) = v88, LODWORD(v74) = *(a1 + 124), LODWORD(v70) = v66, v71 = objc_msgSend(v67, "_dumpIntermediatesTiles:imageURL:requiredImageSource:imageProcessingType:allocatedTileCount:imageTiles:bytesPerPixel:numTiles:scaleFactor:augmentationMode:scalingImage:error:", v68, v69, *(a1 + 72), v80, *(*(*(a1 + 64) + 8) + 24), &v101, v70, __PAIR64__(v79, v53), v74, v85), v69, (v71))
    {
      v72 = *(a1 + 104);
      if (v72)
      {
        *v72 = v84;
      }

      v73 = *(a1 + 112);
      if (v73)
      {
        *v73 = v52;
      }

      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    if (__p)
    {
      v94 = __p;
      operator delete(__p);
    }

    v57 = v101;
  }

  else
  {
    v21 = 0;
  }

  if (v57)
  {
    v102 = v57;
    operator delete(v57);
  }

  return v21;
}

BOOL __219__VNImageClassifier_computeImageDescriptorsWithImage_pixelBuffer_regionOfInterest_usingDescriptorProcessor_tileCount_augmentationMode_resultantDescriptorBuffer_options_metalContext_canceller_tileColumns_tileRows_error___block_invoke_2(uint64_t a1, void *a2)
{
  (*(**(a1 + 40) + 120))(*(a1 + 40), *(a1 + 96), *(a1 + 48));
  if ((*(a1 + 88) & 4) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 88) & 1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __219__VNImageClassifier_computeImageDescriptorsWithImage_pixelBuffer_regionOfInterest_usingDescriptorProcessor_tileCount_augmentationMode_resultantDescriptorBuffer_options_metalContext_canceller_tileColumns_tileRows_error___block_invoke_3;
  aBlock[3] = &unk_1E77B4888;
  v15 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = *(a1 + 92);
  if (v6)
  {
    v11 = 0u;
    v12 = 0u;
    v13 = v6;
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    v10[0] = &unk_1F1975FA8;
    v10[1] = v7 << ((v6 & 2) != 0);
    v8 = (*(**(a1 + 40) + 104))(*(a1 + 40), a1 + 56, v4, v10, v5, *(a1 + 80));
    vision::mod::ImageDescriptorAugmenterAbstract::~ImageDescriptorAugmenterAbstract(v10);
  }

  else
  {
    v8 = (*(**(a1 + 40) + 96))(*(a1 + 40), a1 + 56, v4, v5, *(a1 + 80));
  }

  if (a2 && v8 != 128)
  {
    *a2 = VNErrorForCVMLStatus(v8);
  }

  return v8 == 128;
}

+ (BOOL)computeImageCropWithImage:(id)a3 regionOfInterest:(CGRect)a4 usingDescriptorProcessor:(ImageDescriptorProcessorAbstract *)a5 scalingImage:(BOOL)a6 options:(id)a7 pixelBuffer:(__CVBuffer *)a8 error:(id *)a9
{
  v51 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v19 = a7;
  v20 = [v18 width];
  v21 = [v18 height];
  v22 = (*(a5->var0 + 19))(a5);
  v24 = v23;
  v25 = v20;
  v26 = v21;
  v27 = v20;
  v52.origin.x = x * v27;
  v52.size.width = width * v27;
  v28 = v21;
  v52.origin.y = y * v28;
  v52.size.height = height * v28;
  v53 = CGRectIntegral(v52);
  v29 = v53.origin.x;
  v30 = v53.origin.y;
  v31 = v53.size.width;
  v32 = v53.size.height;
  if (v51)
  {
    v33 = ((v22 + v24) >> 1);
    if (v20 <= v21)
    {
      v36 = v53.size.width;
      v35 = v33 / v36;
      v26 = vcvtps_u32_f32((v33 / v36) * v21);
      v25 = (v22 + v24) >> 1;
    }

    else
    {
      v34 = v53.size.height;
      v35 = v33 / v34;
      v25 = vcvtps_u32_f32((v33 / v34) * v20);
      v26 = (v22 + v24) >> 1;
    }
  }

  else
  {
    v35 = 1.0;
  }

  v37 = (*(a5->var0 + 17))(a5);
  if (v37 == 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = 4;
  }

  if (v37 == 1)
  {
    v39 = 1278226488;
  }

  else
  {
    v39 = 1111970369;
  }

  v40 = [v18 croppedBufferWithWidth:v25 height:v26 format:v39 cropRect:v19 options:a9 error:{v29, v30, v31, v32, a1}];
  *a8 = v40;
  if (v40 && ([v18 fileURL], v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v50, "_dumpIntermediatesFullImage:imageURL:requiredImageSource:imageProcessingType:error:", v19, v41, *a8, v38, a9), v41, (v42 & 1) != 0))
  {
    v43 = [MEMORY[0x1E696AD98] numberWithInt:v38];
    [v19 setObject:v43 forKeyedSubscript:@"VNImageClassifierProcessingOption_ImageProcessingType"];

    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(v22 + v24) >> 1];
    [v19 setObject:v44 forKeyedSubscript:@"VNImageClassifierProcessingOption_AveragedSideLength"];

    v45 = [MEMORY[0x1E696AD98] numberWithBool:v51];
    [v19 setObject:v45 forKeyedSubscript:@"VNImageClassifierProcessingOption_ScaleImage"];

    *&v46 = v35;
    v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
    [v19 setObject:v47 forKeyedSubscript:@"VNImageClassifierProcessingOption_ScaleFactor"];

    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

@end