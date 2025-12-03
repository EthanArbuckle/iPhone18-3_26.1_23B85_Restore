@interface AXMindNetNetwork
+ (id)networkWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type;
- (AXMindNetNetwork)initWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type;
- (id).cxx_construct;
- (id)processCIImage:(id)image;
- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r;
- (id)resizeAndProcessVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r;
@end

@implementation AXMindNetNetwork

+ (id)networkWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type
{
  pathCopy = path;
  configurationCopy = configuration;
  v10 = [[self alloc] initWithModelPath:pathCopy configuration:configurationCopy modelType:type];

  return v10;
}

- (AXMindNetNetwork)initWithModelPath:(id)path configuration:(id)configuration modelType:(int64_t)type
{
  pathCopy = path;
  configurationCopy = configuration;
  v56.receiver = self;
  v56.super_class = AXMindNetNetwork;
  v10 = [(AXMindNetNetwork *)&v56 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:pathCopy];
    v55 = 0;
    v12 = [MEMORY[0x1E695FE90] compileModelAtURL:v11 error:&v55];
    v13 = v55;
    if (v13)
    {
      v14 = v13;
      v15 = 0;
    }

    else
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x2050000000;
      v16 = getMLModelClass(void)::softClass;
      v60 = getMLModelClass(void)::softClass;
      v52 = v12;
      v53 = v11;
      if (!getMLModelClass(void)::softClass)
      {
        *&v61 = MEMORY[0x1E69E9820];
        *(&v61 + 1) = 3221225472;
        v62 = ___ZL15getMLModelClassv_block_invoke;
        v63 = &unk_1E7A1D0A0;
        v64 = &v57;
        ___ZL15getMLModelClassv_block_invoke(&v61);
        v16 = v58[3];
      }

      v17 = v16;
      _Block_object_dispose(&v57, 8);
      v54 = 0;
      v18 = [v16 modelWithContentsOfURL:v12 error:&v54];
      v14 = v54;
      mindNetModel = v10->_mindNetModel;
      v10->_mindNetModel = v18;

      v10->_modelType = type;
      *&v10->_keep_aspect_ratio = 257;
      v10->_input_height = 488.0;
      filterThresholds = [configurationCopy filterThresholds];
      v10->_num_pos_classes = [filterThresholds count];

      nmsThreshold = [configurationCopy nmsThreshold];
      [nmsThreshold floatValue];
      v10->_nmsThreshold = v22;

      filterThresholds2 = [configurationCopy filterThresholds];
      filterThresholds = v10->_filterThresholds;
      v10->_filterThresholds = filterThresholds2;

      p_begin = &v10->_important_classes.__begin_;
      begin = v10->_important_classes.__begin_;
      if (begin)
      {
        v10->_important_classes.__end_ = begin;
        operator delete(begin);
        *p_begin = 0;
        v10->_important_classes.__end_ = 0;
        v10->_important_classes.__cap_ = 0;
      }

      *p_begin = 0;
      v10->_important_classes.__end_ = 0;
      v10->_important_classes.__cap_ = 0;
      v61 = 0uLL;
      p_model_labels = &v10->_model_labels;
      v62 = 0;
      std::vector<NSString * {__strong}>::__vdeallocate(&v10->_model_labels.__begin_);
      *&v10->_model_labels.__begin_ = v61;
      v10->_model_labels.var1 = v62;
      v62 = 0;
      v61 = 0uLL;
      v57 = &v61;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v57);
      for (i = 1; ; ++i)
      {
        filterThresholds3 = [configurationCopy filterThresholds];
        v30 = [filterThresholds3 count];

        if (v30 <= i - 1)
        {
          break;
        }

        end = v10->_important_classes.__end_;
        cap = v10->_important_classes.__cap_;
        if (end >= cap)
        {
          v34 = *p_begin;
          v35 = end - *p_begin;
          v36 = v35 >> 2;
          v37 = (v35 >> 2) + 1;
          if (v37 >> 62)
          {
            std::vector<BOOL>::__throw_length_error[abi:ne200100]();
          }

          v38 = cap - v34;
          if (v38 >> 1 > v37)
          {
            v37 = v38 >> 1;
          }

          v39 = v38 >= 0x7FFFFFFFFFFFFFFCLL;
          v40 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v39)
          {
            v40 = v37;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v10->_important_classes, v40);
          }

          *(4 * v36) = i;
          v33 = 4 * v36 + 4;
          memcpy(0, v34, v35);
          v41 = v10->_important_classes.__begin_;
          v10->_important_classes.__begin_ = 0;
          v10->_important_classes.__end_ = v33;
          v10->_important_classes.__cap_ = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }

        else
        {
          *end = i;
          v33 = (end + 1);
        }

        v10->_important_classes.__end_ = v33;
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", i];
        var0 = v10->_model_labels.var0;
        var1 = v10->_model_labels.var1;
        if (var0 >= var1)
        {
          v46 = (var0 - p_model_labels->__begin_) >> 3;
          if ((v46 + 1) >> 61)
          {
            std::vector<BOOL>::__throw_length_error[abi:ne200100]();
          }

          v47 = var1 - p_model_labels->__begin_;
          v48 = v47 >> 2;
          if (v47 >> 2 <= (v46 + 1))
          {
            v48 = v46 + 1;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v48;
          }

          v64 = &v10->_model_labels;
          if (v49)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(&v10->_model_labels, v49);
          }

          *&v61 = 0;
          *(&v61 + 1) = 8 * v46;
          v63 = 0;
          **(&v61 + 1) = v42;
          v62 = (8 * v46 + 8);
          std::vector<NSString * {__strong}>::__swap_out_circular_buffer(&v10->_model_labels, &v61);
          v45 = v10->_model_labels.var0;
          std::__split_buffer<NSString * {__strong}>::~__split_buffer(&v61);
        }

        else
        {
          *var0 = v42;
          v45 = (var0 + 1);
          v10->_model_labels.var0 = v45;
        }

        v10->_model_labels.var0 = v45;
      }

      v12 = v52;
      v11 = v53;
      if (AXDeviceIsPad())
      {
        v50 = 1065353216;
      }

      else if (v10->_modelType)
      {
        v50 = 1056964608;
      }

      else
      {
        v50 = 1055766235;
      }

      LODWORD(v10->_input_aspect_ratio) = v50;
      *&v10->_keep_aspect_ratio = 0;
      *&v10->_input_height = vdup_n_s32(0x44600000u);
      v10->_screenshot_height = 896.0;
      v15 = v10;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r
{
  v122[1] = *MEMORY[0x1E69E9840];
  v103 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v102 = [MEMORY[0x1E695DF00] now];
  [(AXMindNetNetwork *)self threshold];
  if (v6 == 1.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "esp error");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  width = image->width;
  data = image->data;
  height = image->height;
  rowBytes = image->rowBytes;
  texture = 0;
  CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], width, height, 0x42475241u, data, rowBytes, 0, 0, 0, &texture);
  if (texture)
  {
    modelDescription = [(MLModel *)self->_mindNetModel modelDescription];
    inputDescriptionsByName = [modelDescription inputDescriptionsByName];
    allKeys = [inputDescriptionsByName allKeys];
    v99 = [allKeys objectAtIndexedSubscript:0];

    v14 = objc_alloc(MEMORY[0x1E695FE48]);
    v121 = v99;
    v15 = [MEMORY[0x1E695FE60] featureValueWithPixelBuffer:texture];
    v122[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:&v121 count:1];
    v117 = 0;
    v100 = [v14 initWithDictionary:v16 error:&v117];
    v17 = v117;

    mindNetModel = self->_mindNetModel;
    v116 = v17;
    v98 = [(MLModel *)mindNetModel predictionFromFeatures:v100 error:&v116];
    v101 = v116;

    if (v101)
    {
      v19 = AXMediaLogElementVision();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [AXMindNetNetwork processVImage:v101 inputIsBGR:v19];
      }

      if (texture)
      {
        CVPixelBufferRelease(texture);
      }

      v20 = v103;
    }

    else
    {
      v106 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = [v98 featureValueForName:@"decoded_1"];
      multiArrayValue = [v22 multiArrayValue];

      if (self->_modelType == 1)
      {
        [(AXMindNetNetwork *)self nmsThreshold];
        v24 = v23;
        filterThresholds = [(AXMindNetNetwork *)self filterThresholds];
        LODWORD(v26) = v24;
        v27 = [_TtC16AXMediaUtilities13AXBoundingBox postComputeClickabilityWithDecoded:multiArrayValue nmsThreshold:filterThresholds filterThresholds:v26];

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        obj = v27;
        v28 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
        if (v28)
        {
          v29 = *v113;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v113 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v112 + 1) + 8 * i);
              [v31 resultBox];
              if (CGRectGetWidth(v124) <= 0.9)
              {
                [v31 resultBox];
                if (CGRectGetHeight(v125) <= 0.9)
                {
                  v32 = [AXElementDetection alloc];
                  [v31 resultBox];
                  v104 = v33;
                  v35 = v34;
                  v37 = v36;
                  v39 = v38;
                  [v31 resultBox];
                  v41 = v40;
                  v43 = v42;
                  v45 = v44;
                  v47 = v46;
                  [v31 resultConfidence];
                  v49 = v48;
                  begin = self->_important_classes.__begin_;
                  end = self->_important_classes.__end_;
                  resultLabel = [v31 resultLabel];
                  resultLabelName = [v31 resultLabelName];
                  v54 = v49;
                  *&pixelBufferAttributes = v54;
                  pixelBufferAttributes = [(AXElementDetection *)v32 initWithBox:0 defaultBox:(end - begin) > 4 confidence:resultLabel scale:resultLabelName hasLabel:v104 label:v35 labelName:v37, v39, v41, v43, v45, v47, pixelBufferAttributes];

                  [v106 addObject:pixelBufferAttributes];
                }
              }
            }

            v28 = [obj countByEnumeratingWithState:&v112 objects:v120 count:16];
          }

          while (v28);
        }
      }

      else
      {
        [(AXMindNetNetwork *)self nmsThreshold];
        v57 = v56;
        filterThresholds2 = [(AXMindNetNetwork *)self filterThresholds];
        LODWORD(v59) = v57;
        v60 = [_TtC16AXMediaUtilities13AXBoundingBox postComputeWithDecoded:multiArrayValue nmsThreshold:filterThresholds2 filterThresholds:v59];

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v60;
        v61 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
        if (v61)
        {
          v62 = *v109;
          do
          {
            for (j = 0; j != v61; ++j)
            {
              if (*v109 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v64 = *(*(&v108 + 1) + 8 * j);
              v65 = [AXElementDetection alloc];
              [v64 resultBox];
              v107 = v66;
              v68 = v67;
              v70 = v69;
              v72 = v71;
              [v64 resultBox];
              v74 = v73;
              v76 = v75;
              v78 = v77;
              v80 = v79;
              [v64 resultConfidence];
              v82 = v81;
              v84 = self->_important_classes.__begin_;
              v83 = self->_important_classes.__end_;
              resultLabel2 = [v64 resultLabel];
              resultLabelName2 = [v64 resultLabelName];
              v87 = v82;
              *&pixelBufferAttributes = v87;
              pixelBufferAttributes2 = [(AXElementDetection *)v65 initWithBox:0 defaultBox:(v83 - v84) > 4 confidence:resultLabel2 scale:resultLabelName2 hasLabel:v107 label:v68 labelName:v70, v72, v74, v76, v78, v80, pixelBufferAttributes];

              [v106 addObject:pixelBufferAttributes2];
            }

            v61 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
          }

          while (v61);
        }
      }

      v89 = [MEMORY[0x1E695DF00] now];
      [v89 timeIntervalSinceDate:v102];
      v91 = v90;

      [v103 setValue:v106 forKey:@"boxes"];
      v92 = [MEMORY[0x1E696AD98] numberWithDouble:v91 * 1000.0];
      [v103 setValue:v92 forKey:@"timing"];

      if (texture)
      {
        CVPixelBufferRelease(texture);
      }

      v93 = v103;
    }
  }

  else
  {
    v21 = v103;
  }

  return v103;
}

