@interface PKDrawingConcrete
+ (CGAffineTransform)_orientationTransform:(SEL)a3 size:(int64_t)a4;
+ (_PKStrokeID)newStrokeIDGreaterThan:(SEL)a3 forUUID:(_PKStrokeID *)a4;
+ (id)_defaultConversionQueue;
- ($3CC19D079FD0B010EE84973AA846B91B)_drawingStrokeInfoIsLegacyDrawing:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)_transformForImageWithSize:(SEL)a3;
- (CGRect)_canvasBounds;
- (CGRect)bounds;
- (CGSize)_orientedDrawingSize;
- (CGSize)_unscaledOrientedDrawingSize;
- (NSUUID)replicaUUID;
- (PKDrawingConcrete)init;
- (PKDrawingConcrete)initWithArchive:(const void *)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5;
- (PKDrawingConcrete)initWithData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5;
- (PKDrawingConcrete)initWithDrawing:(id)a3;
- (PKDrawingConcrete)initWithLegacyArchive:(const void *)a3;
- (PKDrawingConcrete)initWithLegacyData:(id)a3;
- (PKDrawingConcrete)initWithStrokes:(id)a3 fromDrawing:(id)a4;
- (PKDrawingConcrete)initWithUUID:(id)a3 strokes:(id)a4 version:(id)a5 canvasBounds:(CGRect)a6 boundsVersion:(_PKStrokeID *)a7 unknownFields:(shared_ptr<PKProtobufUnknownFields>)a8;
- (PKDrawingConcrete)initWithV1Archive:(const void *)a3 loadNonInkingStrokes:(BOOL)a4;
- (PKDrawingConcrete)initWithV1Data:(id)a3 loadNonInkingStrokes:(BOOL)a4;
- (_PKStrokeID)newStrokeIDGreaterThan:(SEL)a3;
- (double)_conversionScaleFactor;
- (id).cxx_construct;
- (id)_data;
- (id)_dataInUnknownFields;
- (id)_initWithUnzippedData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5;
- (id)_newStroke:(id)a3 withGroupID:(id)a4;
- (id)_newStroke:(id)a3 withInk:(id)a4;
- (id)_stroke:(id)a3 transformed:(CGAffineTransform *)a4 concat:(BOOL)a5;
- (id)_strokeForIdentifier:(id)a3;
- (id)_strokesIdentifierMap;
- (id)_upgradeOnQueue:(id)a3 isLegacyDrawing:(BOOL)a4 completionBlock:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutInternalStrokes;
- (id)serialize;
- (id)serializeTransiently;
- (id)serializeWithVersion:(int64_t)a3;
- (id)undoableAddNewStrokes:(id)a3;
- (id)undoableAddNewStrokes:(id)a3 replacingOldStrokes:(id)a4;
- (id)undoableDeleteStrokes:(id)a3;
- (id)undoableSetStrokes:(id)a3 groupID:(id)a4 actionName:(id)a5;
- (id)undoableSetStrokes:(id)a3 inks:(id)a4;
- (id)undoableTransformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5;
- (id)updateFromSlicedIntersectingIndexes:(int64_t *)a3 resultNewRoots:(const void *)a4 resultUpdatedStrokes:(const void *)a5 count:(int64_t)a6;
- (id)v1SerializeWithPathData:(BOOL)a3;
- (id)v1SerializeWithPathData:(BOOL)a3 toVersion:(unsigned int *)a4;
- (id)visibleStrokeForInsertingStroke:(id)a3;
- (int64_t)_orientation;
- (int64_t)saveToArchive:(void *)a3 withPathData:(BOOL)a4;
- (shared_ptr<PKProtobufUnknownFields>)_unknownFields;
- (unint64_t)hash;
- (unint64_t)mergeWithDrawing:(id)a3;
- (unsigned)saveToV1Archive:(void *)a3 withPathData:(BOOL)a4;
- (void)_collectAllStrokesIn:(id)a3 into:(id)a4;
- (void)_mergeStroke:(id)a3;
- (void)_removeHiddenAndEraserStrokes;
- (void)_removeInvisibleStrokes;
- (void)_setAllStrokes:(id)a3;
- (void)_updateStrokes:(id)a3 updateBlock:(id)a4;
- (void)_upgradeLegacyPenInks;
- (void)addNewStroke:(id)a3;
- (void)dealloc;
- (void)didUpdate;
- (void)invalidateStrokeBounds;
- (void)invalidateVisibleStrokes;
- (void)normalizeUUIDsWithDrawing:(id)a3;
- (void)setBoundsVersion:(_PKStrokeID *)a3;
- (void)setStrokeSortIDForInsertion:(id)a3;
- (void)setStrokes:(id)a3 groupID:(id)a4;
- (void)setStrokes:(id)a3 hidden:(BOOL)a4;
- (void)setStrokes:(id)a3 inks:(id)a4;
- (void)set_canvasBounds:(CGRect)a3;
- (void)set_orientation:(int64_t)a3;
- (void)transformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5;
- (void)updateStroke:(id)a3 indexHint:(unint64_t)a4;
- (void)updateStrokes:(id)a3;
- (void)willMergeWithDrawing:(id)a3;
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;

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

- (PKDrawingConcrete)initWithUUID:(id)a3 strokes:(id)a4 version:(id)a5 canvasBounds:(CGRect)a6 boundsVersion:(_PKStrokeID *)a7 unknownFields:(shared_ptr<PKProtobufUnknownFields>)a8
{
  ptr = a8.__ptr_;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v29.receiver = self;
  v29.super_class = PKDrawingConcrete;
  v20 = [(PKDrawing *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, a3);
    v22 = [v18 mutableCopy];
    allStrokes = v21->_allStrokes;
    v21->_allStrokes = v22;

    objc_storeStrong(&v21->_version, a5);
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

- (PKDrawingConcrete)initWithDrawing:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26[0].receiver = self;
  v26[0].super_class = PKDrawingConcrete;
  v5 = [(objc_super *)v26 initWithDrawing:v4];
  if (v5)
  {
    v6 = [v4 nsuuid];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    v8 = [v4 _allStrokes];
    v9 = [v8 mutableCopy];
    v10 = *(v5 + 11);
    *(v5 + 11) = v9;

    v11 = [v4 version];
    v12 = [v11 copy];
    v13 = *(v5 + 21);
    *(v5 + 21) = v12;

    [v4 _canvasBounds];
    *(v5 + 12) = v14;
    *(v5 + 13) = v15;
    *(v5 + 14) = v16;
    *(v5 + 15) = v17;
    v18 = *(v4 + 9);
    *(v5 + 8) = *(v4 + 8);
    *(v5 + 9) = v18;
    [v4 boundsVersion];
    v19 = v27;
    *(v5 + 12) = v26[1];
    *(v5 + 26) = v19;
    v20 = [v4[10] mutableCopy];
    v21 = *(v5 + 10);
    *(v5 + 10) = v20;

    v23 = v4[22];
    v22 = v4[23];
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

- (PKDrawingConcrete)initWithStrokes:(id)a3 fromDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKDrawingConcrete *)self init];
  if (!v8)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 mutableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v6 array];
      v11 = [v10 mutableCopy];
      allStrokes = v8->_allStrokes;
      v8->_allStrokes = v11;

      goto LABEL_8;
    }

    v9 = [MEMORY[0x1E695DF70] array];
  }

  v10 = v8->_allStrokes;
  v8->_allStrokes = v9;
