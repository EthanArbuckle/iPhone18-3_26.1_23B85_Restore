@interface PKDrawingConcrete
+ (CGAffineTransform)_orientationTransform:(SEL)transform size:(int64_t)size;
+ (_PKStrokeID)newStrokeIDGreaterThan:(SEL)than forUUID:(_PKStrokeID *)d;
+ (id)_defaultConversionQueue;
- ($3CC19D079FD0B010EE84973AA846B91B)_drawingStrokeInfoIsLegacyDrawing:(SEL)drawing;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)_transformForImageWithSize:(SEL)size;
- (CGRect)_canvasBounds;
- (CGRect)bounds;
- (CGSize)_orientedDrawingSize;
- (CGSize)_unscaledOrientedDrawingSize;
- (NSUUID)replicaUUID;
- (PKDrawingConcrete)init;
- (PKDrawingConcrete)initWithArchive:(const void *)archive loadNonInkingStrokes:(BOOL)strokes error:(id *)error;
- (PKDrawingConcrete)initWithData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error;
- (PKDrawingConcrete)initWithDrawing:(id)drawing;
- (PKDrawingConcrete)initWithLegacyArchive:(const void *)archive;
- (PKDrawingConcrete)initWithLegacyData:(id)data;
- (PKDrawingConcrete)initWithStrokes:(id)strokes fromDrawing:(id)drawing;
- (PKDrawingConcrete)initWithUUID:(id)d strokes:(id)strokes version:(id)version canvasBounds:(CGRect)bounds boundsVersion:(_PKStrokeID *)boundsVersion unknownFields:(shared_ptr<PKProtobufUnknownFields>)fields;
- (PKDrawingConcrete)initWithV1Archive:(const void *)archive loadNonInkingStrokes:(BOOL)strokes;
- (PKDrawingConcrete)initWithV1Data:(id)data loadNonInkingStrokes:(BOOL)strokes;
- (_PKStrokeID)newStrokeIDGreaterThan:(SEL)than;
- (double)_conversionScaleFactor;
- (id).cxx_construct;
- (id)_data;
- (id)_dataInUnknownFields;
- (id)_initWithUnzippedData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error;
- (id)_newStroke:(id)stroke withGroupID:(id)d;
- (id)_newStroke:(id)stroke withInk:(id)ink;
- (id)_stroke:(id)_stroke transformed:(CGAffineTransform *)transformed concat:(BOOL)concat;
- (id)_strokeForIdentifier:(id)identifier;
- (id)_strokesIdentifierMap;
- (id)_upgradeOnQueue:(id)queue isLegacyDrawing:(BOOL)drawing completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutInternalStrokes;
- (id)serialize;
- (id)serializeTransiently;
- (id)serializeWithVersion:(int64_t)version;
- (id)undoableAddNewStrokes:(id)strokes;
- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes;
- (id)undoableDeleteStrokes:(id)strokes;
- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name;
- (id)undoableSetStrokes:(id)strokes inks:(id)inks;
- (id)undoableTransformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (id)updateFromSlicedIntersectingIndexes:(int64_t *)indexes resultNewRoots:(const void *)roots resultUpdatedStrokes:(const void *)strokes count:(int64_t)count;
- (id)v1SerializeWithPathData:(BOOL)data;
- (id)v1SerializeWithPathData:(BOOL)data toVersion:(unsigned int *)version;
- (id)visibleStrokeForInsertingStroke:(id)stroke;
- (int64_t)_orientation;
- (int64_t)saveToArchive:(void *)archive withPathData:(BOOL)data;
- (shared_ptr<PKProtobufUnknownFields>)_unknownFields;
- (unint64_t)hash;
- (unint64_t)mergeWithDrawing:(id)drawing;
- (unsigned)saveToV1Archive:(void *)archive withPathData:(BOOL)data;
- (void)_collectAllStrokesIn:(id)in into:(id)into;
- (void)_mergeStroke:(id)stroke;
- (void)_removeHiddenAndEraserStrokes;
- (void)_removeInvisibleStrokes;
- (void)_setAllStrokes:(id)strokes;
- (void)_updateStrokes:(id)strokes updateBlock:(id)block;
- (void)_upgradeLegacyPenInks;
- (void)addNewStroke:(id)stroke;
- (void)dealloc;
- (void)didUpdate;
- (void)invalidateStrokeBounds;
- (void)invalidateVisibleStrokes;
- (void)normalizeUUIDsWithDrawing:(id)drawing;
- (void)setBoundsVersion:(_PKStrokeID *)version;
- (void)setStrokeSortIDForInsertion:(id)insertion;
- (void)setStrokes:(id)strokes groupID:(id)d;
- (void)setStrokes:(id)strokes hidden:(BOOL)hidden;
- (void)setStrokes:(id)strokes inks:(id)inks;
- (void)set_canvasBounds:(CGRect)bounds;
- (void)set_orientation:(int64_t)set_orientation;
- (void)transformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat;
- (void)updateStroke:(id)stroke indexHint:(unint64_t)hint;
- (void)updateStrokes:(id)strokes;
- (void)willMergeWithDrawing:(id)drawing;
@end

@implementation PKDrawingConcrete

- (id).cxx_construct
{
  *(self + 22) = 0;
  *(self + 23) = 0;
  return self;
}

- (PKDrawingConcrete)init
{
  v13.receiver = self;
  v13.super_class = PKDrawingConcrete;
  v2 = [(PKDrawing *)&v13 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = uUID;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allStrokes = v2->_allStrokes;
    v2->_allStrokes = v5;

    v7 = objc_alloc_init(PKVectorTimestamp);
    version = v2->_version;
    v2->_version = v7;

    v9 = MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 16);
    v2->__canvasBounds.origin = *MEMORY[0x1E695F050];
    v2->__canvasBounds.size = v10;
    v11 = v9[1];
    v2->__bounds.origin = *v9;
    v2->__bounds.size = v11;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_replicaUUID)
  {
    v3 = +[PKReplicaManager sharedReplicaManager];
    [v3 returnReplicaForDrawing:self];
  }

  v4.receiver = self;
  v4.super_class = PKDrawingConcrete;
  [(PKDrawing *)&v4 dealloc];
}

- (PKDrawingConcrete)initWithUUID:(id)d strokes:(id)strokes version:(id)version canvasBounds:(CGRect)bounds boundsVersion:(_PKStrokeID *)boundsVersion unknownFields:(shared_ptr<PKProtobufUnknownFields>)fields
{
  ptr = fields.__ptr_;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  dCopy = d;
  strokesCopy = strokes;
  versionCopy = version;
  v29.receiver = self;
  v29.super_class = PKDrawingConcrete;
  v20 = [(PKDrawing *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, d);
    v22 = [strokesCopy mutableCopy];
    allStrokes = v21->_allStrokes;
    v21->_allStrokes = v22;

    objc_storeStrong(&v21->_version, version);
    v21->__canvasBounds.origin.x = x;
    v21->__canvasBounds.origin.y = y;
    v21->__canvasBounds.size.width = width;
    v21->__canvasBounds.size.height = height;
    v24 = *(MEMORY[0x1E695F050] + 16);
    v21->__bounds.origin = *MEMORY[0x1E695F050];
    v21->__bounds.size = v24;
    v26 = *ptr;
    v25 = *(ptr + 1);
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v21->_unknownFields.__cntrl_;
    v21->_unknownFields.__ptr_ = v26;
    v21->_unknownFields.__cntrl_ = v25;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v21;
}

- (PKDrawingConcrete)initWithDrawing:(id)drawing
{
  v28 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v26[0].receiver = self;
  v26[0].super_class = PKDrawingConcrete;
  v5 = [(objc_super *)v26 initWithDrawing:drawingCopy];
  if (v5)
  {
    nsuuid = [drawingCopy nsuuid];
    v7 = *(v5 + 9);
    *(v5 + 9) = nsuuid;

    _allStrokes = [drawingCopy _allStrokes];
    v9 = [_allStrokes mutableCopy];
    v10 = *(v5 + 11);
    *(v5 + 11) = v9;

    version = [drawingCopy version];
    v12 = [version copy];
    v13 = *(v5 + 21);
    *(v5 + 21) = v12;

    [drawingCopy _canvasBounds];
    *(v5 + 12) = v14;
    *(v5 + 13) = v15;
    *(v5 + 14) = v16;
    *(v5 + 15) = v17;
    v18 = *(drawingCopy + 9);
    *(v5 + 8) = *(drawingCopy + 8);
    *(v5 + 9) = v18;
    [drawingCopy boundsVersion];
    v19 = v27;
    *(v5 + 12) = v26[1];
    *(v5 + 26) = v19;
    v20 = [drawingCopy[10] mutableCopy];
    v21 = *(v5 + 10);
    *(v5 + 10) = v20;

    v23 = drawingCopy[22];
    v22 = drawingCopy[23];
    if (v22)
    {
      atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
    }

    v24 = *(v5 + 23);
    *(v5 + 22) = v23;
    *(v5 + 23) = v22;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  return v5;
}

- (PKDrawingConcrete)initWithStrokes:(id)strokes fromDrawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  v8 = [(PKDrawingConcrete *)self init];
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    array2 = [strokesCopy mutableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [strokesCopy array];
      v11 = [array mutableCopy];
      allStrokes = v8->_allStrokes;
      v8->_allStrokes = v11;

      goto LABEL_8;
    }

    array2 = [MEMORY[0x1E695DF70] array];
  }

  array = v8->_allStrokes;
  v8->_allStrokes = array2;
LABEL_8:

  if (drawingCopy)
  {
    version = [drawingCopy version];
    v14 = [version copy];
    version = v8->_version;
    v8->_version = v14;

    [drawingCopy _canvasBounds];
    v8->__canvasBounds.origin.x = v16;
    v8->__canvasBounds.origin.y = v17;
    v8->__canvasBounds.size.width = v18;
    v8->__canvasBounds.size.height = v19;
  }

LABEL_10:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_replicaUUID)
  {
    v5 = +[PKReplicaManager sharedReplicaManager];
    [v5 updateVersionForDrawing:self];
  }

  v6 = [objc_opt_class() allocWithZone:zone];

  return [v6 initWithDrawing:self];
}

- (id)copyWithoutInternalStrokes
{
  v2 = [[PKDrawingConcrete alloc] initWithDrawing:self];
  _allStrokes = [(PKDrawingConcrete *)v2 _allStrokes];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_7];
  [_allStrokes filterUsingPredicate:v4];

  [(PKDrawingConcrete *)v2 invalidateVisibleStrokes];
  return v2;
}

- (void)_setAllStrokes:(id)strokes
{
  strokesCopy = strokes;
  v4 = [strokesCopy mutableCopy];
  allStrokes = self->_allStrokes;
  self->_allStrokes = v4;
}

