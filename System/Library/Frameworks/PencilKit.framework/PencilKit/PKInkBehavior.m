@interface PKInkBehavior
+ (double)inkRadiusOverride;
+ (id)arrayFromVector:(uint64_t)a1;
+ (id)loadInkV2WithURL:(id)a3;
+ (void)outputFunctionFromInkFunction:(void *)a3;
- (BOOL)isEraser;
- (CGAffineTransform)inkTransform;
- (NSArray)inkFunctions;
- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 blendAlpha:(double)a4 targetMultiple:(double)a5 baseAlpha:(double)a6 inkTransform:(CGAffineTransform *)a7 useUnclampedWeight:(BOOL)a8 smoothingDescriptor:(id)a9 featheringDescriptor:(id)a10 pencilFeatheringDescriptor:(id)a11 animationDescriptor:(id)a12 identifier:(id)a13 version:(unint64_t)a14 variant:(id)a15 uiWidths:(id)a16 defaultWidth:(double)a17 uiAzimuthControl:(BOOL)a18 showBrushIndicator:(BOOL)a19 supportsCombiningStrokes:(BOOL)a20 rulerOffsetScale:(double)a21 rulerOffsetConstant:(double)a22 weightFunction:(id)a23 inkFunctions:(id)a24;
- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 blendAlpha:(double)a4 targetMultiple:(double)a5 baseAlpha:(double)a6 inkTransform:(CGAffineTransform *)a7 useUnclampedWeight:(BOOL)a8 smoothingDescriptor:(id)a9 featheringDescriptor:(id)a10 pencilFeatheringDescriptor:(id)a11 animationDescriptor:(id)a12 identifier:(id)a13 version:(unint64_t)a14 variant:(id)a15 uiWidths:(id)a16 defaultWidth:(double)a17 uiAzimuthControl:(BOOL)a18 showBrushIndicator:(BOOL)a19 supportsCombiningStrokes:(BOOL)a20 rulerOffsetScale:(double)a21 rulerOffsetConstant:(double)a22 weightFunction:(void *)a23 radiusOutput:()vector<PKOutputFunction radius2Output:(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std::allocator<PKOutputFunction>> *)a31 allocator<PKOutputFunction>> *)a30 allocator<PKOutputFunction>> *)a29 allocator<PKOutputFunction>> *)a28 allocator<PKOutputFunction>> *)a27 allocator<PKOutputFunction>> *)a26 allocator<PKOutputFunction>> *)a25 allocator<PKOutputFunction>> *)a24 azimuthOutput:thresholdOutput:opacityOutput:edgeWidthOutput:aspectRatioOutput:brushOpacityOutput:;
- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 variant:(id)a4;
- (double)alphaForStroke:(double *)a1;
- (double)alphaForStrokeColor:(double *)a1;
- (double)brushOpacityForPoint:(uint64_t)a3 context:;
- (double)edgeWidthForPoint:(uint64_t)a3 context:;
- (double)mutableDurationToEndOfStroke;
- (double)solve:(uint64_t)a3 forPoint:(uint64_t)a4 context:(double)a5 weight:;
- (id).cxx_construct;
- (id)description;
- (id)inkFunctionsForProperty:(uint64_t)a1;
- (id)mutableCopy;
- (id)particleTextureName;
- (uint64_t)outputForPoint:(uint64_t)a3@<X2> context:(uint64_t)a4@<X8>;
- (uint64_t)outputVectorForProperty:(uint64_t)result;
- (void)_calculateUsesAzimuthOrAltitude;
- (void)addNewInkFunction:(id)a3;
- (void)functionsForProperty:(void *)a1;
- (void)inkFunctionDidChange:(id)a3;
- (void)outputFunctionFromInkFunction:(void *)a3;
- (void)radiusForPoint:(uint64_t)a3 context:;
- (void)removeInkFunction:(id)a3;
- (void)setInkTransform:(CGAffineTransform *)a3;
@end

@implementation PKInkBehavior

- (void)_calculateUsesAzimuthOrAltitude
{
  v14[3] = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v8, self->_radiusOutput.__begin_, self->_radiusOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_radiusOutput.__end_ - self->_radiusOutput.__begin_) >> 4));
  memset(v9, 0, sizeof(v9));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v9, self->_radius2Output.__begin_, self->_radius2Output.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_radius2Output.__end_ - self->_radius2Output.__begin_) >> 4));
  memset(v10, 0, sizeof(v10));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v10, self->_azimuthOutput.__begin_, self->_azimuthOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_azimuthOutput.__end_ - self->_azimuthOutput.__begin_) >> 4));
  memset(v11, 0, sizeof(v11));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v11, self->_opacityOutput.__begin_, self->_opacityOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_opacityOutput.__end_ - self->_opacityOutput.__begin_) >> 4));
  memset(v12, 0, sizeof(v12));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v12, self->_edgeWidthOutput.__begin_, self->_edgeWidthOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_edgeWidthOutput.__end_ - self->_edgeWidthOutput.__begin_) >> 4));
  memset(v13, 0, sizeof(v13));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v13, self->_aspectRatioOutput.__begin_, self->_aspectRatioOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_aspectRatioOutput.__end_ - self->_aspectRatioOutput.__begin_) >> 4));
  memset(v14, 0, 24);
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v14, self->_thresholdOutput.__begin_, self->_thresholdOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_thresholdOutput.__end_ - self->_thresholdOutput.__begin_) >> 4));
  for (i = 0; i != 21; i += 3)
  {
    v4 = v8[i];
    v5 = v8[i + 1];
    while (v4 != v5)
    {
      if ((*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        self->_usesAzimuthOrAltitude = 1;
      }

      v4 += 48;
    }
  }

  for (j = 18; j != -3; j -= 3)
  {
    v7 = &v8[j];
    std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v7);
  }
}

- (id).cxx_construct
{
  *(self + 35) = 0;
  *(self + 248) = 0u;
  *(self + 232) = 0u;
  *(self + 216) = 0u;
  *(self + 200) = 0u;
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 264) = 0u;
  return self;
}

+ (id)loadInkV2WithURL:(id)a3
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = specialized static PKInkBehavior.loadInkV2(url:)();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (CGAffineTransform)inkTransform
{
  v3 = *&self[8].tx;
  *&retstr->a = *&self[8].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].a;
  return self;
}

+ (void)outputFunctionFromInkFunction:(void *)a3
{
  v4 = a3;
  objc_opt_self();
  a1[5] = 0;
  *a1 = [v4 inputMask];
  a1[1] = [v4 deviceMask];
  a1[2] = 3;
  v5 = [v4 inkInput];
  a1[3] = v5;
  a1[4] = [v4 math];
  if (v5 != 5)
  {
    if ([v4 functionType] == 6)
    {
      operator new();
    }

    operator new();
  }
}

- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 blendAlpha:(double)a4 targetMultiple:(double)a5 baseAlpha:(double)a6 inkTransform:(CGAffineTransform *)a7 useUnclampedWeight:(BOOL)a8 smoothingDescriptor:(id)a9 featheringDescriptor:(id)a10 pencilFeatheringDescriptor:(id)a11 animationDescriptor:(id)a12 identifier:(id)a13 version:(unint64_t)a14 variant:(id)a15 uiWidths:(id)a16 defaultWidth:(double)a17 uiAzimuthControl:(BOOL)a18 showBrushIndicator:(BOOL)a19 supportsCombiningStrokes:(BOOL)a20 rulerOffsetScale:(double)a21 rulerOffsetConstant:(double)a22 weightFunction:(void *)a23 radiusOutput:()vector<PKOutputFunction radius2Output:(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std:()vector<PKOutputFunction :(std::allocator<PKOutputFunction>> *)a31 allocator<PKOutputFunction>> *)a30 allocator<PKOutputFunction>> *)a29 allocator<PKOutputFunction>> *)a28 allocator<PKOutputFunction>> *)a27 allocator<PKOutputFunction>> *)a26 allocator<PKOutputFunction>> *)a25 allocator<PKOutputFunction>> *)a24 azimuthOutput:thresholdOutput:opacityOutput:edgeWidthOutput:aspectRatioOutput:brushOpacityOutput:
{
  v63 = a3;
  v62 = a9;
  v61 = a10;
  v60 = a11;
  v59 = a12;
  v43 = a13;
  v64 = a15;
  v44 = a16;
  v65.receiver = self;
  v65.super_class = PKInkBehavior;
  v45 = [(PKInkBehavior *)&v65 init];
  v46 = v45;
  v47 = v45;
  if (v45)
  {
    objc_storeStrong(&v45->_renderingDescriptor, a3);
    objc_storeStrong(&v46[14].__cap_, a9);
    objc_storeStrong(&v46[15].__begin_, a10);
    objc_storeStrong(&v46[15].__end_, a11);
    objc_storeStrong(&v46[15].__cap_, a12);
    v47->_useUnclampedWeight = a8;
    v47->_blendAlpha = a4;
    v47->_targetMultiple = a5;
    v47->_baseAlpha = a6;
    v48 = *&a7->a;
    v49 = *&a7->tx;
    *&v47->_inkTransform.c = *&a7->c;
    *&v47->_inkTransform.tx = v49;
    *&v47->_inkTransform.a = v48;
    v50 = [v43 copy];
    identifier = v47->_identifier;
    v47->_identifier = v50;

    v52 = [v64 copy];
    variant = v47->_variant;
    v47->_variant = v52;

    v54 = [v44 copy];
    uiWidths = v47->_uiWidths;
    v47->_uiWidths = v54;

    v47->_uiAzimuthControl = a18;
    v47->_defaultWidth = a17;
    v47->_version = a14;
    v47->_showBrushIndicator = a19;
    v47->_supportsCombiningStrokes = a20;
    v47->_rulerOffsetScale = a21;
    v47->_rulerOffsetConstant = a22;
    ptr = v47->_weightFunction.__ptr_;
    v47->_weightFunction.__ptr_ = a23;
    if (ptr)
    {
      (*(*ptr + 40))(ptr);
    }

    if (&v46[4] != a24)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[4], a24->__begin_, a24->__end_, 0xAAAAAAAAAAAAAAABLL * ((a24->__end_ - a24->__begin_) >> 4));
    }

    if (&v46[5] != a25)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[5], a25->__begin_, a25->__end_, 0xAAAAAAAAAAAAAAABLL * ((a25->__end_ - a25->__begin_) >> 4));
    }

    if (&v46[7] != a26)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[7], a26->__begin_, a26->__end_, 0xAAAAAAAAAAAAAAABLL * ((a26->__end_ - a26->__begin_) >> 4));
    }

    if (&v46[6] != a27)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[6], a27->__begin_, a27->__end_, 0xAAAAAAAAAAAAAAABLL * ((a27->__end_ - a27->__begin_) >> 4));
    }

    if (&v46[8] != a28)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[8], a28->__begin_, a28->__end_, 0xAAAAAAAAAAAAAAABLL * ((a28->__end_ - a28->__begin_) >> 4));
    }

    if (&v46[9] != a29)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[9], a29->__begin_, a29->__end_, 0xAAAAAAAAAAAAAAABLL * ((a29->__end_ - a29->__begin_) >> 4));
    }

    if (&v46[10] != a30)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[10], a30->__begin_, a30->__end_, 0xAAAAAAAAAAAAAAABLL * ((a30->__end_ - a30->__begin_) >> 4));
    }

    if (&v46[11] != a31)
    {
      std::vector<PKOutputFunction>::__assign_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(&v46[11], a31->__begin_, a31->__end_, 0xAAAAAAAAAAAAAAABLL * ((a31->__end_ - a31->__begin_) >> 4));
    }

    [(PKInkBehavior *)v47 _calculateUsesAzimuthOrAltitude];
  }

  return v47;
}

- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 blendAlpha:(double)a4 targetMultiple:(double)a5 baseAlpha:(double)a6 inkTransform:(CGAffineTransform *)a7 useUnclampedWeight:(BOOL)a8 smoothingDescriptor:(id)a9 featheringDescriptor:(id)a10 pencilFeatheringDescriptor:(id)a11 animationDescriptor:(id)a12 identifier:(id)a13 version:(unint64_t)a14 variant:(id)a15 uiWidths:(id)a16 defaultWidth:(double)a17 uiAzimuthControl:(BOOL)a18 showBrushIndicator:(BOOL)a19 supportsCombiningStrokes:(BOOL)a20 rulerOffsetScale:(double)a21 rulerOffsetConstant:(double)a22 weightFunction:(id)a23 inkFunctions:(id)a24
{
  v74 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v54 = a9;
  v55 = a10;
  v56 = a11;
  v57 = a12;
  v59 = a13;
  v60 = a15;
  v61 = a16;
  v33 = a23;
  v62 = a24;
  v71.receiver = self;
  v71.super_class = PKInkBehavior;
  v34 = [(PKInkBehavior *)&v71 init];
  v35 = v34;
  if (!v34)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v34->_renderingDescriptor, a3);
  objc_storeStrong(&v35->_smoothingDescriptor, a9);
  objc_storeStrong(&v35->_featheringDescriptor, a10);
  objc_storeStrong(&v35->_pencilFeatheringDescriptor, a11);
  objc_storeStrong(&v35->_animationDescriptor, a12);
  v35->_useUnclampedWeight = a8;
  v35->_blendAlpha = a4;
  v35->_targetMultiple = a5;
  v35->_baseAlpha = a6;
  v36 = *&a7->a;
  v37 = *&a7->tx;
  *&v35->_inkTransform.c = *&a7->c;
  *&v35->_inkTransform.tx = v37;
  *&v35->_inkTransform.a = v36;
  v38 = [v59 copy];
  identifier = v35->_identifier;
  v35->_identifier = v38;

  v40 = [v60 copy];
  variant = v35->_variant;
  v35->_variant = v40;

  v42 = [v61 copy];
  uiWidths = v35->_uiWidths;
  v35->_uiWidths = v42;

  v35->_uiAzimuthControl = a18;
  v35->_defaultWidth = a17;
  v35->_version = a14;
  v35->_showBrushIndicator = a19;
  v35->_supportsCombiningStrokes = a20;
  v35->_rulerOffsetScale = a21;
  v35->_rulerOffsetConstant = a22;
  if (!v33)
  {
    ptr = v35->_weightFunction.__ptr_;
    v35->_weightFunction.__ptr_ = 0;
    if (!ptr)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [(PKInkBehavior *)&v67 outputFunctionFromInkFunction:v33];
  ptr = v35->_weightFunction.__ptr_;
  v35->_weightFunction.__ptr_ = v70;
  if (ptr)
  {
LABEL_4:
    (*(*ptr + 40))(ptr);
  }

LABEL_5:
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_radiusOutput.__begin_);
  v35->_radiusOutput.__begin_ = 0;
  v35->_radiusOutput.__end_ = 0;
  v35->_radiusOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_radius2Output.__begin_);
  v35->_radius2Output.__begin_ = 0;
  v35->_radius2Output.__end_ = 0;
  v35->_radius2Output.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_azimuthOutput.__begin_);
  v35->_azimuthOutput.__begin_ = 0;
  v35->_azimuthOutput.__end_ = 0;
  v35->_azimuthOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_thresholdOutput.__begin_);
  v35->_thresholdOutput.__begin_ = 0;
  v35->_thresholdOutput.__end_ = 0;
  v35->_thresholdOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_opacityOutput.__begin_);
  v35->_opacityOutput.__begin_ = 0;
  v35->_opacityOutput.__end_ = 0;
  v35->_opacityOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_edgeWidthOutput.__begin_);
  v35->_edgeWidthOutput.__begin_ = 0;
  v35->_edgeWidthOutput.__end_ = 0;
  v35->_edgeWidthOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_aspectRatioOutput.__begin_);
  v35->_aspectRatioOutput.__begin_ = 0;
  v35->_aspectRatioOutput.__end_ = 0;
  v35->_aspectRatioOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  std::vector<PKOutputFunction>::__vdeallocate(&v35->_brushOpacityOutput.__begin_);
  v35->_brushOpacityOutput.__begin_ = 0;
  v35->_brushOpacityOutput.__end_ = 0;
  v35->_brushOpacityOutput.__cap_ = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v72 = &v67;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v72);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v45 = v62;
  v46 = [v45 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v46)
  {
    v47 = *v64;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(v45);
        }

        [(PKInkBehavior *)v35 addNewInkFunction:*(*(&v63 + 1) + 8 * i)];
      }

      v46 = [v45 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v46);
  }

  [(PKInkBehavior *)v35 _calculateUsesAzimuthOrAltitude];
LABEL_13:

  return v35;
}

- (id)mutableCopy
{
  v25 = [PKInkBehavior alloc];
  v36 = [(PKInkBehavior *)self renderingDescriptor];
  v35 = [v36 mutableCopy];
  [(PKInkBehavior *)self blendAlpha];
  v4 = v3;
  [(PKInkBehavior *)self targetMultiple];
  v6 = v5;
  [(PKInkBehavior *)self baseAlpha];
  v8 = v7;
  [(PKInkBehavior *)self inkTransform];
  v23 = [(PKInkBehavior *)self useUnclampedWeight];
  v34 = [(PKInkBehavior *)self smoothingDescriptor];
  v33 = [v34 mutableCopy];
  v32 = [(PKInkBehavior *)self featheringDescriptor];
  v31 = [v32 mutableCopy];
  v30 = [(PKInkBehavior *)self pencilFeatheringDescriptor];
  v29 = [v30 mutableCopy];
  v28 = [(PKInkBehavior *)self animationDescriptor];
  v27 = [v28 mutableCopy];
  v26 = [(PKInkBehavior *)self identifier];
  v22 = [(PKInkBehavior *)self version];
  v24 = [(PKInkBehavior *)self variant];
  v9 = [(PKInkBehavior *)self uiWidths];
  [(PKInkBehavior *)self defaultWidth];
  v11 = v10;
  v12 = [(PKInkBehavior *)self uiAzimuthControl];
  showBrushIndicator = self->_showBrushIndicator;
  supportsCombiningStrokes = self->_supportsCombiningStrokes;
  rulerOffsetScale = self->_rulerOffsetScale;
  rulerOffsetConstant = self->_rulerOffsetConstant;
  ptr = self->_weightFunction.__ptr_;
  if (ptr)
  {
    v18 = (*(*ptr + 24))(ptr);
  }

  else
  {
    v18 = 0;
  }

  memset(v44, 0, sizeof(v44));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v44, self->_radiusOutput.__begin_, self->_radiusOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_radiusOutput.__end_ - self->_radiusOutput.__begin_) >> 4));
  memset(v43, 0, sizeof(v43));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v43, self->_radius2Output.__begin_, self->_radius2Output.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_radius2Output.__end_ - self->_radius2Output.__begin_) >> 4));
  memset(v42, 0, sizeof(v42));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v42, self->_azimuthOutput.__begin_, self->_azimuthOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_azimuthOutput.__end_ - self->_azimuthOutput.__begin_) >> 4));
  memset(v41, 0, sizeof(v41));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v41, self->_thresholdOutput.__begin_, self->_thresholdOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_thresholdOutput.__end_ - self->_thresholdOutput.__begin_) >> 4));
  memset(v40, 0, sizeof(v40));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v40, self->_opacityOutput.__begin_, self->_opacityOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_opacityOutput.__end_ - self->_opacityOutput.__begin_) >> 4));
  memset(v39, 0, sizeof(v39));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v39, self->_edgeWidthOutput.__begin_, self->_edgeWidthOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_edgeWidthOutput.__end_ - self->_edgeWidthOutput.__begin_) >> 4));
  memset(v38, 0, sizeof(v38));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v38, self->_aspectRatioOutput.__begin_, self->_aspectRatioOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_aspectRatioOutput.__end_ - self->_aspectRatioOutput.__begin_) >> 4));
  memset(v37, 0, sizeof(v37));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v37, self->_brushOpacityOutput.__begin_, self->_brushOpacityOutput.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_brushOpacityOutput.__end_ - self->_brushOpacityOutput.__begin_) >> 4));
  BYTE2(v21) = supportsCombiningStrokes;
  BYTE1(v21) = showBrushIndicator;
  LOBYTE(v21) = v12;
  v19 = [PKInkBehavior initWithRenderingDescriptor:v25 blendAlpha:"initWithRenderingDescriptor:blendAlpha:targetMultiple:baseAlpha:inkTransform:useUnclampedWeight:smoothingDescriptor:featheringDescriptor:pencilFeatheringDescriptor:animationDescriptor:identifier:version:variant:uiWidths:defaultWidth:uiAzimuthControl:showBrushIndicator:supportsCombiningStrokes:rulerOffsetScale:rulerOffsetConstant:weightFunction:radiusOutput:radius2Output:azimuthOutput:thresholdOutput:opacityOutput:edgeWidthOutput:aspectRatioOutput:brushOpacityOutput:" targetMultiple:v35 baseAlpha:v45 inkTransform:v23 useUnclampedWeight:v33 smoothingDescriptor:v31 featheringDescriptor:v29 pencilFeatheringDescriptor:v4 animationDescriptor:v6 identifier:v8 version:v11 variant:rulerOffsetScale uiWidths:rulerOffsetConstant defaultWidth:v27 uiAzimuthControl:v26 showBrushIndicator:v22 supportsCombiningStrokes:v24 rulerOffsetScale:v9 rulerOffsetConstant:v21 weightFunction:v18 radiusOutput:v44 radius2Output:v43 azimuthOutput:v42 thresholdOutput:v41 opacityOutput:v40 edgeWidthOutput:v39 aspectRatioOutput:v38 brushOpacityOutput:v37];
  v45[0] = v37;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v38;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v39;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v40;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v41;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v42;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v43;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);
  v45[0] = v44;
  std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](v45);

  return v19;
}