LABEL_8:

  if (v7)
  {
    v13 = [v7 version];
    v14 = [v13 copy];
    version = v8->_version;
    v8->_version = v14;

    [v7 _canvasBounds];
    v8->__canvasBounds.origin.x = v16;
    v8->__canvasBounds.origin.y = v17;
    v8->__canvasBounds.size.width = v18;
    v8->__canvasBounds.size.height = v19;
  }

LABEL_10:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_replicaUUID)
  {
    v5 = +[PKReplicaManager sharedReplicaManager];
    [v5 updateVersionForDrawing:self];
  }

  v6 = [objc_opt_class() allocWithZone:a3];

  return [v6 initWithDrawing:self];
}

- (id)copyWithoutInternalStrokes
{
  v2 = [[PKDrawingConcrete alloc] initWithDrawing:self];
  v3 = [(PKDrawingConcrete *)v2 _allStrokes];
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_7];
  [v3 filterUsingPredicate:v4];

  [(PKDrawingConcrete *)v2 invalidateVisibleStrokes];
  return v2;
}

- (void)_setAllStrokes:(id)a3
{
  v6 = a3;
  v4 = [v6 mutableCopy];
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

- (void)_collectAllStrokesIn:(id)a3 into:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _strokeUUID];
  [v7 setObject:v6 forKeyedSubscript:v8];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v9 = [v6 _substrokesInDrawing:{self, 0}];
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

        [(PKDrawingConcrete *)self _collectAllStrokesIn:*(*(&v13 + 1) + 8 * v12++) into:v7];
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
  v2 = self;
  objc_sync_enter(v2);
  strokesIdentifierMap = v2->_strokesIdentifierMap;
  if (!strokesIdentifierMap)
  {
    v4 = [(PKDrawing *)v2 strokes];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = v2->_strokesIdentifierMap;
    v2->_strokesIdentifierMap = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v2->_allStrokes;
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

          [(PKDrawingConcrete *)v2 _collectAllStrokesIn:*(*(&v13 + 1) + 8 * i) into:v2->_strokesIdentifierMap, v13];
        }

        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    strokesIdentifierMap = v2->_strokesIdentifierMap;
  }

  v11 = strokesIdentifierMap;
  objc_sync_exit(v2);

  return v11;
}

- (id)_strokeForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKDrawingConcrete *)self _strokesIdentifierMap];
    v6 = [v5 objectForKeyedSubscript:v4];
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

- (void)set_canvasBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_canvasBounds = &self->__canvasBounds;
  if (!CGRectEqualToRect(a3, self->__canvasBounds))
  {
    p_canvasBounds->origin.x = x;
    p_canvasBounds->origin.y = y;
    p_canvasBounds->size.width = width;
    p_canvasBounds->size.height = height;
    ++self->_boundsVersion.clock;
    v12 = [(PKDrawingConcrete *)self replicaUUID];
    [v12 getUUIDBytes:self->_boundsVersion.replicaUUID];

    v13 = [(PKDrawingConcrete *)self version];
    v9 = [(PKDrawingConcrete *)self replicaUUID];
    v10 = [v13 clockForUUID:v9];

    if (!v10)
    {
      v14 = [(PKDrawingConcrete *)self version];
      v11 = [(PKDrawingConcrete *)self replicaUUID];
      [v14 setClock:0 forUUID:v11];
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
  v2 = self;
  objc_sync_enter(v2);
  p_x = &v2->__bounds.origin.x;
  if (CGRectIsNull(v2->__bounds))
  {
    [(PKDrawing *)v2 calculateStrokeBounds];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
    *p_x = v4;
    v2->__bounds.origin.y = v6;
    v2->__bounds.size.width = v8;
    v2->__bounds.size.height = v10;
  }

  else
  {
    x = *p_x;
    y = v2->__bounds.origin.y;
    width = v2->__bounds.size.width;
    height = v2->__bounds.size.height;
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

  objc_sync_exit(v2);

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

- (void)setStrokeSortIDForInsertion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0uLL;
  v5 = [(PKDrawingConcrete *)self _allStrokes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(PKDrawingConcrete *)self _allStrokes];
    v8 = [v7 lastObject];

    if (v8)
    {
      [v8 _sortID];
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

  v11 = [(PKDrawingConcrete *)self version];
  v12 = [(PKDrawingConcrete *)self replicaUUID];
  v13 = [v11 clockElementForUUID:v12];

  v23 = 0uLL;
  v14 = [(PKDrawingConcrete *)self replicaUUID];
  [v14 getUUIDBytes:&v23];

  v15 = [v13 clock];
  v16 = [v13 subclock];
  v22 = v23;
  v24.clock = clock;
  *v24.replicaUUID = v25;
  v24.subclock = subclock;
  v21.clock = v15;
  *v21.replicaUUID = v23;
  v21.subclock = v16;
  if (_PKStrokeIDCompare(&v24, &v21) == -1)
  {
    v25 = v22;
    clock = v15;
    subclock = v16;
  }

  memset(&v24, 0, sizeof(v24));
  v21.clock = clock;
  *v21.replicaUUID = v25;
  v21.subclock = subclock;
  [(PKDrawingConcrete *)self newStrokeIDGreaterThan:&v21];
  v21 = v24;
  [v4 set_sortID:&v21];
  v17 = [(PKDrawingConcrete *)self version];
  v18 = v24.clock;
  v19 = v24.subclock;
  v20 = [(PKDrawingConcrete *)self replicaUUID];
  [v17 setClock:v18 subclock:v19 forUUID:v20];
}

- (_PKStrokeID)newStrokeIDGreaterThan:(SEL)a3
{
  v4 = [(PKDrawingConcrete *)self replicaUUID:*&a4->clock];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:v4];

  return result;
}

+ (_PKStrokeID)newStrokeIDGreaterThan:(SEL)a3 forUUID:(_PKStrokeID *)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a5;
  memset(uu2, 0, sizeof(uu2));
  [v7 getUUIDBytes:uu2];
  v8 = uuid_compare(a4->replicaUUID, uu2);
  if (v8 < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8 != 0;
  }

  clock = a4->clock;
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
    v11 = a4->subclock + 1;
  }

  retstr->clock = clock;
  *retstr->replicaUUID = *uu2;
  retstr->subclock = v11;

  return result;
}