- (id)resizeAndProcessVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r
{
  v80 = *MEMORY[0x1E69E9840];
  height = image->height;
  width = image->width;
  if (width)
  {
    v6 = height == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "Invalid input");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  rCopy = r;
  v10 = width;
  v11 = height;
  if (self->_can_rotate && v11 > v10)
  {
    LODWORD(backColor.data) = 0;
    if (MEMORY[0x1B2700DA0](&dest, v10, v11, 32, 0))
    {
      v67 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B27000E0](v67, "Intermediate buffer allocation failed");
      __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    vImageRotate90_ARGB8888(image, &dest, 1u, &backColor, 0);
    v10 = dest.width;
    v11 = dest.height;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = *&image->width;
    *&dest.data = *&image->data;
    *&dest.width = v13;
  }

  input_height = self->_input_height;
  input_aspect_ratio = self->_input_aspect_ratio;
  v16 = (input_height * input_aspect_ratio);
  v17 = input_height;
  v18 = v16;
  v19 = input_height;
  if (self->_keep_aspect_ratio)
  {
    if ((v10 / v11) >= input_aspect_ratio)
    {
      v19 = ((v11 / v10) * v16);
      v18 = (input_height * input_aspect_ratio);
    }

    else
    {
      v18 = ((v10 / v11) * v17);
      v19 = input_height;
    }
  }

  if (MEMORY[0x1B2700DA0](&backColor, v19, v18, 32, 0))
  {
    v64 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v64, "Intermediate buffer allocation failed");
    __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  vImageScale_ARGB8888(&dest, &backColor, 0, 0x20u);
  if (MEMORY[0x1B2700DA0](&v76, v17, v16, 32, 0))
  {
    v65 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v65, "Intermediate buffer allocation failed");
    __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *color = -16777216;
  if (vImageBufferFill_ARGB8888(&v76, color, 0))
  {
    v66 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v66, "esp error");
    __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (SLODWORD(backColor.height) >= 1)
  {
    v20 = 0;
    do
    {
      memcpy(v76.data + v76.rowBytes * v20, backColor.data + backColor.rowBytes * v20, 4 * backColor.width);
      ++v20;
    }

    while (v20 < SLODWORD(backColor.height));
  }

  if (v16 > 0x4000 || v17 > 0x4000)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v74 = v76;
    v21 = [(AXMindNetNetwork *)self processVImage:&v74 inputIsBGR:rCopy];
    v69 = v21;
    [v21 objectForKeyedSubscript:@"boxes"];
    selfCopy = self;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v22 = v71 = 0u;
    v23 = v22;
    v24 = [v22 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v24)
    {
      v25 = *v71;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v70 + 1) + 8 * i);
          [v27 box];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v76.height;
          v36 = v76.width;
          v39 = backColor.height;
          v38 = backColor.width;
          IsPad = AXDeviceIsPad();
          v41 = (v36 / v38);
          v42 = v29 * v41;
          v43 = 1.0 - (1.0 - v31) * v37 / v39;
          v44 = v33 * v41;
          v45 = v35 * (v37 / v39);
          if (!IsPad)
          {
            goto LABEL_30;
          }

          screenshot_width = selfCopy->_screenshot_width;
          screenshot_height = selfCopy->_screenshot_height;
          if (screenshot_width < screenshot_height)
          {
            v42 = (v42 + -0.5) * screenshot_height / screenshot_width + 0.5;
            v44 = v44 * (screenshot_height / screenshot_width);
LABEL_30:
            if (v12)
            {
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          v43 = (v43 + -0.5) * screenshot_width / screenshot_height + 0.5;
          v45 = v45 * (screenshot_width / screenshot_height);
          if (v12)
          {
LABEL_31:
            v48 = 1.0 - (v44 + v42);
            v49 = v44;
            goto LABEL_34;
          }

LABEL_33:
          v49 = v45;
          v45 = v44;
          v48 = v43;
          v43 = v42;
LABEL_34:
          [v27 setBox:{v43, v48, v45, v49}];
          [v27 defaultBox];
          v51 = (v76.width / backColor.width);
          v53 = v52 * v51;
          v55 = 1.0 - (1.0 - v54) * v76.height / backColor.height;
          v57 = v56 * v51;
          v58 = (v76.height / backColor.height);
          v59 = v50 * v58;
          if (v12)
          {
            v60 = 1.0 - (v53 + v57);
            v61 = v57;
          }

          else
          {
            v61 = v50 * v58;
            v59 = v57;
            v60 = v55;
            v55 = v53;
          }

          [v27 setDefaultBox:{v55, v60, v59, v61}];
          v21 = v69;
          v22 = v23;
        }

        v24 = [v23 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v24);
    }

    free(v76.data);
    v76.data = 0;
    free(backColor.data);
    backColor.data = 0;
    if (v12)
    {
      free(dest.data);
      dest.data = 0;
    }
  }

  return v21;
}