- (PKInkBehavior)initWithRenderingDescriptor:(id)a3 variant:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKInkBehavior;
  v9 = [(PKInkBehavior *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderingDescriptor, a3);
    v11 = [v8 copy];
    variant = v10->_variant;
    v10->_variant = v11;
  }

  return v10;
}

+ (double)inkRadiusOverride
{
  if (qword_1ED6A50B8 != -1)
  {
    dispatch_once(&qword_1ED6A50B8, &__block_literal_global_34);
  }

  return *&_MergedGlobals_134;
}

void __34__PKInkBehavior_inkRadiusOverride__block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"PKInkRadiusOverride"];
  _MergedGlobals_134 = v0;
}

- (void)setInkTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_inkTransform.c = *&a3->c;
  *&self->_inkTransform.tx = v4;
  *&self->_inkTransform.a = v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKInkBehavior *)self identifier];
  v7 = [(PKInkBehavior *)self version];
  v8 = [(PKInkBehavior *)self variant];
  v9 = [v3 stringWithFormat:@"<%@ %p %@ %lu %@>", v5, self, v6, v7, v8];

  return v9;
}

- (NSArray)inkFunctions
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (!self->_cachedRadiusFunctions)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v6 = [v4 arrayWithArray:v5];
    cachedRadiusFunctions = self->_cachedRadiusFunctions;
    self->_cachedRadiusFunctions = v6;
  }

  if (!self->_cachedRadius2Functions)
  {
    v8 = MEMORY[0x1E695DF70];
    v9 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v10 = [v8 arrayWithArray:v9];
    cachedRadius2Functions = self->_cachedRadius2Functions;
    self->_cachedRadius2Functions = v10;
  }

  if (!self->_cachedThresholdFunctions)
  {
    v12 = MEMORY[0x1E695DF70];
    v13 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v14 = [v12 arrayWithArray:v13];
    cachedThresholdFunctions = self->_cachedThresholdFunctions;
    self->_cachedThresholdFunctions = v14;
  }

  if (!self->_cachedAzimuthFunctions)
  {
    v16 = MEMORY[0x1E695DF70];
    v17 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v18 = [v16 arrayWithArray:v17];
    cachedAzimuthFunctions = self->_cachedAzimuthFunctions;
    self->_cachedAzimuthFunctions = v18;
  }

  if (!self->_cachedOpacityFunctions)
  {
    v20 = MEMORY[0x1E695DF70];
    v21 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v22 = [v20 arrayWithArray:v21];
    cachedOpacityFunctions = self->_cachedOpacityFunctions;
    self->_cachedOpacityFunctions = v22;
  }

  if (!self->_cachedEdgeWidthFunctions)
  {
    v24 = MEMORY[0x1E695DF70];
    v25 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v26 = [v24 arrayWithArray:v25];
    cachedEdgeWidthFunctions = self->_cachedEdgeWidthFunctions;
    self->_cachedEdgeWidthFunctions = v26;
  }

  if (!self->_cachedAspectRatioFunctions)
  {
    v28 = MEMORY[0x1E695DF70];
    v29 = [(PKInkBehavior *)self inkFunctionsForProperty:?];
    v30 = [v28 arrayWithArray:v29];
    cachedAspectRatioFunctions = self->_cachedAspectRatioFunctions;
    self->_cachedAspectRatioFunctions = v30;
  }

  [v3 addObjectsFromArray:self->_cachedRadiusFunctions];
  [v3 addObjectsFromArray:self->_cachedRadius2Functions];
  [v3 addObjectsFromArray:self->_cachedAzimuthFunctions];
  [v3 addObjectsFromArray:self->_cachedOpacityFunctions];
  [v3 addObjectsFromArray:self->_cachedEdgeWidthFunctions];
  [v3 addObjectsFromArray:self->_cachedAspectRatioFunctions];

  return v3;
}