- (id)visibleStrokeForInsertingStroke:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 _clipPlane];
    v6 = [v4 _renderMask];
    v19 = 0uLL;
    v7 = [(PKDrawingConcrete *)self replicaUUID];
    [v7 getUUIDBytes:&v19];

    v8 = [_PKStrokeConcrete alloc];
    v16 = 0;
    v17 = v19;
    v18 = 0;
    v9 = [v4 ink];
    if (v4)
    {
      [v4 _transform];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    v10 = [(_PKStrokeConcrete *)v8 initWithStroke:v4 hidden:0 version:&v16 ink:v9 transform:&v13];

    [(PKDrawingConcrete *)self setStrokeSortIDForInsertion:v10];
    if (v5)
    {
      [(_PKStrokeConcrete *)v10 _setClipPlane:v5];
    }

    if (v6)
    {
      [(PKStroke *)v10 _setRenderMask:v6];
    }

    v11 = [v4 _groupID];
    [(_PKStrokeConcrete *)v10 _setGroupID:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)addNewStroke:(id)a3
{
  v18 = a3;
  [(NSMutableArray *)self->_allStrokes addObject:?];
  if (([v18 _isHidden] & 1) == 0)
  {
    if ([v18 hasSubstrokes])
    {
      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawingConcrete *)self invalidateStrokeBounds];
    }

    else
    {
      v4 = [(PKDrawing *)self _cachedVisibleStrokes];
      [v4 addObject:v18];

      strokesIdentifierMap = self->_strokesIdentifierMap;
      v6 = [v18 _strokeUUID];
      [(NSMutableDictionary *)strokesIdentifierMap setObject:v18 forKey:v6];

      p_bounds = &self->__bounds;
      if (!CGRectIsNull(self->__bounds))
      {
        x = p_bounds->origin.x;
        y = self->__bounds.origin.y;
        width = self->__bounds.size.width;
        height = self->__bounds.size.height;
        [v18 _bounds];
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

  v16 = [(PKDrawingConcrete *)self version];
  v17 = [(PKDrawingConcrete *)self replicaUUID];
  [v16 incrementClockForUUID:v17];

  [(PKDrawing *)self setNeedsRecognitionUpdate];
}

- (id)undoableAddNewStrokes:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v19;
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
        v10 = [v9 identifier];
        v11 = [v10 isEqual:@"com.apple.ink.lasso"];

        if ((v11 & 1) == 0)
        {
          [(PKDrawingConcrete *)self addNewStroke:v8];
          v12 = [v8 ink];
          v13 = [v12 behavior];
          v14 = [v13 isEraser];

          if ((v14 & 1) == 0)
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
    v15 = [v20 firstObject];
    v16 = [v15 _isHidden];

    v17 = [PKModifyStrokesCommand commandForMakingStrokesVisible:v20 drawing:self hiding:v16 ^ 1u];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)undoableAddNewStrokes:(id)a3 replacingOldStrokes:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
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

  v13 = [(PKDrawingConcrete *)self undoableDeleteStrokes:v23];
  v14 = [(PKDrawingConcrete *)self undoableAddNewStrokes:v7];
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      v16 = [PKUndoGroupCommand alloc];
      v17 = [(PKDrawingConcrete *)self uuid];
      v18 = [v15 actionName];
      v28[0] = v15;
      v28[1] = v13;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
      v20 = [(PKUndoGroupCommand *)v16 initWithDrawingUUID:v17 actionName:v18 commands:v19];

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

- (void)updateStroke:(id)a3 indexHint:(unint64_t)a4
{
  v7 = a3;
  v6 = [(PKDrawingConcrete *)self _allStrokes];
  [v6 replaceObjectAtIndex:a4 withObject:v7];
}

- (void)updateStrokes:(id)a3
{
  v12 = a3;
  v11 = [MEMORY[0x1E695DF70] array];
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
      v14 = v12;
      v15 = &v16;
      v8 = [v7 _updateStroke:v13 inDrawing:self];
      if (v8 != v7)
      {
        [(NSMutableArray *)self->_allStrokes replaceObjectAtIndex:v6 withObject:v8];
        [v11 addObject:v8];
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

  if ([v11 count])
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

- (void)setStrokes:(id)a3 hidden:(BOOL)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__PKDrawingConcrete_setStrokes_hidden___block_invoke;
  v4[3] = &__block_descriptor_33_e44___PKStroke_32__0__PKStroke_8__PKStroke_16Q24l;
  v5 = a4;
  [(PKDrawingConcrete *)self _updateStrokes:a3 updateBlock:v4];
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

- (id)undoableDeleteStrokes:(id)a3
{
  v4 = [PKModifyStrokesCommand commandForErasingStrokes:a3 drawing:self];
  [v4 applyToDrawing:self];
  v5 = [v4 invertedInDrawing:self];

  return v5;
}

- (id)_stroke:(id)a3 transformed:(CGAffineTransform *)a4 concat:(BOOL)a5
{
  v5 = a5;
  v7 = [a3 copyForMutation];
  v8 = v7;
  if (v5)
  {
    if (v7)
    {
      [v7 _transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v10 = *&a4->c;
    *&v12.a = *&a4->a;
    *&v12.c = v10;
    *&v12.tx = *&a4->tx;
    CGAffineTransformConcat(&v14, &t1, &v12);
  }

  else
  {
    v9 = *&a4->c;
    *&v14.a = *&a4->a;
    *&v14.c = v9;
    *&v14.tx = *&a4->tx;
  }

  t1 = v14;
  [v8 _setTransform:&t1];
  [v8 _setFlags:{objc_msgSend(v8, "_flags") & 0xFFFFFFFFFFFFFFF7}];

  return v8;
}

- (void)transformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (!v5 || (v9 = *&a4->c, *&v16.a = *&a4->a, *&v16.c = v9, *&v16.tx = *&a4->tx, !CGAffineTransformIsIdentity(&v16)))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v10 = *&a4->c;
    v12 = *&a4->a;
    v11[2] = __59__PKDrawingConcrete_transformStrokes_withTransform_concat___block_invoke;
    v11[3] = &unk_1E82D7228;
    v11[4] = self;
    v13 = v10;
    v14 = *&a4->tx;
    v15 = v5;
    [(PKDrawingConcrete *)self _updateStrokes:v8 updateBlock:v11];
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

- (id)undoableTransformStrokes:(id)a3 withTransform:(CGAffineTransform *)a4 concat:(BOOL)a5
{
  v6 = *&a4->c;
  v10[0] = *&a4->a;
  v10[1] = v6;
  v10[2] = *&a4->tx;
  v7 = [PKTransformStrokesCommand commandForTransforming:a3 drawing:self strokeTransform:v10];
  [v7 applyToDrawing:self];
  v8 = [v7 invertedInDrawing:self];

  return v8;
}

- (void)setStrokes:(id)a3 inks:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PKDrawingConcrete_setStrokes_inks___block_invoke;
  v8[3] = &unk_1E82D7250;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [(PKDrawingConcrete *)self _updateStrokes:a3 updateBlock:v8];
}

id __37__PKDrawingConcrete_setStrokes_inks___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a4];
  v8 = [*(a1 + 40) _newStroke:v6 withInk:v7];

  return v8;
}

- (id)undoableSetStrokes:(id)a3 inks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [PKDrawing drawingStrokesFromStrokes:v6 inDrawing:self];
  v9 = [PKModifyStrokeInkCommand commandForModifyingStrokes:v8 drawing:self inks:v7];
  v10 = [v9 invertedInDrawing:self];

  [(PKDrawingConcrete *)self setStrokes:v6 inks:v7];

  return v10;
}

- (id)_newStroke:(id)a3 withInk:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 ink];
  v8 = [v7 isEqual:v6];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = [v5 copyForMutation];
    [v9 _setInk:v6];
    [v9 _setFlags:{objc_msgSend(v9, "_flags") & 0xFFFFFFFFFFFFFFFBLL}];
  }

  return v9;
}

- (void)setStrokes:(id)a3 groupID:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PKDrawingConcrete_setStrokes_groupID___block_invoke;
  v8[3] = &unk_1E82D7250;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PKDrawingConcrete *)self _updateStrokes:a3 updateBlock:v8];
}

id __40__PKDrawingConcrete_setStrokes_groupID___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _newStroke:a2 withGroupID:*(a1 + 40)];

  return v2;
}