- (id)processCIImage:(id)image
{
  imageCopy = image;
  [imageCopy extent];
  v7 = v6;
  if (v7 == 0.0 || (v8 = v5, v8 == 0.0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "esp error");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!AXDeviceIsPad())
  {
    v29 = imageCopy;
    goto LABEL_23;
  }

  self->_screenshot_width = v7;
  self->_screenshot_height = v8;
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v10 = getUIGraphicsBeginImageContextSymbolLoc(void)::ptr;
  v44 = getUIGraphicsBeginImageContextSymbolLoc(void)::ptr;
  if (!getUIGraphicsBeginImageContextSymbolLoc(void)::ptr)
  {
    *&v38 = MEMORY[0x1E69E9820];
    *(&v38 + 1) = 3221225472;
    *&v39 = ___ZL39getUIGraphicsBeginImageContextSymbolLocv_block_invoke;
    *(&v39 + 1) = &unk_1E7A1D0A0;
    v40 = &v41;
    v11 = UIKitLibrary();
    v42[3] = dlsym(v11, "UIGraphicsBeginImageContext");
    getUIGraphicsBeginImageContextSymbolLoc(void)::ptr = *(v40[1] + 24);
    v10 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v10)
  {
    goto LABEL_28;
  }

  v12 = v9;
  v10(v12, v12);
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v13 = getUIGraphicsGetCurrentContextSymbolLoc(void)::ptr;
  v44 = getUIGraphicsGetCurrentContextSymbolLoc(void)::ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc(void)::ptr)
  {
    *&v38 = MEMORY[0x1E69E9820];
    *(&v38 + 1) = 3221225472;
    *&v39 = ___ZL39getUIGraphicsGetCurrentContextSymbolLocv_block_invoke;
    *(&v39 + 1) = &unk_1E7A1D0A0;
    v40 = &v41;
    v14 = UIKitLibrary();
    v42[3] = dlsym(v14, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc(void)::ptr = *(v40[1] + 24);
    v13 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v13)
  {
LABEL_28:
    dlerror();
    result = abort_report_np();
LABEL_33:
    __break(1u);
    return result;
  }

  v15 = v13();
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  CGContextSetFillColorWithColor(v15, GenericRGB);
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v12;
  v46.size.height = v12;
  CGContextFillRect(v15, v46);
  CGColorRelease(GenericRGB);
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = v12;
  v47.size.height = v12;
  v48 = CGRectInset(v47, (v12 - v7) * 0.5, (v12 - v8) * 0.5);
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2050000000;
  v21 = getUIImageClass(void)::softClass;
  v44 = getUIImageClass(void)::softClass;
  if (!getUIImageClass(void)::softClass)
  {
    *&v38 = MEMORY[0x1E69E9820];
    *(&v38 + 1) = 3221225472;
    *&v39 = ___ZL15getUIImageClassv_block_invoke;
    *(&v39 + 1) = &unk_1E7A1D0A0;
    v40 = &v41;
    ___ZL15getUIImageClassv_block_invoke(&v38);
    v21 = v42[3];
  }

  v22 = v21;
  _Block_object_dispose(&v41, 8);
  v23 = [v21 imageWithCIImage:imageCopy];
  [v23 drawInRect:0 blendMode:x alpha:{y, width, height, 1.0}];

  v24 = MEMORY[0x1E695F658];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v25 = getUIGraphicsGetImageFromCurrentImageContextSymbolLoc(void)::ptr;
  v44 = getUIGraphicsGetImageFromCurrentImageContextSymbolLoc(void)::ptr;
  if (!getUIGraphicsGetImageFromCurrentImageContextSymbolLoc(void)::ptr)
  {
    *&v38 = MEMORY[0x1E69E9820];
    *(&v38 + 1) = 3221225472;
    *&v39 = ___ZL53getUIGraphicsGetImageFromCurrentImageContextSymbolLocv_block_invoke;
    *(&v39 + 1) = &unk_1E7A1D0A0;
    v40 = &v41;
    v26 = UIKitLibrary();
    v27 = dlsym(v26, "UIGraphicsGetImageFromCurrentImageContext");
    *(v40[1] + 24) = v27;
    getUIGraphicsGetImageFromCurrentImageContextSymbolLoc(void)::ptr = *(v40[1] + 24);
    v25 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v25)
  {
    goto LABEL_30;
  }

  v28 = v25();
  v29 = [v24 imageWithCGImage:{objc_msgSend(v28, "CGImage")}];

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v30 = getUIGraphicsEndImageContextSymbolLoc(void)::ptr;
  v44 = getUIGraphicsEndImageContextSymbolLoc(void)::ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc(void)::ptr)
  {
    *&v38 = MEMORY[0x1E69E9820];
    *(&v38 + 1) = 3221225472;
    *&v39 = ___ZL37getUIGraphicsEndImageContextSymbolLocv_block_invoke;
    *(&v39 + 1) = &unk_1E7A1D0A0;
    v40 = &v41;
    v31 = UIKitLibrary();
    v32 = dlsym(v31, "UIGraphicsEndImageContext");
    *(v40[1] + 24) = v32;
    getUIGraphicsEndImageContextSymbolLoc(void)::ptr = *(v40[1] + 24);
    v30 = v42[3];
  }

  _Block_object_dispose(&v41, 8);
  if (!v30)
  {
LABEL_30:
    dlerror();
    result = abort_report_np();
    goto LABEL_33;
  }

  v30();
LABEL_23:
  v33 = [AXMindNetHelpers createVImageBuffer:v29];
  v34 = *&v33->width;
  v38 = *&v33->data;
  v39 = v34;
  v35 = [(AXMindNetNetwork *)self resizeAndProcessVImage:&v38 inputIsBGR:0];
  if (v33->data)
  {
    free(v33->data);
  }

  MEMORY[0x1B2700150](v33, 0x1080C40ABB4582ELL);

  return v35;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

- (void)processVImage:(uint64_t)a1 inputIsBGR:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE37B000, a2, OS_LOG_TYPE_ERROR, "MindNet Model Error %@", &v2, 0xCu);
}

@end