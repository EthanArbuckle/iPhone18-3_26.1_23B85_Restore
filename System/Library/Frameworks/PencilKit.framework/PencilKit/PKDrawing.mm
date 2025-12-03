@interface PKDrawing
+ (CGRect)_boundingBoxForStrokeArray:(id)array;
+ (CGRect)_boundingBoxForStrokes:(id)strokes;
+ (Class)drawingClassForPaper;
+ (PKDrawing)allocWithZone:(_NSZone *)zone;
+ (PKDrawing)drawingWithData:(id)data;
+ (id)_findLeftmostStrokes:(id)strokes;
+ (id)_findRightmostStrokes:(id)strokes;
+ (id)_otherStrokesCloseToLeft:(BOOL)left forStrokes:(id)strokes withClosestStroke:(id)stroke;
+ (id)_upgradeDrawingData:(id)data queue:(id)queue completionBlock:(id)block;
+ (id)_uuidDescriptionForStrokes:(id)strokes;
+ (id)drawingStrokesFromStrokes:(id)strokes inDrawing:(id)drawing;
+ (id)visibleStrokesFromStrokes:(id)strokes inDrawing:(id)drawing;
- (BOOL)_hasAnyHDRStrokes;
- (BOOL)_newAsciiBitfield;
- (BOOL)containsInternalStrokes;
- (CGRect)_eraserStrokeBounds;
- (CGRect)calculateStrokeBounds;
- (NSArray)strokes;
- (NSString)description;
- (PKContentVersion)requiredContentVersion;
- (PKDrawing)drawingByAppendingDrawing:(PKDrawing *)drawing;
- (PKDrawing)drawingByAppendingStrokes:(NSArray *)strokes;
- (PKDrawing)drawingByApplyingTransform:(CGAffineTransform *)transform;
- (PKDrawing)init;
- (PKDrawing)initWithCoder:(id)coder;
- (PKDrawing)initWithDrawing:(id)drawing;
- (PKDrawing)initWithStrokes:(NSArray *)strokes;
- (PKDrawing)initWithStrokes:(id)strokes fromDrawing:(id)drawing;
- (PKVisualizationManager)visualizationManager;
- (UIImage)imageFromRect:(CGRect)rect scale:(CGFloat)scale;
- (id)CHDrawing;
- (id)_addStroke:(id)stroke;
- (id)_ascii;
- (id)_clipAgainstLegacyCanvas:(id)canvas;
- (id)_clipStroke:(id)stroke againstPaths:(const void *)paths;
- (id)_clipStroke:(id)stroke newRootStroke:(id *)rootStroke;
- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform;
- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform ink:(id)ink newParent:(id *)parent;
- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform inkTransform:(CGAffineTransform *)inkTransform ink:(id)ink newParent:(id *)parent;
- (id)_originalDataUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict shouldUseStrokeDataUUID:(BOOL)d;
- (id)_originalStrokeDataUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict;
- (id)_originalStrokeUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict;
- (id)_strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint transform:(CGAffineTransform *)transform;
- (id)_unclippedStroke:(id)stroke;
- (id)_visibleStrokeForIdentifier:(id)identifier;
- (id)cachedVisibleStrokes;
- (id)clipStroke:(id)stroke onPlane:(id)plane renderMask:(id)mask;
- (id)copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)drawingByApplyingTransform:(CGAffineTransform *)transform transformInk:(BOOL)ink;
- (id)firstIntersectedStrokeAtPoint:(CGPoint)point inputType:(int64_t)type visibleOnscreenStrokes:(id)strokes;
- (id)indexableContent;
- (id)insertNewTestStroke;
- (id)intersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes;
- (id)intersectedStrokesFromRect:(CGRect)rect visibleOnscreenStrokes:(id)strokes;
- (id)intersectedStrokesFromStroke:(id)stroke visibleOnscreenStrokes:(id)strokes;
- (id)intersectedStrokesTest:(id)test inBounds:(CGRect)bounds visibleOnscreenStrokes:(id)strokes;
- (id)replaceStrokes:(id)strokes withNewStrokes:(id)newStrokes actionName:(id)name;
- (id)setStroke:(id)stroke hidden:(BOOL)hidden;
- (id)setStroke:(id)stroke ink:(id)ink;
- (id)setStroke:(id)stroke transform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (id)sliceWithEraseStroke:(id)stroke;
- (id)strokesForCHStrokeIdentifiers:(id)identifiers;
- (id)strokesForCHStrokeIdentifiers:(id)identifiers didFindAllStrokes:(BOOL *)strokes;
- (id)strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint minThreshold:(double)threshold transform:(CGAffineTransform *)transform onscreenVisibleStrokes:(id)strokes;
- (id)strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint onscreenVisibleStrokes:(id)strokes;
- (id)transformStrokes:(id)strokes paths:(id)paths masks:(id)masks;
- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes;
- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name;
- (id)undoableSetStrokes:(id)strokes inks:(id)inks;
- (id)updateStroke:(id)stroke updater:(id)updater;
- (int64_t)_minimumSerializationVersion;
- (int64_t)_rootStrokesCount;
- (void)_clipMaskedStrokes;
- (void)_copyAndAddStrokes:(id)strokes transform:(CGAffineTransform *)transform;
- (void)_copyAndAddStrokes:(id)strokes transform:(CGAffineTransform *)transform inkTransform:(CGAffineTransform *)inkTransform;
- (void)_eraseWithEraserStroke:(id)stroke;
- (void)_imageInRect:(CGRect)rect scale:(double)scale completionHandler:(id)handler;
- (void)_removeStroke:(id)stroke;
- (void)_teardownRecognitionObjects;
- (void)_transformAllStrokes:(CGAffineTransform *)strokes;
- (void)_updateRecognitionSession;
- (void)cancelOngoingRecognitionRequests;
- (void)clipStrokesIfNeededOnQueue:(id)queue completion:(id)completion;
- (void)copyCachedStrokesFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fetchIntersectedStrokesBetweenPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint visibleOnscreenStrokes:(id)strokes completion:(id)completion;
- (void)invalidateVisibleStrokes;
- (void)performSearchQuery:(id)query fullWordsOnly:(BOOL)only caseMatchingOnly:(BOOL)matchingOnly withBlock:(id)block;
- (void)queryDidUpdateResult:(id)result;
- (void)setForcedRecognitionLocales:(id)locales;
- (void)setNeedsRecognitionUpdate;
- (void)setRecognitionEnabled:(BOOL)enabled;
- (void)setStrokeSubstrokes:(id)substrokes;
- (void)setStrokes:(id)strokes groupID:(id)d;
- (void)setStrokes:(id)strokes inks:(id)inks;
- (void)setStrokes:(id)strokes transform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (void)transformStrokes:(id)strokes withTransforms:(id)transforms concat:(BOOL)concat;
@end

@implementation PKDrawing

+ (Class)drawingClassForPaper
{
  if (_MergedGlobals_133 != -1)
  {
    dispatch_once(&_MergedGlobals_133, &__block_literal_global_33);
  }

  v3 = qword_1ED6A50A8;

  return v3;
}

Class __33__PKDrawing_drawingClassForPaper__block_invoke()
{
  result = NSClassFromString(&cfstr_Pkdrawingcoher.isa);
  qword_1ED6A50A8 = result;
  return result;
}

- (PKDrawing)init
{
  v3.receiver = self;
  v3.super_class = PKDrawing;
  return [(PKDrawing *)&v3 init];
}

- (void)dealloc
{
  [(PKDrawing *)self _teardownRecognitionObjects];
  v3.receiver = self;
  v3.super_class = PKDrawing;
  [(PKDrawing *)&v3 dealloc];
}

- (void)_teardownRecognitionObjects
{
  v18 = *MEMORY[0x1E69E9840];
  recognitionManager = self->_recognitionManager;
  self->_recognitionManager = 0;

  recognitionSession = self->_recognitionSession;
  self->_recognitionSession = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_ongoingQueries;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v8++) setDelegate:{0, v13}];
      }

      while (v6 != v8);
      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  ongoingQueries = self->_ongoingQueries;
  self->_ongoingQueries = 0;

  visualizationManager = self->_visualizationManager;
  p_visualizationManager = &self->_visualizationManager;
  [(PKVisualizationManager *)visualizationManager setDelegate:0];
  v12 = *p_visualizationManager;
  *p_visualizationManager = 0;
}

- (id)_unclippedStroke:(id)stroke
{
  copyForMutation = [stroke copyForMutation];
  [copyForMutation _setClipPlane:0];
  [copyForMutation _setRenderMask:0];
  [copyForMutation didUpdateInDrawing:self];

  return copyForMutation;
}