- (id)undoableSetStrokes:(id)a3 groupID:(id)a4 actionName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [PKDrawing drawingStrokesFromStrokes:v8 inDrawing:self];
  v12 = [PKModifyStrokesGroupIDCommand commandForModifyingStrokes:v11 drawing:self groupID:v9 actionName:v10];
  v13 = [v12 invertedInDrawing:self];

  [(PKDrawingConcrete *)self setStrokes:v8 groupID:v9];

  return v13;
}

- (id)_newStroke:(id)a3 withGroupID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 _groupID];
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_5;
  }

  v9 = [v5 _groupID];
  v10 = [v9 isEqual:v6];

  if (v10)
  {
LABEL_5:
    v11 = v5;
    goto LABEL_6;
  }

  v11 = [v5 copyForMutation];
  [v11 _setGroupID:v6];
LABEL_6:

  return v11;
}

- (void)_updateStrokes:(id)a3 updateBlock:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
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
        v14 = [v13 _strokeUUID];
        [v8 setObject:v13 forKeyedSubscript:v14];
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
  v17 = v7;
  v22 = v24;
  v23 = v15;
  v20 = self;
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

- (void)_mergeStroke:(id)a3
{
  v19 = a3;
  v4 = [(NSMutableArray *)self->_allStrokes count]+ 1;
  while (1)
  {
    allStrokes = self->_allStrokes;
    v6 = v4 - 2;
    if (v4 - 2 < 0)
    {
      [(NSMutableArray *)allStrokes insertObject:v19 atIndex:0];
      goto LABEL_9;
    }

    v7 = [(NSMutableArray *)allStrokes objectAtIndexedSubscript:v4 - 2];
    v8 = [v7 _strokeUUID];
    v9 = [v19 _strokeUUID];
    v10 = [v8 isEqual:v9];

    v11 = self->_allStrokes;
    if (v10)
    {
      break;
    }

    v12 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v4 - 2];
    v13 = [v12 compareToStroke:v19];

    --v4;
    if (v13 != 1)
    {
      [(NSMutableArray *)self->_allStrokes insertObject:v19 atIndex:v4];
LABEL_9:
      v17 = [(PKDrawingConcrete *)self version];
      v18 = [(PKDrawingConcrete *)self replicaUUID];
      [v17 incrementClockForUUID:v18];

      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      goto LABEL_10;
    }
  }

  v14 = [(NSMutableArray *)v11 objectAtIndexedSubscript:v4 - 2];
  v15 = [v14 _mergeWithStroke:v19 inDrawing:self];

  v16 = [(NSMutableArray *)self->_allStrokes objectAtIndexedSubscript:v6];

  if (v15 != v16)
  {
    [(NSMutableArray *)self->_allStrokes setObject:v15 atIndexedSubscript:v6];

    goto LABEL_9;
  }

LABEL_10:
}