- (NSUUID)replicaUUID
{
  replicaUUID = self->_replicaUUID;
  if (!replicaUUID)
  {
    v4 = +[PKReplicaManager sharedReplicaManager];
    v5 = [v4 checkoutReplicaUUIDForDrawing:self];
    v6 = self->_replicaUUID;
    self->_replicaUUID = v5;

    replicaUUID = self->_replicaUUID;
  }

  return replicaUUID;
}

- (void)_collectAllStrokesIn:(id)in into:(id)into
{
  v18 = *MEMORY[0x1E69E9840];
  inCopy = in;
  intoCopy = into;
  _strokeUUID = [inCopy _strokeUUID];
  [intoCopy setObject:inCopy forKeyedSubscript:_strokeUUID];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [inCopy _substrokesInDrawing:{self, 0}];
  v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(PKDrawingConcrete *)self _collectAllStrokesIn:*(*(&v13 + 1) + 8 * v12++) into:intoCopy];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (id)_strokesIdentifierMap
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  strokesIdentifierMap = selfCopy->_strokesIdentifierMap;
  if (!strokesIdentifierMap)
  {
    strokes = [(PKDrawing *)selfCopy strokes];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(strokes, "count")}];
    v6 = selfCopy->_strokesIdentifierMap;
    selfCopy->_strokesIdentifierMap = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = selfCopy->_allStrokes;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [(PKDrawingConcrete *)selfCopy _collectAllStrokesIn:*(*(&v13 + 1) + 8 * i) into:selfCopy->_strokesIdentifierMap, v13];
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    strokesIdentifierMap = selfCopy->_strokesIdentifierMap;
  }

  v11 = strokesIdentifierMap;
  objc_sync_exit(selfCopy);

  return v11;
}

- (id)_strokeForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _strokesIdentifierMap = [(PKDrawingConcrete *)self _strokesIdentifierMap];
    v6 = [_strokesIdentifierMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)_canvasBounds
{
  x = self->__canvasBounds.origin.x;
  y = self->__canvasBounds.origin.y;
  width = self->__canvasBounds.size.width;
  height = self->__canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)set_canvasBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_canvasBounds = &self->__canvasBounds;
  if (!CGRectEqualToRect(bounds, self->__canvasBounds))
  {
    p_canvasBounds->origin.x = x;
    p_canvasBounds->origin.y = y;
    p_canvasBounds->size.width = width;
    p_canvasBounds->size.height = height;
    ++self->_boundsVersion.clock;
    replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
    [replicaUUID getUUIDBytes:self->_boundsVersion.replicaUUID];

    version = [(PKDrawingConcrete *)self version];
    replicaUUID2 = [(PKDrawingConcrete *)self replicaUUID];
    v10 = [version clockForUUID:replicaUUID2];

    if (!v10)
    {
      version2 = [(PKDrawingConcrete *)self version];
      replicaUUID3 = [(PKDrawingConcrete *)self replicaUUID];
      [version2 setClock:0 forUUID:replicaUUID3];
    }
  }
}

- (void)invalidateStrokeBounds
{
  v2 = *(MEMORY[0x1E695F050] + 16);
  self->__bounds.origin = *MEMORY[0x1E695F050];
  self->__bounds.size = v2;
}

- (void)invalidateVisibleStrokes
{
  v5.receiver = self;
  v5.super_class = PKDrawingConcrete;
  [(PKDrawing *)&v5 invalidateVisibleStrokes];
  strokesIdentifierMap = self->_strokesIdentifierMap;
  self->_strokesIdentifierMap = 0;

  v4 = *(MEMORY[0x1E695F050] + 16);
  self->__bounds.origin = *MEMORY[0x1E695F050];
  self->__bounds.size = v4;
}

- (CGRect)bounds
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_x = &selfCopy->__bounds.origin.x;
  if (CGRectIsNull(selfCopy->__bounds))
  {
    [(PKDrawing *)selfCopy calculateStrokeBounds];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
    *p_x = v4;
    selfCopy->__bounds.origin.y = v6;
    selfCopy->__bounds.size.width = v8;
    selfCopy->__bounds.size.height = v10;
  }

  else
  {
    x = *p_x;
    y = selfCopy->__bounds.origin.y;
    width = selfCopy->__bounds.size.width;
    height = selfCopy->__bounds.size.height;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (!CGRectIsNull(v16))
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectIntegral(v17);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  objc_sync_exit(selfCopy);

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setStrokeSortIDForInsertion:(id)insertion
{
  v26 = *MEMORY[0x1E69E9840];
  insertionCopy = insertion;
  v25 = 0uLL;
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  v6 = [_allStrokes count];

  if (v6)
  {
    _allStrokes2 = [(PKDrawingConcrete *)self _allStrokes];
    lastObject = [_allStrokes2 lastObject];

    if (lastObject)
    {
      [lastObject _sortID];
      clock = v24.clock;
      subclock = v24.subclock;
    }

    else
    {
      subclock = 0;
      clock = 0;
      memset(&v24, 0, sizeof(v24));
    }

    v25 = *v24.replicaUUID;
  }

  else
  {
    clock = 0;
    subclock = 0;
  }

  version = [(PKDrawingConcrete *)self version];
  replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
  v13 = [version clockElementForUUID:replicaUUID];

  v23 = 0uLL;
  replicaUUID2 = [(PKDrawingConcrete *)self replicaUUID];
  [replicaUUID2 getUUIDBytes:&v23];

  clock = [v13 clock];
  subclock = [v13 subclock];
  v22 = v23;
  v24.clock = clock;
  *v24.replicaUUID = v25;
  v24.subclock = subclock;
  v21.clock = clock;
  *v21.replicaUUID = v23;
  v21.subclock = subclock;
  if (_PKStrokeIDCompare(&v24, &v21) == -1)
  {
    v25 = v22;
    clock = clock;
    subclock = subclock;
  }

  memset(&v24, 0, sizeof(v24));
  v21.clock = clock;
  *v21.replicaUUID = v25;
  v21.subclock = subclock;
  [(PKDrawingConcrete *)self newStrokeIDGreaterThan:&v21];
  v21 = v24;
  [insertionCopy set_sortID:&v21];
  version2 = [(PKDrawingConcrete *)self version];
  v18 = v24.clock;
  v19 = v24.subclock;
  replicaUUID3 = [(PKDrawingConcrete *)self replicaUUID];
  [version2 setClock:v18 subclock:v19 forUUID:replicaUUID3];
}

- (_PKStrokeID)newStrokeIDGreaterThan:(SEL)than
{
  v4 = [(PKDrawingConcrete *)self replicaUUID:*&a4->clock];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:v4];

  return result;
}

+ (_PKStrokeID)newStrokeIDGreaterThan:(SEL)than forUUID:(_PKStrokeID *)d
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a5;
  memset(uu2, 0, sizeof(uu2));
  [v7 getUUIDBytes:uu2];
  v8 = uuid_compare(d->replicaUUID, uu2);
  if (v8 < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8 != 0;
  }

  clock = d->clock;
  if (v9 == -1)
  {
    v11 = 0;
  }

  else if (v9)
  {
    v11 = 0;
    ++clock;
  }

  else
  {
    v11 = d->subclock + 1;
  }

  retstr->clock = clock;
  *retstr->replicaUUID = *uu2;
  retstr->subclock = v11;

  return result;
}

- (id)visibleStrokeForInsertingStroke:(id)stroke
{
  v20 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _clipPlane = [strokeCopy _clipPlane];
    _renderMask = [strokeCopy _renderMask];
    v19 = 0uLL;
    replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
    [replicaUUID getUUIDBytes:&v19];

    v8 = [_PKStrokeConcrete alloc];
    v16 = 0;
    v17 = v19;
    v18 = 0;
    v9 = [strokeCopy ink];
    if (strokeCopy)
    {
      [strokeCopy _transform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v10 = [(_PKStrokeConcrete *)v8 initWithStroke:strokeCopy hidden:0 version:&v16 ink:v9 transform:&v13];

    [(PKDrawingConcrete *)self setStrokeSortIDForInsertion:v10];
    if (_clipPlane)
    {
      [(_PKStrokeConcrete *)v10 _setClipPlane:_clipPlane];
    }

    if (_renderMask)
    {
      [(PKStroke *)v10 _setRenderMask:_renderMask];
    }

    _groupID = [strokeCopy _groupID];
    [(_PKStrokeConcrete *)v10 _setGroupID:_groupID];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addNewStroke:(id)stroke
{
  strokeCopy = stroke;
  [(NSMutableArray *)self->_allStrokes addObject:?];
  if (([strokeCopy _isHidden] & 1) == 0)
  {
    if ([strokeCopy hasSubstrokes])
    {
      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawingConcrete *)self invalidateStrokeBounds];
    }

    else
    {
      _cachedVisibleStrokes = [(PKDrawing *)self _cachedVisibleStrokes];
      [_cachedVisibleStrokes addObject:strokeCopy];

      strokesIdentifierMap = self->_strokesIdentifierMap;
      _strokeUUID = [strokeCopy _strokeUUID];
      [(NSMutableDictionary *)strokesIdentifierMap setObject:strokeCopy forKey:_strokeUUID];

      p_bounds = &self->__bounds;
      if (!CGRectIsNull(self->__bounds))
      {
        x = p_bounds->origin.x;
        y = self->__bounds.origin.y;
        width = self->__bounds.size.width;
        height = self->__bounds.size.height;
        [strokeCopy _bounds];
        v22.origin.x = v12;
        v22.origin.y = v13;
        v22.size.width = v14;
        v22.size.height = v15;
        v20.origin.x = x;
        v20.origin.y = y;
        v20.size.width = width;
        v20.size.height = height;
        v21 = CGRectUnion(v20, v22);
        p_bounds->origin.x = v21.origin.x;
        self->__bounds.origin.y = v21.origin.y;
        self->__bounds.size.width = v21.size.width;
        self->__bounds.size.height = v21.size.height;
      }
    }
  }

  version = [(PKDrawingConcrete *)self version];
  replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
  [version incrementClockForUUID:replicaUUID];

  [(PKDrawing *)self setNeedsRecognitionUpdate];
}

- (id)undoableAddNewStrokes:(id)strokes
{
  v26 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = strokesCopy;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 ink];
        identifier = [v9 identifier];
        v11 = [identifier isEqual:@"com.apple.ink.lasso"];

        if ((v11 & 1) == 0)
        {
          [(PKDrawingConcrete *)self addNewStroke:v8];
          v12 = [v8 ink];
          behavior = [v12 behavior];
          isEraser = [behavior isEraser];

          if ((isEraser & 1) == 0)
          {
            [v20 addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  if ([v20 count])
  {
    firstObject = [v20 firstObject];
    _isHidden = [firstObject _isHidden];

    v17 = [PKModifyStrokesCommand commandForMakingStrokesVisible:v20 drawing:self hiding:_isHidden ^ 1u];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)undoableAddNewStrokes:(id)strokes replacingOldStrokes:(id)oldStrokes
{
  v30 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  oldStrokesCopy = oldStrokes;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = strokesCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(PKDrawingConcrete *)self visibleStrokeForInsertingStroke:*(*(&v24 + 1) + 8 * i)];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v13 = [(PKDrawingConcrete *)self undoableDeleteStrokes:oldStrokesCopy];
  v14 = [(PKDrawingConcrete *)self undoableAddNewStrokes:v7];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      v16 = [PKUndoGroupCommand alloc];
      uuid = [(PKDrawingConcrete *)self uuid];
      actionName = [v15 actionName];
      v28[0] = v15;
      v28[1] = v13;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v20 = [(PKUndoGroupCommand *)v16 initWithDrawingUUID:uuid actionName:actionName commands:v19];

      goto LABEL_14;
    }

    v21 = v13;
  }

  else
  {
    v21 = v14;
  }

  v20 = v21;
LABEL_14:

  return v20;
}

- (void)updateStroke:(id)stroke indexHint:(unint64_t)hint
{
  strokeCopy = stroke;
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  [_allStrokes replaceObjectAtIndex:hint withObject:strokeCopy];
}

- (void)updateStrokes:(id)strokes
{
  strokesCopy = strokes;
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSMutableArray *)self->_allStrokes count];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [(NSMutableArray *)self->_allStrokes objectAtIndexedSubscript:v6];
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __35__PKDrawingConcrete_updateStrokes___block_invoke;
      v13[3] = &unk_1E82D71E0;
      v14 = strokesCopy;
      v15 = &v16;
      v8 = [v7 _updateStroke:v13 inDrawing:self];
      if (v8 != v7)
      {
        [(NSMutableArray *)self->_allStrokes replaceObjectAtIndex:v6 withObject:v8];
        [array addObject:v8];
      }

      v9 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
      if (v9)
      {
        break;
      }
    }

    while (v5 != v6++);
  }

  if ([array count])
  {
    [(PKDrawingConcrete *)self didUpdate];
    [(PKDrawingConcrete *)self invalidateVisibleStrokes];
    [(PKDrawing *)self setNeedsRecognitionUpdate];
  }
}