- (id)_clipStroke:(id)stroke newRootStroke:(id *)rootStroke
{
  v36[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  _clipPlane = [strokeCopy _clipPlane];
  if (_clipPlane)
  {
    copyForMutation = [strokeCopy copyForMutation];
    [copyForMutation generateMask];
    [copyForMutation _setClipPlane:0];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    v30[0] = *MEMORY[0x1E695EFD0];
    v30[1] = v9;
    v30[2] = *(MEMORY[0x1E695EFD0] + 32);
    [strokeCopy generateClipPaths:&v31 transform:v30];
    if (v32 == v31)
    {
      v21 = [(PKDrawing *)self _unclippedStroke:strokeCopy];
      v22 = *rootStroke;
      *rootStroke = v21;

      v35 = *rootStroke;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    }

    else
    {
      v10 = [copyForMutation sliceWithEraser:&v31];
      if ([v10 count] == 1 && (objc_msgSend(v10, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "_strokeUUID"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(copyForMutation, "_strokeUUID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqual:", v13), v13, v12, v11, v14))
      {
        v15 = [(PKDrawing *)self _unclippedStroke:strokeCopy];
        v16 = *rootStroke;
        *rootStroke = v15;

        v34 = *rootStroke;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      }

      else
      {
        v24 = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = __49__PKDrawing_Clipping___clipStroke_newRootStroke___block_invoke;
        v27 = &unk_1E82D62C0;
        v28 = strokeCopy;
        v29 = v10;
        v20 = _Block_copy(&v24);
        v17 = [copyForMutation _sliceWithSlicingBlock:v20 inDrawing:self newRootStroke:{rootStroke, v24, v25, v26, v27}];
      }
    }

    *&v30[0] = &v31;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](v30);
  }

  else
  {
    v18 = [(PKDrawing *)self _unclippedStroke:strokeCopy];
    v19 = *rootStroke;
    *rootStroke = v18;

    v36[0] = *rootStroke;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  }

  return v17;
}

id __49__PKDrawing_Clipping___clipStroke_newRootStroke___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _strokeUUID];
  v4 = [*(a1 + 32) _strokeUUID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_clipAgainstLegacyCanvas:(id)canvas
{
  v63 = *MEMORY[0x1E69E9840];
  canvasCopy = canvas;
  if ([canvasCopy hasSubstrokes])
  {
    v5 = [canvasCopy _substrokesInDrawing:self];
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v8)
    {
      v9 = *v57;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v57 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [(PKDrawing *)self _clipAgainstLegacyCanvas:*(*(&v56 + 1) + 8 * i)];
          if (v11)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v8);
    }

    if ([v7 isEqualToArray:v6])
    {
      v12 = canvasCopy;
    }

    else
    {
      v12 = [canvasCopy _newStrokeWithSubstrokes:v6 inDrawing:self];
      [v12 didUpdateInDrawing:self];
    }
  }

  else
  {
    memset(v55, 0, sizeof(v55));
    __p = 0;
    v53 = 0;
    v54 = 0;
    v65.size.width = 1024.0;
    v65.size.height = 768.0;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    MinX = CGRectGetMinX(v65);
    v66.size.width = 1024.0;
    v66.size.height = 768.0;
    v66.origin.x = 0.0;
    v66.origin.y = 0.0;
    MinY = CGRectGetMinY(v66);
    v14.f64[0] = MinX;
    v14.f64[1] = MinY;
    v15 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v14, vdupq_n_s64(0x4059000000000000uLL))));
    *&v16 = v15.i32[0];
    *(&v16 + 1) = v15.i32[1];
    v60 = v16;
    __asm { FMOV            V0.2S, #-1.0 }

    v22 = -_D0;
    v61 = -_D0;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, &v60);
    v67.size.width = 1024.0;
    v67.size.height = 768.0;
    v67.origin.x = 0.0;
    v67.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v67);
    v68.size.width = 1024.0;
    v68.size.height = 768.0;
    v68.origin.x = 0.0;
    v68.origin.y = 0.0;
    v23 = CGRectGetMinY(v68);
    v24.f64[0] = MaxX;
    v24.f64[1] = v23;
    v25 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v24, vdupq_n_s64(0x4059000000000000uLL))));
    *&v16 = v25.i32[0];
    *(&v16 + 1) = v25.i32[1];
    v60 = v16;
    v61 = v22;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, &v60);
    v69.size.width = 1024.0;
    v69.size.height = 768.0;
    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v50 = CGRectGetMaxX(v69);
    v70.size.width = 1024.0;
    v70.size.height = 768.0;
    v70.origin.x = 0.0;
    v70.origin.y = 0.0;
    MaxY = CGRectGetMaxY(v70);
    v27.f64[0] = v50;
    v27.f64[1] = MaxY;
    v28 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v27, vdupq_n_s64(0x4059000000000000uLL))));
    *&v16 = v28.i32[0];
    *(&v16 + 1) = v28.i32[1];
    v60 = v16;
    v61 = v22;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, &v60);
    v71.size.width = 1024.0;
    v71.size.height = 768.0;
    v71.origin.x = 0.0;
    v71.origin.y = 0.0;
    v51 = CGRectGetMinX(v71);
    v72.size.width = 1024.0;
    v72.size.height = 768.0;
    v72.origin.x = 0.0;
    v72.origin.y = 0.0;
    v29 = CGRectGetMaxY(v72);
    v30.f64[0] = v51;
    v30.f64[1] = v29;
    v31 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v30, vdupq_n_s64(0x4059000000000000uLL))));
    *&v16 = v31.i32[0];
    *(&v16 + 1) = v31.i32[1];
    v60 = v16;
    v61 = v22;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, &v60);
    v32 = v53;
    if (v53 >= v54)
    {
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v53 - __p) >> 3);
      v36 = v35 + 1;
      if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      if (0x5555555555555556 * ((v54 - __p) >> 3) > v36)
      {
        v36 = 0x5555555555555556 * ((v54 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v54 - __p) >> 3) >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(&__p, v37);
      }

      v38 = 8 * ((v53 - __p) >> 3);
      v39 = *__p;
      *(v38 + 16) = *(__p + 2);
      *v38 = v39;
      v34 = (24 * v35 + 24);
      v40 = (v38 - (v53 - __p));
      memcpy(v40, __p, v53 - __p);
      v41 = __p;
      __p = v40;
      v53 = v34;
      v54 = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      v33 = *__p;
      *(v53 + 2) = *(__p + 2);
      *v32 = v33;
      v34 = v32 + 24;
    }

    v53 = v34;
    if (ClipperLib::Area(&__p) >= 0.0 && __p != v34)
    {
      v42 = v34 - 24;
      if (v34 - 24 > __p)
      {
        v43 = (__p + 24);
        do
        {
          v60 = *(v43 - 3);
          v44 = v60;
          v61 = *(v43 - 1);
          v45 = v61;
          v46 = *(v42 + 2);
          *(v43 - 3) = *v42;
          *(v43 - 1) = v46;
          *(v42 + 2) = v45;
          *v42 = v44;
          v42 -= 24;
          _CF = v43 >= v42;
          v43 += 3;
        }

        while (!_CF);
      }
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](v55, &__p);
    v12 = [(PKDrawing *)self _clipStroke:canvasCopy againstPaths:v55];
    if (__p)
    {
      v53 = __p;
      operator delete(__p);
    }

    *&v60 = v55;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v60);
  }

  return v12;
}

- (id)_clipStroke:(id)stroke againstPaths:(const void *)paths
{
  v58 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  _clipPlane = [strokeCopy _clipPlane];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (_clipPlane)
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *v36 = *MEMORY[0x1E695EFD0];
    *&v36[16] = v8;
    *&v36[32] = *(MEMORY[0x1E695EFD0] + 32);
    [strokeCopy generateClipPaths:&v30 transform:v36];
    if (v31 != v30)
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v45 = 0u;
      v46 = 0u;
      *v36 = &off_1F4769838;
      memset(&v36[8], 0, 48);
      __p = 0u;
      v38 = 0;
      v39[0] = v39;
      v39[1] = v39;
      v39[2] = 0;
      v40 = 0;
      v47 = 0;
      v41 = 0;
      v42 = 0;
      v51 = 0;
      v43 = 0;
      v44 = &unk_1F4769880;
      v9 = v30;
      if (v31 != v30)
      {
        v10 = 0;
        v11 = 0;
        v12 = &v36[*(*v36 - 24)];
        do
        {
          (*(*v12 + 16))(v12, v9 + v10, 1, 1);
          ++v11;
          v9 = v30;
          v10 += 24;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3));
      }

      ClipperLib::Clipper::Execute(v36, 2, &v33, 0, 0);
      std::__list_imp<long long>::clear(v39);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (*&v36[32])
      {
        *&v36[40] = *&v36[32];
        operator delete(*&v36[32]);
      }

      if (*&v36[8])
      {
        *&v36[16] = *&v36[8];
        operator delete(*&v36[8]);
      }

      ClipperLib::ClipperBase::~ClipperBase(&v44);
    }

    *v36 = &v30;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](v36);
  }

  copyForMutation = [strokeCopy copyForMutation];
  [copyForMutation generateMask];
  [copyForMutation _setClipPlane:0];
  if (v34 == v33)
  {
    pathsCopy = paths;
  }

  else
  {
    pathsCopy = &v33;
  }

  v15 = [copyForMutation sliceWithMask:pathsCopy];
  if ([v15 count] == 1 && (objc_msgSend(v15, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "_strokeUUID"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(copyForMutation, "_strokeUUID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, v16, v19))
  {
    v20 = [(PKDrawing *)self _unclippedStroke:strokeCopy];
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PKDrawing_Clipping___clipStroke_againstPaths___block_invoke;
    aBlock[3] = &unk_1E82D62C0;
    v21 = strokeCopy;
    v28 = v21;
    v29 = v15;
    v22 = _Block_copy(aBlock);
    *v36 = 0;
    v23 = [copyForMutation _sliceWithSlicingBlock:v22 inDrawing:self newRootStroke:v36];
    v24 = v23;
    if (*v36)
    {
      if ([v23 count])
      {
        lastObject = [v24 lastObject];
      }

      else
      {
        lastObject = v21;
      }

      v20 = lastObject;
    }

    else
    {
      v20 = [v21 mutableCopy];
      [v20 _setHidden:1];
      [v20 didUpdateSubstrokesInDrawing:self];
    }
  }

  *v36 = &v33;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](v36);

  return v20;
}

id __48__PKDrawing_Clipping___clipStroke_againstPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _strokeUUID];
  v4 = [*(a1 + 32) _strokeUUID];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (PKDrawing)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [PKDrawingConcrete allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___PKDrawing;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (PKDrawing)initWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  v9.receiver = self;
  v9.super_class = PKDrawing;
  v5 = [(PKDrawing *)&v9 init];
  if (v5)
  {
    cachedVisibleStrokes = [drawingCopy cachedVisibleStrokes];
    cachedVisibleStrokes = v5->_cachedVisibleStrokes;
    v5->_cachedVisibleStrokes = cachedVisibleStrokes;
  }

  return v5;
}

- (PKDrawing)initWithStrokes:(NSArray *)strokes
{
  v4 = strokes;
  v5 = [(PKDrawing *)self init];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKDrawing *)v5 _copyAndAddStrokes:v4 transform:v8];

  return v5;
}

- (PKDrawing)initWithStrokes:(id)strokes fromDrawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  PKCrash();
}

- (PKDrawing)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  selfCopy = [coderCopy decodeBytesWithReturnedLength:&v12];
  if (selfCopy)
  {
    v6 = objc_alloc(objc_opt_class());
    v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:selfCopy length:v12 freeWhenDone:0];
    v11 = 0;
    v8 = [v6 initWithData:v7 error:&v11];
    v9 = v11;

    if (v9)
    {
      [coderCopy failWithError:v9];
    }

    else
    {
      if (v8)
      {
        self = [(PKDrawing *)self initWithDrawing:v8];
        v9 = 0;
        selfCopy = self;
        goto LABEL_8;
      }

      v9 = 0;
    }

    selfCopy = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

LABEL_8:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(PKDrawing *)self serialize];
  [coderCopy encodeBytes:objc_msgSend(serialize length:{"bytes"), objc_msgSend(serialize, "length")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithDrawing:self];
}

- (int64_t)_rootStrokesCount
{
  _rootStrokes = [(PKDrawing *)self _rootStrokes];
  v3 = [_rootStrokes count];

  return v3;
}

- (BOOL)containsInternalStrokes
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  strokes = [(PKDrawing *)self strokes];
  v3 = [strokes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(strokes);
        }

        if ([*(*(&v7 + 1) + 8 * i) _isInternal])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [strokes countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_imageInRect:(CGRect)rect scale:(double)scale completionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  handlerCopy = handler;
  scale = [[PKImageRenderer alloc] initWithSize:0 scale:0 renderQueue:[(PKDrawing *)self _hasAnyHDRStrokes] sixChannelBlending:width extendedDynamicRange:height, scale];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__PKDrawing__imageInRect_scale_completionHandler___block_invoke;
  v12[3] = &unk_1E82D86D0;
  v11 = handlerCopy;
  v13 = v11;
  [(PKImageRenderer *)scale renderDrawing:self completion:v12];
}

void __50__PKDrawing__imageInRect_scale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (UIImage)imageFromRect:(CGRect)rect scale:(CGFloat)scale
{
  v4 = scale;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  if (scale <= 0.0)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v4 = v11;
  }

  v12 = [[PKImageRenderer alloc] initSyncWithSize:[(PKDrawing *)self _hasAnyHDRStrokes] scale:width extendedDynamicRange:height, v4];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v12 setInvertColors:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") == 2}];

  strokes = [(PKDrawing *)self strokes];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__PKDrawing_imageFromRect_scale___block_invoke;
  v17[3] = &unk_1E82D86F8;
  v17[4] = &v18;
  [v12 renderStrokes:strokes clippedToStrokeSpaceRect:v17 scale:x completion:{y, width, height, 1.0}];

  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (BOOL)_hasAnyHDRStrokes
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  strokes = [(PKDrawing *)self strokes];
  v3 = [strokes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(strokes);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) ink];
        [v6 hdrHeadroom];
        v8 = v7 > 1.0;

        if (v8)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [strokes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)_copyAndAddStrokes:(id)strokes transform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v7[0] = *&transform->a;
  v7[1] = v4;
  v7[2] = *&transform->tx;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKDrawing *)self _copyAndAddStrokes:strokes transform:v7 inkTransform:v6];
}

- (void)_copyAndAddStrokes:(id)strokes transform:(CGAffineTransform *)transform inkTransform:(CGAffineTransform *)inkTransform
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = strokes;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v23;
    do
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * v11);
        v14 = *&transform->c;
        v21[0] = *&transform->a;
        v21[1] = v14;
        v21[2] = *&transform->tx;
        v15 = *&inkTransform->c;
        v20[0] = *&inkTransform->a;
        v20[1] = v15;
        v20[2] = *&inkTransform->tx;
        v16 = [v13 ink];
        v19 = v12;
        v17 = [(PKDrawing *)self _copyAndAddStroke:v13 transform:v21 inkTransform:v20 ink:v16 newParent:&v19];
        v9 = v19;

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

- (PKDrawing)drawingByApplyingTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v3;
  v6[2] = *&transform->tx;
  v4 = [(PKDrawing *)self drawingByApplyingTransform:v6 transformInk:1];

  return v4;
}