- (void)normalizeUUIDsWithDrawing:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingConcrete *)self version];
  if (([v5 isEmpty] & 1) == 0)
  {

LABEL_8:
    v13 = [(PKDrawingConcrete *)self uuid];
    v14 = [v4 uuid];
    v15 = [v13 isEqual:v14];

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

  v6 = [v4 version];
  v7 = [v6 isEmpty];

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = [(PKDrawingConcrete *)self version];
  if ([v8 isEmpty])
  {
    v9 = [v4 version];
    v10 = [v9 isEmpty];

    if (v10)
    {
      v11 = [(PKDrawingConcrete *)self nsuuid];
      v12 = [v4 nsuuid];
      if ([v11 PK_compare:v12] == -1)
      {
        [v4 uuid];
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

  v17 = [(PKDrawingConcrete *)self version];
  v18 = [v17 isEmpty];

  if (v18)
  {
    v11 = [v4 uuid];
    [(PKDrawingConcrete *)self _setUUID:v11];
LABEL_17:
  }

LABEL_18:
}

- (unint64_t)mergeWithDrawing:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 != self)
  {
    [(PKDrawingConcrete *)self normalizeUUIDsWithDrawing:v4];
    [(PKDrawingConcrete *)v4 willMergeWithDrawing:self];
    if (v4)
    {
      [(PKDrawingConcrete *)v4 boundsVersion];
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

    if (v4)
    {
      [(PKDrawingConcrete *)v4 boundsVersion];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    *&self->_boundsVersion.clock = *buf;
    *&self->_boundsVersion.replicaUUID[12] = *&buf[16];
    [(PKDrawingConcrete *)v4 _canvasBounds];
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
      [(PKDrawingConcrete *)v4 _canvasBounds];
      self->__canvasBounds.origin.x = v11;
      self->__canvasBounds.origin.y = v12;
      v6 = 2;
      self->__canvasBounds.size.width = v13;
      self->__canvasBounds.size.height = v14;
    }

    v15 = [(PKDrawingConcrete *)self version];
    v16 = [(PKDrawingConcrete *)v4 version];
    v17 = [v15 compareTo:v16];

    if ((v17 & 1) == 0)
    {
      [(PKDrawingConcrete *)v4 didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(PKDrawingConcrete *)self uuid];
        v20 = [(PKDrawingConcrete *)self _allStrokes];
        v21 = [v20 count];
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Skipped drawing merge: %@, strokes: %lu", buf, 0x16u);
      }

      goto LABEL_36;
    }

    if ((v17 & 4) == 0)
    {
      v22 = [(PKDrawingConcrete *)v4 _allStrokes];
      v23 = [v22 mutableCopy];
      allStrokes = self->_allStrokes;
      self->_allStrokes = v23;

      v25 = [(PKDrawingConcrete *)v4 version];
      v26 = [v25 copy];
      version = self->_version;
      self->_version = v26;

      v28 = [(PKDrawing *)v4 _cachedVisibleStrokes];
      v29 = [v28 mutableCopy];
      [(PKDrawing *)self set_cachedVisibleStrokes:v29];

      v30 = [(NSMutableDictionary *)v4->_strokesIdentifierMap mutableCopy];
      strokesIdentifierMap = self->_strokesIdentifierMap;
      self->_strokesIdentifierMap = v30;

      [(PKDrawingConcrete *)v4 bounds];
      self->__bounds.origin.x = v32;
      self->__bounds.origin.y = v33;
      self->__bounds.size.width = v34;
      self->__bounds.size.height = v35;
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      [(PKDrawingConcrete *)v4 didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      v6 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v36 = [(PKDrawingConcrete *)self uuid];
        v37 = [(PKDrawingConcrete *)self _allStrokes];
        v38 = [v37 count];
        *buf = 138412546;
        *&buf[4] = v36;
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
    v40 = [(PKDrawingConcrete *)v4 _allStrokes];
    v41 = [v40 count];

    v42 = v41 - 1;
    if (v41 - 1 < 0)
    {
LABEL_35:
      v50 = [(PKDrawingConcrete *)self version];
      v51 = [(PKDrawingConcrete *)v4 version];
      [v50 mergeWithTimestamp:v51];

      [(PKDrawingConcrete *)self invalidateVisibleStrokes];
      [(PKDrawing *)self setNeedsRecognitionUpdate];
      [(PKDrawingConcrete *)v4 didMergeWithDrawing:self];
      v18 = os_log_create("com.apple.pencilkit", "");
      v6 = 2;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v53 = [(PKDrawingConcrete *)self uuid];
        v54 = [(PKDrawingConcrete *)self _allStrokes];
        v55 = [v54 count];
        *buf = 138412546;
        *&buf[4] = v53;
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
      v44 = [(PKDrawingConcrete *)v4 _allStrokes];
      v45 = [v44 objectAtIndexedSubscript:v42];

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
  v4 = [(PKDrawingConcrete *)self version];
  v3 = [(PKDrawingConcrete *)self replicaUUID];
  [v4 incrementClockForUUID:v3];
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  v4 = [(PKDrawingConcrete *)self uuid];
  v5 = [v4 hash];
  v6 = [(PKDrawingConcrete *)self version];
  v7 = [v6 hash];

  return v5 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_7;
  }

  v6 = [(PKDrawingConcrete *)self uuid];
  v7 = [v4 uuid];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = [(PKDrawingConcrete *)self version];
  v10 = [v4 version];
  if (![v9 isEqual:v10])
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  [v4 boundsVersion];
  [(PKDrawingConcrete *)self boundsVersion];
  v11 = _PKStrokeIDCompare(&v14, &v13) == 0;

LABEL_8:
  return v11;
}

- (void)willMergeWithDrawing:(id)a3
{
  if (self->_replicaUUID)
  {
    v4 = +[PKReplicaManager sharedReplicaManager];
    [v4 updateVersionForDrawing:self];
  }
}

- (id)updateFromSlicedIntersectingIndexes:(int64_t *)a3 resultNewRoots:(const void *)a4 resultUpdatedStrokes:(const void *)a5 count:(int64_t)a6
{
  v32 = [MEMORY[0x1E695DF90] dictionary];
  v33 = [MEMORY[0x1E695DF70] array];
  if (a6 < 1)
  {
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  v11 = 0;
  v12 = a5 - 1;
  v13 = a4 - 1;
  v14 = a3 - 1;
  while (1)
  {
    v15 = v14[a6];
    v16 = v13[a6];
    if (v16)
    {
      break;
    }

    v21 = [(PKDrawingConcrete *)self _rootStrokes];
    v22 = [v21 objectAtIndexedSubscript:v15];
    [v33 addObject:v22];

    v23 = [(PKDrawingConcrete *)self _rootStrokes];
    v24 = [v23 objectAtIndexedSubscript:v15];
    v25 = [v24 mutableCopy];

    [v25 _setHidden:1];
    [v25 didUpdateSubstrokesInDrawing:self];
    [(PKDrawingConcrete *)self updateStroke:v25 indexHint:v15];

    if (a6 < 2)
    {
      goto LABEL_14;
    }

    v11 = 1;
LABEL_12:
    --a6;
  }

  if ([v12[a6] count])
  {
    v17 = [(PKDrawingConcrete *)self _rootStrokes];
    v18 = [v17 objectAtIndexedSubscript:v15];

    if (v16 != v18)
    {
      v19 = [v18 _substrokes];
      v20 = [v16 _strokeUUID];
      [v32 setObject:v19 forKeyedSubscript:v20];

      [(PKDrawingConcrete *)self updateStroke:v16 indexHint:v15];
      v11 = 1;
    }
  }

  if (a6 > 1)
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
  v27 = [(PKDrawingConcrete *)self uuid];
  v28 = _PencilKitBundle();
  v29 = [v28 localizedStringForKey:@"Bitmap Erase" value:@"Bitmap Erase" table:@"Localizable"];
  v30 = [(PKSliceStrokesCommand *)v26 initWithDrawingUUID:v27 actionName:v29 substrokes:v32 strokesHidden:v33 hiding:0];

LABEL_16:

  return v30;
}

- (id)_dataInUnknownFields
{
  ptr = self->_unknownFields.__ptr_;
  if (ptr && (v3 = *ptr) != 0 && *v3 != v3[1])
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DEF0] data];
  }

  return v4;
}

- (void)setBoundsVersion:(_PKStrokeID *)a3
{
  v3 = *&a3->replicaUUID[12];
  *&self->_boundsVersion.clock = *&a3->clock;
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

- (void)set_orientation:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  objc_setAssociatedObject(self, &kOrientationKey, v4, 0x301);
}

- (int64_t)_orientation
{
  v2 = objc_getAssociatedObject(self, &kOrientationKey);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_removeHiddenAndEraserStrokes
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [(PKDrawingConcrete *)self _allStrokes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__PKDrawingConcrete_UpgradeAdditions___removeHiddenAndEraserStrokes__block_invoke;
  v7[3] = &unk_1E82D6310;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  v6 = [(PKDrawingConcrete *)self _allStrokes];
  [v6 removeObjectsAtIndexes:v5];

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
  v4 = [(PKDrawingConcrete *)self _allStrokes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PKDrawingConcrete_UpgradeAdditions___removeInvisibleStrokes__block_invoke;
  v7[3] = &unk_1E82D6310;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  if ([v5 count])
  {
    v6 = [(PKDrawingConcrete *)self _allStrokes];
    [v6 removeObjectsAtIndexes:v5];

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

- ($3CC19D079FD0B010EE84973AA846B91B)_drawingStrokeInfoIsLegacyDrawing:(SEL)a3
{
  v19 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v5 = [(PKDrawing *)self strokes];
  retstr->var0 = [v5 count];

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
        v13 = [v12 identifier];
        v14 = [v13 isEqualToString:@"com.apple.ink.eraser"];

        v8 += v14;
        v15 = [v11 _clipPlane];
        LODWORD(v12) = v15 != 0;

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

+ (CGAffineTransform)_orientationTransform:(SEL)a3 size:(int64_t)a4
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  switch(a4)
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

- (id)_upgradeOnQueue:(id)a3 isLegacyDrawing:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v32 = 0u;
  v33 = 0u;
  [(PKDrawingConcrete *)self _drawingStrokeInfoIsLegacyDrawing:v6];
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
  if (!v8)
  {
    v8 = [objc_opt_class() _defaultConversionQueue];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v23 = v32;
  v20[2] = __87__PKDrawingConcrete_UpgradeAdditions___upgradeOnQueue_isLegacyDrawing_completionBlock___block_invoke;
  v20[3] = &unk_1E82D9090;
  v20[4] = self;
  v24 = v33;
  v15 = v14;
  v26 = v6;
  v27 = v13;
  v25 = v31;
  v21 = v15;
  v22 = v9;
  v16 = v9;
  dispatch_async(v8, v20);
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

- (CGAffineTransform)_transformForImageWithSize:(SEL)a3
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
  v2 = [(PKDrawingConcrete *)self _orientation];
  result = 1.0;
  if (v2 < 2)
  {
    return 0.75;
  }

  return result;
}

- (CGSize)_unscaledOrientedDrawingSize
{
  v2 = [(PKDrawingConcrete *)self _orientation];
  v3 = 768.0;
  if (v2 >= 2)
  {
    v4 = 768.0;
  }

  else
  {
    v4 = 1024.0;
  }

  if (v2 >= 2)
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
  v3 = [(PKDrawing *)self strokes];
  v21 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v4 = MEMORY[0x1E695DF70];
  v5 = [(PKDrawing *)self strokes];
  v20 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

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
          v10 = [v9 identifier];
          v11 = [v10 isEqualToString:@"com.apple.ink.pen"];

          if (v11)
          {
            v12 = [PKInk alloc];
            v13 = [v9 identifier];
            v14 = [v9 color];
            v15 = [v9 identifier];
            v16 = [PKInk currentInkVersionForInkIdentifier:v15];
            v17 = [v9 variant];
            [v9 weight];
            v18 = [(PKInk *)v12 initWithIdentifier:v13 color:v14 version:v16 variant:v17 weight:?];

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

- (PKDrawingConcrete)initWithData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 length] >= 0xB)
  {
    [v8 getBytes:v14 length:10];
    if (v14[0] == 31 && v14[1] == 139)
    {
      v9 = [v8 PK_gzipInflate];
      v10 = v9;
      if (v9)
      {
        v11 = v9;

        v8 = v11;
      }
    }
  }

  v12 = [(PKDrawingConcrete *)self _initWithUnzippedData:v8 loadNonInkingStrokes:v6 error:a5];

  return v12;
}

- (id)_initWithUnzippedData:(id)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [[PKDrawingVersionedDocument alloc] initWithDrawingClass:objc_opt_class()];
  [(PKDrawingVersionedDocument *)v9 setLoadNonInkingStrokes:v6];
  if (![(PKDrawingVersionedDocument *)v9 loadUnzippedData:v8])
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
    v11 = v8;
    if ([v11 length] <= 7)
    {
      PKProtobufUtilitiesMalformedError(a5);
LABEL_5:

      v10 = 0;
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
        PKProtobufUtilitiesFormatTooNew(a5);
        goto LABEL_5;
      }

      v27 = 0;
      [v11 getBytes:&v27 range:{6, 2}];
      v14 = v27;
      if (v27 < 8uLL || [v11 length] <= v14)
      {
        PKProtobufUtilitiesMalformedError(a5);
        goto LABEL_5;
      }

      v15 = [v11 bytes];
      v16 = v27;
      [v11 length];
      PB::Reader::Reader(v29, (v15 + v16));
      if (!v17[2](&v17, v29))
      {
LABEL_16:
        PKProtobufUtilitiesMalformedError(a5);
        goto LABEL_5;
      }
    }

    else
    {
      v13 = [v11 bytes];
      [v11 length];
      PB::Reader::Reader(v29, v13);
      if (!v17[2](&v17, v29))
      {
        goto LABEL_16;
      }
    }

    v10 = [(PKDrawingConcrete *)self initWithArchive:&v17 loadNonInkingStrokes:v6 error:a5];
    self = v10;
    goto LABEL_6;
  }

  v10 = [(PKDrawingVersionedDocument *)v9 drawing];
LABEL_7:

  return v10;
}

- (id)serialize
{
  v3 = [(PKDrawing *)self _minimumSerializationVersion];

  return [(PKDrawingConcrete *)self serializeWithVersion:v3];
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

- (id)serializeWithVersion:(int64_t)a3
{
  if (a3 > 1)
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
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PKDrawingConcrete *)self saveToArchive:&v12 withPathData:1];
      PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::Drawing>(&v12, 255);
    }

    else
    {
      PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::Drawing>(&v12, [(PKDrawingConcrete *)self saveToArchive:&v12 withPathData:1]);
    }
    v5 = ;
    drawing::Drawing::~Drawing(&v12);
  }

  else
  {
    v4 = [[PKDrawingVersionedDocument alloc] initWithDrawing:self];
    v5 = [(PKVersionedDocument *)v4 serialize];
  }

  v6 = [(PKDrawingConcrete *)self _hasReplicaUUID];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [(PKDrawingConcrete *)self uuid];

    if (v8)
    {
      v9 = +[PKReplicaManager sharedReplicaManager];
      [v9 updateVersionForDrawing:self];
    }
  }

  v10 = +[PKReplicaManager sharedReplicaManager];
  [v10 persistIfNeeded];

  return v5;
}