- (id)inkFunctionsForProperty:(uint64_t)a1
{
  v64[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v40 = [MEMORY[0x1E695DF70] array];
    v3 = [(PKInkBehavior *)a1 outputVectorForProperty:a2];
    if (v3[1] != *v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v7 = 0x1E695D000uLL;
      v39 = v3;
      do
      {
        v44 = v6;
        objc_opt_self();
        v8 = *v4;
        v9 = [*(v7 + 3952) array];
        v10 = [*(v7 + 3952) array];
        v11 = [*(v7 + 3952) array];
        v12 = [*(v7 + 3952) array];
        v13 = [*(v7 + 3952) array];
        v14 = v8 + v5;
        v43 = v8;
        if ((*(**(v8 + v5 + 40) + 16))(*(v8 + v5 + 40)) == 3)
        {
          v45 = v13;
          v15 = *(v14 + 40);
          v60 = 0;
          v61 = 0;
          v59 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v59, v15[7], v15[8], (v15[8] - v15[7]) >> 3);
          v42 = [PKInkBehavior arrayFromVector:?];

          if (v59)
          {
            v60 = v59;
            operator delete(v59);
          }

          v57 = 0;
          v58 = 0;
          __p = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, v15[10], v15[11], (v15[11] - v15[10]) >> 3);
          v16 = [PKInkBehavior arrayFromVector:?];

          if (__p)
          {
            v57 = __p;
            operator delete(__p);
          }

          v54 = 0;
          v55 = 0;
          v53 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v53, v15[1], v15[2], (v15[2] - v15[1]) >> 3);
          v17 = [PKInkBehavior arrayFromVector:?];

          if (v53)
          {
            v54 = v53;
            operator delete(v53);
          }

          v51 = 0;
          v52 = 0;
          v50 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v50, v15[4], v15[5], (v15[5] - v15[4]) >> 3);
          v18 = [PKInkBehavior arrayFromVector:?];

          if (v50)
          {
            v51 = v50;
            operator delete(v50);
          }

          v48 = 0;
          v49 = 0;
          v47 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v47, v15[13], v15[14], (v15[14] - v15[13]) >> 3);
          v13 = [PKInkBehavior arrayFromVector:?];

          if (v47)
          {
            v48 = v47;
            operator delete(v47);
          }

          v11 = v17;
          v12 = v18;
          v10 = v16;
          v9 = v42;
          v8 = v43;
        }

        if ((*(**(v14 + 40) + 16))(*(v14 + 40)) == 1)
        {
          v46 = v13;
          v19 = *(v14 + 40);
          [PKInkProperties rangeForInput:*(v8 + v5 + 24)];
          v21 = v20;
          v22 = MEMORY[0x1E695DF70];
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          v64[0] = v23;
          v24 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
          v64[1] = v24;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
          v26 = [v22 arrayWithArray:v25];

          v9 = v26;
          v27 = MEMORY[0x1E695DF70];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:*(v19 + 64)];
          v63[0] = v28;
          v29 = [MEMORY[0x1E696AD98] numberWithDouble:*(v19 + 64)];
          v63[1] = v29;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
          v31 = [v27 arrayWithArray:v30];

          v32 = MEMORY[0x1E695DF70];
          v33 = [MEMORY[0x1E696AD98] numberWithDouble:*(v19 + 72)];
          v62[0] = v33;
          v34 = [MEMORY[0x1E696AD98] numberWithDouble:*(v19 + 72)];
          v62[1] = v34;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
          v36 = [v32 arrayWithArray:v35];

          v13 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F47C1A00];

          v10 = v9;
          v8 = v43;
        }

        else
        {
          v31 = v11;
          v36 = v12;
        }

        v37 = [[PKInkFunction alloc] initWithProperty:a2 input:*(v8 + v5 + 24) math:*(v8 + v5 + 32) inputMask:*(v8 + v5) deviceMask:*(v8 + v5 + 8) inputPoints:v9 maxInputPoints:v10 minOutputPoints:v31 maxOutputPoints:v36 outputPoints:v31 controlPoints:0 functionType:0];
        [(PKInkFunction *)v37 setControlPoints:v13];

        [v40 addObject:v37];
        v4 = v39;
        v5 += 48;
        v7 = 0x1E695D000;
        v6 = v44 + 1;
      }

      while (v44 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v39[1] - *v39) >> 4));
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (uint64_t)outputVectorForProperty:(uint64_t)result
{
  if (result)
  {
    v2 = result + 120;
    v3 = result + 144;
    if (a2 != 6)
    {
      v3 = 0;
    }

    if (a2 != 5)
    {
      v2 = v3;
    }

    v4 = result + 216;
    v5 = result + 240;
    if (a2 != 4)
    {
      v5 = 0;
    }

    if (a2 != 3)
    {
      v4 = v5;
    }

    if (a2 <= 4)
    {
      v2 = v4;
    }

    v6 = result + 96;
    v7 = result + 168;
    v8 = result + 192;
    if (a2 != 2)
    {
      v8 = 0;
    }

    if (a2 != 1)
    {
      v7 = v8;
    }

    if (a2)
    {
      v6 = v7;
    }

    if (a2 <= 2)
    {
      return v6;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

+ (id)arrayFromVector:(uint64_t)a1
{
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(v4 + 8 * v5)];
      [v3 addObject:v6];

      ++v5;
      v4 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 3);
  }

  return v3;
}

- (void)functionsForProperty:(void *)a1
{
  if (a1)
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          v3 = a1[4];
          goto LABEL_18;
        case 1:
          v3 = a1[7];
          goto LABEL_18;
        case 2:
          v3 = a1[8];
LABEL_18:
          a1 = v3;
          goto LABEL_19;
      }
    }

    else
    {
      if (a2 <= 4)
      {
        if (a2 == 3)
        {
          v3 = a1[9];
        }

        else
        {
          v3 = a1[10];
        }

        goto LABEL_18;
      }

      if (a2 == 5)
      {
        v3 = a1[5];
        goto LABEL_18;
      }

      if (a2 == 6)
      {
        v3 = a1[6];
        goto LABEL_18;
      }
    }

    a1 = [MEMORY[0x1E695DF70] array];
LABEL_19:
    v2 = vars8;
  }

  return a1;
}

- (void)inkFunctionDidChange:(id)a3
{
  v7 = a3;
  v4 = -[PKInkBehavior functionsForProperty:](self, [v7 inkProperty]);
  v5 = -[PKInkBehavior outputVectorForProperty:](self, [v7 inkProperty]);
  v6 = [v4 indexOfObject:v7];
  [(PKInkBehavior *)v8 outputFunctionFromInkFunction:v7];
  PKOutputFunction::operator=(*v5 + 48 * v6, v8);
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }
}

- (void)outputFunctionFromInkFunction:(void *)a3
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if ([v5 inkInput] == 2 || objc_msgSend(v6, "inkInput") == 3)
    {
      *(a2 + 8) = 1;
    }

    [(PKInkBehavior *)a1 outputFunctionFromInkFunction:v6];
  }

  else
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

- (void)removeInkFunction:(id)a3
{
  v4 = a3;
  v5 = -[PKInkBehavior functionsForProperty:](self, [v4 inkProperty]);
  v6 = -[PKInkBehavior outputVectorForProperty:](self, [v4 inkProperty]);
  v7 = [v5 indexOfObject:v4];
  [v5 removeObjectAtIndex:v7];
  v8 = v6[1];
  v9 = *v6 + 48 * v7;
  if (v9 + 48 != v8)
  {
    do
    {
      PKOutputFunction::PKOutputFunction(v14, (v9 + 48));
      PKOutputFunction::operator=(v9, v14);
      v10 = v15;
      v15 = 0;
      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      v11 = v9 + 48;
      v12 = v9 + 96;
      v9 += 48;
    }

    while (v12 != v8);
    v8 = v6[1];
    v9 = v11;
  }

  while (v8 != v9)
  {
    v13 = *(v8 - 8);
    *(v8 - 8) = 0;
    if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    v8 -= 48;
  }

  v6[1] = v9;
}