id __35__PKDrawingConcrete_updateStrokes___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);

  return v5;
}

- (void)setStrokes:(id)strokes hidden:(BOOL)hidden
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PKDrawingConcrete_setStrokes_hidden___block_invoke;
  v4[3] = &__block_descriptor_33_e44___PKStroke_32__0__PKStroke_8__PKStroke_16Q24l;
  hiddenCopy = hidden;
  [(PKDrawingConcrete *)self _updateStrokes:strokes updateBlock:v4];
}

id __39__PKDrawingConcrete_setStrokes_hidden___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (*(a1 + 32) != [v7 _isHidden])
  {
    if ([v7 _pointsCount])
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;
    v8 = [v10 copyForMutation];

    [v8 _setHidden:*(a1 + 32)];
    [v8 _setFlags:{objc_msgSend(v8, "_flags") & 0xFFFFFFFFFFFFFFFDLL}];
  }

  return v8;
}

- (id)undoableDeleteStrokes:(id)strokes
{
  v4 = [PKModifyStrokesCommand commandForErasingStrokes:strokes drawing:self];
  [v4 applyToDrawing:self];
  v5 = [v4 invertedInDrawing:self];

  return v5;
}

- (id)_stroke:(id)_stroke transformed:(CGAffineTransform *)transformed concat:(BOOL)concat
{
  concatCopy = concat;
  copyForMutation = [_stroke copyForMutation];
  v8 = copyForMutation;
  if (concatCopy)
  {
    if (copyForMutation)
    {
      [copyForMutation _transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v10 = *&transformed->c;
    *&v12.a = *&transformed->a;
    *&v12.c = v10;
    *&v12.tx = *&transformed->tx;
    CGAffineTransformConcat(&v14, &t1, &v12);
  }

  else
  {
    v9 = *&transformed->c;
    *&v14.a = *&transformed->a;
    *&v14.c = v9;
    *&v14.tx = *&transformed->tx;
  }

  t1 = v14;
  [v8 _setTransform:&t1];
  [v8 _setFlags:{objc_msgSend(v8, "_flags") & 0xFFFFFFFFFFFFFFF7}];

  return v8;
}

- (void)transformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  concatCopy = concat;
  strokesCopy = strokes;
  if (!concatCopy || (v9 = *&transform->c, *&v16.a = *&transform->a, *&v16.c = v9, *&v16.tx = *&transform->tx, !CGAffineTransformIsIdentity(&v16)))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v10 = *&transform->c;
    v12 = *&transform->a;
    v11[2] = __59__PKDrawingConcrete_transformStrokes_withTransform_concat___block_invoke;
    v11[3] = &unk_1E82D7228;
    v11[4] = self;
    v13 = v10;
    v14 = *&transform->tx;
    v15 = concatCopy;
    [(PKDrawingConcrete *)self _updateStrokes:strokesCopy updateBlock:v11];
  }
}

id __59__PKDrawingConcrete_transformStrokes_withTransform_concat___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v3;
  v6[2] = *(a1 + 72);
  v4 = [v2 _stroke:a2 transformed:v6 concat:*(a1 + 88)];

  return v4;
}

- (id)undoableTransformStrokes:(id)strokes withTransform:(CGAffineTransform *)transform concat:(BOOL)concat
{
  v6 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v6;
  v10[2] = *&transform->tx;
  v7 = [PKTransformStrokesCommand commandForTransforming:strokes drawing:self strokeTransform:v10];
  [v7 applyToDrawing:self];
  v8 = [v7 invertedInDrawing:self];

  return v8;
}

- (void)setStrokes:(id)strokes inks:(id)inks
{
  inksCopy = inks;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PKDrawingConcrete_setStrokes_inks___block_invoke;
  v8[3] = &unk_1E82D7250;
  v9 = inksCopy;
  selfCopy = self;
  v7 = inksCopy;
  [(PKDrawingConcrete *)self _updateStrokes:strokes updateBlock:v8];
}

id __37__PKDrawingConcrete_setStrokes_inks___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a4];
  v8 = [*(a1 + 40) _newStroke:v6 withInk:v7];

  return v8;
}

- (id)undoableSetStrokes:(id)strokes inks:(id)inks
{
  strokesCopy = strokes;
  inksCopy = inks;
  v8 = [PKDrawing drawingStrokesFromStrokes:strokesCopy inDrawing:self];
  v9 = [PKModifyStrokeInkCommand commandForModifyingStrokes:v8 drawing:self inks:inksCopy];
  v10 = [v9 invertedInDrawing:self];

  [(PKDrawingConcrete *)self setStrokes:strokesCopy inks:inksCopy];

  return v10;
}

- (id)_newStroke:(id)stroke withInk:(id)ink
{
  strokeCopy = stroke;
  inkCopy = ink;
  v7 = [strokeCopy ink];
  v8 = [v7 isEqual:inkCopy];

  if (v8)
  {
    copyForMutation = strokeCopy;
  }

  else
  {
    copyForMutation = [strokeCopy copyForMutation];
    [copyForMutation _setInk:inkCopy];
    [copyForMutation _setFlags:{objc_msgSend(copyForMutation, "_flags") & 0xFFFFFFFFFFFFFFFBLL}];
  }

  return copyForMutation;
}

- (void)setStrokes:(id)strokes groupID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PKDrawingConcrete_setStrokes_groupID___block_invoke;
  v8[3] = &unk_1E82D7250;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(PKDrawingConcrete *)self _updateStrokes:strokes updateBlock:v8];
}

id __40__PKDrawingConcrete_setStrokes_groupID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _newStroke:a2 withGroupID:*(a1 + 40)];

  return v2;
}

- (id)undoableSetStrokes:(id)strokes groupID:(id)d actionName:(id)name
{
  strokesCopy = strokes;
  dCopy = d;
  nameCopy = name;
  v11 = [PKDrawing drawingStrokesFromStrokes:strokesCopy inDrawing:self];
  v12 = [PKModifyStrokesGroupIDCommand commandForModifyingStrokes:v11 drawing:self groupID:dCopy actionName:nameCopy];
  v13 = [v12 invertedInDrawing:self];

  [(PKDrawingConcrete *)self setStrokes:strokesCopy groupID:dCopy];

  return v13;
}

- (id)_newStroke:(id)stroke withGroupID:(id)d
{
  strokeCopy = stroke;
  dCopy = d;
  _groupID = [strokeCopy _groupID];
  v8 = _groupID;
  if (_groupID == dCopy)
  {

    goto LABEL_5;
  }

  _groupID2 = [strokeCopy _groupID];
  v10 = [_groupID2 isEqual:dCopy];

  if (v10)
  {
LABEL_5:
    copyForMutation = strokeCopy;
    goto LABEL_6;
  }

  copyForMutation = [strokeCopy copyForMutation];
  [copyForMutation _setGroupID:dCopy];
LABEL_6:

  return copyForMutation;
}

- (void)_updateStrokes:(id)strokes updateBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  strokesCopy = strokes;
  blockCopy = block;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(strokesCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = strokesCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        _strokeUUID = [v13 _strokeUUID];
        [v8 setObject:v13 forKeyedSubscript:_strokeUUID];
      }

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v15 = [v9 count];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__PKDrawingConcrete__updateStrokes_updateBlock___block_invoke;
  v18[3] = &unk_1E82D7278;
  v16 = v8;
  v19 = v16;
  v17 = blockCopy;
  v22 = v24;
  v23 = v15;
  selfCopy = self;
  v21 = v17;
  [(PKDrawingConcrete *)self updateStrokes:v18];

  _Block_object_dispose(v24, 8);
}

id __48__PKDrawingConcrete__updateStrokes_updateBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = a1[4];
  v7 = [v5 _strokeUUID];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = v5;
  v10 = v9;
  if (v8)
  {
    v10 = (*(a1[6] + 16))();

    v11 = *(a1[7] + 8);
    v12 = *(v11 + 24) + 1;
    *(v11 + 24) = v12;
    if (v12 == a1[8])
    {
      *a3 = 1;
    }

    if (v10 != v9)
    {
      [v10 didUpdateInDrawing:a1[5]];
    }
  }

  return v10;
}