- (id)drawingByApplyingTransform:(CGAffineTransform *)transform transformInk:(BOOL)ink
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&v14.a = *MEMORY[0x1E695EFD0];
  *&v14.c = v6;
  *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (!ink)
  {
    v7 = sqrt(transform->b * transform->b + transform->a * transform->a);
    if (v7 > 0.0)
    {
      CGAffineTransformMakeScale(&v14, 1.0 / v7, 1.0 / v7);
    }
  }

  v8 = objc_alloc_init(objc_opt_class());
  strokes = [(PKDrawing *)self strokes];
  v10 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v10;
  v13[2] = *&transform->tx;
  v12 = v14;
  [v8 _copyAndAddStrokes:strokes transform:v13 inkTransform:&v12];

  return v8;
}

- (PKDrawing)drawingByAppendingDrawing:(PKDrawing *)drawing
{
  v4 = drawing;
  v5 = [objc_alloc(objc_opt_class()) initWithDrawing:self];
  strokes = [(PKDrawing *)v4 strokes];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 _copyAndAddStrokes:strokes transform:v9];

  return v5;
}

- (PKDrawing)drawingByAppendingStrokes:(NSArray *)strokes
{
  v4 = strokes;
  v5 = [objc_alloc(objc_opt_class()) initWithDrawing:self];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v6;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v5 _copyAndAddStrokes:v4 transform:v8];

  return v5;
}

- (NSArray)strokes
{
  v27 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedVisibleStrokes = selfCopy->_cachedVisibleStrokes;
  if (!cachedVisibleStrokes)
  {
    [(PKDrawing *)selfCopy _rootStrokes];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v4 = v22 = 0u;
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 += [*(*(&v21 + 1) + 8 * i) _visibleSubstrokeCountInDrawing:selfCopy];
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * j) _addVisibleSubstrokesTo:v9 inDrawing:{selfCopy, v17}];
        }

        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }

    v14 = selfCopy->_cachedVisibleStrokes;
    selfCopy->_cachedVisibleStrokes = v9;

    cachedVisibleStrokes = selfCopy->_cachedVisibleStrokes;
  }

  v15 = [(NSMutableArray *)cachedVisibleStrokes copy];
  objc_sync_exit(selfCopy);

  return v15;
}

- (id)cachedVisibleStrokes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_cachedVisibleStrokes mutableCopy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)copyCachedStrokesFrom:(id)from
{
  fromCopy = from;
  cachedVisibleStrokes = [fromCopy cachedVisibleStrokes];
  cachedVisibleStrokes = self->_cachedVisibleStrokes;
  self->_cachedVisibleStrokes = cachedVisibleStrokes;
}

- (CGRect)calculateStrokeBounds
{
  v26 = *MEMORY[0x1E69E9840];
  strokes = [(PKDrawing *)self strokes];
  v3 = [strokes count];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PKDrawing_calculateStrokeBounds__block_invoke;
  block[3] = &unk_1E82D8720;
  block[4] = strokes;
  dispatch_apply(v3, 0, block);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = strokes;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v11) _bounds];
        v30.origin.x = v12;
        v30.origin.y = v13;
        v30.size.width = v14;
        v30.size.height = v15;
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v28 = CGRectUnion(v27, v30);
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

void __34__PKDrawing_calculateStrokeBounds__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v2 _bounds];
}

- (void)invalidateVisibleStrokes
{
  cachedVisibleStrokes = self->_cachedVisibleStrokes;
  self->_cachedVisibleStrokes = 0;
}