- (void)addNewInkFunction:(id)a3
{
  v4 = a3;
  [(PKInkBehavior *)v10 outputFunctionFromInkFunction:v4];
  v5 = -[PKInkBehavior functionsForProperty:](self, [v4 inkProperty]);
  v6 = -[PKInkBehavior outputVectorForProperty:](self, [v4 inkProperty]);
  [v5 addObject:v4];
  v7 = *(v6 + 8);
  if (v7 >= *(v6 + 16))
  {
    v8 = std::vector<PKOutputFunction>::__emplace_back_slow_path<PKOutputFunction>(v6, v10);
  }

  else
  {
    PKOutputFunction::PKOutputFunction(*(v6 + 8), v10);
    v8 = v7 + 48;
    *(v6 + 8) = v7 + 48;
  }

  *(v6 + 8) = v8;

  v9 = v11;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 40))(v9);
  }
}

- (double)brushOpacityForPoint:(uint64_t)a3 context:
{
  v3 = 0.0;
  if (a1 && *(a1 + 272) != *(a1 + 264))
  {
    v6 = [*(a3 + 160) ink];
    [v6 weight];
    v3 = [(PKInkBehavior *)a1 solve:&v9 forPoint:a3 context:v7 weight:?];
  }

  return v3;
}

- (double)solve:(uint64_t)a3 forPoint:(uint64_t)a4 context:(double)a5 weight:
{
  if (!a1)
  {
    return 0.0;
  }

  v11 = *(a4 + 128);
  v10 = *(a4 + 136);
  v12 = *(a4 + 144);
  v59 = *(a4 + 120);
  if (v59 == 1)
  {
    v13 = [*(a4 + 160) ink];
    if ([v13 _isEraserInk])
    {
      v14 = *(a4 + 168);

      if ((v14 & 2) != 0)
      {
        v15 = 1;
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {

      v15 = 1;
    }
  }

  else if (*(a3 + 16) >= 0.0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 4;
  }

  if (*(a4 + 96))
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v17 userInterfaceIdiom])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = *a2;
  v20 = a2->n128_u64[1];
  v21 = a2->n128_u64[0];
  if (v20 != a2->n128_u64[0])
  {
    v22 = v21[4];
    if (v22 == 2)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = 1.0;
    }

    if (v22 == 4)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v23;
    }

    while (1)
    {
      v25 = *v21;
      if ((*v21 & v15) == 0 || (v21[2] & v16) == 0 || (v21[1] & v18) == 0 || (v25 & 8) != 0 && (*(a4 + 168) & 4) != 0 || (v25 & 0x10) != 0 && (*(a4 + 168) & 2) != 0)
      {
        goto LABEL_82;
      }

      v26 = v21[3];
      if (v26 <= 6)
      {
        break;
      }

      if (v26 <= 8)
      {
        if (v26 != 7)
        {
          v27 = v21[5];
          v19.n128_f64[0] = *(a4 + 104) - *(a3 + 64);
          goto LABEL_65;
        }

        v51 = v21[5];
        v52 = *(a3 + 64);
        [*(a4 + 160) timestamp];
        v54.n128_f64[0] = v52 - v53;
        (**v51)(v51, v54, a5);
        goto LABEL_66;
      }

      switch(v26)
      {
        case 9:
          v19.n128_f64[0] = (*(a4 + 112) - *(a3 + 96)) / *(a4 + 128);
          goto LABEL_64;
        case 10:
          v56 = v21[5];
          v57 = [*(a4 + 160) ink];
          [v57 _azimuth];
          v50 = (**v56)(v56);

          break;
        case 11:
          v28 = v21[5];
          v29 = v28[7];
          v30 = *v29;
          v31 = v29[1];
          v32 = v28[1];
          v33 = *v32;
          v34 = v28[4];
          v35 = *v34;
          v36 = *(a3 + 16);
          v37 = v31 - v30;
          v38 = v12 > v30 && v36 < v12;
          v39 = fmax(fmin((v36 - v30) / v37, 1.0), 0.0);
          v40 = v39 * (v39 * (v39 * -2.0)) + v39 * 3.0 * v39;
          v41 = v32[1] - v33;
          v42 = v33 + v40 * v41;
          v43 = fmax(fmin((v12 - v30) / v37, 1.0), 0.0);
          v44 = v33 + v43 * v41;
          v45 = fmax(fmin(v36 / v12, 1.0), 0.0);
          v46 = v45 * (v45 * (v45 * -2.0)) + v45 * 3.0 * v45;
          v47 = v33 + v46 * (v44 - v33);
          v48 = v35 + v43 * (v34[1] - v35);
          if (v38)
          {
            v49 = v46;
          }

          else
          {
            v48 = v34[1];
            v49 = v40;
          }

          if (!v38)
          {
            v47 = v42;
          }

          v50 = v47 + (v35 + v49 * (v48 - v35) - v47) * ((a5 + 1.0) * 0.5);
          break;
        default:
          goto LABEL_85;
      }

LABEL_67:
      v55 = v21[4];
      if (v55 <= 2)
      {
        if (v55 == 1)
        {
          v24 = v24 + v50;
          goto LABEL_82;
        }

        if (v55 == 2)
        {
          if (v24 < v50)
          {
            v24 = v50;
          }

          goto LABEL_82;
        }

LABEL_76:
        v24 = v24 * v50;
        goto LABEL_82;
      }

      if (v55 == 3)
      {
        if (v24 >= v50)
        {
          v24 = v50;
        }

        goto LABEL_82;
      }

      if (v55 != 4)
      {
        goto LABEL_76;
      }

      v24 = 1.0 - v50 * (1.0 - v24);
LABEL_82:
      v21 += 6;
      if (v21 == v20)
      {
        return v24;
      }
    }

    if (v26 <= 3)
    {
      if (v26 == 1)
      {
        v27 = v21[5];
        v19.n128_u64[0] = *(a3 + 40);
      }

      else
      {
        if (v26 != 2)
        {
LABEL_85:
          v19.n128_u64[0] = 0;
          v19.n128_f64[0] = (**v21[5])(v19, a5);
          goto LABEL_66;
        }

        if ([a1 useUnclampedWeight] && (*(a4 + 168) & 2) == 0)
        {
          goto LABEL_82;
        }

        v27 = v21[5];
        v19.n128_u64[0] = *(a3 + 32);
      }
    }

    else if (v26 == 4)
    {
      if ([a1 useUnclampedWeight] && (*(a4 + 168) & 4) == 0)
      {
        goto LABEL_82;
      }

      v19.n128_u64[0] = *(a3 + 16);
      if (!v59)
      {
        v19.n128_f64[0] = v19.n128_f64[0] / v10;
      }

LABEL_64:
      v27 = v21[5];
    }

    else
    {
      if (v26 == 5)
      {
        v24 = v24 * v11 + 2.0;
        goto LABEL_82;
      }

      v27 = v21[5];
      v19.n128_u64[0] = *(a3 + 48);
    }