- (void)_mergeStroke:(id)stroke
{
  strokeCopy = stroke;
  v4 = [(NSMutableArray *)self->_allStrokes count]+ 1;
  while (1)
  {
    allStrokes = self->_allStrokes;
    v6 = v4 - 2;
    if (v4 - 2 < 0)
    {
      [(NSMutableArray *)allStrokes insertObject:strokeCopy atIndex:0];
      goto LABEL_9;
    }

    v7 = [(NSMutableArray *)allStrokes objectAtIndexedSubscript:v4 - 2];
    _strokeUUID = [v7 _strokeUUID];
    _strokeUUID2 = [strokeCopy _strokeUUID];
    v10 = [_strokeUUID isEqual:_strokeUUID2];

    v11 = self->_allStrokes;
    if (v10)
    {
      break;
    }

    v12 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v4 - 2];
    v13 = [v12 compareToStroke:strokeCopy];

    --v4;
    if (v13 != 1)
    {
      [(NSMutableArray *)self->_allStrokes insertObject:strokeCopy atIndex:v4];
LABEL_9:
      version = [(PKDrawingConcrete *)self version];
      replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
      [version incrementClockForUUID:replicaUUID];

      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      goto LABEL_10;
    }
  }

  v14 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v4 - 2];
  v15 = [v14 _mergeWithStroke:strokeCopy inDrawing:self];

  v16 = [(NSMutableArray *)self->_allStrokes objectAtIndexedSubscript:v6];

  if (v15 != v16)
  {
    [(NSMutableArray *)self->_allStrokes setObject:v15 atIndexedSubscript:v6];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)normalizeUUIDsWithDrawing:(id)drawing
{
  drawingCopy = drawing;
  version = [(PKDrawingConcrete *)self version];
  if (([version isEmpty] & 1) == 0)
  {

LABEL_8:
    uuid = [(PKDrawingConcrete *)self uuid];
    uuid2 = [drawingCopy uuid];
    v15 = [uuid isEqual:uuid2];

    if ((v15 & 1) == 0)
    {
      v16 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *v20 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_FAULT, "Attempt to merge with invalid drawing", v20, 2u);
      }
    }

    goto LABEL_18;
  }

  version2 = [drawingCopy version];
  isEmpty = [version2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    goto LABEL_8;
  }

  version3 = [(PKDrawingConcrete *)self version];
  if ([version3 isEmpty])
  {
    version4 = [drawingCopy version];
    isEmpty2 = [version4 isEmpty];

    if (isEmpty2)
    {
      nsuuid = [(PKDrawingConcrete *)self nsuuid];
      nsuuid2 = [drawingCopy nsuuid];
      if ([nsuuid PK_compare:nsuuid2] == -1)
      {
        [drawingCopy uuid];
      }

      else
      {
        [(PKDrawingConcrete *)self uuid];
      }
      v19 = ;
      [(PKDrawingConcrete *)self _setUUID:v19];

      goto LABEL_17;
    }
  }

  else
  {
  }

  version5 = [(PKDrawingConcrete *)self version];
  isEmpty3 = [version5 isEmpty];

  if (isEmpty3)
  {
    nsuuid = [drawingCopy uuid];
    [(PKDrawingConcrete *)self _setUUID:nsuuid];
LABEL_17:
  }

LABEL_18:
}

- (unint64_t)mergeWithDrawing:(id)drawing
{
  v58 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  if (drawingCopy != self)
  {
    [(PKDrawingConcrete *)self normalizeUUIDsWithDrawing:drawingCopy];
    [(PKDrawingConcrete *)drawingCopy willMergeWithDrawing:self];
    if (drawingCopy)
    {
      [(PKDrawingConcrete *)drawingCopy boundsVersion];
      v5 = *buf;
    }

    else
    {
      v5 = 0;
      memset(buf, 0, sizeof(buf));
    }

    [(PKDrawingConcrete *)self boundsVersion];
    if (v5 < v56)
    {
      goto LABEL_11;
    }

    if (drawingCopy)
    {
      [(PKDrawingConcrete *)drawingCopy boundsVersion];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    *&self->_boundsVersion.clock = *buf;
    *&self->_boundsVersion.replicaUUID[12] = *&buf[16];
    [(PKDrawingConcrete *)drawingCopy _canvasBounds];
    v59.origin.x = v7;
    v59.origin.y = v8;
    v59.size.width = v9;
    v59.size.height = v10;
    if (CGRectEqualToRect(self->__canvasBounds, v59))
    {
LABEL_11:
      v6 = 1;
    }

    else
    {
      [(PKDrawingConcrete *)drawingCopy _canvasBounds];
      self->__canvasBounds.origin.x = v11;
      self->__canvasBounds.origin.y = v12;
      v6 = 2;
      self->__canvasBounds.size.width = v13;
      self->__canvasBounds.size.height = v14;
    }

    version = [(PKDrawingConcrete *)self version];
    version2 = [(PKDrawingConcrete *)drawingCopy version];
    v17 = [version compareTo:version2];

    if ((v17 & 1) == 0)
    {
      [(PKDrawingConcrete *)drawingCopy didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        uuid = [(PKDrawingConcrete *)self uuid];
        _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
        v21 = [_allStrokes count];
        *buf = 138412546;
        *&buf[4] = uuid;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Skipped drawing merge: %@, strokes: %lu", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if ((v17 & 4) == 0)
    {
      _allStrokes2 = [(PKDrawingConcrete *)drawingCopy _allStrokes];
      v23 = [_allStrokes2 mutableCopy];
      allStrokes = self->_allStrokes;
      self->_allStrokes = v23;

      version3 = [(PKDrawingConcrete *)drawingCopy version];
      v26 = [version3 copy];
      version = self->_version;
      self->_version = v26;

      _cachedVisibleStrokes = [(PKDrawing *)drawingCopy _cachedVisibleStrokes];
      v29 = [_cachedVisibleStrokes mutableCopy];
      [(PKDrawing *)self set_cachedVisibleStrokes:v29];

      v30 = [(NSMutableDictionary *)drawingCopy->_strokesIdentifierMap mutableCopy];
      strokesIdentifierMap = self->_strokesIdentifierMap;
      self->_strokesIdentifierMap = v30;

      [(PKDrawingConcrete *)drawingCopy bounds];
      self->__bounds.origin.x = v32;
      self->__bounds.origin.y = v33;
      self->__bounds.size.width = v34;
      self->__bounds.size.height = v35;
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      [(PKDrawingConcrete *)drawingCopy didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      v6 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        uuid2 = [(PKDrawingConcrete *)self uuid];
        _allStrokes3 = [(PKDrawingConcrete *)self _allStrokes];
        v38 = [_allStrokes3 count];
        *buf = 138412546;
        *&buf[4] = uuid2;
        *&buf[12] = 2048;
        *&buf[14] = v38;
        _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Quick merged drawing: %@, strokes: %lu", buf, 0x16u);

LABEL_39:
        v6 = 2;
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    v39 = [(NSMutableArray *)self->_allStrokes count];
    _allStrokes4 = [(PKDrawingConcrete *)drawingCopy _allStrokes];
    v41 = [_allStrokes4 count];

    v42 = v41 - 1;
    if (v41 - 1 < 0)
    {
LABEL_35:
      version4 = [(PKDrawingConcrete *)self version];
      version5 = [(PKDrawingConcrete *)drawingCopy version];
      [version4 mergeWithTimestamp:version5];

      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      [(PKDrawingConcrete *)drawingCopy didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      v6 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        uuid3 = [(PKDrawingConcrete *)self uuid];
        _allStrokes5 = [(PKDrawingConcrete *)self _allStrokes];
        v55 = [_allStrokes5 count];
        *buf = 138412546;
        *&buf[4] = uuid3;
        *&buf[12] = 2048;
        *&buf[14] = v55;
        _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Merged drawing: %@, strokes: %lu", buf, 0x16u);

        goto LABEL_39;
      }

LABEL_36:

      goto LABEL_37;
    }

    v43 = v39 - 1;
    while (1)
    {
      _allStrokes6 = [(PKDrawingConcrete *)drawingCopy _allStrokes];
      v45 = [_allStrokes6 objectAtIndexedSubscript:v42];

      v46 = self->_allStrokes;
      if ((v43 & 0x8000000000000000) == 0)
      {
        break;
      }

      [(NSMutableArray *)v46 insertObject:v45 atIndex:0];
      --v42;
LABEL_34:

      if (v42 < 0)
      {
        goto LABEL_35;
      }
    }

    v47 = [(NSMutableArray *)v46 objectAtIndexedSubscript:v43];
    v48 = [v47 compareToStroke:v45];
    if (v48 == -1)
    {
      [(NSMutableArray *)self->_allStrokes insertObject:v45 atIndex:v43 + 1];
    }

    else
    {
      if (v48)
      {
        if (v48 == 1)
        {
          --v43;
        }

        goto LABEL_33;
      }

      v49 = [v47 _mergeWithStroke:v45 inDrawing:self];
      if (v49 != v47)
      {
        [(NSMutableArray *)self->_allStrokes replaceObjectAtIndex:v43 withObject:v49];
      }

      --v43;
    }

    --v42;
LABEL_33:

    goto LABEL_34;
  }

  v6 = 1;
LABEL_37:

  return v6;
}

- (void)didUpdate
{
  version = [(PKDrawingConcrete *)self version];
  replicaUUID = [(PKDrawingConcrete *)self replicaUUID];
  [version incrementClockForUUID:replicaUUID];
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  uuid = [(PKDrawingConcrete *)self uuid];
  v5 = [uuid hash];
  version = [(PKDrawingConcrete *)self version];
  v7 = [version hash];

  return v5 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  v15 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_7;
  }

  uuid = [(PKDrawingConcrete *)self uuid];
  uuid2 = [equalCopy uuid];
  v8 = [uuid isEqual:uuid2];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  version = [(PKDrawingConcrete *)self version];
  version2 = [equalCopy version];
  if (![version isEqual:version2])
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  [equalCopy boundsVersion];
  [(PKDrawingConcrete *)self boundsVersion];
  v11 = _PKStrokeIDCompare(&v14, &v13) == 0;

LABEL_8:
  return v11;
}

- (void)willMergeWithDrawing:(id)drawing
{
  if (self->_replicaUUID)
  {
    v4 = +[PKReplicaManager sharedReplicaManager];
    [v4 updateVersionForDrawing:self];
  }
}

- (id)updateFromSlicedIntersectingIndexes:(int64_t *)indexes resultNewRoots:(const void *)roots resultUpdatedStrokes:(const void *)strokes count:(int64_t)count
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  if (count < 1)
  {
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = strokes - 1;
  v13 = roots - 1;
  v14 = indexes - 1;
  while (1)
  {
    v15 = v14[count];
    v16 = v13[count];
    if (v16)
    {
      break;
    }

    _rootStrokes = [(PKDrawingConcrete *)self _rootStrokes];
    v22 = [_rootStrokes objectAtIndexedSubscript:v15];
    [array addObject:v22];

    _rootStrokes2 = [(PKDrawingConcrete *)self _rootStrokes];
    v24 = [_rootStrokes2 objectAtIndexedSubscript:v15];
    v25 = [v24 mutableCopy];

    [v25 _setHidden:1];
    [v25 didUpdateSubstrokesInDrawing:self];
    [(PKDrawingConcrete *)self updateStroke:v25 indexHint:v15];

    if (count < 2)
    {
      goto LABEL_14;
    }

    v11 = 1;
LABEL_12:
    --count;
  }

  if ([v12[count] count])
  {
    _rootStrokes3 = [(PKDrawingConcrete *)self _rootStrokes];
    v18 = [_rootStrokes3 objectAtIndexedSubscript:v15];

    if (v16 != v18)
    {
      _substrokes = [v18 _substrokes];
      _strokeUUID = [v16 _strokeUUID];
      [dictionary setObject:_substrokes forKeyedSubscript:_strokeUUID];

      [(PKDrawingConcrete *)self updateStroke:v16 indexHint:v15];
      v11 = 1;
    }
  }

  if (count > 1)
  {
    goto LABEL_12;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  [(PKDrawingConcrete *)self didUpdate];
  [(PKDrawingConcrete *)self invalidateVisibleStrokes];
  v26 = [PKSliceStrokesCommand alloc];
  uuid = [(PKDrawingConcrete *)self uuid];
  v28 = _PencilKitBundle();
  v29 = [v28 localizedStringForKey:@"Bitmap Erase" value:@"Bitmap Erase" table:@"Localizable"];
  v30 = [(PKSliceStrokesCommand *)v26 initWithDrawingUUID:uuid actionName:v29 substrokes:dictionary strokesHidden:array hiding:0];

LABEL_16:

  return v30;
}

- (id)_dataInUnknownFields
{
  ptr = self->_unknownFields.__ptr_;
  if (ptr && (v3 = *ptr) != 0 && *v3 != v3[1])
  {
    data = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  return data;
}

- (void)setBoundsVersion:(_PKStrokeID *)version
{
  v3 = *&version->replicaUUID[12];
  *&self->_boundsVersion.clock = *&version->clock;
  *&self->_boundsVersion.replicaUUID[12] = v3;
}

- (shared_ptr<PKProtobufUnknownFields>)_unknownFields
{
  cntrl = self->_unknownFields.__cntrl_;
  *v2 = self->_unknownFields.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)set_orientation:(int64_t)set_orientation
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:set_orientation];
  objc_setAssociatedObject(self, &kOrientationKey, v4, 0x301);
}

- (int64_t)_orientation
{
  v2 = objc_getAssociatedObject(self, &kOrientationKey);
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_removeHiddenAndEraserStrokes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKDrawingConcrete_UpgradeAdditions___removeHiddenAndEraserStrokes__block_invoke;
  v7[3] = &unk_1E82D6310;
  v5 = v3;
  v8 = v5;
  [_allStrokes enumerateObjectsUsingBlock:v7];

  _allStrokes2 = [(PKDrawingConcrete *)self _allStrokes];
  [_allStrokes2 removeObjectsAtIndexes:v5];

  [(PKDrawingConcrete *)self invalidateVisibleStrokes];
}

void __68__PKDrawingConcrete_UpgradeAdditions___removeHiddenAndEraserStrokes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (([v8 _isHidden] & 1) != 0 || (objc_msgSend(v8, "ink"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"com.apple.ink.eraser"), v6, v5, v7))
  {
    [*(a1 + 32) addIndex:a3];
  }
}

- (void)_removeInvisibleStrokes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKDrawingConcrete_UpgradeAdditions___removeInvisibleStrokes__block_invoke;
  v7[3] = &unk_1E82D6310;
  v5 = v3;
  v8 = v5;
  [_allStrokes enumerateObjectsUsingBlock:v7];

  if ([v5 count])
  {
    _allStrokes2 = [(PKDrawingConcrete *)self _allStrokes];
    [_allStrokes2 removeObjectsAtIndexes:v5];

    [(PKDrawingConcrete *)self invalidateVisibleStrokes];
  }
}

void __62__PKDrawingConcrete_UpgradeAdditions___removeInvisibleStrokes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if ([v14 _isHidden])
  {
    [*(a1 + 32) addIndex:a3];
  }

  else if ([v14 _pointsCount] >= 2)
  {
    v5 = [v14 _strokeData];
    v6 = [v5 _pointsCount];
    v7 = 1;
    while (v6 != v7)
    {
      [v5 locationAtIndex:v7 - 1];
      v9 = v8;
      v11 = v10;
      [v5 locationAtIndex:v7++];
      if (sqrt((v13 - v11) * (v13 - v11) + (v12 - v9) * (v12 - v9)) >= 0.00000011920929)
      {
        goto LABEL_9;
      }
    }

    [*(a1 + 32) addIndex:a3];
LABEL_9:
  }
}

- ($3CC19D079FD0B010EE84973AA846B91B)_drawingStrokeInfoIsLegacyDrawing:(SEL)drawing
{
  v19 = a4;
  v26 = *MEMORY[0x1E69E9840];
  strokes = [(PKDrawing *)self strokes];
  retstr->var0 = [strokes count];

  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var3 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(PKDrawing *)self strokes];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v20 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 ink];
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:@"com.apple.ink.eraser"];

        v8 += v14;
        _clipPlane = [v11 _clipPlane];
        LODWORD(v12) = _clipPlane != 0;

        v7 += v12;
        if (v19)
        {
          v20 += [v11 _shouldBeClippedAgainstLegacyCanvas];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
    retstr->var1 = v8;
    retstr->var2 = v7;
    retstr->var3 = v20;
  }

  return result;
}