+ (id)visibleStrokesFromStrokes:(id)strokes inDrawing:(id)drawing
{
  v20 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  drawingCopy = drawing;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = strokesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        _strokeUUID = [*(*(&v15 + 1) + 8 * i) _strokeUUID];
        v13 = [drawingCopy _visibleStrokeForIdentifier:_strokeUUID];

        if (v13)
        {
          [array addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

+ (id)drawingStrokesFromStrokes:(id)strokes inDrawing:(id)drawing
{
  v20 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  drawingCopy = drawing;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = strokesCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        _strokeUUID = [*(*(&v15 + 1) + 8 * i) _strokeUUID];
        v13 = [drawingCopy _strokeForIdentifier:_strokeUUID];

        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

- (id)insertNewTestStroke
{
  newStroke = [(PKDrawing *)self newStroke];
  v4 = objc_alloc_init(PKInk);
  [newStroke _setInk:v4];

  v5 = [(PKDrawing *)self visibleStrokeForInsertingStroke:newStroke];
  [(PKDrawing *)self addNewStroke:v5];

  return v5;
}

- (PKContentVersion)requiredContentVersion
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _rootStrokes = [(PKDrawing *)self _rootStrokes];
  v3 = [_rootStrokes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    v5 = PKContentVersion1;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v4)
      {
        objc_enumerationMutation(_rootStrokes);
      }

      requiredContentVersion = [*(*(&v9 + 1) + 8 * v6) requiredContentVersion];
      if (v5 <= requiredContentVersion)
      {
        v5 = requiredContentVersion;
      }

      if (v5 == 4)
      {
        break;
      }

      if (v3 == ++v6)
      {
        v3 = [_rootStrokes countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v5 = PKContentVersion1;
  }

  return v5;
}

- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes
{
  strokesCopy = strokes;
  oldStrokesCopy = oldStrokes;
  PKCrash();
}

- (id)_addStroke:(id)stroke
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  v4 = [(PKDrawing *)self _copyAndAddStroke:stroke transform:v6];

  return v4;
}

- (void)_removeStroke:(id)stroke
{
  v6[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v6[0] = strokeCopy;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [(PKDrawing *)self deleteStrokes:v5];
}

- (id)copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform
{
  strokeCopy = stroke;
  v7 = [strokeCopy ink];
  v8 = [(PKDrawing *)self _copyAndAddStroke:strokeCopy transform:&v10 ink:v7 newParent:0];

  return v8;
}

- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform
{
  strokeCopy = stroke;
  v7 = [strokeCopy ink];
  v8 = [(PKDrawing *)self _copyAndAddStroke:strokeCopy transform:&v10 ink:v7 newParent:0];

  return v8;
}

- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform ink:(id)ink newParent:(id *)parent
{
  v6 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v6;
  v10[2] = *&transform->tx;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v7;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [(PKDrawing *)self _copyAndAddStroke:stroke transform:v10 inkTransform:v9 ink:ink newParent:parent];
}

- (id)_copyAndAddStroke:(id)stroke transform:(CGAffineTransform *)transform inkTransform:(CGAffineTransform *)inkTransform ink:(id)ink newParent:(id *)parent
{
  strokeCopy = stroke;
  inkCopy = ink;
  v14 = [(PKDrawing *)self visibleStrokeForInsertingStroke:strokeCopy];
  v15 = *&transform->c;
  *&v34.a = *&transform->a;
  *&v34.c = v15;
  *&v34.tx = *&transform->tx;
  if (!CGAffineTransformIsIdentity(&v34))
  {
    if (v14)
    {
      [v14 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v16 = *&transform->c;
    *&v32.a = *&transform->a;
    *&v32.c = v16;
    *&v32.tx = *&transform->tx;
    CGAffineTransformConcat(&v34, &t1, &v32);
    [v14 _setTransform:&v34];
  }

  v17 = *&inkTransform->c;
  *&v34.a = *&inkTransform->a;
  *&v34.c = v17;
  *&v34.tx = *&inkTransform->tx;
  if (!CGAffineTransformIsIdentity(&v34))
  {
    if (v14)
    {
      [v14 _inkTransform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v18 = *&inkTransform->c;
    *&v32.a = *&inkTransform->a;
    *&v32.c = v18;
    *&v32.tx = *&inkTransform->tx;
    CGAffineTransformConcat(&v34, &t1, &v32);
    [v14 _setInkTransform:&v34];
  }

  v19 = [v14 ink];

  if (v19 != inkCopy)
  {
    [v14 setInk:inkCopy];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  [v14 _setStrokeUUID:uUID];

  [v14 _setFlags:{objc_msgSend(strokeCopy, "_flags") & 0xFFFFFFC000000011 | (32 * objc_msgSend(strokeCopy, "randomSeed")) | 0x2000000000}];
  _strokeMask = [v14 _strokeMask];

  if (_strokeMask)
  {
    if (parent)
    {
      v22 = *parent;
      v23 = v22;
      if (v22)
      {
        _strokeDataUUID = [v22 _strokeDataUUID];
        _strokeDataUUID2 = [v14 _strokeDataUUID];
        v26 = [_strokeDataUUID isEqual:_strokeDataUUID2];

        if (v26)
        {
LABEL_23:
          _substrokes = [v23 _substrokes];
          v30 = [_substrokes arrayByAddingObject:v14];
          [v23 set_substrokes:v30];

          [(PKDrawing *)self invalidateVisibleStrokes];
          goto LABEL_24;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v27 = [v14 parentStrokeForInsertionInDrawing:self];

    [(PKDrawing *)self addNewStroke:v27];
    if (parent)
    {
      v28 = v27;
      *parent = v27;
    }

    v23 = v27;
    goto LABEL_23;
  }

  [(PKDrawing *)self addNewStroke:v14];
LABEL_24:

  return v14;
}

- (void)setStrokes:(id)strokes transform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(PKDrawing *)self transformStrokes:strokes withTransform:v6 concat:concat];
}

- (id)setStroke:(id)stroke ink:(id)ink
{
  v14[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  inkCopy = ink;
  v14[0] = strokeCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = inkCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  [(PKDrawing *)self setStrokes:v8 inks:v9];

  _strokeUUID = [strokeCopy _strokeUUID];
  v11 = [(PKDrawing *)self _strokeForIdentifier:_strokeUUID];

  return v11;
}

- (id)setStroke:(id)stroke hidden:(BOOL)hidden
{
  strokeCopy = stroke;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__PKDrawing_setStroke_hidden___block_invoke;
  v10[3] = &unk_1E82D8768;
  hiddenCopy = hidden;
  v11 = strokeCopy;
  v7 = strokeCopy;
  v8 = [(PKDrawing *)self updateStroke:v7 updater:v10];

  return v8;
}

id __30__PKDrawing_setStroke_hidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == [v3 _isHidden])
  {
    v4 = v3;
  }

  else
  {
    v5 = [v3 _pointsCount];
    v6 = v3;
    if (!v5)
    {
      v6 = *(a1 + 32);
    }

    v4 = [v6 copyForMutation];
    [v4 _setHidden:*(a1 + 40)];
    [v4 _setFlags:{objc_msgSend(v4, "_flags") & 0xFFFFFFFFFFFFFFFDLL}];
  }

  return v4;
}

- (void)_eraseWithEraserStroke:(id)stroke
{
  v7[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v5 = [(PKDrawing *)self sliceWithEraseStroke:strokeCopy];
  v7[0] = strokeCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [(PKDrawing *)self deleteStrokes:v6];
}

- (void)_clipMaskedStrokes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __31__PKDrawing__clipMaskedStrokes__block_invoke;
  v2[3] = &unk_1E82D67C8;
  v2[4] = self;
  [(PKDrawing *)self clipStrokesIfNeededOnQueue:0 completion:v2];
}

- (void)transformStrokes:(id)strokes withTransforms:(id)transforms concat:(BOOL)concat
{
  concatCopy = concat;
  v19[1] = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  transformsCopy = transforms;
  for (i = 0; [strokesCopy count] > i; ++i)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v11 = [transformsCopy objectAtIndexedSubscript:i];
    v12 = v11;
    if (v11)
    {
      [v11 CGAffineTransformValue];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    v13 = [strokesCopy objectAtIndexedSubscript:i];
    v19[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    [(PKDrawing *)self transformStrokes:v14 withTransform:v15 concat:concatCopy];
  }
}

- (id)transformStrokes:(id)strokes paths:(id)paths masks:(id)masks
{
  strokesCopy = strokes;
  v9 = [(PKDrawing *)self _originalStrokeDataUUIDToTransformedStrokeDictFromStrokes:strokesCopy pathDict:paths maskDict:masks];
  v10 = _PencilKitBundle();
  v11 = [v10 localizedStringForKey:@"Straighten Strokes" value:@"Straighten Strokes" table:@"Localizable"];

  allValues = [v9 allValues];
  v13 = [(PKDrawing *)self replaceStrokes:strokesCopy withNewStrokes:allValues actionName:v11];

  return v13;
}

- (id)replaceStrokes:(id)strokes withNewStrokes:(id)newStrokes actionName:(id)name
{
  v15[2] = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  newStrokesCopy = newStrokes;
  nameCopy = name;
  v11 = [(PKDrawing *)self undoableAddNewStrokes:newStrokesCopy];
  v12 = [(PKDrawing *)self undoableDeleteStrokes:strokesCopy];
  [v11 setActionName:nameCopy];
  [v12 setActionName:nameCopy];
  v15[0] = v11;
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

- (id)_originalStrokeDataUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict
{
  v5 = [(PKDrawing *)self _originalDataUUIDToTransformedStrokeDictFromStrokes:strokes pathDict:dict maskDict:maskDict shouldUseStrokeDataUUID:1];

  return v5;
}

- (id)_originalStrokeUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict
{
  v5 = [(PKDrawing *)self _originalDataUUIDToTransformedStrokeDictFromStrokes:strokes pathDict:dict maskDict:maskDict shouldUseStrokeDataUUID:0];

  return v5;
}

- (id)_originalDataUUIDToTransformedStrokeDictFromStrokes:(id)strokes pathDict:(id)dict maskDict:(id)maskDict shouldUseStrokeDataUUID:(BOOL)d
{
  dCopy = d;
  v37 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  dictCopy = dict;
  maskDictCopy = maskDict;
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = strokesCopy;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        _strokeUUID = [v12 _strokeUUID];
        _strokeData = [dictCopy objectForKeyedSubscript:_strokeUUID];

        if (!_strokeData)
        {
          _strokeData = [v12 _strokeData];
        }

        _strokeUUID2 = [v12 _strokeUUID];
        _strokeMask = [maskDictCopy objectForKeyedSubscript:_strokeUUID2];

        if (!_strokeMask)
        {
          _strokeMask = [v12 _strokeMask];
        }

        v17 = objc_alloc([(PKDrawing *)self strokeClass]);
        v18 = [v12 ink];
        if (v12)
        {
          [v12 transform];
        }

        else
        {
          memset(v31, 0, sizeof(v31));
        }

        mask = [v12 mask];
        v20 = [v17 initWithInk:v18 strokePath:_strokeData transform:v31 mask:mask];

        _strokeMask2 = [v12 _strokeMask];
        v22 = _strokeMask2 == 0;

        if (!v22)
        {
          [v20 _setStrokeMask:_strokeMask];
        }

        [v20 _setFlags:{objc_msgSend(v12, "_flags") & 0x20000000000 | objc_msgSend(v12, "_flags") & 0x10000000000 | objc_msgSend(v20, "_flags") & 0xFFFFFCFFFFFFFFFFLL}];
        [v20 _setShapeType:{objc_msgSend(v12, "_shapeType")}];
        if (dCopy)
        {
          [v12 _strokeDataUUID];
        }

        else
        {
          [v12 _strokeUUID];
        }
        v23 = ;
        [v28 setObject:v20 forKey:v23];
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  return v28;
}

- (void)setStrokes:(id)strokes inks:(id)inks
{
  strokesCopy = strokes;
  inksCopy = inks;
  PKCrash();
}

- (id)undoableSetStrokes:(id)strokes inks:(id)inks
{
  strokesCopy = strokes;
  inksCopy = inks;
  PKCrash();
}

- (void)setStrokes:(id)strokes groupID:(id)d
{
  strokesCopy = strokes;
  dCopy = d;
  PKCrash();
}

- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  PKCrash();
}

- (void)_transformAllStrokes:(CGAffineTransform *)strokes
{
  v5 = *&strokes->c;
  *&v8.a = *&strokes->a;
  *&v8.c = v5;
  *&v8.tx = *&strokes->tx;
  if (!CGAffineTransformIsIdentity(&v8))
  {
    strokes = [(PKDrawing *)self strokes];
    v7 = *&strokes->c;
    *&v8.a = *&strokes->a;
    *&v8.c = v7;
    *&v8.tx = *&strokes->tx;
    [(PKDrawing *)self transformStrokes:strokes withTransform:&v8 concat:1];
  }
}

- (id)setStroke:(id)stroke transform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  concatCopy = concat;
  v16[1] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  if (concatCopy && (v9 = *&transform->c, *&v15.a = *&transform->a, *&v15.c = v9, *&v15.tx = *&transform->tx, CGAffineTransformIsIdentity(&v15)))
  {
    v10 = strokeCopy;
  }

  else
  {
    v16[0] = strokeCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = *&transform->c;
    *&v15.a = *&transform->a;
    *&v15.c = v12;
    *&v15.tx = *&transform->tx;
    [(PKDrawing *)self transformStrokes:v11 withTransform:&v15 concat:1];

    _strokeUUID = [strokeCopy _strokeUUID];
    v10 = [(PKDrawing *)self _strokeForIdentifier:_strokeUUID];
  }

  return v10;
}

- (id)updateStroke:(id)stroke updater:(id)updater
{
  strokeCopy = stroke;
  updaterCopy = updater;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v8 = strokeCopy;
  v26 = v8;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__PKDrawing_updateStroke_updater___block_invoke;
  v13[3] = &unk_1E82D8790;
  v17 = v19;
  v18 = &v21;
  selfCopy = self;
  v16 = updaterCopy;
  v14 = v8;
  v9 = updaterCopy;
  v10 = v8;
  [(PKDrawing *)self updateStrokes:v13];
  v11 = v22[5];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void *__34__PKDrawing_updateStroke_updater___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
    v7 = v5;
  }

  else
  {
    v8 = [v5 _strokeUUID];
    v9 = [*(a1 + 32) _strokeUUID];
    v10 = [v8 isEqual:v9];

    v7 = v6;
    if (v10)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a3 = 1;
      v11 = (*(*(a1 + 48) + 16))();
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v14 = *(*(a1 + 64) + 8);
      v7 = *(v14 + 40);
      if (v7 != v6)
      {
        [*(v14 + 40) didUpdateInDrawing:*(a1 + 40)];
        v7 = *(*(*(a1 + 64) + 8) + 40);
      }
    }
  }

  v15 = v7;

  return v7;
}

- (void)setStrokeSubstrokes:(id)substrokes
{
  substrokesCopy = substrokes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__PKDrawing_setStrokeSubstrokes___block_invoke;
  v6[3] = &unk_1E82D87B8;
  v7 = substrokesCopy;
  selfCopy = self;
  v5 = substrokesCopy;
  [(PKDrawing *)self updateStrokes:v6];
}

id __33__PKDrawing_setStrokeSubstrokes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 _strokeUUID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 _newStrokeWithSubstrokes:v6 inDrawing:*(a1 + 40)];
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

- (id)CHDrawing
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6997B50]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  strokes = [(PKDrawing *)self strokes];
  obj = strokes;
  v5 = [strokes countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __22__PKDrawing_CHDrawing__block_invoke;
        v12[3] = &unk_1E82D87E0;
        v9 = v3;
        v13 = v9;
        v14 = &v15;
        [v8 enumeratePointsWithTimestep:v12 usingBlock:0.00833333333];
        if (*(v16 + 24) == 1)
        {
          [v9 endStroke];
        }

        _Block_object_dispose(&v15, 8);
      }

      strokes = obj;
      v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  return v3;
}

uint64_t __22__PKDrawing_CHDrawing__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) addPoint:?];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

- (id)debugQuickLookObject
{
  [(PKDrawing *)self bounds];

  return [PKDrawing imageFromRect:"imageFromRect:scale:" scale:?];
}

- (void)setRecognitionEnabled:(BOOL)enabled
{
  if (self->_recognitionEnabled != enabled)
  {
    self->_recognitionEnabled = enabled;
    [(PKDrawing *)self _updateRecognitionSession];
  }
}

- (void)setForcedRecognitionLocales:(id)locales
{
  localesCopy = locales;
  if (self->_forcedRecognitionLocales != localesCopy)
  {
    objc_storeStrong(&self->_forcedRecognitionLocales, locales);
    [(PKDrawing *)self _updateRecognitionSession];
  }
}

- (PKVisualizationManager)visualizationManager
{
  if (self->_recognitionEnabled)
  {
    uuid = [(PKDrawing *)self uuid];
    v4 = [PKRecognitionSessionCache recognitionSessionForUUID:uuid];

    session = [(PKRecognitionSessionManager *)v4 session];
    if (session)
    {
      v6 = [[PKVisualizationManager alloc] initWithRecognitionSession:session];
      [(PKVisualizationManager *)v6 setRecognitionStatusReportingEnabled:1];
    }

    else
    {
      visualizationManager = self->_visualizationManager;
      if (!visualizationManager)
      {
        v8 = [PKVisualizationManager alloc];
        recognitionSession = [(PKDrawing *)self recognitionSession];
        v10 = [(PKVisualizationManager *)v8 initWithRecognitionSession:recognitionSession];
        v11 = self->_visualizationManager;
        self->_visualizationManager = v10;

        visualizationManager = self->_visualizationManager;
      }

      v6 = visualizationManager;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateRecognitionSession
{
  if ([(PKDrawing *)self recognitionEnabled]&& ([(PKDrawing *)self recognitionSession], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    uuid = [(PKDrawing *)self uuid];
    v6 = [PKRecognitionSessionCache recognitionSessionForUUID:uuid];

    session = [(PKRecognitionSessionManager *)v6 session];

    if (session)
    {
      objc_storeStrong(&self->_recognitionManager, v6);
      session2 = [(PKRecognitionSessionManager *)v6 session];
      [(PKDrawing *)self setRecognitionSession:session2];
    }

    else
    {
      v9 = [PKRecognitionSessionManager alloc];
      v10 = +[PKRecognitionSessionManagerConfiguration backgroundIndexingConfiguration];
      v11 = [(PKRecognitionSessionManager *)&v9->super.isa initWithConfiguration:v10];
      recognitionManager = self->_recognitionManager;
      self->_recognitionManager = v11;

      [(PKRecognitionSessionManager *)self->_recognitionManager setDrawing:?];
      session3 = [(PKRecognitionSessionManager *)self->_recognitionManager session];
      [(PKDrawing *)self setRecognitionSession:session3];

      v14 = self->_recognitionManager;
      session2 = [(PKDrawing *)self uuid];
      [PKRecognitionSessionCache addRecognitionSession:v14 forUUID:session2];
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    listenerID = self->_listenerID;
    self->_listenerID = uUID;

    [(PKRecognitionSessionManager *)self->_recognitionManager addListener:?];
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    [(PKDrawing *)self setOngoingQueries:strongToStrongObjectsMapTable];
  }

  else if ([(PKDrawing *)self recognitionEnabled]|| ([(PKDrawing *)self recognitionSession], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    [(PKRecognitionSessionManager *)self->_recognitionManager setDrawing:?];
  }

  else
  {
    [(PKRecognitionSessionManager *)self->_recognitionManager removeListener:?];
    [(PKDrawing *)self _teardownRecognitionObjects];
  }

  if ([(PKDrawing *)self recognitionEnabled])
  {
    forcedRecognitionLocales = [(PKDrawing *)self forcedRecognitionLocales];
    if (forcedRecognitionLocales && (-[PKDrawing forcedRecognitionLocales](self, "forcedRecognitionLocales"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 count], v19, forcedRecognitionLocales, v20))
    {
      forcedRecognitionLocales2 = [(PKDrawing *)self forcedRecognitionLocales];
    }

    else
    {
      forcedRecognitionLocales2 = +[PKRecognitionSessionManager enabledLocales];
    }

    v23 = forcedRecognitionLocales2;
    recognitionSession = [(PKDrawing *)self recognitionSession];
    [recognitionSession setPreferredLocales:v23];
  }
}

- (id)_visibleStrokeForIdentifier:(id)identifier
{
  v3 = [(PKDrawing *)self _strokeForIdentifier:identifier];
  if ([v3 _isHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)_uuidDescriptionForStrokes:(id)strokes
{
  v19 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = strokesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          [v4 appendString:{@", ", v14}];
        }

        _strokeUUID = [v10 _strokeUUID];
        uUIDString = [_strokeUUID UUIDString];
        [v4 appendString:uUIDString];

        v8 = 0;
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  [v4 appendString:@"]"];

  return v4;
}

- (void)setNeedsRecognitionUpdate
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"PKDrawingRecognitionDisableUpdates"];

  if ((v3 & 1) == 0)
  {
    recognitionSession = [(PKDrawing *)self recognitionSession];
    [recognitionSession setNeedsRecognitionUpdate];
  }
}

- (void)cancelOngoingRecognitionRequests
{
  recognitionSession = [(PKDrawing *)self recognitionSession];
  [recognitionSession cancelOngoingRequests];
}

- (id)strokesForCHStrokeIdentifiers:(id)identifiers
{
  v3 = [(PKDrawing *)self strokesForCHStrokeIdentifiers:identifiers didFindAllStrokes:0];

  return v3;
}

- (id)strokesForCHStrokeIdentifiers:(id)identifiers didFindAllStrokes:(BOOL *)strokes
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        strokeUUID = [*(*(&v16 + 1) + 8 * i) strokeUUID];
        v13 = [(PKDrawing *)self _visibleStrokeForIdentifier:strokeUUID];

        if (v13)
        {
          [v6 addObject:v13];
        }

        else
        {
          v10 = 0;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  if (strokes)
  {
    *strokes = v10 & 1;
  }

  return v6;
}

- (id)indexableContent
{
  recognitionSession = [(PKDrawing *)self recognitionSession];

  if (recognitionSession)
  {
    v4 = objc_alloc(MEMORY[0x1E6997B60]);
    recognitionSession2 = [(PKDrawing *)self recognitionSession];
    v6 = [v4 initWithRecognitionSession:recognitionSession2];

    [v6 start];
    [v6 waitForPendingUpdates];
    v7 = [PKIndexableContent alloc];
    indexableContent = [v6 indexableContent];
    v9 = [(PKIndexableContent *)v7 initWithIndexableContent:indexableContent];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performSearchQuery:(id)query fullWordsOnly:(BOOL)only caseMatchingOnly:(BOOL)matchingOnly withBlock:(id)block
{
  matchingOnlyCopy = matchingOnly;
  onlyCopy = only;
  queryCopy = query;
  blockCopy = block;
  if (blockCopy)
  {
    recognitionSession = [(PKDrawing *)self recognitionSession];

    if (recognitionSession)
    {
      v12 = objc_alloc(MEMORY[0x1E6997BA8]);
      recognitionSession2 = [(PKDrawing *)self recognitionSession];
      v14 = [v12 initWithRecognitionSession:recognitionSession2];

      [v14 setQueryString:queryCopy];
      [v14 setDelegate:self];
      if (objc_opt_respondsToSelector())
      {
        [v14 setFullWordsOnly:onlyCopy];
      }

      if (objc_opt_respondsToSelector())
      {
        [v14 setCaseMatchingOnly:matchingOnlyCopy];
      }

      ongoingQueries = [(PKDrawing *)self ongoingQueries];
      v16 = _Block_copy(blockCopy);
      [ongoingQueries setObject:v16 forKey:v14];

      [v14 start];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

- (void)queryDidUpdateResult:(id)result
{
  v46 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = resultCopy;
    [v30 pause];
    [v30 setDelegate:0];
    ongoingQueries = [(PKDrawing *)self ongoingQueries];
    v29 = [ongoingQueries objectForKey:v30];

    ongoingQueries2 = [(PKDrawing *)self ongoingQueries];
    [ongoingQueries2 removeObjectForKey:v30];

    if (v29)
    {
      [MEMORY[0x1E695DF70] array];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v34 = v41 = 0u;
      foundItems = [v30 foundItems];
      obj = foundItems;
      v7 = [foundItems countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v7)
      {
        v33 = *v41;
        v8 = MEMORY[0x1E695F050];
        do
        {
          v35 = v7;
          for (i = 0; i != v35; ++i)
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v40 + 1) + 8 * i);
            x = *v8;
            y = v8[1];
            width = v8[2];
            height = v8[3];
            array = [MEMORY[0x1E695DF70] array];
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            strokeIdentifiers = [v10 strokeIdentifiers];
            v17 = [strokeIdentifiers countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v17)
            {
              v18 = *v37;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v37 != v18)
                  {
                    objc_enumerationMutation(strokeIdentifiers);
                  }

                  strokeUUID = [*(*(&v36 + 1) + 8 * j) strokeUUID];
                  v21 = [(PKDrawing *)self _visibleStrokeForIdentifier:strokeUUID];

                  if (v21)
                  {
                    [array addObject:v21];
                  }

                  [v21 _bounds];
                  v49.origin.x = v22;
                  v49.origin.y = v23;
                  v49.size.width = v24;
                  v49.size.height = v25;
                  v47.origin.x = x;
                  v47.origin.y = y;
                  v47.size.width = width;
                  v47.size.height = height;
                  v48 = CGRectUnion(v47, v49);
                  x = v48.origin.x;
                  y = v48.origin.y;
                  width = v48.size.width;
                  height = v48.size.height;
                }

                v17 = [strokeIdentifiers countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v17);
            }

            v26 = [PKSearchQueryItem alloc];
            v27 = [array copy];
            height = [(PKSearchQueryItem *)v26 initWithBounds:v27 strokes:x, y, width, height];

            [v34 addObject:height];
          }

          foundItems = obj;
          v7 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v7);
      }

      (v29)[2](v29, v34);
    }

    else
    {
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uuid = [(PKDrawing *)self uuid];
  v7 = [uuid description];
  strokes = [(PKDrawing *)self strokes];
  v9 = [v3 stringWithFormat:@"<%@: %p %@ %ld strokes>", v5, self, v7, objc_msgSend(strokes, "count")];

  return v9;
}

- (id)_ascii
{
  _newAsciiBitfield = [(PKDrawing *)self _newAsciiBitfield];
  [(PKDrawing *)self bounds];
  v5 = [PKStroke _asciiDimensionForBoundsDimension:v4];
  [(PKDrawing *)self bounds];
  v7 = [PKStroke _asciiDimensionForBoundsDimension:v6];
  string = [MEMORY[0x1E696AD60] string];
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v5 >= 1)
      {
        for (j = 0; j != v5; ++j)
        {
          if (_newAsciiBitfield[[PKStroke _asciiBitfieldIndexForX:j y:i width:v5]])
          {
            v11 = @"■";
          }

          else
          {
            v11 = @" ";
          }

          v12 = v11;
          [string appendString:v12];
        }
      }

      [string appendString:@"\n"];
    }
  }

  free(_newAsciiBitfield);

  return string;
}

- (BOOL)_newAsciiBitfield
{
  v47 = *MEMORY[0x1E69E9840];
  [(PKDrawing *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v35 = [PKStroke _asciiDimensionForBoundsDimension:?];
  v9 = [PKStroke _asciiDimensionForBoundsDimension:v4];
  v41 = [PKStroke _asciiDimensionForBoundsDimension:v6];
  v10 = malloc_type_calloc([PKStroke _asciiDimensionForBoundsDimension:v8]* v41, 1uLL, 0x100004077774924uLL);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  strokes = [(PKDrawing *)self strokes];
  v12 = [strokes countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v12)
  {
    v36 = strokes;
    v37 = *v43;
    v34 = -v9;
    do
    {
      v13 = 0;
      do
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(strokes);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        _newAsciiBitfield = [v14 _newAsciiBitfield];
        [v14 _bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v22 = [PKStroke _asciiDimensionForBoundsDimension:?];
        v23 = [PKStroke _asciiDimensionForBoundsDimension:v17];
        v24 = [PKStroke _asciiDimensionForBoundsDimension:v19];
        v40 = [PKStroke _asciiDimensionForBoundsDimension:v21];
        v38 = v13;
        if (v24 >= 1)
        {
          v25 = 0;
          v26 = v22 - v35;
          v39 = v34 + v23;
          do
          {
            if (v40 >= 1)
            {
              v27 = 0;
              v28 = v39;
              v29 = v40;
              do
              {
                v30 = _newAsciiBitfield[[PKStroke _asciiBitfieldIndexForX:v25 y:v27 width:v24]];
                v31 = [PKStroke _asciiBitfieldIndexForX:v26 + v25 y:v28 width:v41];
                v32 = (v30 & 1) != 0 || v10[v31];
                v10[v31] = v32 & 1;
                ++v27;
                ++v28;
                --v29;
              }

              while (v29);
            }

            ++v25;
          }

          while (v25 != v24);
        }

        free(_newAsciiBitfield);
        v13 = v38 + 1;
        strokes = v36;
      }

      while (v38 + 1 != v12);
      v12 = [v36 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }

  return v10;
}

+ (id)_upgradeDrawingData:(id)data queue:(id)queue completionBlock:(id)block
{
  v22[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  queueCopy = queue;
  blockCopy = block;
  v10 = [[PKDrawingConcrete alloc] initWithLegacyData:dataCopy];
  _allStrokes = [(PKDrawingConcrete *)v10 _allStrokes];
  v12 = [_allStrokes count];

  if (v12)
  {
    if (v10)
    {
      v13 = 0;
      v14 = v10;
LABEL_6:
      v16 = [(PKDrawingConcrete *)v14 _upgradeOnQueue:queueCopy isLegacyDrawing:v10 != 0 completionBlock:blockCopy];

      goto LABEL_10;
    }

LABEL_8:
    v17 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Error reading old ICDrawing data format.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:1 userInfo:v18];

    goto LABEL_9;
  }

  v20 = 0;
  v15 = [[PKDrawingConcrete alloc] initWithData:dataCopy error:&v20];
  v13 = v20;

  if (v15)
  {
    v14 = v15;
    goto LABEL_6;
  }

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_9:
  blockCopy[2](blockCopy, 0, v13);
  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
LABEL_10:

  return v16;
}

- (id)sliceWithEraseStroke:(id)stroke
{
  v174 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v102 = v3;
  newOutlinePaths = [strokeCopy newOutlinePaths];
  v5 = *newOutlinePaths;
  v6 = *(newOutlinePaths + 8);
  v104 = newOutlinePaths;
  if (*newOutlinePaths != v6)
  {
    __asm { FMOV            V0.2S, #-1.0 }

    v12 = -_D0;
    do
    {
      v13 = *v5;
      v14 = v5[1];
      while (v13 != v14)
      {
        *(v13 + 16) = v12;
        v13 += 24;
      }

      v5 += 3;
    }

    while (v5 != v6);
  }

  [strokeCopy _bounds];
  v177 = CGRectInset(v176, -1.0, -1.0);
  x = v177.origin.x;
  y = v177.origin.y;
  width = v177.size.width;
  height = v177.size.height;
  strokes = [(PKDrawing *)self strokes];
  v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokes, "count")}];
  v166 = 0;
  v165 = 0;
  v167 = 0;
  v157 = 0;
  v158 = &v157;
  v159 = 0x4812000000;
  v160 = __Block_byref_object_copy__75;
  v161 = __Block_byref_object_dispose__76;
  v162 = "";
  v164 = 0;
  v163[0] = 0;
  v163[1] = 0;
  v19 = [strokes count];
  if (v19 > (v164 - v163[0]) >> 3)
  {
    if (!(v19 >> 61))
    {
      *(&v134 + 1) = v163;
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKStroke * {__strong}>>(v19);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  v107 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(strokes, "count")}];
  v156 = 0;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = [(PKDrawing *)self _rootStrokes];
  v20 = [obj countByEnumeratingWithState:&v152 objects:v173 count:16];
  if (v20)
  {
    v21 = 0;
    v22 = *v153;
LABEL_12:
    v23 = 0;
    while (1)
    {
      if (*v153 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v152 + 1) + 8 * v23);
      if (v24 == strokeCopy)
      {
        break;
      }

      v25 = [*(*(&v152 + 1) + 8 * v23) ink];
      identifier = [v25 identifier];
      v27 = [identifier isEqualToString:@"com.apple.ink.eraser"];

      if ((v27 & 1) == 0)
      {
        __p = 0;
        p_p = &__p;
        v133 = 0x2020000000;
        LOBYTE(v134) = 0;
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke;
        v144[3] = &unk_1E82D9A90;
        v148 = x;
        v149 = y;
        v150 = width;
        v151 = height;
        v145 = v107;
        v146 = &v157;
        v147 = &__p;
        [v24 _visitVisibleSubstrokes:v144 inDrawing:self];
        if (*(p_p + 24) == 1)
        {
          [v106 addObject:v24];
          std::vector<long>::push_back[abi:ne200100](&v165, &v156);
        }

        _Block_object_dispose(&__p, 8);
      }

      v156 = ++v21;
      if (v20 == ++v23)
      {
        v20 = [obj countByEnumeratingWithState:&v152 objects:v173 count:16];
        if (v20)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  v28 = (v158[7] - v158[6]) >> 3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_2;
  block[3] = &unk_1E82D9AB8;
  block[4] = &v157;
  dispatch_apply(v28, 0, block);
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v29 = v158;
  v30 = *v104;
  v31 = *(v104 + 8);
  if (*v104 == v31)
  {
    v35 = 0.0;
  }

  else
  {
    v32 = 0;
    do
    {
      __p = 0;
      p_p = 0;
      v133 = 0;
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(&__p, *v30, v30[1], 0xAAAAAAAAAAAAAAABLL * ((v30[1] - *v30) >> 3));
      v33 = __p;
      v34 = p_p;
      if (__p)
      {
        p_p = __p;
        operator delete(__p);
      }

      v32 -= 0x5555555555555555 * ((v34 - v33) >> 3);
      v30 += 3;
    }

    while (v30 != v31);
    v35 = (v32 * 1.4);
  }

  v103 = v35;
  *buf = 0;
  v36 = (v29[7] - v29[6]) >> 3;
  if (v36 >= 1)
  {
    for (i = 0; i < v36; *buf = i)
    {
      _strokeMask = [*(v29[6] + 8 * i) _strokeMask];
      maskPaths = [_strokeMask maskPaths];

      v40 = *maskPaths;
      v41 = *(maskPaths + 8);
      if (*maskPaths == v41)
      {
        v42 = 0;
      }

      else
      {
        v42 = 0;
        do
        {
          __p = 0;
          p_p = 0;
          v133 = 0;
          std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(&__p, *v40, v40[1], 0xAAAAAAAAAAAAAAABLL * ((v40[1] - *v40) >> 3));
          v43 = __p;
          v44 = p_p;
          if (__p)
          {
            p_p = __p;
            operator delete(__p);
          }

          v42 -= 0x5555555555555555 * ((v44 - v43) >> 3);
          v40 += 3;
        }

        while (v40 != v41);
      }

      [*(v29[6] + 8 * i) _bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v140;
      v54 = (v141 - v140) >> 6;
      if (v54 <= 100)
      {
        v54 = 100;
      }

      v55 = v54 - 100;
      if (v54 - 100 >= ((v141 - v140) >> 6))
      {
LABEL_44:
        __p = 0;
        p_p = 0;
        v61 = *(MEMORY[0x1E695F050] + 16);
        v134 = *MEMORY[0x1E695F050];
        v135 = v61;
        v133 = 0;
        v136 = 0;
        std::vector<Bucket>::push_back[abi:ne200100](&v140, &__p);
        if (__p)
        {
          operator delete(__p);
        }

        std::vector<long>::push_back[abi:ne200100]((v141 - 64), buf);
        v62 = v141;
        *(v141 - 8) = v42;
        *(v62 - 40) = v46;
        *(v62 - 32) = v48;
        *(v62 - 24) = v50;
        *(v62 - 16) = v52;
      }

      else
      {
        v56 = (v54 << 6) - 6400;
        while (1)
        {
          v57 = *(v53 + v56 + 24);
          v58 = *(v53 + v56 + 32);
          v60 = *(v53 + v56 + 40);
          v59 = *(v53 + v56 + 48);
          v178.origin.x = v46;
          v178.origin.y = v48;
          v178.size.width = v50;
          v178.size.height = v52;
          v180 = CGRectInset(v178, -2.0, -2.0);
          v179.origin.x = v57;
          v179.origin.y = v58;
          v179.size.width = v60;
          v179.size.height = v59;
          if (!CGRectIntersectsRect(v179, v180))
          {
            break;
          }

          ++v55;
          v53 = v140;
          v56 += 64;
          if (v55 >= (v141 - v140) >> 6)
          {
            goto LABEL_44;
          }
        }

        v63 = v53 + v56;
        std::vector<long>::push_back[abi:ne200100](v63, buf);
        *(v63 + 7) += v42;
        v181.origin.x = v46;
        v181.origin.y = v48;
        v181.size.width = v50;
        v181.size.height = v52;
        *(v63 + 24) = CGRectUnion(*(v63 + 24), v181);
        i = *buf;
      }

      ++i;
    }
  }

  v109 = (v141 - v140) >> 6;
  if (v109 >= 1)
  {
    for (j = 0; j != v109; ++j)
    {
      v65 = &v140[8 * j];
      obja = vcvtpd_s64_f64(v65[7] / v103);
      if (obja >= 2)
      {
        v66 = 0;
        v67 = ((v65[1] - *v65) >> 3) / obja;
        if (v67 <= 1)
        {
          v67 = 1;
        }

        v111 = v67;
        v112 = v67 + 1;
        v68 = 8 * v67;
        v69 = (8 * v67) >> 3;
        do
        {
          if (v112 >= (v140[8 * j + 1] - v140[8 * j]) >> 3)
          {
            break;
          }

          __p = 0;
          p_p = 0;
          v70 = *(MEMORY[0x1E695F050] + 16);
          v134 = *MEMORY[0x1E695F050];
          v135 = v70;
          v133 = 0;
          v136 = 0;
          std::vector<Bucket>::push_back[abi:ne200100](&v140, &__p);
          if (__p)
          {
            operator delete(__p);
          }

          v71 = &v140[8 * j];
          if (v69 >= 1)
          {
            v72 = v141;
            v73 = (v71[1] - v68);
            v75 = *(v141 - 56);
            v74 = *(v141 - 48);
            if (v74 - v75 >= v68)
            {
              memmove(*(v141 - 56), v71[1] - v68, v68);
              *(v72 - 56) = &v75[v68];
            }

            else
            {
              v76 = *(v141 - 64);
              v77 = v69 + (&v75[-v76] >> 3);
              if (v77 >> 61)
              {
                std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
              }

              v78 = v74 - v76;
              if (v78 >> 2 > v77)
              {
                v77 = v78 >> 2;
              }

              if (v78 >= 0x7FFFFFFFFFFFFFF8)
              {
                v79 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v77;
              }

              if (v79)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v141 - 64, v79);
              }

              v80 = 8 * (&v75[-v76] >> 3);
              v81 = (v80 + v68);
              v82 = v80;
              do
              {
                v83 = *v73++;
                *v82++ = v83;
              }

              while (v82 != v81);
              memcpy((v80 + v68), v75, *(v72 - 56) - v75);
              v84 = *(v72 - 64);
              v85 = v81 + *(v72 - 56) - v75;
              *(v72 - 56) = v75;
              v86 = v75 - v84;
              v87 = (v80 - (v75 - v84));
              memcpy(v87, v84, v86);
              v88 = *(v72 - 64);
              *(v72 - 64) = v87;
              *(v72 - 56) = v85;
              *(v72 - 48) = 0;
              if (v88)
              {
                operator delete(v88);
              }
            }
          }

          std::vector<double>::resize(v71, ((v71[1] - *v71) >> 3) - v111);
          ++v66;
        }

        while (v66 != obja);
      }
    }
  }

  v89 = (v158[7] - v158[6]) >> 3;
  v137 = 0;
  std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::vector[abi:ne200100](&v138, v89);
  __p = MEMORY[0x1E69E9820];
  p_p = 3221225472;
  v133 = ___ZL12sliceBucketsPNSt3__16vectorINS0_IN10ClipperLib8IntPointENS_9allocatorIS2_EEEENS3_IS5_EEEERNS0_IU8__strongP8PKStrokeNS3_ISB_EEEERNS0_I6BucketNS3_ISF_EEEERNS0_IU8__strongP7NSArrayISA_ENS3_ISM_EEEE_block_invoke;
  *&v134 = &__block_descriptor_64_e8_v16__0Q8l;
  *(&v134 + 1) = &v140;
  *&v135 = v158 + 6;
  *(&v135 + 1) = v104;
  v136 = &v138;
  dispatch_apply((v141 - v140) >> 6, 0, &__p);
  __p = 0;
  p_p = &__p;
  v133 = 0x4812000000;
  *&v134 = __Block_byref_object_copy__75;
  *(&v134 + 1) = __Block_byref_object_dispose__76;
  *&v135 = "";
  v130[3] = 0;
  std::vector<PKStroke * {__strong}>::vector[abi:ne200100](&v135 + 1, [v106 count]);
  v124 = 0;
  v125 = &v124;
  v126 = 0x4812000000;
  v127 = __Block_byref_object_copy__82;
  v128 = __Block_byref_object_dispose__83;
  v129 = "";
  std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::vector[abi:ne200100](v130, [v106 count]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_85;
  aBlock[3] = &unk_1F4769A88;
  v90 = v107;
  v122 = v90;
  memset(v123, 0, sizeof(v123));
  std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::__init_with_size[abi:ne200100]<NSArray<PKStroke *> * {__strong}*,NSArray<PKStroke *> * {__strong}*>(v123, v138, v139, (v139 - v138) >> 3);
  v91 = _Block_copy(aBlock);
  v92 = [v106 count];
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_87;
  v115[3] = &unk_1E82D9AE0;
  v93 = v106;
  v116 = v93;
  v119 = &__p;
  v120 = &v124;
  v94 = v91;
  selfCopy = self;
  v118 = v94;
  dispatch_apply(v92, 0, v115);
  *buf = v104;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](buf);
  MEMORY[0x1CCA6ECB0](v104, 0x20C40960023A9);
  v95 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = v166;
    v97 = v165;
    v98 = [strokes count];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 134218496;
    *&buf[4] = (v96 - v97) >> 3;
    v169 = 2048;
    v170 = v98;
    v171 = 2048;
    v172 = v99 - v102;
    _os_log_impl(&dword_1C7CCA000, v95, OS_LOG_TYPE_DEFAULT, "Sliced %ld/%ld strokes in %fs.", buf, 0x20u);
  }

  if (v166 == v165 || *(p_p + 56) == *(p_p + 48) || v125[7] == v125[6])
  {
    v100 = 0;
  }

  else
  {
    v100 = [PKDrawing updateFromSlicedIntersectingIndexes:"updateFromSlicedIntersectingIndexes:resultNewRoots:resultUpdatedStrokes:count:" resultNewRoots:? resultUpdatedStrokes:? count:?];
  }

  *buf = v123;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);

  _Block_object_dispose(&v124, 8);
  *buf = v130;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](buf);
  _Block_object_dispose(&__p, 8);
  v124 = &v135 + 1;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v124);
  __p = &v138;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v140;
  std::vector<Bucket>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Block_object_dispose(&v157, 8);
  __p = v163;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  return v100;
}

uint64_t __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (([v3 _isHidden] & 1) == 0 && (objc_msgSend(v3, "hasSubstrokes") & 1) == 0)
  {
    [v3 _bounds];
    if (CGRectIntersectsRect(v9, *(a1 + 56)))
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(*(*(*(a1 + 40) + 8) + 56) - *(*(*(a1 + 40) + 8) + 48)) >> 3];
      v5 = *(a1 + 32);
      v6 = [v3 _strokeUUID];
      [v5 setObject:v4 forKeyedSubscript:v6];

      std::vector<PKStroke * {__strong}>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v8);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return 1;
}

void __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(*(*(a1 + 32) + 8) + 48) + 8 * a2) _strokeMask];

  if (!v4)
  {
    v5 = [*(*(*(*(a1 + 32) + 8) + 48) + 8 * a2) copyForMutation];
    v6 = *(*(*(a1 + 32) + 8) + 48);
    v7 = *(v6 + 8 * a2);
    *(v6 + 8 * a2) = v5;

    v8 = *(*(*(*(a1 + 32) + 8) + 48) + 8 * a2);

    [v8 generateMask];
  }
}