- (PKDrawingConcrete)initWithV1Data:(id)a3 loadNonInkingStrokes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
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
  v8 = v6;
  v9 = [v8 bytes];
  [v8 length];
  PB::Reader::Reader(buf, v9);
  LODWORD(v9) = unk_1F4769520(&v14, buf);

  if (v9)
  {
    v10 = [(PKDrawingConcrete *)self initWithV1Archive:&v14 loadNonInkingStrokes:v4];
    drawingV1::Drawing::~Drawing(&v14);
LABEL_5:
    self = v10;
    v11 = self;
    goto LABEL_9;
  }

  v12 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v12, OS_LOG_TYPE_ERROR, "PKDrawing protobuf corrupt.", buf, 2u);
  }

  drawingV1::Drawing::~Drawing(&v14);
  v11 = 0;
LABEL_9:

  return v11;
}

- (PKDrawingConcrete)initWithLegacyData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = [(PKDrawingConcrete *)self init];
    goto LABEL_5;
  }

  v12[0] = &unk_1F4769560;
  memset(&v12[1], 0, 24);
  v13 = 0;
  v12[5] = 0;
  v12[6] = 0;
  v6 = v4;
  v7 = [v6 bytes];
  [v6 length];
  PB::Reader::Reader(buf, v7);
  LODWORD(v7) = unk_1F4769570(v12, buf);

  if (v7)
  {
    v8 = [(PKDrawingConcrete *)self initWithLegacyArchive:v12];
    legacy_drawing::Drawing::~Drawing(v12);
LABEL_5:
    self = v8;
    v9 = self;
    goto LABEL_9;
  }

  v10 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_ERROR, "PKDrawing protobuf corrupt.", buf, 2u);
  }

  legacy_drawing::Drawing::~Drawing(v12);
  v9 = 0;
LABEL_9:

  return v9;
}

- (PKDrawingConcrete)initWithArchive:(const void *)a3 loadNonInkingStrokes:(BOOL)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v52 = *(a3 + 12);
  v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{(*(a3 + 7) - *(a3 + 6)) >> 4, a4, a5}];
  v7 = *(a3 + 7) - *(a3 + 6);
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
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(a3 + 6) + v8)];
      [v6 addObject:v11];

      v8 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = objc_alloc_init(PKVectorTimestamp);
  v13 = *(a3 + 14) - *(a3 + 13);
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
      v17 = *(*(a3 + 13) + 8 * v14);
      v18 = v17[1];
      v19 = v17[3];
      v20 = [v6 objectAtIndex:v17[2]];
      [(PKVectorTimestamp *)v12 setClock:v18 subclock:v19 forUUID:v20];

      ++v14;
    }

    while (v16 != v14);
  }

  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 4) - *(a3 + 3)) >> 3];
  v22 = *(a3 + 4) - *(a3 + 3);
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
      v26 = [[PKInk alloc] initWithArchive:*(*(a3 + 3) + 8 * v23)];
      if (v26)
      {
        [v21 addObject:v26];
      }

      ++v23;
    }

    while (v25 != v23);
  }

  v53 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 10) - *(a3 + 9)) >> 3];
  v50 = v12;
  if (v52)
  {
    v27 = 0;
  }

  else
  {
    v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:(*(a3 + 10) - *(a3 + 9)) >> 3];
  }

  v28 = *(a3 + 10) - *(a3 + 9);
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
      v32 = [[_PKStrokeConcrete alloc] initWithArchive:*(*(a3 + 9) + 8 * v29) sortedUUIDs:v6 inks:v21 transientArchiveDictionary:v27];
      v33 = v32;
      if (!v32 || a4)
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
  v40 = *(a3 + 1);
  if (v40)
  {
    v36 = v40[3];
    v37 = v40[4];
    v38 = v40[5];
    v39 = v40[2];
    v41 = *(a3 + 2);
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

      HIDWORD(v60) = *(*(a3 + 2) + 24);
    }
  }

  v44 = *(a3 + 12);
  if (v44)
  {
    v45 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v44];
  }

  else
  {
    v45 = [MEMORY[0x1E696AFB0] UUID];
  }

  v46 = v45;
  v57 = v59;
  v58 = v60;
  v47 = *(a3 + 17);
  v55 = *(a3 + 16);
  v56 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = [(PKDrawingConcrete *)self initWithUUID:v45 strokes:v53 version:v50 canvasBounds:&v57 boundsVersion:&v55 unknownFields:v36, v37, v38, v39];
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  return v48;
}