+ (CGAffineTransform)_orientationTransform:(SEL)transform size:(int64_t)size
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  switch(size)
  {
    case 3:
      *&retstr->a = xmmword_1C8019980;
      *&retstr->c = xmmword_1C80196E0;
      retstr->tx = a5.width;
      retstr->ty = 0.0;
      break;
    case 2:
      *&retstr->a = xmmword_1C801D3D0;
      retstr->d = 0.0;
      retstr->tx = 0.0;
      retstr->c = 1.0;
      retstr->ty = a5.height;
      break;
    case 1:
      retstr->a = -1.0;
      retstr->b = 0.0;
      retstr->c = 0.0;
      retstr->d = -1.0;
      *&retstr->tx = a5;
      break;
  }

  return result;
}

+ (id)_defaultConversionQueue
{
  if (_MergedGlobals_138 != -1)
  {
    dispatch_once(&_MergedGlobals_138, &__block_literal_global_39);
  }

  v3 = qword_1ED6A50F8;

  return v3;
}

void __62__PKDrawingConcrete_UpgradeAdditions___defaultConversionQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.pencilkit.conversion", attr);
  v2 = qword_1ED6A50F8;
  qword_1ED6A50F8 = v1;
}

- (id)_upgradeOnQueue:(id)queue isLegacyDrawing:(BOOL)drawing completionBlock:(id)block
{
  drawingCopy = drawing;
  queueCopy = queue;
  blockCopy = block;
  v32 = 0u;
  v33 = 0u;
  [(PKDrawingConcrete *)self _drawingStrokeInfoIsLegacyDrawing:drawingCopy];
  [(PKDrawingConcrete *)self _unscaledOrientedDrawingSize];
  memset(&v31, 0, sizeof(v31));
  [PKDrawingConcrete _orientationTransform:[(PKDrawingConcrete *)self _orientation] size:v10, v11];
  [(PKDrawingConcrete *)self _conversionScaleFactor];
  if (v12 != 1.0)
  {
    t1 = v31;
    CGAffineTransformMakeScale(&t2, v12, v12);
    CGAffineTransformConcat(&v30, &t1, &t2);
    v31 = v30;
  }

  v30 = v31;
  v13 = !CGAffineTransformIsIdentity(&v30);
  v14 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:*(&v32 + 1) + v33 + v13 + *(&v33 + 1)];
  if (!queueCopy)
  {
    queueCopy = [objc_opt_class() _defaultConversionQueue];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v23 = v32;
  v20[2] = __87__PKDrawingConcrete_UpgradeAdditions___upgradeOnQueue_isLegacyDrawing_completionBlock___block_invoke;
  v20[3] = &unk_1E82D9090;
  v20[4] = self;
  v24 = v33;
  v15 = v14;
  v26 = drawingCopy;
  v27 = v13;
  v25 = v31;
  v21 = v15;
  v22 = blockCopy;
  v16 = blockCopy;
  dispatch_async(queueCopy, v20);
  v17 = v22;
  v18 = v15;

  return v18;
}

void __87__PKDrawingConcrete_UpgradeAdditions___upgradeOnQueue_isLegacyDrawing_completionBlock___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _removeInvisibleStrokes];
  v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*(a1 + 72))
  {
    v2 = [*(a1 + 32) _allStrokes];
    v3 = [v2 count];

    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = objc_autoreleasePoolPush();
        v6 = [*(a1 + 32) _allStrokes];
        v7 = [v6 objectAtIndexedSubscript:i];

        v8 = [v7 _clipPlane];
        if (v8)
        {
          v9 = [v7 _isHidden];

          if ((v9 & 1) == 0)
          {
            v10 = [v7 ink];
            v11 = [v10 identifier];
            v12 = [v11 isEqualToString:@"com.apple.ink.eraser"];

            if (v12)
            {
              v13 = [v7 _clipPlane];
              v14 = [v7 _strokeUUID];
              [v44 setObject:v13 forKeyedSubscript:v14];
            }

            else
            {
              *&v49[0] = 0;
              v15 = [*(a1 + 32) _clipStroke:v7 newRootStroke:v49];
              v16 = *&v49[0];
              v17 = *(a1 + 32);
              if (*&v49[0])
              {
                v18 = [v17 _allStrokes];
                [v18 setObject:v16 atIndexedSubscript:i];
              }

              else
              {
                v19 = [v17 _allStrokes];
                [v19 removeObjectAtIndex:i];

                --i;
                --v3;
              }
            }

            [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
          }
        }

        objc_autoreleasePoolPop(v5);
      }
    }

    [*(a1 + 32) invalidateVisibleStrokes];
  }

  if (*(a1 + 80) && *(a1 + 136) == 1)
  {
    v20 = [*(a1 + 32) _allStrokes];
    v21 = [v20 count];

    if (v21 >= 1)
    {
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = [*(a1 + 32) _allStrokes];
        v25 = [v24 objectAtIndexedSubscript:j];

        if ([v25 _shouldBeClippedAgainstLegacyCanvas])
        {
          v26 = [*(a1 + 32) _clipAgainstLegacyCanvas:v25];
          v27 = v26;
          if (v26 && v26 != v25)
          {
            v28 = [*(a1 + 32) _allStrokes];
            [v28 setObject:v27 atIndexedSubscript:j];
          }

          [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
        }

        objc_autoreleasePoolPop(v23);
      }
    }

    [*(a1 + 32) invalidateVisibleStrokes];
  }

  if (*(a1 + 137) == 1)
  {
    v29 = *(a1 + 32);
    v30 = *(a1 + 104);
    v49[0] = *(a1 + 88);
    v49[1] = v30;
    v49[2] = *(a1 + 120);
    [v29 _transformAllStrokes:v49];
    [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
  }

  if (*(a1 + 64))
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = [*(a1 + 32) strokes];
    v32 = [v31 copy];

    v33 = [v32 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v33)
    {
      v34 = *v46;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v46 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v45 + 1) + 8 * k);
          v37 = [v36 ink];
          v38 = [v37 identifier];
          v39 = [v38 isEqualToString:@"com.apple.ink.eraser"];

          if (v39)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = [v36 _strokeUUID];
            v42 = [v44 objectForKeyedSubscript:v41];
            [v36 _setClipPlane:v42];

            v43 = [*(a1 + 32) sliceWithEraseStroke:v36];
            [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
            objc_autoreleasePoolPop(v40);
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v33);
    }
  }

  [*(a1 + 32) _removeHiddenAndEraserStrokes];
  [*(a1 + 32) bounds];
  [*(a1 + 32) set_canvasBounds:0.0];
  (*(*(a1 + 48) + 16))();
}