id __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_85(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 _strokeUUID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(*(a1 + 40) + 8 * [v6 intValue]);
  }

  else
  {
    v10[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  v8 = v7;

  return v8;
}

void __43__PKDrawing_Slicing__sliceWithEraseStroke___block_invoke_87(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  objc_storeStrong((*(*(*(a1 + 56) + 8) + 48) + 8 * a2), v7);
  v4 = [v7 _sliceWithSlicingBlock:*(a1 + 48) inDrawing:*(a1 + 40) newRootStroke:*(*(*(a1 + 56) + 8) + 48) + 8 * a2];
  v5 = *(*(*(a1 + 64) + 8) + 48);
  v6 = *(v5 + 8 * a2);
  *(v5 + 8 * a2) = v4;
}

- (id)clipStroke:(id)stroke onPlane:(id)plane renderMask:(id)mask
{
  strokeCopy = stroke;
  planeCopy = plane;
  maskCopy = mask;
  v11 = strokeCopy;
  v12 = v11;
  if (maskCopy)
  {
    v13 = -[PKDrawing _clipStroke:againstPaths:](self, "_clipStroke:againstPaths:", v11, [maskCopy maskPaths]);
  }

  else
  {
    v13 = v11;
    if (planeCopy)
    {
      [v11 _setClipPlane:planeCopy];
      v16 = 0;
      v14 = [(PKDrawing *)self _clipStroke:v12 newRootStroke:&v16];
      v13 = v16;
    }
  }

  return v13;
}

- (void)clipStrokesIfNeededOnQueue:(id)queue completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v43 = 0;
  v44 = &v43;
  v45 = 0x4812000000;
  v46 = __Block_byref_object_copy__90;
  v47 = __Block_byref_object_dispose__91;
  v48 = "";
  v50 = 0;
  v51 = 0;
  __p = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4812000000;
  v39 = __Block_byref_object_copy__75;
  v40 = __Block_byref_object_dispose__76;
  v41 = "";
  memset(v42, 0, sizeof(v42));
  v52 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  _rootStrokes = [(PKDrawing *)self _rootStrokes];
  v8 = [_rootStrokes countByEnumeratingWithState:&v31 objects:v53 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(_rootStrokes);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v35 = v12;
        if (([v12 _isHidden] & 1) == 0 && (objc_msgSend(v12, "hasSubstrokes") & 1) == 0)
        {
          v13 = [v12 ink];
          behavior = [v13 behavior];
          if ([behavior isEraser])
          {

            goto LABEL_14;
          }

          _clipPlane = [v12 _clipPlane];
          if (_clipPlane)
          {
          }

          else
          {
            _renderMask = [v12 _renderMask];
            v17 = _renderMask == 0;

            if (v17)
            {
              goto LABEL_14;
            }
          }

          std::vector<long>::push_back[abi:ne200100](v44 + 6, &v52);
          std::vector<PKStroke * {__strong}>::push_back[abi:ne200100](v37 + 6, &v35);
        }

LABEL_14:
        v52 = ++v9;
      }

      v8 = [_rootStrokes countByEnumeratingWithState:&v31 objects:v53 count:16];
    }

    while (v8);
  }

  if (v37[7] != v37[6])
  {
    v18 = [(PKDrawing *)self copy];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__PKDrawing_Slicing__clipStrokesIfNeededOnQueue_completion___block_invoke;
    aBlock[3] = &unk_1E82D9B30;
    v29 = &v36;
    v19 = v18;
    v26 = v19;
    selfCopy = self;
    v30 = &v43;
    v28 = completionCopy;
    v20 = _Block_copy(aBlock);
    v21 = v20;
    if (queueCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__PKDrawing_Slicing__clipStrokesIfNeededOnQueue_completion___block_invoke_98;
      block[3] = &unk_1E82D63B0;
      v24 = v20;
      dispatch_async(queueCopy, block);
    }

    else
    {
      v20[2](v20);
    }
  }

  _Block_object_dispose(&v36, 8);
  v52 = v42;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v52);
  _Block_object_dispose(&v43, 8);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }
}