- (PKDrawingConcrete)initWithV1Archive:(const void *)a3 loadNonInkingStrokes:(BOOL)a4
{
  v58 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 136) & 1) != 0 && *(a3 + 9) == 10)
  {
    v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:(*(a3 + 7) - *(a3 + 6)) >> 4];
    v8 = *(a3 + 7) - *(a3 + 6);
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
        v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(a3 + 6) + v9)];
        [v7 addObject:v12];

        v9 += 16;
        --v11;
      }

      while (v11);
    }

    v52 = objc_alloc_init(PKVectorTimestamp);
    v13 = *(a3 + 15) - *(a3 + 14);
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
        v17 = *(*(a3 + 14) + 8 * v14);
        v18 = v17[1];
        v19 = v17[3];
        v20 = [v7 objectAtIndex:v17[2]];
        [(PKVectorTimestamp *)v52 setClock:v18 subclock:v19 forUUID:v20];

        ++v14;
      }

      while (v16 != v14);
    }

    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 4) - *(a3 + 3)) >> 3];
    v22 = *(a3 + 4) - *(a3 + 3);
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
        v26 = [[PKInk alloc] initWithV1Archive:*(*(a3 + 3) + 8 * v23) serializationVersion:*(a3 + 9)];
        if (v26)
        {
          [v21 addObject:v26];
        }

        ++v23;
      }

      while (v25 != v23);
    }

    v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 11) - *(a3 + 10)) >> 3];
    v27 = *(a3 + 11) - *(a3 + 10);
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
        v31 = [[_PKStrokeConcrete alloc] initWithV1Archive:*(*(a3 + 10) + 8 * v28) sortedUUIDs:v7 inks:v21];
        v32 = v31;
        if (v31)
        {
          if (!a4)
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
    v39 = *(a3 + 1);
    if (v39)
    {
      v35 = v39[3];
      v36 = v39[4];
      v37 = v39[5];
      v38 = v39[2];
      v40 = *(a3 + 2);
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

        *&buf[20] = *(*(a3 + 2) + 24);
      }
    }

    v45 = *(a3 + 13);
    if (v45)
    {
      v46 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*v45];
    }

    else
    {
      v46 = [MEMORY[0x1E696AFB0] UUID];
    }

    v47 = v46;
    v55 = *buf;
    v56 = *&buf[16];
    v53 = 0;
    v54 = 0;
    v43 = [(PKDrawingConcrete *)self initWithUUID:v46 strokes:v51 version:v52 canvasBounds:&v55 boundsVersion:&v53 unknownFields:v35, v36, v37, v38];
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
      v49 = *(a3 + 9);
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

- (PKDrawingConcrete)initWithLegacyArchive:(const void *)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 64) & 4) != 0 && *(a3 + 15) == 6)
  {
    v5 = [(PKDrawingConcrete *)self init];
    if (v5)
    {
      v6 = [[PKVectorMultiTimestamp alloc] initWithArchive:*(a3 + 5) andCapacity:2];
      v7 = [(PKVectorMultiTimestamp *)v6 sortedUUIDs];
      v8 = [(PKVectorMultiTimestamp *)v6 timestamps];
      v9 = [v8 objectAtIndexedSubscript:0];
      [(PKDrawingConcrete *)v5 setVersion:v9];

      v10 = [(PKVectorMultiTimestamp *)v6 timestamps];
      v11 = [v10 count];

      if (v11 >= 2)
      {
        for (i = 1; i != v11; ++i)
        {
          v13 = [(PKDrawingConcrete *)v5 version];
          v14 = [(PKVectorMultiTimestamp *)v6 timestamps];
          v15 = [v14 objectAtIndexedSubscript:i];
          [v13 mergeWithTimestamp:v15];
        }
      }

      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:(*(a3 + 2) - *(a3 + 1)) >> 3];
      [(PKDrawingConcrete *)v5 _setAllStrokes:v16];

      v17 = *(a3 + 2) - *(a3 + 1);
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
          v21 = [[_PKStrokeConcrete alloc] initWithLegacyArchive:*(*(a3 + 1) + 8 * v18) sortedUUIDs:v7];
          if (v21)
          {
            v22 = [(PKDrawingConcrete *)v5 _allStrokes];
            [v22 addObject:v21];
          }

          ++v18;
        }

        while (v20 != v18);
      }

      if ((~*(a3 + 64) & 3) == 0)
      {
        [(PKDrawingConcrete *)v5 set_orientation:*(a3 + 14)];
      }

      v23 = *(a3 + 6);
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
      v27 = *(a3 + 15);
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