- (CGAffineTransform)_transformForImageWithSize:(SEL)size
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [PKDrawingConcrete _orientationTransform:[(PKDrawingConcrete *)self _orientation] size:a4.width, a4.height];
  CGAffineTransformInvert(retstr, &v12);
  result = [(PKDrawingConcrete *)self _conversionScaleFactor];
  if (v7 != 1.0)
  {
    v8 = *&retstr->c;
    *&t1.a = *&retstr->a;
    *&t1.c = v8;
    *&t1.tx = *&retstr->tx;
    CGAffineTransformMakeScale(&v10, v7, v7);
    result = CGAffineTransformConcat(&v12, &t1, &v10);
    v9 = *&v12.c;
    *&retstr->a = *&v12.a;
    *&retstr->c = v9;
    *&retstr->tx = *&v12.tx;
  }

  return result;
}

- (double)_conversionScaleFactor
{
  _orientation = [(PKDrawingConcrete *)self _orientation];
  result = 1.0;
  if (_orientation < 2)
  {
    return 0.75;
  }

  return result;
}

- (CGSize)_unscaledOrientedDrawingSize
{
  _orientation = [(PKDrawingConcrete *)self _orientation];
  v3 = 768.0;
  if (_orientation >= 2)
  {
    v4 = 768.0;
  }

  else
  {
    v4 = 1024.0;
  }

  if (_orientation >= 2)
  {
    v3 = 1024.0;
  }

  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)_orientedDrawingSize
{
  [(PKDrawingConcrete *)self _unscaledOrientedDrawingSize];
  v4 = v3;
  v6 = v5;
  [(PKDrawingConcrete *)self _conversionScaleFactor];
  v8 = v6 * v7;
  v9 = v4 * v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)_upgradeLegacyPenInks
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  strokes = [(PKDrawing *)self strokes];
  v21 = [v2 arrayWithCapacity:{objc_msgSend(strokes, "count")}];

  v4 = MEMORY[0x1E695DF70];
  strokes2 = [(PKDrawing *)self strokes];
  v20 = [v4 arrayWithCapacity:{objc_msgSend(strokes2, "count")}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(PKDrawing *)self strokes];
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v23 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 ink];
        if (![v9 version])
        {
          identifier = [v9 identifier];
          v11 = [identifier isEqualToString:@"com.apple.ink.pen"];

          if (v11)
          {
            v12 = [PKInk alloc];
            identifier2 = [v9 identifier];
            color = [v9 color];
            identifier3 = [v9 identifier];
            v16 = [PKInk currentInkVersionForInkIdentifier:identifier3];
            variant = [v9 variant];
            [v9 weight];
            v18 = [(PKInk *)v12 initWithIdentifier:identifier2 color:color version:v16 variant:variant weight:?];

            [v21 addObject:v8];
            [v20 addObject:v18];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  if ([v21 count])
  {
    [(PKDrawingConcrete *)self setStrokes:v21 inks:v20];
  }
}

- (PKDrawingConcrete)initWithData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error
{
  strokesCopy = strokes;
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy length] >= 0xB)
  {
    [dataCopy getBytes:v14 length:10];
    if (v14[0] == 31 && v14[1] == 139)
    {
      pK_gzipInflate = [dataCopy PK_gzipInflate];
      v10 = pK_gzipInflate;
      if (pK_gzipInflate)
      {
        v11 = pK_gzipInflate;

        dataCopy = v11;
      }
    }
  }

  v12 = [(PKDrawingConcrete *)self _initWithUnzippedData:dataCopy loadNonInkingStrokes:strokesCopy error:error];

  return v12;
}

- (id)_initWithUnzippedData:(id)data loadNonInkingStrokes:(BOOL)strokes error:(id *)error
{
  strokesCopy = strokes;
  dataCopy = data;
  v9 = [[PKDrawingVersionedDocument alloc] initWithDrawingClass:objc_opt_class()];
  [(PKDrawingVersionedDocument *)v9 setLoadNonInkingStrokes:strokesCopy];
  if (![(PKDrawingVersionedDocument *)v9 loadUnzippedData:dataCopy])
  {
    v17 = &unk_1F476BBA0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    v11 = dataCopy;
    if ([v11 length] <= 7)
    {
      PKProtobufUtilitiesMalformedError(error);
LABEL_5:

      drawing = 0;
LABEL_6:
      drawing::Drawing::~Drawing(&v17);
      goto LABEL_7;
    }

    v30 = 0;
    [v11 getBytes:&v30 range:{0, 4}];
    if (v30 == -261852553)
    {
      v28 = 0;
      [v11 getBytes:&v28 range:{4, 1}];
      if (v28 >= 6u)
      {
        PKProtobufUtilitiesFormatTooNew(error);
        goto LABEL_5;
      }

      v27 = 0;
      [v11 getBytes:&v27 range:{6, 2}];
      v14 = v27;
      if (v27 < 8uLL || [v11 length] <= v14)
      {
        PKProtobufUtilitiesMalformedError(error);
        goto LABEL_5;
      }

      bytes = [v11 bytes];
      v16 = v27;
      [v11 length];
      PB::Reader::Reader(v29, (bytes + v16));
      if (!v17[2](&v17, v29))
      {
LABEL_16:
        PKProtobufUtilitiesMalformedError(error);
        goto LABEL_5;
      }
    }

    else
    {
      bytes2 = [v11 bytes];
      [v11 length];
      PB::Reader::Reader(v29, bytes2);
      if (!v17[2](&v17, v29))
      {
        goto LABEL_16;
      }
    }

    drawing = [(PKDrawingConcrete *)self initWithArchive:&v17 loadNonInkingStrokes:strokesCopy error:error];
    self = drawing;
    goto LABEL_6;
  }

  drawing = [(PKDrawingVersionedDocument *)v9 drawing];
LABEL_7:

  return drawing;
}

- (id)serialize
{
  _minimumSerializationVersion = [(PKDrawing *)self _minimumSerializationVersion];

  return [(PKDrawingConcrete *)self serializeWithVersion:_minimumSerializationVersion];
}

- (id)_data
{
  v3 = +[PKDrawing _currentSerializationVersion];

  return [(PKDrawingConcrete *)self serializeWithVersion:v3];
}

- (id)serializeTransiently
{
  v2 = [(PKDrawingConcrete *)self copy];
  [v2 _setUUID:0];
  v3 = [v2 serializeWithVersion:{+[PKDrawing _currentSerializationVersion](PKDrawing, "_currentSerializationVersion")}];

  return v3;
}

- (id)serializeWithVersion:(int64_t)version
{
  if (version > 1)
  {
    v12 = &unk_1F476BBA0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    if (version == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PKDrawingConcrete *)self saveToArchive:&v12 withPathData:1];
      PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::Drawing>(&v12, 255);
    }

    else
    {
      PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::Drawing>(&v12, [(PKDrawingConcrete *)self saveToArchive:&v12 withPathData:1]);
    }
    serialize = ;
    drawing::Drawing::~Drawing(&v12);
  }

  else
  {
    v4 = [[PKDrawingVersionedDocument alloc] initWithDrawing:self];
    serialize = [(PKVersionedDocument *)v4 serialize];
  }

  _hasReplicaUUID = [(PKDrawingConcrete *)self _hasReplicaUUID];
  if (serialize)
  {
    v7 = _hasReplicaUUID;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    uuid = [(PKDrawingConcrete *)self uuid];

    if (uuid)
    {
      v9 = +[PKReplicaManager sharedReplicaManager];
      [v9 updateVersionForDrawing:self];
    }
  }

  v10 = +[PKReplicaManager sharedReplicaManager];
  [v10 persistIfNeeded];

  return serialize;
}

- (PKDrawingConcrete)initWithV1Data:(id)data loadNonInkingStrokes:(BOOL)strokes
{
  strokesCopy = strokes;
  dataCopy = data;
  v7 = dataCopy;
  if (!dataCopy)
  {
    v10 = [(PKDrawingConcrete *)self init];
    goto LABEL_5;
  }

  v14 = &unk_1F4769510;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v8 = dataCopy;
  bytes = [v8 bytes];
  [v8 length];
  PB::Reader::Reader(buf, bytes);
  LODWORD(bytes) = unk_1F4769520(&v14, buf);

  if (bytes)
  {
    v10 = [(PKDrawingConcrete *)self initWithV1Archive:&v14 loadNonInkingStrokes:strokesCopy];
    drawingV1::Drawing::~Drawing(&v14);
LABEL_5:
    self = v10;
    selfCopy = self;
    goto LABEL_9;
  }

  v12 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "PKDrawing protobuf corrupt.", buf, 2u);
  }

  drawingV1::Drawing::~Drawing(&v14);
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (PKDrawingConcrete)initWithLegacyData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v8 = [(PKDrawingConcrete *)self init];
    goto LABEL_5;
  }

  v12[0] = &unk_1F4769560;
  memset(&v12[1], 0, 24);
  v13 = 0;
  v12[5] = 0;
  v12[6] = 0;
  v6 = dataCopy;
  bytes = [v6 bytes];
  [v6 length];
  PB::Reader::Reader(buf, bytes);
  LODWORD(bytes) = unk_1F4769570(v12, buf);

  if (bytes)
  {
    v8 = [(PKDrawingConcrete *)self initWithLegacyArchive:v12];
    legacy_drawing::Drawing::~Drawing(v12);
LABEL_5:
    self = v8;
    selfCopy = self;
    goto LABEL_9;
  }

  v10 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "PKDrawing protobuf corrupt.", buf, 2u);
  }

  legacy_drawing::Drawing::~Drawing(v12);
  selfCopy = 0;