void __60__PKDrawing_Slicing__clipStrokesIfNeededOnQueue_completion___block_invoke(uint64_t a1)
{
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x4812000000;
  v21[3] = __Block_byref_object_copy__75;
  v21[4] = __Block_byref_object_dispose__76;
  v21[5] = "";
  v2 = (*(*(*(a1 + 56) + 8) + 56) - *(*(*(a1 + 56) + 8) + 48)) >> 3;
  v20[3] = 0;
  std::vector<PKStroke * {__strong}>::vector[abi:ne200100](v22, v2);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x4812000000;
  v19[3] = __Block_byref_object_copy__82;
  v19[4] = __Block_byref_object_dispose__83;
  v19[5] = "";
  v3 = (*(*(*(a1 + 56) + 8) + 56) - *(*(*(a1 + 56) + 8) + 48)) >> 3;
  v18 = 0;
  std::vector<NSArray<PKStroke *> * {__strong},std::allocator<NSArray<PKStroke *> * {__strong}>>::vector[abi:ne200100](v20, v3);
  v4 = *(a1 + 56);
  v5 = (*(*(v4 + 8) + 56) - *(*(v4 + 8) + 48)) >> 3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__PKDrawing_Slicing__clipStrokesIfNeededOnQueue_completion___block_invoke_2;
  v12 = &unk_1E82D9B08;
  v15 = v4;
  v16 = v21;
  v6 = *(a1 + 32);
  v17 = v19;
  v7 = *(a1 + 40);
  v13 = v6;
  v14 = v7;
  dispatch_apply(v5, 0, &v9);
  v8 = [*(a1 + 32) updateFromSlicedIntersectingIndexes:v9 resultNewRoots:v10 resultUpdatedStrokes:v11 count:v12];
  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(v19, 8);
  v23 = v20;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v23);
  _Block_object_dispose(v21, 8);
  v19[0] = v22;
  std::vector<PKStroke * {__strong}>::__destroy_vector::operator()[abi:ne200100](v19);
}