LABEL_65:
    v19.n128_f64[0] = (**v27)(v19, a5);
LABEL_66:
    v50 = v19.n128_f64[0];
    goto LABEL_67;
  }

  return 1.0;
}

- (double)alphaForStroke:(double *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 ink];
    v6 = [v5 sdrColor];
    v7 = -[PKInkBehavior alphaForStrokeColor:](a1, [v6 CGColor]);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)alphaForStrokeColor:(double *)a1
{
  if (a1)
  {
    if (a2)
    {
      v4 = [a1 renderingDescriptor];
      if ([v4 type] == 1)
      {
        v5 = [a1 version];

        if (v5 <= 2)
        {
          return CGColorGetAlpha(a2) * a1[43];
        }
      }

      else
      {
      }

      v6 = [a1 renderingDescriptor];
      v7 = [v6 blendMode];

      if (!v7)
      {
        return CGColorGetAlpha(a2) * a1[43];
      }
    }

    return a1[43];
  }

  return 0.0;
}

- (void)radiusForPoint:(uint64_t)a3 context:
{
  if (a1)
  {
    v6 = [*(a3 + 160) ink];
    [v6 weight];
    v8 = v7;

    v9 = a1[5].n128_u64[1];
    if (v9)
    {
      v8 = (**v9)(v9, v8, v8);
    }

    v10 = [(__n128 *)a1 particleDescriptor];
    v11 = v10;
    if (v10)
    {
      [v10 particleSize];
    }

    if (a1[6].n128_u64[1] != a1[6].n128_u64[0])
    {
      v12 = a2[7];
      v26 = a2[6];
      v27 = v12;
      v28 = *(a2 + 16);
      v13 = a2[3];
      v22 = a2[2];
      v23 = v13;
      v14 = a2[5];
      v24 = a2[4];
      v25 = v14;
      v15 = a2[1];
      v20 = *a2;
      v21 = v15;
      [(PKInkBehavior *)a1 solve:&v20 forPoint:a3 context:v8 weight:?];
    }

    if (a1[15].n128_u64[1] != a1[15].n128_u64[0])
    {
      v16 = a2[7];
      v26 = a2[6];
      v27 = v16;
      v28 = *(a2 + 16);
      v17 = a2[3];
      v22 = a2[2];
      v23 = v17;
      v18 = a2[5];
      v24 = a2[4];
      v25 = v18;
      v19 = a2[1];
      v20 = *a2;
      v21 = v19;
      [(PKInkBehavior *)a1 solve:&v20 forPoint:a3 context:v8 weight:?];
    }
  }
}

- (double)edgeWidthForPoint:(uint64_t)a3 context:
{
  v3 = 0.0;
  if (a1)
  {
    v7 = [*(a3 + 160) ink];
    [v7 weight];
    v9 = v8;

    v10 = *(a1 + 88);
    if (v10)
    {
      v9 = (**v10)(v10, v9, v9);
    }

    if (*(a1 + 224) != *(a1 + 216))
    {
      v11 = *(a2 + 112);
      v16[6] = *(a2 + 96);
      v16[7] = v11;
      v17 = *(a2 + 128);
      v12 = *(a2 + 48);
      v16[2] = *(a2 + 32);
      v16[3] = v12;
      v13 = *(a2 + 80);
      v16[4] = *(a2 + 64);
      v16[5] = v13;
      v14 = *(a2 + 16);
      v16[0] = *a2;
      v16[1] = v14;
      return [(PKInkBehavior *)a1 solve:v16 forPoint:a3 context:v9 weight:?];
    }
  }

  return v3;
}