LABEL_9:

  return selfCopy;
}

- (PKDrawingConcrete)initWithArchive:(const void *)archive loadNonInkingStrokes:(BOOL)strokes error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  v52 = *(archive + 12);
  v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{(*(archive + 7) - *(archive + 6)) >> 4, strokes, error}];
  v7 = *(archive + 7) - *(archive + 6);
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 4;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(archive + 6) + v8)];
      [v6 addObject:v11];

      v8 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = objc_alloc_init(PKVectorTimestamp);
  v13 = *(archive + 14) - *(archive + 13);
  if (v13)
  {
    v14 = 0;
    v15 = v13 >> 3;
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      v17 = *(*(archive + 13) + 8 * v14);
      v18 = v17[1];
      v19 = v17[3];
      v20 = [v6 objectAtIndex:v17[2]];
      [(PKVectorTimestamp *)v12 setClock:v18 subclock:v19 forUUID:v20];

      ++v14;
    }

    while (v16 != v14);
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(archive + 4) - *(archive + 3)) >> 3];
  v22 = *(archive + 4) - *(archive + 3);
  if (v22)
  {
    v23 = 0;
    v24 = v22 >> 3;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    do
    {
      v26 = [[PKInk alloc] initWithArchive:*(*(archive + 3) + 8 * v23)];
      if (v26)
      {
        [v21 addObject:v26];
      }

      ++v23;
    }

    while (v25 != v23);
  }

  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(archive + 10) - *(archive + 9)) >> 3];
  v50 = v12;
  if (v52)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:(*(archive + 10) - *(archive + 9)) >> 3];
  }

  v28 = *(archive + 10) - *(archive + 9);
  if (v28)
  {
    v29 = 0;
    v30 = v28 >> 3;
    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    do
    {
      v32 = [[_PKStrokeConcrete alloc] initWithArchive:*(*(archive + 9) + 8 * v29) sortedUUIDs:v6 inks:v21 transientArchiveDictionary:v27];
      v33 = v32;
      if (!v32 || strokes)
      {
        if (v32)
        {
LABEL_30:
          if (!v52)
          {
            [(PKStroke *)v33 _setIsPastedStroke:1];
          }

          [v53 addObject:v33];
        }
      }

      else
      {
        v34 = [(_PKStrokeConcrete *)v32 ink];
        v35 = [PKTool _inkIsInkingTool:v34];

        if (v35)
        {
          goto LABEL_30;
        }
      }

      ++v29;
    }

    while (v31 != v29);
  }

  v36 = *MEMORY[0x1E695F058];
  v37 = *(MEMORY[0x1E695F058] + 8);
  v38 = *(MEMORY[0x1E695F058] + 16);
  v39 = *(MEMORY[0x1E695F058] + 24);
  v59 = 0uLL;
  v60 = 0;
  v40 = *(archive + 1);
  if (v40)
  {
    v36 = v40[3];
    v37 = v40[4];
    v38 = v40[5];
    v39 = v40[2];
    v41 = *(archive + 2);
    if (v41)
    {
      v42 = *(v41 + 16);
      LODWORD(v59) = *(v41 + 8);
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        uuid_clear(&v59 + 4);
      }

      else
      {
        v43 = [v6 objectAtIndex:?];
        [v43 getUUIDBytes:&v59 + 4];
      }

      HIDWORD(v60) = *(*(archive + 2) + 24);
    }
  }

  v44 = *(archive + 12);
  if (v44)
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v44];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v46 = uUID;
  v57 = v59;
  v58 = v60;
  v47 = *(archive + 17);
  v55 = *(archive + 16);
  v56 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = [(PKDrawingConcrete *)self initWithUUID:uUID strokes:v53 version:v50 canvasBounds:&v57 boundsVersion:&v55 unknownFields:v36, v37, v38, v39];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  return v48;
}

- (PKDrawingConcrete)initWithV1Archive:(const void *)archive loadNonInkingStrokes:(BOOL)strokes
{
  v58 = *MEMORY[0x1E69E9840];
  if ((*(archive + 136) & 1) != 0 && *(archive + 9) == 10)
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:(*(archive + 7) - *(archive + 6)) >> 4];
    v8 = *(archive + 7) - *(archive + 6);
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 4;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      do
      {
        v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(archive + 6) + v9)];
        [v7 addObject:v12];

        v9 += 16;
        --v11;
      }

      while (v11);
    }

    v52 = objc_alloc_init(PKVectorTimestamp);
    v13 = *(archive + 15) - *(archive + 14);
    if (v13)
    {
      v14 = 0;
      v15 = v13 >> 3;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      do
      {
        v17 = *(*(archive + 14) + 8 * v14);
        v18 = v17[1];
        v19 = v17[3];
        v20 = [v7 objectAtIndex:v17[2]];
        [(PKVectorTimestamp *)v52 setClock:v18 subclock:v19 forUUID:v20];

        ++v14;
      }

      while (v16 != v14);
    }

    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(archive + 4) - *(archive + 3)) >> 3];
    v22 = *(archive + 4) - *(archive + 3);
    if (v22)
    {
      v23 = 0;
      v24 = v22 >> 3;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      do
      {
        v26 = [[PKInk alloc] initWithV1Archive:*(*(archive + 3) + 8 * v23) serializationVersion:*(archive + 9)];
        if (v26)
        {
          [v21 addObject:v26];
        }

        ++v23;
      }

      while (v25 != v23);
    }

    v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(archive + 11) - *(archive + 10)) >> 3];
    v27 = *(archive + 11) - *(archive + 10);
    if (v27)
    {
      v28 = 0;
      v29 = v27 >> 3;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      while (1)
      {
        v31 = [[_PKStrokeConcrete alloc] initWithV1Archive:*(*(archive + 10) + 8 * v28) sortedUUIDs:v7 inks:v21];
        v32 = v31;
        if (v31)
        {
          if (!strokes)
          {
            break;
          }
        }

        if (v31)
        {
          goto LABEL_29;
        }

LABEL_30:

        if (v30 == ++v28)
        {
          goto LABEL_31;
        }
      }

      v33 = [(_PKStrokeConcrete *)v31 ink];
      v34 = [PKTool _inkIsInkingTool:v33];

      if (!v34)
      {
        goto LABEL_30;
      }

LABEL_29:
      [v51 addObject:v32];
      goto LABEL_30;
    }

LABEL_31:
    v35 = *MEMORY[0x1E695F058];
    v36 = *(MEMORY[0x1E695F058] + 8);
    v37 = *(MEMORY[0x1E695F058] + 16);
    v38 = *(MEMORY[0x1E695F058] + 24);
    memset(buf, 0, sizeof(buf));
    v39 = *(archive + 1);
    if (v39)
    {
      v35 = v39[3];
      v36 = v39[4];
      v37 = v39[5];
      v38 = v39[2];
      v40 = *(archive + 2);
      if (v40)
      {
        v41 = *(v40 + 16);
        *buf = *(v40 + 8);
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          uuid_clear(&buf[4]);
        }

        else
        {
          v44 = [v7 objectAtIndex:?];
          [v44 getUUIDBytes:&buf[4]];
        }

        *&buf[20] = *(*(archive + 2) + 24);
      }
    }

    v45 = *(archive + 13);
    if (v45)
    {
      uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v45];
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    v47 = uUID;
    v55 = *buf;
    v56 = *&buf[16];
    v53 = 0;
    v54 = 0;
    v43 = [(PKDrawingConcrete *)self initWithUUID:uUID strokes:v51 version:v52 canvasBounds:&v55 boundsVersion:&v53 unknownFields:v35, v36, v37, v38];
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }
  }

  else
  {
    v42 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v49 = *(archive + 9);
      *buf = 134218240;
      *&buf[4] = v49;
      *&buf[12] = 1024;
      *&buf[14] = 10;
      _os_log_error_impl(&dword_1C7CCA000, v42, OS_LOG_TYPE_ERROR, "Skipped loading drawing. Drawing archive is wrong version (%llu != %d).", buf, 0x12u);
    }

    v43 = [(PKDrawingConcrete *)self init];
  }

  return v43;
}

- (PKDrawingConcrete)initWithLegacyArchive:(const void *)archive
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(archive + 64) & 4) != 0 && *(archive + 15) == 6)
  {
    v5 = [(PKDrawingConcrete *)self init];
    if (v5)
    {
      v6 = [[PKVectorMultiTimestamp alloc] initWithArchive:*(archive + 5) andCapacity:2];
      sortedUUIDs = [(PKVectorMultiTimestamp *)v6 sortedUUIDs];
      timestamps = [(PKVectorMultiTimestamp *)v6 timestamps];
      v9 = [timestamps objectAtIndexedSubscript:0];
      [(PKDrawingConcrete *)v5 setVersion:v9];

      timestamps2 = [(PKVectorMultiTimestamp *)v6 timestamps];
      v11 = [timestamps2 count];

      if (v11 >= 2)
      {
        for (i = 1; i != v11; ++i)
        {
          version = [(PKDrawingConcrete *)v5 version];
          timestamps3 = [(PKVectorMultiTimestamp *)v6 timestamps];
          v15 = [timestamps3 objectAtIndexedSubscript:i];
          [version mergeWithTimestamp:v15];
        }
      }

      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(archive + 2) - *(archive + 1)) >> 3];
      [(PKDrawingConcrete *)v5 _setAllStrokes:v16];

      v17 = *(archive + 2) - *(archive + 1);
      if (v17)
      {
        v18 = 0;
        v19 = v17 >> 3;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        do
        {
          v21 = [[_PKStrokeConcrete alloc] initWithLegacyArchive:*(*(archive + 1) + 8 * v18) sortedUUIDs:sortedUUIDs];
          if (v21)
          {
            _allStrokes = [(PKDrawingConcrete *)v5 _allStrokes];
            [_allStrokes addObject:v21];
          }

          ++v18;
        }

        while (v20 != v18);
      }

      if ((~*(archive + 64) & 3) == 0)
      {
        [(PKDrawingConcrete *)v5 set_orientation:*(archive + 14)];
      }

      v23 = *(archive + 6);
      if (v23)
      {
        [(PKDrawingConcrete *)v5 set_canvasBounds:v23[3], v23[4], v23[5], v23[2]];
      }
    }
  }

  else
  {
    v24 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = *(archive + 15);
      v28[0] = 67109376;
      v28[1] = v27;
      v29 = 1024;
      v30 = 6;
      _os_log_error_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_ERROR, "Skipped loading drawing. Drawing archive is wrong version (%d != %d).", v28, 0xEu);
    }

    v5 = [(PKDrawingConcrete *)self init];
  }

  v25 = v5;

  return v25;
}