void __60__PKDrawing_Slicing__clipStrokesIfNeededOnQueue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(*(a1 + 48) + 8) + 48) + 8 * a2);
  v5 = v4;
  v6 = [v5 _renderMask];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 _renderMask];
    v9 = [v7 _clipStroke:v5 againstPaths:{objc_msgSend(v8, "maskPaths")}];
    v10 = *(*(*(a1 + 56) + 8) + 48);
    v11 = *(v10 + 8 * a2);
    *(v10 + 8 * a2) = v9;
  }

  else
  {
    v12 = [v5 _clipPlane];

    if (!v12)
    {
      goto LABEL_6;
    }

    objc_storeStrong((*(*(*(a1 + 56) + 8) + 48) + 8 * a2), v4);
    v13 = [*(a1 + 32) _clipStroke:v5 newRootStroke:*(*(*(a1 + 56) + 8) + 48) + 8 * a2];
    v14 = *(*(*(a1 + 64) + 8) + 48);
    v8 = *(v14 + 8 * a2);
    *(v14 + 8 * a2) = v13;
  }

LABEL_6:
  v15 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 40);
    v19 = 138412546;
    v20 = v17;
    v21 = 2112;
    v22 = v5;
    _os_log_debug_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEBUG, "Drawing %@ merged clipped/masked stroke %@", &v19, 0x16u);
  }

  v16 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v5 _groupID];
    v19 = 138412290;
    v20 = v18;
    _os_log_debug_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEBUG, "Stroke merged into group: %@", &v19, 0xCu);
  }
}

- (id)strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint onscreenVisibleStrokes:(id)strokes
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v5;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  v6 = [(PKDrawing *)self strokesIntersectedByPoint:v8 prevPoint:strokes minThreshold:point.x transform:point.y onscreenVisibleStrokes:prevPoint.x, prevPoint.y, 10.0];

  return v6;
}

- (id)_strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint transform:(CGAffineTransform *)transform
{
  y = prevPoint.y;
  x = prevPoint.x;
  v7 = point.y;
  v8 = point.x;
  v10 = [(PKDrawing *)self strokes:*&transform->a];
  v11 = [(PKDrawing *)self strokesIntersectedByPoint:&v13 prevPoint:v10 minThreshold:v8 transform:v7 onscreenVisibleStrokes:x, y, 10.0];

  return v11;
}

- (id)strokesIntersectedByPoint:(CGPoint)point prevPoint:(CGPoint)prevPoint minThreshold:(double)threshold transform:(CGAffineTransform *)transform onscreenVisibleStrokes:(id)strokes
{
  y = prevPoint.y;
  x = prevPoint.x;
  v10 = point.y;
  v11 = point.x;
  v63 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v13 = *&transform->c;
  *&v60.a = *&transform->a;
  *&v60.c = v13;
  *&v60.tx = *&transform->tx;
  if (!CGAffineTransformIsIdentity(&v60))
  {
    v14 = *&transform->c;
    *&v59.a = *&transform->a;
    *&v59.c = v14;
    *&v59.tx = *&transform->tx;
    memset(&v60, 0, sizeof(v60));
    CGAffineTransformInvert(&v60, &v59);
    v15 = v10 * v60.d + v60.b * v11;
    v11 = v60.tx + v10 * v60.c + v60.a * v11;
    v10 = v60.ty + v15;
    v16 = y * v60.d + v60.b * x;
    x = v60.tx + y * v60.c + v60.a * x;
    y = v60.ty + v16;
  }

  [(PKDrawing *)self _eraserStrokeBounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  selfCopy = self;
  if (strokesCopy)
  {
    strokes = strokesCopy;
  }

  else
  {
    strokes = [(PKDrawing *)self strokes];
  }

  v25 = [MEMORY[0x1E695DFA8] set];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v26 = strokes;
  v27 = [v26 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v27)
  {
    v28 = *v56;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v56 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v55 + 1) + 8 * i);
        v31 = [v30 ink];
        behavior = [v31 behavior];
        isEraser = [behavior isEraser];

        if ((isEraser & 1) == 0)
        {
          [v30 _bounds];
          v66.origin.x = v18;
          v66.origin.y = v20;
          v66.size.width = v22;
          v66.size.height = v24;
          if (!CGRectIntersectsRect(v65, v66))
          {
            if ([v30 intersectsLineFrom:v11 to:v10 minThreshold:{x, y, threshold}])
            {
              [orderedSet addObject:v30];
              _groupID = [v30 _groupID];
              v35 = _groupID == 0;

              if (!v35)
              {
                _groupID2 = [v30 _groupID];
                [v25 addObject:_groupID2];
              }
            }
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v27);
  }

  if ([v25 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    strokes2 = [(PKDrawing *)selfCopy strokes];
    v38 = [strokes2 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v38)
    {
      v39 = *v52;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v52 != v39)
          {
            objc_enumerationMutation(strokes2);
          }

          v41 = *(*(&v51 + 1) + 8 * j);
          _groupID3 = [v41 _groupID];
          if (_groupID3)
          {
            _groupID4 = [v41 _groupID];
            v44 = [v25 containsObject:_groupID4];

            if (v44)
            {
              [orderedSet addObject:v41];
            }
          }
        }

        v38 = [strokes2 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v38);
    }
  }

  return orderedSet;
}

- (id)intersectedStrokesFromStroke:(id)stroke visibleOnscreenStrokes:(id)strokes
{
  strokeCopy = stroke;
  strokesCopy = strokes;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PKDrawing_IntersectionAdditions__intersectedStrokesFromStroke_visibleOnscreenStrokes___block_invoke;
  v11[3] = &unk_1E82DB2F0;
  v8 = strokeCopy;
  v12 = v8;
  [v8 _bounds];
  v9 = [(PKDrawing *)self intersectedStrokesTest:v11 inBounds:strokesCopy visibleOnscreenStrokes:?];

  return v9;
}