- (int64_t)saveToArchive:(void *)a3 withPathData:(BOOL)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFA0];
  v6 = [(PKDrawingConcrete *)self version];
  v7 = [v6 allUUIDs];
  v8 = [v5 orderedSetWithArray:v7];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v9 = [(PKDrawingConcrete *)self _allStrokes];
  v10 = [v9 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v10)
  {
    v11 = *v61;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v61 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v60 + 1) + 8 * i) saveUUIDsTo:v8];
      }

      v10 = [v9 countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v10);
  }

  [v8 sortWithOptions:1 usingComparator:&__block_literal_global_76];
  std::vector<PB::Data>::reserve(a3 + 6, [v8 count]);
  v13 = [v8 count];
  if (v13 > (*(a3 + 15) - *(a3 + 13)) >> 3)
  {
    if (!(v13 >> 61))
    {
      v70 = a3 + 104;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a3 + 104, v13);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if ([v8 count])
  {
    v14 = [v8 objectAtIndex:0];
    v15 = *(a3 + 7);
    if (v15 >= *(a3 + 8))
    {
      v16 = std::vector<PB::Data>::__emplace_back_slow_path<>(a3 + 48);
    }

    else
    {
      *v15 = 0;
      v15[1] = 0;
      v16 = (v15 + 2);
    }

    *(a3 + 7) = v16;
    memset(v68, 0, sizeof(v68));
    [v14 getUUIDBytes:v68];
    PB::Data::assign(*(a3 + 6), v68, &v69);
    v17 = [(PKDrawingConcrete *)self version];
    [v17 clockElementForUUID:v14];
    objc_claimAutoreleasedReturnValue();

    PB::PtrVector<drawing::StrokeID>::emplace_back<>();
  }

  v53 = [MEMORY[0x1E695DFA0] orderedSet];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v18 = [(PKDrawingConcrete *)self _allStrokes];
  v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v56 + 1) + 8 * j);
        [v23 saveInksTo:v53];
        v24 = [v23 requiredContentVersion];
        if (v21 <= v24)
        {
          v21 = v24;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v19);
  }

  else
  {
    v21 = 1;
  }

  v25 = [v53 count];
  if (v25 > (*(a3 + 5) - *(a3 + 3)) >> 3)
  {
    if (!(v25 >> 61))
    {
      v70 = a3 + 24;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a3 + 24, v25);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v55, 0, sizeof(v55));
  v26 = v53;
  if ([v26 countByEnumeratingWithState:v55 objects:v65 count:16])
  {
    PB::PtrVector<drawing::Ink>::emplace_back<>();
  }

  v27 = [(PKDrawingConcrete *)self _allStrokes];
  std::vector<std::unique_ptr<drawing::Stroke>>::reserve(a3 + 9, [v27 count]);

  [(PKDrawingConcrete *)self uuid];
  memset(v54, 0, sizeof(v54));
  v28 = [(PKDrawingConcrete *)self _allStrokes];
  if ([v28 countByEnumeratingWithState:v54 objects:v64 count:16])
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
    drawing::Drawing::makeBounds(a3);
    v33 = *(a3 + 1);
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

  drawing::Drawing::makeBoundsVersion(a3);
  v39 = *(a3 + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v40 = *v68;
  *(v39 + 32) |= 1u;
  *(v39 + 8) = v40;
  v41 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(PKDrawingConcrete *)self boundsVersion];
  v42 = [v41 initWithUUIDBytes:&v68[4]];
  v43 = [v8 indexOfObject:v42];
  v44 = *(a3 + 2);
  *(v44 + 32) |= 2u;
  *(v44 + 16) = v43;
  v45 = *(a3 + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v46 = HIDWORD(v69);
  *(v45 + 32) |= 4u;
  *(v45 + 24) = v46;
  v47 = [(PKDrawingConcrete *)self nsuuid];
  LOBYTE(v45) = v47 == 0;

  if ((v45 & 1) == 0)
  {
    if (!*(a3 + 12))
    {
      operator new();
    }

    memset(v68, 0, sizeof(v68));
    v48 = [(PKDrawingConcrete *)self nsuuid];
    [v48 getUUIDBytes:v68];

    PB::Data::assign(*(a3 + 12), v68, &v69);
  }

  [(PKDrawingConcrete *)self _unknownFields];
  v49 = *v68;
  memset(v68, 0, sizeof(v68));
  v50 = *(a3 + 17);
  *(a3 + 8) = v49;
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

- (unsigned)saveToV1Archive:(void *)a3 withPathData:(BOOL)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFA0];
  v6 = [(PKDrawingConcrete *)self version];
  v7 = [v6 allUUIDs];
  v52 = [v5 orderedSetWithArray:v7];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [(PKDrawingConcrete *)self _allStrokes];
  v9 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v59 + 1) + 8 * i) saveUUIDsTo:v52];
      }

      v9 = [v8 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v9);
  }

  *(a3 + 136) |= 1u;
  *(a3 + 9) = 10;
  std::vector<PB::Data>::reserve(a3 + 6, [v52 count]);
  v12 = [v52 count];
  if (v12 > (*(a3 + 16) - *(a3 + 14)) >> 3)
  {
    if (!(v12 >> 61))
    {
      v70 = a3 + 112;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a3 + 112, v12);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  if ([v52 count])
  {
    v13 = [v52 objectAtIndex:0];
    v14 = *(a3 + 7);
    if (v14 >= *(a3 + 8))
    {
      v15 = std::vector<PB::Data>::__emplace_back_slow_path<>(a3 + 48);
    }

    else
    {
      *v14 = 0;
      v14[1] = 0;
      v15 = (v14 + 2);
    }

    *(a3 + 7) = v15;
    *v67 = 0;
    v68 = 0;
    [v13 getUUIDBytes:v67];
    PB::Data::assign(*(a3 + 6), v67, &v69);
    v16 = [(PKDrawingConcrete *)self version];
    [v16 clockElementForUUID:v13];
    objc_claimAutoreleasedReturnValue();

    PB::PtrVector<drawingV1::StrokeID>::emplace_back<>();
  }

  v51 = [MEMORY[0x1E695DFA0] orderedSet];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = [(PKDrawingConcrete *)self _allStrokes];
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v18)
  {
    v19 = *v56;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v55 + 1) + 8 * j) ink];
        [v51 addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v18);
  }

  v22 = [v51 count];
  if (v22 > (*(a3 + 5) - *(a3 + 3)) >> 3)
  {
    if (!(v22 >> 61))
    {
      v70 = a3 + 24;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a3 + 24, v22);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v54, 0, sizeof(v54));
  v23 = v51;
  if ([v23 countByEnumeratingWithState:v54 objects:v64 count:16])
  {
    PB::PtrVector<drawingV1::Ink>::emplace_back<>();
  }

  [(PKDrawingConcrete *)self uuid];
  v24 = [(PKDrawingConcrete *)self _allStrokes];
  v25 = [v24 count];
  if (v25 > (*(a3 + 12) - *(a3 + 10)) >> 3)
  {
    if (!(v25 >> 61))
    {
      v70 = a3 + 80;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<legacy_drawing::VectorTimestampClockReplicaClock>>>(a3 + 80, v25);
    }

    std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
  }

  memset(v53, 0, sizeof(v53));
  v26 = [(PKDrawingConcrete *)self _allStrokes];
  if ([v26 countByEnumeratingWithState:v53 objects:v63 count:16])
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
    drawingV1::Drawing::makeBounds(a3);
    v31 = *(a3 + 1);
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

  drawingV1::Drawing::makeBoundsVersion(a3);
  v37 = *(a3 + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v38 = *v67;
  *(v37 + 32) |= 1u;
  *(v37 + 8) = v38;
  v39 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(PKDrawingConcrete *)self boundsVersion];
  v40 = [v39 initWithUUIDBytes:&v67[4]];
  v41 = [v52 indexOfObject:v40];
  v42 = *(a3 + 2);
  *(v42 + 32) |= 2u;
  *(v42 + 16) = v41;
  v43 = *(a3 + 2);
  [(PKDrawingConcrete *)self boundsVersion];
  v44 = HIDWORD(v69);
  *(v43 + 32) |= 4u;
  *(v43 + 24) = v44;
  v45 = [(PKDrawingConcrete *)self nsuuid];
  LOBYTE(v43) = v45 == 0;

  if ((v43 & 1) == 0)
  {
    v47 = *(a3 + 13);
    v46 = (a3 + 104);
    if (!v47)
    {
      operator new();
    }

    *v67 = 0;
    v68 = 0;
    v48 = [(PKDrawingConcrete *)self nsuuid];
    [v48 getUUIDBytes:v67];

    PB::Data::assign(*v46, v67, &v69);
  }

  return 10;
}

- (id)v1SerializeWithPathData:(BOOL)a3
{
  v5 = 0;
  v3 = [(PKDrawingConcrete *)self v1SerializeWithPathData:a3 toVersion:&v5];

  return v3;
}

- (id)v1SerializeWithPathData:(BOOL)a3 toVersion:(unsigned int *)a4
{
  v7 = &unk_1F4769510;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  *a4 = [(PKDrawingConcrete *)self saveToV1Archive:&v7 withPathData:a3];
  PB::Writer::Writer(&v15);
  (v7[3])(&v7, &v15);
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);
  v5 = [v4 initWithBytes:v16 length:v15 - v16];
  PB::Writer::~Writer(&v15);
  drawingV1::Drawing::~Drawing(&v7);

  return v5;
}

@end