- (int64_t)saveToArchive:(void *)archive withPathData:(BOOL)data
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFA0];
  version = [(PKDrawingConcrete *)self version];
  allUUIDs = [version allUUIDs];
  v8 = [v5 orderedSetWithArray:allUUIDs];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  v10 = [_allStrokes countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v10)
  {
    v11 = *v61;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(_allStrokes);
        }

        [*(*(&v60 + 1) + 8 * i) saveUUIDsTo:v8];
      }

      v10 = [_allStrokes countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v10);
  }

  [v8 sortWithOptions:1 usingComparator:&__block_literal_global_76];
  std::vector<PB::Data>::reserve(archive + 6, [v8 count]);
  v13 = [v8 count];
  if (v13 > (*(archive + 15) - *(archive + 13)) >> 3)
  {
    if (!(v13 >> 61))
    {
      v70 = archive + 104;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(archive + 104, v13);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if ([v8 count])
  {
    v14 = [v8 objectAtIndex:0];
    v15 = *(archive + 7);
    if (v15 >= *(archive + 8))
    {
      v16 = std::vector<PB::Data>::__emplace_back_slow_path<>(archive + 48);
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
      v16 = (v15 + 2);
    }

    *(archive + 7) = v16;
    memset(v68, 0, sizeof(v68));
    [v14 getUUIDBytes:v68];
    PB::Data::assign(*(archive + 6), v68, &v69);
    version2 = [(PKDrawingConcrete *)self version];
    [version2 clockElementForUUID:v14];
    objc_claimAutoreleasedReturnValue();

    PB::PtrVector<drawing::StrokeID>::emplace_back<>();
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  _allStrokes2 = [(PKDrawingConcrete *)self _allStrokes];
  v19 = [_allStrokes2 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v19)
  {
    v20 = *v57;
    v21 = 1;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(_allStrokes2);
        }

        v23 = *(*(&v56 + 1) + 8 * j);
        [v23 saveInksTo:orderedSet];
        requiredContentVersion = [v23 requiredContentVersion];
        if (v21 <= requiredContentVersion)
        {
          v21 = requiredContentVersion;
        }
      }

      v19 = [_allStrokes2 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = 1;
  }

  v25 = [orderedSet count];
  if (v25 > (*(archive + 5) - *(archive + 3)) >> 3)
  {
    if (!(v25 >> 61))
    {
      v70 = archive + 24;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(archive + 24, v25);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v55, 0, sizeof(v55));
  v26 = orderedSet;
  if ([v26 countByEnumeratingWithState:v55 objects:v65 count:16])
  {
    PB::PtrVector<drawing::Ink>::emplace_back<>();
  }

  _allStrokes3 = [(PKDrawingConcrete *)self _allStrokes];
  std::vector<std::unique_ptr<drawing::Stroke>>::reserve(archive + 9, [_allStrokes3 count]);

  [(PKDrawingConcrete *)self uuid];
  memset(v54, 0, sizeof(v54));
  _allStrokes4 = [(PKDrawingConcrete *)self _allStrokes];
  if ([_allStrokes4 countByEnumeratingWithState:v54 objects:v64 count:16])
  {
    PB::PtrVector<drawing::Stroke>::emplace_back<>();
  }

  [(PKDrawingConcrete *)self _canvasBounds];
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  if (!CGRectIsNull(v72))
  {
    drawing::Drawing::makeBounds(archive);
    v33 = *(archive + 1);
    v34 = x;
    v35 = *(v33 + 24);
    v36 = y;
    v37 = width;
    *(v33 + 16) = v36;
    *(v33 + 20) = v37;
    v38 = height;
    *(v33 + 24) = v35 | 0xF;
    *(v33 + 8) = v38;
    *(v33 + 12) = v34;
  }

  drawing::Drawing::makeBoundsVersion(archive);
  v39 = *(archive + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v40 = *v68;
  *(v39 + 32) |= 1u;
  *(v39 + 8) = v40;
  v41 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(PKDrawingConcrete *)self boundsVersion];
  v42 = [v41 initWithUUIDBytes:&v68[4]];
  v43 = [v8 indexOfObject:v42];
  v44 = *(archive + 2);
  *(v44 + 32) |= 2u;
  *(v44 + 16) = v43;
  v45 = *(archive + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v46 = HIDWORD(v69);
  *(v45 + 32) |= 4u;
  *(v45 + 24) = v46;
  nsuuid = [(PKDrawingConcrete *)self nsuuid];
  LOBYTE(v45) = nsuuid == 0;

  if ((v45 & 1) == 0)
  {
    if (!*(archive + 12))
    {
      operator new();
    }

    memset(v68, 0, sizeof(v68));
    nsuuid2 = [(PKDrawingConcrete *)self nsuuid];
    [nsuuid2 getUUIDBytes:v68];

    PB::Data::assign(*(archive + 12), v68, &v69);
  }

  [(PKDrawingConcrete *)self _unknownFields];
  v49 = *v68;
  memset(v68, 0, sizeof(v68));
  v50 = *(archive + 17);
  *(archive + 8) = v49;
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    if (*&v68[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v68[8]);
    }
  }

  return v21;
}

- (unsigned)saveToV1Archive:(void *)archive withPathData:(BOOL)data
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFA0];
  version = [(PKDrawingConcrete *)self version];
  allUUIDs = [version allUUIDs];
  v52 = [v5 orderedSetWithArray:allUUIDs];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  _allStrokes = [(PKDrawingConcrete *)self _allStrokes];
  v9 = [_allStrokes countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(_allStrokes);
        }

        [*(*(&v59 + 1) + 8 * i) saveUUIDsTo:v52];
      }

      v9 = [_allStrokes countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v9);
  }

  *(archive + 136) |= 1u;
  *(archive + 9) = 10;
  std::vector<PB::Data>::reserve(archive + 6, [v52 count]);
  v12 = [v52 count];
  if (v12 > (*(archive + 16) - *(archive + 14)) >> 3)
  {
    if (!(v12 >> 61))
    {
      v70 = archive + 112;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(archive + 112, v12);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if ([v52 count])
  {
    v13 = [v52 objectAtIndex:0];
    v14 = *(archive + 7);
    if (v14 >= *(archive + 8))
    {
      v15 = std::vector<PB::Data>::__emplace_back_slow_path<>(archive + 48);
    }

    else
    {
      *v14 = 0;
      v14[1] = 0;
      v15 = (v14 + 2);
    }

    *(archive + 7) = v15;
    *v67 = 0;
    v68 = 0;
    [v13 getUUIDBytes:v67];
    PB::Data::assign(*(archive + 6), v67, &v69);
    version2 = [(PKDrawingConcrete *)self version];
    [version2 clockElementForUUID:v13];
    objc_claimAutoreleasedReturnValue();

    PB::PtrVector<drawingV1::StrokeID>::emplace_back<>();
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  _allStrokes2 = [(PKDrawingConcrete *)self _allStrokes];
  v18 = [_allStrokes2 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v18)
  {
    v19 = *v56;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(_allStrokes2);
        }

        v21 = [*(*(&v55 + 1) + 8 * j) ink];
        [orderedSet addObject:v21];
      }

      v18 = [_allStrokes2 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v18);
  }

  v22 = [orderedSet count];
  if (v22 > (*(archive + 5) - *(archive + 3)) >> 3)
  {
    if (!(v22 >> 61))
    {
      v70 = archive + 24;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(archive + 24, v22);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v54, 0, sizeof(v54));
  v23 = orderedSet;
  if ([v23 countByEnumeratingWithState:v54 objects:v64 count:16])
  {
    PB::PtrVector<drawingV1::Ink>::emplace_back<>();
  }

  [(PKDrawingConcrete *)self uuid];
  _allStrokes3 = [(PKDrawingConcrete *)self _allStrokes];
  v25 = [_allStrokes3 count];
  if (v25 > (*(archive + 12) - *(archive + 10)) >> 3)
  {
    if (!(v25 >> 61))
    {
      v70 = archive + 80;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(archive + 80, v25);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v53, 0, sizeof(v53));
  _allStrokes4 = [(PKDrawingConcrete *)self _allStrokes];
  if ([_allStrokes4 countByEnumeratingWithState:v53 objects:v63 count:16])
  {
    PB::PtrVector<drawingV1::Stroke>::emplace_back<>();
  }

  [(PKDrawingConcrete *)self _canvasBounds];
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  if (!CGRectIsNull(v72))
  {
    drawingV1::Drawing::makeBounds(archive);
    v31 = *(archive + 1);
    v32 = x;
    v33 = *(v31 + 24);
    v34 = y;
    v35 = width;
    *(v31 + 16) = v34;
    *(v31 + 20) = v35;
    v36 = height;
    *(v31 + 24) = v33 | 0xF;
    *(v31 + 8) = v36;
    *(v31 + 12) = v32;
  }

  drawingV1::Drawing::makeBoundsVersion(archive);
  v37 = *(archive + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v38 = *v67;
  *(v37 + 32) |= 1u;
  *(v37 + 8) = v38;
  v39 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(PKDrawingConcrete *)self boundsVersion];
  v40 = [v39 initWithUUIDBytes:&v67[4]];
  v41 = [v52 indexOfObject:v40];
  v42 = *(archive + 2);
  *(v42 + 32) |= 2u;
  *(v42 + 16) = v41;
  v43 = *(archive + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v44 = HIDWORD(v69);
  *(v43 + 32) |= 4u;
  *(v43 + 24) = v44;
  nsuuid = [(PKDrawingConcrete *)self nsuuid];
  LOBYTE(v43) = nsuuid == 0;

  if ((v43 & 1) == 0)
  {
    v47 = *(archive + 13);
    v46 = (archive + 104);
    if (!v47)
    {
      operator new();
    }

    *v67 = 0;
    v68 = 0;
    nsuuid2 = [(PKDrawingConcrete *)self nsuuid];
    [nsuuid2 getUUIDBytes:v67];

    PB::Data::assign(*v46, v67, &v69);
  }

  return 10;
}

- (id)v1SerializeWithPathData:(BOOL)data
{
  v5 = 0;
  v3 = [(PKDrawingConcrete *)self v1SerializeWithPathData:data toVersion:&v5];

  return v3;
}

- (id)v1SerializeWithPathData:(BOOL)data toVersion:(unsigned int *)version
{
  v7 = &unk_1F4769510;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *version = [(PKDrawingConcrete *)self saveToV1Archive:&v7 withPathData:data];
  PB::Writer::Writer(&v15);
  (v7[3])(&v7, &v15);
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);
  v5 = [v4 initWithBytes:v16 length:v15 - v16];
  PB::Writer::~Writer(&v15);
  drawingV1::Drawing::~Drawing(&v7);

  return v5;
}

@end