- (id)intersectedStrokesFromRect:(CGRect)rect visibleOnscreenStrokes:(id)strokes
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__PKDrawing_IntersectionAdditions__intersectedStrokesFromRect_visibleOnscreenStrokes___block_invoke;
  v6[3] = &__block_descriptor_64_e18_B16__0__PKStroke_8l;
  rectCopy = rect;
  v4 = [(PKDrawing *)self intersectedStrokesTest:v6 inBounds:strokes visibleOnscreenStrokes:?];

  return v4;
}

- (id)intersectedStrokesTest:(id)test inBounds:(CGRect)bounds visibleOnscreenStrokes:(id)strokes
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v52 = *MEMORY[0x1E69E9840];
  testCopy = test;
  strokesCopy = strokes;
  v38 = strokesCopy;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (strokesCopy)
  {
    strokes = strokesCopy;
  }

  else
  {
    strokes = [(PKDrawing *)self strokes];
  }

  [(PKDrawing *)self _eraserStrokeBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E695DFA8] set];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = strokes;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v22)
  {
    v23 = *v47;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v46 + 1) + 8 * i);
        [v25 _bounds];
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        if (CGRectIntersectsRect(v54, v56))
        {
          [v25 _bounds];
          v57.origin.x = v13;
          v57.origin.y = v15;
          v57.size.width = v17;
          v57.size.height = v19;
          if (!CGRectIntersectsRect(v55, v57))
          {
            if (testCopy[2](testCopy, v25))
            {
              [orderedSet addObject:v25];
              _groupID = [v25 _groupID];
              v27 = _groupID == 0;

              if (!v27)
              {
                _groupID2 = [v25 _groupID];
                [v20 addObject:_groupID2];
              }
            }
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v22);
  }

  if ([v20 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = v21;
    v30 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v30)
    {
      v31 = *v43;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v43 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v42 + 1) + 8 * j);
          _groupID3 = [v33 _groupID];
          if (_groupID3)
          {
            _groupID4 = [v33 _groupID];
            v36 = [v20 containsObject:_groupID4];

            if (v36)
            {
              [orderedSet addObject:v33];
            }
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v30);
    }
  }

  return orderedSet;
}

- (CGRect)_eraserStrokeBounds
{
  v27 = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  strokes = [(PKDrawing *)self strokes];
  v7 = [strokes countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(strokes);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 ink];
        behavior = [v11 behavior];
        isEraser = [behavior isEraser];

        if (isEraser)
        {
          [v10 _bounds];
          v31.origin.x = v14;
          v31.origin.y = v15;
          v31.size.width = v16;
          v31.size.height = v17;
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          v29 = CGRectUnion(v28, v31);
          x = v29.origin.x;
          y = v29.origin.y;
          width = v29.size.width;
          height = v29.size.height;
        }
      }

      v7 = [strokes countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (id)intersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes
{
  y = point.y;
  x = point.x;
  strokesCopy = strokes;
  v12 = strokesCopy;
  if (strokesCopy)
  {
    strokes = strokesCopy;
  }

  else
  {
    strokes = [(PKDrawing *)self strokes];
  }

  v14 = strokes;
  v15 = [PKClusteringUtility _geometricBasedStrokeClusteringFromPoint:strokes visibleStrokes:type selectionType:inputType inputType:x, y];

  return v15;
}

- (id)firstIntersectedStrokeAtPoint:(CGPoint)point inputType:(int64_t)type visibleOnscreenStrokes:(id)strokes
{
  y = point.y;
  x = point.x;
  v24 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v10 = strokesCopy;
  if (strokesCopy)
  {
    strokes = strokesCopy;
  }

  else
  {
    strokes = [(PKDrawing *)self strokes];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = strokes;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = *v20;
    if (type)
    {
      v15 = 10.0;
    }

    else
    {
      v15 = 20.0;
    }

    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        if ([v17 intersectsPoint:x boundsOutset:y minimumStrokeThreshold:{v15, v15, v19}])
        {
          v13 = v17;
          goto LABEL_16;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v13;
}

- (void)fetchIntersectedStrokesBetweenPoint:(CGPoint)point otherPoint:(CGPoint)otherPoint visibleOnscreenStrokes:(id)strokes completion:(id)completion
{
  y = otherPoint.y;
  x = otherPoint.x;
  v9 = point.y;
  v10 = point.x;
  strokesCopy = strokes;
  completionCopy = completion;
  if (strokesCopy)
  {
    strokes = strokesCopy;
  }

  else
  {
    strokes = [(PKDrawing *)self strokes];
  }

  v14 = strokes;
  [PKClusteringUtility _fetchIntersectedStrokesForGeometricBasedStrokeClusteringBetweenPoint:strokes otherPoint:completionCopy visibleStrokes:v10 completion:v9, x, y];
}

+ (CGRect)_boundingBoxForStrokes:(id)strokes
{
  v25 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = strokesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v11) _bounds];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGRect)_boundingBoxForStrokeArray:(id)array
{
  v25 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v11) _bounds];
        v29.origin.x = v12;
        v29.origin.y = v13;
        v29.size.width = v14;
        v29.size.height = v15;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v29);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (id)_findRightmostStrokes:(id)strokes
{
  v21 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = strokesCopy;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    v14 = v5;
    goto LABEL_13;
  }

  v8 = *v17;
  v9 = -1.79769313e308;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      [v11 _bounds];
      MaxX = CGRectGetMaxX(v23);
      if (MaxX > v9)
      {
        v13 = v11;

        v9 = MaxX;
        v6 = v13;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);

  if (v6)
  {
    [array addObject:v6];
    v14 = [PKDrawing _otherStrokesCloseToLeft:0 forStrokes:v5 withClosestStroke:v6];
    [array addObjectsFromArray:v14];
LABEL_13:
  }

  return array;
}

+ (id)_findLeftmostStrokes:(id)strokes
{
  v21 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = strokesCopy;
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    v14 = v5;
    goto LABEL_13;
  }

  v8 = *v17;
  v9 = 1.79769313e308;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v16 + 1) + 8 * i);
      [v11 _bounds];
      MinX = CGRectGetMinX(v23);
      if (MinX < v9)
      {
        v13 = v11;

        v9 = MinX;
        v6 = v13;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);

  if (v6)
  {
    [array addObject:v6];
    v14 = [PKDrawing _otherStrokesCloseToLeft:1 forStrokes:v5 withClosestStroke:v6];
    [array addObjectsFromArray:v14];
LABEL_13:
  }

  return array;
}

+ (id)_otherStrokesCloseToLeft:(BOOL)left forStrokes:(id)strokes withClosestStroke:(id)stroke
{
  leftCopy = left;
  v90 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  strokeCopy = stroke;
  array = [MEMORY[0x1E695DF70] array];
  [PKDrawing _boundingBoxForStrokes:strokesCopy];
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (leftCopy)
  {
    MinX = CGRectGetMinX(*&v10);
    v92.origin.x = v14;
    v92.origin.y = v15;
    v92.size.width = v16;
    v92.size.height = v17;
    MinY = CGRectGetMinY(v92);
    v93.origin.x = v14;
    v93.origin.y = v15;
    v93.size.width = v16;
    v93.size.height = v17;
    MaxX = CGRectGetMinX(v93);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v10);
    v94.origin.x = v14;
    v94.origin.y = v15;
    v94.size.width = v16;
    v94.size.height = v17;
    MinY = CGRectGetMinY(v94);
    v95.origin.x = v14;
    v95.origin.y = v15;
    v95.size.width = v16;
    v95.size.height = v17;
    MaxX = CGRectGetMaxX(v95);
  }

  v82 = MaxX;
  v96.origin.x = v14;
  v96.origin.y = v15;
  v96.size.width = v16;
  v96.size.height = v17;
  MaxY = CGRectGetMaxY(v96);
  [strokeCopy _bounds];
  v79 = v20;
  v80 = v19;
  rect = v21;
  v23 = v22;
  [strokeCopy _bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [strokeCopy _bounds];
  v77 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v97.origin.x = v25;
  v97.origin.y = v27;
  v97.size.width = v29;
  v97.size.height = v31;
  MidX = CGRectGetMidX(v97);
  v98.origin.x = v25;
  v98.origin.y = v27;
  v98.size.width = v29;
  v98.size.height = v31;
  MidY = CGRectGetMidY(v98);
  v99.origin.x = v34;
  v99.origin.y = v77;
  v99.size.width = v36;
  v99.size.height = v38;
  v40 = CGRectGetMidX(v99);
  v100.origin.x = v34;
  v100.origin.y = v77;
  v100.size.width = v36;
  v100.size.height = v38;
  v41 = CGRectGetMidY(v100);
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v42 = strokesCopy;
  v43 = [v42 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v43)
  {
    v44 = fmax((MidY - MinY) * (MidY - MinY) + (MidX - MinX) * (MidX - MinX), (v41 - MaxY) * (v41 - MaxY) + (v40 - v82) * (v40 - v82));
    v45 = *v86;
    do
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v86 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v85 + 1) + 8 * i);
        if ([v47 isEqual:strokeCopy])
        {
          continue;
        }

        [v47 _bounds];
        x = v101.origin.x;
        y = v101.origin.y;
        width = v101.size.width;
        height = v101.size.height;
        v52 = CGRectGetMidX(v101);
        v102.origin.x = x;
        v102.origin.y = y;
        v102.size.width = width;
        v102.size.height = height;
        v53 = CGRectGetMidY(v102);
        v54 = x;
        v55 = y;
        v56 = width;
        v57 = height;
        if (leftCopy)
        {
          v58 = CGRectGetMinX(*&v54);
          v103.origin.y = v79;
          v103.origin.x = v80;
          v103.size.width = rect;
          v103.size.height = v23;
          v59 = v58 < CGRectGetMaxX(v103);
        }

        else
        {
          v60 = CGRectGetMaxX(*&v54);
          v104.origin.y = v79;
          v104.origin.x = v80;
          v104.size.width = rect;
          v104.size.height = v23;
          v59 = v60 > CGRectGetMinX(v104);
        }

        if (fmin((v53 - MinY) * (v53 - MinY) + (v52 - MinX) * (v52 - MinX), (v53 - MaxY) * (v53 - MaxY) + (v52 - v82) * (v52 - v82)) < v44 && v59)
        {
          goto LABEL_26;
        }

        [v47 _bounds];
        v62 = v61;
        v64 = v63;
        v66 = v65;
        v68 = v67;
        [strokeCopy _bounds];
        if (v62 >= v69)
        {
          if (v69 + v71 > v62)
          {
LABEL_17:
            v73 = 0;
            goto LABEL_20;
          }
        }

        else if (v62 + v66 > v69)
        {
          goto LABEL_17;
        }

        v73 = 1;
LABEL_20:
        if (v64 >= v70)
        {
          v74 = v70 + v72 > v64;
        }

        else
        {
          v74 = v64 + v68 > v70;
        }

        if (!v74)
        {
          v73 = 1;
        }

        if ((v73 & 1) == 0)
        {
LABEL_26:
          [array addObject:v47];
          continue;
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v85 objects:v89 count:16];
    }

    while (v43);
  }

  return array;
}

+ (PKDrawing)drawingWithData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy error:0];

  return v5;
}

- (int64_t)_minimumSerializationVersion
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _rootStrokes = [(PKDrawing *)self _rootStrokes];
  v3 = [_rootStrokes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    v5 = 1;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(_rootStrokes);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        if ([v7 hasSubstrokes])
        {
          goto LABEL_17;
        }

        _strokeMask = [v7 _strokeMask];
        v9 = _strokeMask == 0;

        if (!v9 || [v7 _shapeType])
        {
          goto LABEL_17;
        }

        _groupID = [v7 _groupID];
        if (_groupID)
        {

LABEL_17:
          v5 = +[PKDrawing _currentSerializationVersion];
          goto LABEL_18;
        }

        _renderGroupID = [v7 _renderGroupID];
        v12 = _renderGroupID == 0;

        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = [v7 ink];
        if ([v13 version] == 2)
        {
          v5 = +[PKDrawing _currentSerializationVersion];

          goto LABEL_18;
        }
      }

      v3 = [_rootStrokes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_18:

  return v5;
}

@end