- (uint64_t)outputForPoint:(uint64_t)a3@<X2> context:(uint64_t)a4@<X8>
{
  if (result)
  {
    v7 = result;
    *a4 = *(a2 + 8);
    *(a4 + 8) = *a2;
    *(a4 + 48) = *(a2 + 2);
    v8 = *(a2 + 24);
    *(a4 + 56) = v8;
    *(a4 + 88) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(a4 + 72) = _Q0;
    *(a4 + 40) = 0;
    v14 = (a4 + 40);
    *(a4 + 24) = _Q0;
    v79 = *(a3 + 96);
    if (v79 == 1 && *(a3 + 120) == 1)
    {
      *&v8 = *(a3 + 56);
      *(a2 + 3) = v8;
      v15 = *(a3 + 64);
      *(a2 + 4) = v15;
      *(a4 + 56) = v8;
      *(a4 + 64) = v15;
      v78 = 1;
    }

    else
    {
      v78 = 0;
    }

    v80 = *&v8;
    v16 = [*(a3 + 160) ink];
    [v16 weight];
    v18 = v17;

    v19 = *(v7 + 88);
    if (v19)
    {
      v18 = (**v19)(v19, v18, v18);
    }

    if ([v7 useUnclampedWeight])
    {
      v20 = [*(v7 + 384) lastObject];
      [v20 floatValue];
      v22 = v18 / v21 * 2.0 + -1.0;

      v23 = a2[7];
      v87 = a2[6];
      v88 = v23;
      v89 = *(a2 + 16);
      v24 = a2[3];
      v83 = a2[2];
      v84 = v24;
      v25 = a2[5];
      v85 = a2[4];
      v86 = v25;
      v26 = a2[1];
      v81 = *a2;
      v82 = v26;
      v27 = v18 * [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v22 weight:?];
      *(a4 + 24) = v27;
      if (*(v7 + 128) != *(v7 + 120))
      {
        v28 = a2[7];
        v87 = a2[6];
        v88 = v28;
        v89 = *(a2 + 16);
        v29 = a2[3];
        v83 = a2[2];
        v84 = v29;
        v30 = a2[5];
        v85 = a2[4];
        v86 = v30;
        v31 = a2[1];
        v81 = *a2;
        v82 = v31;
        *(a4 + 80) = v18 * [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v22 weight:?];
      }

      v32 = [v7 renderingDescriptor];
      v33 = [v32 type];

      if (!v33)
      {
        v27 = v27 + 2.0;
        *(a4 + 24) = v27;
      }

      v34 = [v7 uiWidths];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 doubleValue];
      v37 = v36;
      v38 = [v7 uiWidths];
      v39 = [v38 objectAtIndexedSubscript:4];
      [v39 doubleValue];
      v41 = v40;
      v42 = [v7 uiWidths];
      v43 = [v42 objectAtIndexedSubscript:0];
      [v43 doubleValue];
      v18 = fmax((v18 - v37 + v18 - v37) / (v41 - v44) + -1.0, 1.0);

      v14 = v77;
    }

    else
    {
      v45 = a2[7];
      v87 = a2[6];
      v88 = v45;
      v89 = *(a2 + 16);
      v46 = a2[3];
      v83 = a2[2];
      v84 = v46;
      v47 = a2[5];
      v85 = a2[4];
      v86 = v47;
      v48 = a2[1];
      v81 = *a2;
      v82 = v48;
      v27 = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
      *(a4 + 24) = v27;
      if (*(v7 + 128) != *(v7 + 120))
      {
        v49 = a2[7];
        v87 = a2[6];
        v88 = v49;
        v89 = *(a2 + 16);
        v50 = a2[3];
        v83 = a2[2];
        v84 = v50;
        v51 = a2[5];
        v85 = a2[4];
        v86 = v51;
        v52 = a2[1];
        v81 = *a2;
        v82 = v52;
        *(a4 + 80) = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
      }
    }

    if (*(v7 + 176) != *(v7 + 168))
    {
      v53 = a2[7];
      v87 = a2[6];
      v88 = v53;
      v89 = *(a2 + 16);
      v54 = a2[3];
      v83 = a2[2];
      v84 = v54;
      v55 = a2[5];
      v85 = a2[4];
      v86 = v55;
      v56 = a2[1];
      v81 = *a2;
      v82 = v56;
      v80 = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
      *(a4 + 56) = v80;
    }

    if (*(v7 + 152) != *(v7 + 144))
    {
      v57 = a2[7];
      v87 = a2[6];
      v88 = v57;
      v89 = *(a2 + 16);
      v58 = a2[3];
      v83 = a2[2];
      v84 = v58;
      v59 = a2[5];
      v85 = a2[4];
      v86 = v59;
      v60 = a2[1];
      v81 = *a2;
      v82 = v60;
      *(a4 + 88) = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
    }

    if (*(v7 + 224) != *(v7 + 216))
    {
      v61 = a2[7];
      v87 = a2[6];
      v88 = v61;
      v89 = *(a2 + 16);
      v62 = a2[3];
      v83 = a2[2];
      v84 = v62;
      v63 = a2[5];
      v85 = a2[4];
      v86 = v63;
      v64 = a2[1];
      v81 = *a2;
      v82 = v64;
      *v14 = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
    }

    if (*(v7 + 248) != *(v7 + 240))
    {
      v65 = a2[7];
      v87 = a2[6];
      v88 = v65;
      v89 = *(a2 + 16);
      v66 = a2[3];
      v83 = a2[2];
      v84 = v66;
      v67 = a2[5];
      v85 = a2[4];
      v86 = v67;
      v68 = a2[1];
      v81 = *a2;
      v82 = v68;
      *(a4 + 32) = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
    }

    if (*(v7 + 200) != *(v7 + 192))
    {
      v69 = a2[7];
      v87 = a2[6];
      v88 = v69;
      v89 = *(a2 + 16);
      v70 = a2[3];
      v83 = a2[2];
      v84 = v70;
      v71 = a2[5];
      v85 = a2[4];
      v86 = v71;
      v72 = a2[1];
      v81 = *a2;
      v82 = v72;
      *(a4 + 72) = [(PKInkBehavior *)v7 solve:&v81 forPoint:a3 context:v18 weight:?];
    }

    v73 = [v7 particleDescriptor];
    v74 = [v73 initialRandomRotation];

    if (v74)
    {
      *(a4 + 56) = v80 + [*(a3 + 160) randomSeed] * 6.28318531 / 4294967300.0;
    }

    v75 = (a3 + 40);
    if (!v79)
    {
      v75 = v14;
    }

    *v14 = *v75;
    if (v79)
    {
      v27 = fmax(*(a3 + 24), 2.0);
    }

    *(a4 + 24) = v27;
    if (v78)
    {
      *(a4 + 32) = *(a3 + 32);
    }

    result = os_variant_has_internal_diagnostics();
    if (result)
    {
      result = [objc_opt_class() inkRadiusOverride];
      if (v76 > 0.0)
      {
        *(a4 + 24) = v76;
      }
    }
  }

  else
  {
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

- (BOOL)isEraser
{
  v2 = [(PKInkBehavior *)self renderingDescriptor];
  v3 = [v2 blendMode] == 2;

  return v3;
}

- (double)mutableDurationToEndOfStroke
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  memset(v10, 0, sizeof(v10));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v10, a1[12], a1[13], 0xAAAAAAAAAAAAAAABLL * ((a1[13] - a1[12]) >> 4));
  memset(v11, 0, sizeof(v11));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v11, a1[15], a1[16], 0xAAAAAAAAAAAAAAABLL * ((a1[16] - a1[15]) >> 4));
  memset(v12, 0, sizeof(v12));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v12, a1[24], a1[25], 0xAAAAAAAAAAAAAAABLL * ((a1[25] - a1[24]) >> 4));
  memset(v13, 0, sizeof(v13));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v13, a1[27], a1[28], 0xAAAAAAAAAAAAAAABLL * ((a1[28] - a1[27]) >> 4));
  memset(v14, 0, sizeof(v14));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v14, a1[30], a1[31], 0xAAAAAAAAAAAAAAABLL * ((a1[31] - a1[30]) >> 4));
  memset(v15, 0, sizeof(v15));
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v15, a1[21], a1[22], 0xAAAAAAAAAAAAAAABLL * ((a1[22] - a1[21]) >> 4));
  memset(v16, 0, 24);
  std::vector<PKOutputFunction>::__init_with_size[abi:ne200100]<PKOutputFunction*,PKOutputFunction*>(v16, a1[18], a1[19], 0xAAAAAAAAAAAAAAABLL * ((a1[19] - a1[18]) >> 4));
  v2 = 0;
  v3 = 0.0;
  do
  {
    v4 = v10[v2];
    v5 = v10[v2 + 1];
    while (v4 != v5)
    {
      if (*(v4 + 24) == 8)
      {
        v6 = (*(**(v4 + 40) + 8))(*(v4 + 40));
        if (v6 >= v3)
        {
          v3 = v6;
        }
      }

      v4 += 48;
    }

    v2 += 3;
  }

  while (v2 != 21);
  for (i = 18; i != -3; i -= 3)
  {
    v9 = &v10[i];
    std::vector<PKOutputFunction>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  return v3;
}

- (id)particleTextureName
{
  if (a1)
  {
    v1 = [a1 particleDescriptor];
    v2 = [v1 textureName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end