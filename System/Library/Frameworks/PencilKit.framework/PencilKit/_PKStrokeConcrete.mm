@interface _PKStrokeConcrete
+ (id)decodeRenameableUUIDFromData:(const char *)a3 transientArchiveDictionary:(id)a4;
+ (void)encodeUUID:(id)a3 toData:(void *)a4;
- ($751B26FBF8AE17756294EB075CA14786)_flags;
- (BOOL)hasSubstrokes;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)_inkTransform;
- (CGAffineTransform)_transform;
- (CGPoint)_anchorPointForTexture;
- (CGPoint)readPointFromArchive:(const Point *)a3;
- (CGRect)renderBounds;
- (_PKStrokeConcrete)init;
- (_PKStrokeConcrete)initWithArchive:(const void *)a3 error:(id *)a4;
- (_PKStrokeConcrete)initWithArchive:(const void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 parent:(id)a6 isHidden:(BOOL)a7 transientArchiveDictionary:(id)a8;
- (_PKStrokeConcrete)initWithData:(id)a3 error:(id *)a4;
- (_PKStrokeConcrete)initWithData:(id)a3 id:(id)a4 flags:(id)a5 ink:(id)a6 transform:(CGAffineTransform *)a7 substrokes:(id)a8;
- (_PKStrokeConcrete)initWithData:(id)a3 id:(id)a4 sortID:(_PKStrokeID *)a5 flags:(id)a6 version:(_PKStrokeID *)a7 ink:(id)a8 transform:(CGAffineTransform *)a9 substrokes:(id)a10 substrokesVersion:(_PKStrokeID *)a11;
- (_PKStrokeConcrete)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6 randomSeed:(unsigned int)a7;
- (_PKStrokeConcrete)initWithLegacyArchive:(const void *)a3 sortedUUIDs:(id)a4;
- (_PKStrokeConcrete)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_PKStrokeID *)a5 ink:(id)a6 transform:(CGAffineTransform *)a7;
- (_PKStrokeConcrete)initWithV1Archive:(const void *)a3 sortedUUIDs:(id)a4 inks:(id)a5;
- (_PKStrokeID)readStrokeIDFromArchive:(SEL)a3 withSortedUUIDs:(const StrokeID *)a4;
- (_PKStrokeID)readV1StrokeIDFromArchive:(SEL)a3 withSortedUUIDs:(const StrokeID *)a4;
- (_PKStrokePoint)readPointFromLegacyArchive:(SEL)a3 deltaFrom:(const Point *)a4;
- (id).cxx_construct;
- (id)_copyWithNewParticleOffset:(double)a3 secondaryParticleOffset:(double)a4;
- (id)_dataInUnknownFields;
- (id)_mergeUnparentedWithStroke:(id)a3 inDrawing:(id)a4;
- (id)_mergeWithStroke:(id)a3 inDrawing:(id)a4;
- (id)_newStrokeWithSubstrokes:(id)a3 inDrawing:(id)a4;
- (id)_strokeByAppendingTransform:(CGAffineTransform *)a3;
- (id)_strokeWithUUID:(id)a3 dataUUID:(id)a4;
- (id)_updateStroke:(id)a3 inDrawing:(id)a4;
- (id)_updateWithParent:(id)a3 inDrawing:(id)a4;
- (id)copyForMutation;
- (id)copyForSubstroke;
- (id)copyWithNewAnchorPointForTexture:(CGPoint)a3;
- (id)dataRepresentation;
- (id)deltaTo:(id)a3;
- (id)mergeArrayOfStrokes:(id)a3 with:(id)a4 inDrawing:(id)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)parentStrokeForInsertionInDrawing:(id)a3;
- (id)sliceIdentifierForTStart:(double)a3 tEnd:(double)a4;
- (id)strokeApplying:(id)a3;
- (int64_t)compareToStroke:(id)a3;
- (unsigned)saveToArchive:(void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 withPathData:(BOOL)a6 parent:(id)a7 transient:(BOOL)a8;
- (unsigned)saveToV1Archive:(void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 withPathData:(BOOL)a6 transient:(BOOL)a7;
- (void)_invalidateBounds;
- (void)_setBounds:(CGRect)a3;
- (void)_setInkTransform:(CGAffineTransform *)a3;
- (void)_setTransform:(CGAffineTransform *)a3;
- (void)didUpdateInDrawing:(id)a3;
- (void)didUpdateSubstrokesInDrawing:(id)a3;
- (void)saveInksTo:(id)a3;
- (void)saveStrokeID:(const _PKStrokeID *)a3 toArchive:(StrokeID *)a4 withSortedUUIDs:(id)a5;
- (void)saveToArchive:(void *)a3;
- (void)saveUUIDsTo:(id)a3;
- (void)saveV1StrokeID:(const _PKStrokeID *)a3 toArchive:(StrokeID *)a4 withSortedUUIDs:(id)a5;
- (void)setInk:(id)a3;
- (void)set_sortID:(_PKStrokeID *)a3;
- (void)set_substrokesVersion:(_PKStrokeID *)a3;
- (void)set_version:(_PKStrokeID *)a3;
@end

@implementation _PKStrokeConcrete

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (_PKStrokeConcrete)init
{
  v15.receiver = self;
  v15.super_class = _PKStrokeConcrete;
  v2 = [(PKStroke *)&v15 init];
  v3 = objc_alloc_init(PKStrokePath);
  v4 = *(v2 + 10);
  *(v2 + 10) = v3;

  v5 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 24) = *MEMORY[0x1E695F050];
  *(v2 + 40) = v5;
  v6 = MEMORY[0x1E695EFD0];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v7 = *(MEMORY[0x1E695EFD0] + 32);
  *(v2 + 10) = *MEMORY[0x1E695EFD0];
  *(v2 + 11) = v8;
  *(v2 + 12) = v7;
  v10 = v6[1];
  v9 = v6[2];
  *(v2 + 13) = *v6;
  *(v2 + 14) = v10;
  *(v2 + 15) = v9;
  v11 = *(v2 + 14);
  *(v2 + 14) = MEMORY[0x1E695E0F0];

  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = *(v2 + 9);
  *(v2 + 9) = v12;

  return v2;
}

- (_PKStrokeConcrete)initWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = &unk_1F476AEE0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (PKProtobufUtilitiesParseArchiveFromNSDataWithHeader<drawing::StrokeDelta>(&v9, v6, a4))
  {
    self = [(_PKStrokeConcrete *)self initWithArchive:&v9 error:a4];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  drawing::StrokeDelta::~StrokeDelta(&v9);

  return v7;
}

- (_PKStrokeConcrete)initWithArchive:(const void *)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{(*(a3 + 3) - *(a3 + 2)) >> 4, a4}];
  v7 = *(a3 + 3) - *(a3 + 2);
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
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(a3 + 2) + v8)];
      [v6 addObject:v11];

      v8 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = [[PKInk alloc] initWithArchive:*(a3 + 1)];
  v13 = v12;
  v14 = *(a3 + 5);
  if (v14)
  {
    v18[0] = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v16 = [(_PKStrokeConcrete *)self initWithArchive:v14 sortedUUIDs:v6 inks:v15 transientArchiveDictionary:0];
  }

  else
  {

    v16 = 0;
  }

  return v16;
}

- (id)dataRepresentation
{
  v4 = &unk_1F476AEE0;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  [(_PKStrokeConcrete *)self saveToArchive:&v4];
  v2 = PKProtobufUtilitiesNSDataFromArchiveWithHeader<drawing::StrokeDelta>(&v4);
  drawing::StrokeDelta::~StrokeDelta(&v4);

  return v2;
}

- (void)saveToArchive:(void *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = MEMORY[0x1E695DFB8];
  v7 = [(_PKStrokeConcrete *)self ink];
  v8 = [v6 orderedSetWithObject:v7];

  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _sortID];
  v10 = [v9 initWithUUIDBytes:v20 + 4];
  [v5 addObject:v10];

  v11 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _version];
  v12 = [v11 initWithUUIDBytes:v20 + 4];
  [v5 addObject:v12];

  drawing::StrokeDelta::makeInk(a3);
  v13 = [(_PKStrokeConcrete *)self ink];
  [v13 saveToArchive:*(a3 + 1)];

  drawing::StrokeDelta::makeStroke(a3);
  [(_PKStrokeConcrete *)self saveToArchive:*(a3 + 5) sortedUUIDs:v5 inks:v8 withPathData:1 transient:0];
  v14 = [v5 count];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = [v5 objectAtIndex:v16];
      v18 = *(a3 + 3);
      if (v18 >= *(a3 + 4))
      {
        v19 = std::vector<PB::Data>::__emplace_back_slow_path<>(a3 + 16);
      }

      else
      {
        *v18 = 0;
        v18[1] = 0;
        v19 = (v18 + 2);
      }

      *(a3 + 3) = v19;
      v20[0] = 0;
      v20[1] = 0;
      [v17 getUUIDBytes:v20];
      PB::Data::assign((*(a3 + 2) + v15), v20, v21);

      ++v16;
      v15 += 16;
    }

    while (v14 != v16);
  }
}

- (id)deltaTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_PKStrokeConcrete *)self _strokeUUID];
  v6 = [v4 _strokeUUID];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  [(_PKStrokeConcrete *)self _version];
  if (v4)
  {
    [v4 _version];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v8 = _PKStrokeIDCompare(&v16, &v15);
  if (!v8)
  {
    v11 = [(PKStroke *)self _strokeData];
    v12 = [v4 _strokeData];
    v13 = [v11 deltaTo:v12];

    if (v13)
    {
      v9 = objc_alloc_init(PKStrokeDelta);
      [(PKStrokeDelta *)v9 setDeltaStrokeData:v13];
      v14 = [(_PKStrokeConcrete *)self _strokeUUID];
      [(PKStrokeDelta *)v9 set_strokeUUID:v14];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_9;
  }

  if (v8 == -1)
  {
    v9 = objc_alloc_init(PKStrokeDelta);
    [(PKStrokeDelta *)v9 setDeltaStroke:v4];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (id)strokeApplying:(id)a3
{
  v4 = a3;
  v5 = [(_PKStrokeConcrete *)self _strokeUUID];
  v6 = [v4 _strokeUUID];
  v7 = [v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v9 = self;
    goto LABEL_8;
  }

  v8 = [v4 deltaStroke];

  if (!v8)
  {
    v10 = [v4 deltaStrokeData];

    if (v10)
    {
      v11 = [(PKStroke *)self _strokeData];
      v12 = [v4 deltaStrokeData];
      v13 = [v11 dataApplying:v12];

      if (v13)
      {
        v14 = [(_PKStrokeConcrete *)self copyForMutation];
        [(PKStroke *)v14 set_strokeData:v13];

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  v9 = [v4 deltaStroke];
LABEL_8:
  v14 = v9;
LABEL_9:

  return v14;
}

- (_PKStrokeConcrete)initWithData:(id)a3 id:(id)a4 flags:(id)a5 ink:(id)a6 transform:(CGAffineTransform *)a7 substrokes:(id)a8
{
  v10 = *(&a5.var0.var1 + 1);
  var1 = a5.var0.var1;
  v33 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = v10;
  v17 = a7;
  v32 = 0uLL;
  v18 = [MEMORY[0x1E696AFB0] PK_zero];
  [v18 getUUIDBytes:&v32];

  v30 = v32;
  v27 = v32;
  v19 = *(a6 + 1);
  v22[0] = *a6;
  v22[1] = v19;
  v22[2] = *(a6 + 2);
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = v32;
  v20 = [(_PKStrokeConcrete *)self initWithData:v14 id:v15 sortID:&v29 flags:var1 version:&v26 ink:v16 transform:v22 substrokes:v17 substrokesVersion:&v23];

  return v20;
}

- (_PKStrokeConcrete)initWithData:(id)a3 id:(id)a4 sortID:(_PKStrokeID *)a5 flags:(id)a6 version:(_PKStrokeID *)a7 ink:(id)a8 transform:(CGAffineTransform *)a9 substrokes:(id)a10 substrokesVersion:(_PKStrokeID *)a11
{
  v12 = *(&a6.var0.var1 + 1);
  var1 = a6.var0.var1;
  v31 = a3;
  v30 = a4;
  v32 = a7;
  v29 = a9;
  v36.receiver = self;
  v36.super_class = _PKStrokeConcrete;
  v17 = [(PKStroke *)&v36 init];
  v19 = *(MEMORY[0x1E695F050] + 16);
  *(v17 + 24) = *MEMORY[0x1E695F050];
  *(v17 + 40) = v19;
  objc_storeStrong(v17 + 7, a7);
  *(v17 + 8) = var1;
  objc_storeStrong(v17 + 9, a4);
  objc_storeStrong(v17 + 10, a3);
  v20 = *(a10 + 2);
  *(v17 + 88) = *a10;
  *(v17 + 13) = v20;
  objc_storeStrong(v17 + 14, a9);
  v21 = *v12;
  *(v17 + 41) = *(v12 + 2);
  *(v17 + 312) = v21;
  v22 = *&a5->clock;
  *(v17 + 38) = *&a5->replicaUUID[12];
  *(v17 + 18) = v22;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a8, *a8), vceqq_f64(*(a8 + 1), *(a8 + 1)))))))
  {
    a8 = MEMORY[0x1E695EFD0];
  }

  v23 = *a8;
  v24 = *(a8 + 2);
  *(v17 + 11) = *(a8 + 1);
  *(v17 + 12) = v24;
  *(v17 + 10) = v23;
  v25 = [(_PKStrokeID *)v32 behavior];
  v26 = v25;
  if (v25)
  {
    [v25 inkTransform];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
  }

  *(v17 + 13) = v33;
  *(v17 + 14) = v34;
  *(v17 + 15) = v35;

  return v17;
}

- (_PKStrokeConcrete)initWithStroke:(id)a3 hidden:(BOOL)a4 version:(_PKStrokeID *)a5 ink:(id)a6 transform:(CGAffineTransform *)a7
{
  v10 = a4;
  v41[3] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = [v12 _flags];
  v15 = [v12 _strokeData];
  v16 = [v12 _strokeUUID];
  if (v12)
  {
    [v12 _sortID];
  }

  else
  {
    memset(v41, 0, 24);
  }

  v39 = *&a5->clock;
  v40 = *&a5->replicaUUID[12];
  v17 = *&a7->c;
  v35 = *&a7->a;
  v36 = v17;
  v37 = *&a7->tx;
  v18 = [v12 _substrokes];
  if (v12)
  {
    [v12 _substrokesVersion];
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  v19 = [(_PKStrokeConcrete *)self initWithData:v15 id:v16 sortID:v41 flags:v14 | v10 version:&v39 ink:v13 transform:&v35 substrokes:v18 substrokesVersion:v38];

  v20 = [v12 _clipPlane];
  [(_PKStrokeConcrete *)v19 _setClipPlane:v20];

  v21 = [v12 _strokeMask];
  [(_PKStrokeConcrete *)v19 _setStrokeMask:v21];

  v22 = [v12 _renderMask];
  [(PKStroke *)v19 _setRenderMask:v22];

  v23 = [v12 _groupID];
  [(_PKStrokeConcrete *)v19 _setGroupID:v23];

  v24 = [v12 _renderGroupID];
  [(_PKStrokeConcrete *)v19 _setRenderGroupID:v24];

  -[_PKStrokeConcrete _setShapeType:](v19, "_setShapeType:", [v12 _shapeType]);
  if (v12)
  {
    [v12 _inkTransform];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  v26 = v36;
  v25 = v37;
  *&v19->_transform.ty = v35;
  *&v19->_inkTransform.b = v26;
  *&v19->_inkTransform.d = v25;
  [v12 _anchorPointForTexture];
  v19->_inkTransform.ty = v27;
  v19->_anchorPointForTexture.x = v28;
  [v12 _particleOffset];
  v19->_anchorPointForTexture.y = v29;
  [v12 _secondaryParticleOffset];
  v19->_particleOffset = v30;
  v32 = v12[1];
  v31 = v12[2];
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v19->_unknownFields.__cntrl_;
  v19->_unknownFields.__ptr_ = v32;
  v19->_unknownFields.__cntrl_ = v31;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  return v19;
}

- (_PKStrokeConcrete)initWithInk:(id)a3 strokePath:(id)a4 transform:(CGAffineTransform *)a5 mask:(id)a6 randomSeed:(unsigned int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v31.receiver = self;
  v31.super_class = _PKStrokeConcrete;
  v16 = [(PKStroke *)&v31 init];
  objc_storeStrong(v16 + 7, a3);
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = *(v16 + 9);
  *(v16 + 9) = v17;

  objc_storeStrong(v16 + 10, a4);
  v19 = *(MEMORY[0x1E695F050] + 16);
  *(v16 + 24) = *MEMORY[0x1E695F050];
  *(v16 + 40) = v19;
  v20 = *(v16 + 14);
  *(v16 + 14) = MEMORY[0x1E695E0F0];

  v22 = *&a5->c;
  v21 = *&a5->tx;
  *(v16 + 10) = *&a5->a;
  *(v16 + 11) = v22;
  *(v16 + 12) = v21;
  v23 = [v13 behavior];
  v24 = v23;
  if (v23)
  {
    [v23 inkTransform];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  *(v16 + 13) = v28;
  *(v16 + 14) = v29;
  *(v16 + 15) = v30;

  if (v15)
  {
    if (([v15 isEmpty] & 1) == 0)
    {
      [v15 bounds];
      if (!CGRectIsEmpty(v32))
      {
        v25 = [[PKStrokeMask alloc] initWithBezierPath:v15 stroke:v16];
        v26 = *(v16 + 16);
        *(v16 + 16) = v25;
      }
    }
  }

  *(v16 + 8) = *(v16 + 8) & 0xFFFFFFC00000001FLL | (32 * a7) | 0x2000000000;

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [PKMutableStroke alloc];
  v5 = [(PKStroke *)self _isHidden];
  [(_PKStrokeConcrete *)self _version];
  v6 = [(_PKStrokeConcrete *)self ink];
  [(PKStroke *)self transform];
  v7 = [(_PKStrokeConcrete *)v4 initWithStroke:self hidden:v5 version:v10 ink:v6 transform:&v9];

  return v7;
}

- (id)copyForMutation
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [_PKStrokeConcrete alloc];
  v4 = [(PKStroke *)self _isHidden];
  [(_PKStrokeConcrete *)self _version];
  v5 = [(_PKStrokeConcrete *)self ink];
  [(PKStroke *)self transform];
  v6 = [(_PKStrokeConcrete *)v3 initWithStroke:self hidden:v4 version:v9 ink:v5 transform:&v8];

  return v6;
}

- (id)copyForSubstroke
{
  v3 = [(_PKStrokeConcrete *)self copyForMutation];
  [v3 _setFlags:{-[_PKStrokeConcrete _flags](self, "_flags") & 0x1FFFFFFFE0 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x2000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x10000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x80000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x100000000000 | 0xE}];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  [v3 _setStrokeUUID:v4];

  return v3;
}

- (id)parentStrokeForInsertionInDrawing:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0uLL;
  v5 = [v4 replicaUUID];
  [v5 getUUIDBytes:&v21];

  v6 = [_PKStrokeConcrete alloc];
  v7 = [(PKStroke *)self _strokeData];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  [(_PKStrokeConcrete *)self _sortID];
  v17 = 0;
  v18 = v21;
  v19 = 0;
  v9 = [(_PKStrokeConcrete *)self ink];
  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v13[0] = *MEMORY[0x1E695EFD0];
  v13[1] = v10;
  v13[2] = *(MEMORY[0x1E695EFD0] + 32);
  v14 = 0;
  v15 = v21;
  v16 = 0;
  v11 = [(_PKStrokeConcrete *)v6 initWithData:v7 id:v8 sortID:v20 flags:0 version:&v17 ink:v9 transform:v13 substrokes:MEMORY[0x1E695E0F0] substrokesVersion:&v14];

  return v11;
}

- (id)sliceIdentifierForTStart:(double)a3 tEnd:(double)a4
{
  v11[3] = *MEMORY[0x1E69E9840];
  v7 = [PKStrokeProviderSliceIdentifierConcrete alloc];
  v8 = [(_PKStrokeConcrete *)self _strokeUUID];
  [(_PKStrokeConcrete *)self _version];
  v9 = [(PKStrokeProviderSliceIdentifierConcrete *)v7 initWithUUID:v8 version:v11 tStart:a3 tEnd:a4];

  return v9;
}

- (void)setInk:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_ink, a3);
  v6 = [v5 behavior];
  v7 = v6;
  if (v6)
  {
    [v6 inkTransform];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  *&self->_transform.ty = v8;
  *&self->_inkTransform.b = v9;
  *&self->_inkTransform.d = v10;
}

- ($751B26FBF8AE17756294EB075CA14786)_flags
{
  allFlags = self->_flags.var0.allFlags;
  *(&result.var0.var1 + 1) = a2;
  result.var0.var1 = allFlags;
  return result;
}

- (CGAffineTransform)_transform
{
  v3 = *&self[3].tx;
  *&retstr->a = *&self[3].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].a;
  return self;
}

- (CGAffineTransform)_inkTransform
{
  v3 = *&self[4].tx;
  *&retstr->a = *&self[4].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[5].a;
  return self;
}

- (void)_setTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_shapeType = *&a3->a;
  *&self->_transform.b = v4;
  *&self->_transform.d = v3;
  [(_PKStrokeConcrete *)self _invalidateBounds];
}

- (void)_setInkTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_transform.ty = *&a3->a;
  *&self->_inkTransform.b = v4;
  *&self->_inkTransform.d = v3;
  [(_PKStrokeConcrete *)self _invalidateBounds];
}

- (id)_strokeByAppendingTransform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  *&v27.a = *&a3->a;
  *&v27.c = v5;
  *&v27.tx = *&a3->tx;
  if (CGAffineTransformIsIdentity(&v27))
  {
    v6 = [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    v6 = [(_PKStrokeConcrete *)self copyForMutation];
    [(_PKStrokeConcrete *)self _transform];
    v7 = *&a3->c;
    *&v25.a = *&a3->a;
    *&v25.c = v7;
    *&v25.tx = *&a3->tx;
    CGAffineTransformConcat(&v27, &t1, &v25);
    v9 = *&v27.c;
    v8 = *&v27.tx;
    v6[10] = *&v27.a;
    v6[11] = v9;
    v6[12] = v8;
    v10 = self;
    os_unfair_lock_lock(&bounds_lock);
    x = v10->_cachedBounds.origin.x;
    y = v10->_cachedBounds.origin.y;
    width = v10->_cachedBounds.size.width;
    height = v10->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (CGRectIsNull(v29) || (v15 = *&a3->c, *&v27.a = *&a3->a, *&v27.c = v15, *&v27.tx = *&a3->tx, !CGAffineTransformIsRectilinear()))
    {
      [v6 _invalidateBounds];
    }

    else
    {
      v16 = *&a3->c;
      *&v27.a = *&a3->a;
      *&v27.c = v16;
      *&v27.tx = *&a3->tx;
      v17 = x;
      *&v16 = y;
      v18 = width;
      v19 = height;
      v30 = CGRectApplyAffineTransform(*(&v16 - 8), &v27);
      v20 = v30.origin.x;
      v21 = v30.origin.y;
      v22 = v30.size.width;
      v23 = v30.size.height;
      v6 = v6;
      os_unfair_lock_lock(&bounds_lock);
      *(v6 + 3) = v20;
      *(v6 + 4) = v21;
      *(v6 + 5) = v22;
      *(v6 + 6) = v23;

      os_unfair_lock_unlock(&bounds_lock);
    }
  }

  return v6;
}

- (id)_strokeWithUUID:(id)a3 dataUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PKStrokeConcrete *)self copyForMutation];
  [v8 _setStrokeUUID:v6];
  v9 = [(_PKStrokeConcrete *)self path];
  v10 = [v9 copyWithStrokeDataUUID:v7];

  [v8 setPath:v10];
  v11 = self;
  os_unfair_lock_lock(&bounds_lock);
  x = v11->_cachedBounds.origin.x;
  y = v11->_cachedBounds.origin.y;
  width = v11->_cachedBounds.size.width;
  height = v11->_cachedBounds.size.height;

  os_unfair_lock_unlock(&bounds_lock);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!CGRectIsNull(v19))
  {
    v16 = v8;
    os_unfair_lock_lock(&bounds_lock);
    v16[3] = x;
    v16[4] = y;
    v16[5] = width;
    v16[6] = height;

    os_unfair_lock_unlock(&bounds_lock);
  }

  return v8;
}

- (id)copyWithNewAnchorPointForTexture:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_PKStrokeConcrete *)self _anchorPointForTexture];
  if (v7 == x && v6 == y)
  {

    return [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    v9 = [(_PKStrokeConcrete *)self copyForMutation];
    v9[32] = x;
    v9[33] = y;
    v10 = self;
    os_unfair_lock_lock(&bounds_lock);
    v11 = v10->_cachedBounds.origin.x;
    v12 = v10->_cachedBounds.origin.y;
    width = v10->_cachedBounds.size.width;
    height = v10->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v17.origin.x = v11;
    v17.origin.y = v12;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsNull(v17))
    {
      v9 = v9;
      os_unfair_lock_lock(&bounds_lock);
      v9[3] = v11;
      v9[4] = v12;
      v9[5] = width;
      v9[6] = height;

      os_unfair_lock_unlock(&bounds_lock);
    }

    return v9;
  }
}

- (CGPoint)_anchorPointForTexture
{
  ty = self->_inkTransform.ty;
  x = self->_anchorPointForTexture.x;
  result.y = x;
  result.x = ty;
  return result;
}

- (id)_copyWithNewParticleOffset:(double)a3 secondaryParticleOffset:(double)a4
{
  [(_PKStrokeConcrete *)self _particleOffset];
  if (v7 == a3 && ([(_PKStrokeConcrete *)self _secondaryParticleOffset], v8 == a4))
  {

    return [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    v10 = [(_PKStrokeConcrete *)self copyForMutation];
    v10[34] = a3;
    v10[35] = a4;
    v11 = self;
    os_unfair_lock_lock(&bounds_lock);
    x = v11->_cachedBounds.origin.x;
    y = v11->_cachedBounds.origin.y;
    width = v11->_cachedBounds.size.width;
    height = v11->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsNull(v17))
    {
      v10 = v10;
      os_unfair_lock_lock(&bounds_lock);
      v10[3] = x;
      v10[4] = y;
      v10[5] = width;
      v10[6] = height;

      os_unfair_lock_unlock(&bounds_lock);
    }

    return v10;
  }
}

- (BOOL)hasSubstrokes
{
  v2 = [(_PKStrokeConcrete *)self _substrokes];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(&self->_flags.var0.allFlags + 1);
      v6 = [(_PKStrokeConcrete *)v4 _strokeUUID];
      if ([v5 isEqual:v6])
      {
        *&t1.a = *&self->_sortID.replicaUUID[12];
        t1.c = *&self->_version.replicaUUID[4];
        if (v4)
        {
          [(_PKStrokeConcrete *)v4 _version];
          a_low = LODWORD(v17.a);
        }

        else
        {
          a_low = 0;
          memset(&v17, 0, 24);
        }

        if (LODWORD(t1.a) == a_low && !uuid_compare(&t1.a + 4, &v17.a + 4))
        {
          v10 = HIDWORD(t1.c) == HIDWORD(v17.c);

          if (v10)
          {
            if ((*&self->_flags.var0.var0 & 0xE) != 0)
            {
              v11 = [(PKStroke *)self _isHidden];
              if (v11 != [(PKStroke *)v4 _isHidden])
              {
                goto LABEL_12;
              }

              v12 = [(_PKStrokeConcrete *)self ink];
              v13 = [(_PKStrokeConcrete *)v4 ink];
              if (([v12 isEqualUnweightedInk:v13] & 1) == 0)
              {

                goto LABEL_12;
              }

              [(_PKStrokeConcrete *)self _transform];
              if (v4)
              {
                [(_PKStrokeConcrete *)v4 _transform];
              }

              else
              {
                memset(&v17, 0, sizeof(v17));
              }

              v14 = CGAffineTransformEqualToTransform(&t1, &v17);

              if (!v14)
              {
                goto LABEL_12;
              }
            }

            v15 = [(PKStroke *)self _strokeDataUUID:*&v17.a];
            v16 = [(PKStroke *)v4 _strokeDataUUID];
            v8 = [v15 isEqual:v16];

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (void)didUpdateInDrawing:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_PKStrokeConcrete *)self _version];
  v5 = [v4 replicaUUID];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:v5];
  v6 = v8;
  v7 = v9;
  [(_PKStrokeConcrete *)self set_version:&v6];
}

- (void)didUpdateSubstrokesInDrawing:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_PKStrokeConcrete *)self _substrokesVersion];
  v5 = [v4 replicaUUID];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:v5];
  v6 = v8;
  v7 = v9;
  [(_PKStrokeConcrete *)self set_substrokesVersion:&v6];
}

- (id)_newStrokeWithSubstrokes:(id)a3 inDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_PKStrokeConcrete *)self copyForMutation];
  [v8 _setSubstrokes:v6];
  [v8 didUpdateSubstrokesInDrawing:v7];

  return v8;
}

- (CGRect)renderBounds
{
  v2 = self;
  os_unfair_lock_lock(&bounds_lock);
  x = v2->_cachedBounds.origin.x;
  y = v2->_cachedBounds.origin.y;
  width = v2->_cachedBounds.size.width;
  height = v2->_cachedBounds.size.height;

  os_unfair_lock_unlock(&bounds_lock);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIsNull(v16))
  {
    [(PKStroke *)v2 _calculateBounds];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
    v11 = v2;
    os_unfair_lock_lock(&bounds_lock);
    v11->_cachedBounds.origin.x = x;
    v11->_cachedBounds.origin.y = y;
    v11->_cachedBounds.size.width = width;
    v11->_cachedBounds.size.height = height;

    os_unfair_lock_unlock(&bounds_lock);
  }

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

- (void)_setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  os_unfair_lock_lock(&bounds_lock);
  v7->_cachedBounds.origin.x = x;
  v7->_cachedBounds.origin.y = y;
  v7->_cachedBounds.size.width = width;
  v7->_cachedBounds.size.height = height;

  os_unfair_lock_unlock(&bounds_lock);
}

- (void)_invalidateBounds
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  v4 = *MEMORY[0x1E695F050];
  v2 = self;
  os_unfair_lock_lock(&bounds_lock);
  v2->_cachedBounds.origin = v4;
  v2->_cachedBounds.size = v3;

  os_unfair_lock_unlock(&bounds_lock);
}

- (int64_t)compareToStroke:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_PKStrokeConcrete *)self _sortID];
  if (v4)
  {
    [v4 _sortID];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v5 = _PKStrokeIDCompare(&v8, &v7);

  return v5;
}

- (id)_updateStroke:(id)a3 inDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v8 = v6[2](v6, self, &v22);
  v9 = v8;
  if ((v22 & 1) == 0 && [v8 hasSubstrokes])
  {
    v10 = [v9 _substrokesInDrawing:v7];
    v11 = [v10 count];
    if (v11 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      for (i = 0; i != v11; ++i)
      {
        v15 = [v10 objectAtIndexedSubscript:i];
        v16 = v15;
        if (v22 == 1)
        {
          v17 = v15;
          v18 = 0;
        }

        else
        {
          v17 = [v15 _updateStroke:v6 inDrawing:v7];
          v18 = v22 ^ 1;
        }

        v13 |= v17 != v16;
        if ((v18 & 1) == 0 && (v13 & 1) == 0)
        {

          goto LABEL_18;
        }

        if (v12 == 0 && (v13 & 1) != 0)
        {
          v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          v12 = v19;
          if (i)
          {
            [v19 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v10, 0, i}];
          }
        }

        [v12 addObject:v17];
      }

      if (v13)
      {
        v20 = [v9 copyForMutation];

        [v20 set_substrokes:v12];
        v9 = v20;
      }
    }

LABEL_18:
  }

  return v9;
}

- (id)mergeArrayOfStrokes:(id)a3 with:(id)a4 inDrawing:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 count];
  if (v10 == [v7 count])
  {
    v11 = [v7 count];
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [v7 objectAtIndexedSubscript:v13];
        v15 = [v8 objectAtIndexedSubscript:v13];
        v16 = [v14 _mergeWithStroke:v15 inDrawing:v9];

        v17 = [v7 objectAtIndexedSubscript:v13];

        if (!v12 && v16 != v17)
        {
          v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
          if (!v13)
          {
            v12 = v18;
            if (!v18)
            {
              goto LABEL_10;
            }

LABEL_9:
            [v12 addObject:v16];
            goto LABEL_10;
          }

          v12 = v18;
          [v18 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v7, 0, v13}];
        }

        if (v12)
        {
          goto LABEL_9;
        }

LABEL_10:

        if (v11 == ++v13)
        {
          goto LABEL_19;
        }
      }
    }

    v12 = 0;
LABEL_19:
    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = v7;
    }

    v21 = v22;
  }

  else
  {
    v19 = [v8 count];
    if (v19 >= [v7 count])
    {
      v20 = v7;
    }

    else
    {
      v20 = v8;
    }

    v21 = v20;
  }

  return v21;
}

- (id)_mergeWithStroke:(id)a3 inDrawing:(id)a4
{
  v6 = a4;
  v7 = [(_PKStrokeConcrete *)self _mergeUnparentedWithStroke:a3 inDrawing:v6];
  v8 = [v7 _updateWithParent:0 inDrawing:v6];

  return v8;
}

- (id)_updateWithParent:(id)a3 inDrawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = v8;
  v29 = v6;
  if (v6)
  {
    if (([(_PKStrokeConcrete *)v8 _flags]& 8) != 0)
    {
      if (v9)
      {
        [v9 _transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      [v6 _transform];
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        if (([v9 _isNewCopy] & 1) == 0)
        {
          v10 = [v9 copyForMutation];

          v9 = v10;
          [v10 _setIsNewCopy:1];
        }

        [v6 _transform];
        t1 = v30;
        [v9 _setTransform:&t1];
      }
    }

    if (([v9 _flags] & 4) != 0)
    {
      v11 = [v6 ink];
      v12 = [v9 ink];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        if (([v9 _isNewCopy] & 1) == 0)
        {
          v14 = [v9 copyForMutation];

          v9 = v14;
          [v14 _setIsNewCopy:1];
        }

        v15 = [v6 ink];
        [v9 _setInk:v15];
      }
    }
  }

  v16 = [v9 _substrokesInDrawing:v7];
  v17 = [v16 count];
  if (v17 < 1)
  {
    v20 = 0;
    goto LABEL_30;
  }

  v18 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  do
  {
    v21 = [v16 objectAtIndexedSubscript:v18];
    v22 = [v21 _updateWithParent:v9 inDrawing:v7];

    if (v19)
    {
      v19 = 1;
      if (v20)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v23 = [v16 objectAtIndexedSubscript:v18];
      v19 = v22 != v23;

      if (v20)
      {
        goto LABEL_24;
      }
    }

    if (v19)
    {
      v24 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
      v20 = v24;
      if (v18)
      {
        [v24 replaceObjectsInRange:0 withObjectsFromArray:0 range:{v16, 0, v18}];
      }
    }

LABEL_24:
    [v20 addObject:v22];

    ++v18;
  }

  while (v17 != v18);
  if (!v19)
  {
LABEL_30:
    v25 = v29;
    goto LABEL_31;
  }

  v25 = v29;
  if (([v9 _isNewCopy] & 1) == 0)
  {
    v26 = [v9 copyForMutation];

    v9 = v26;
  }

  [v9 set_substrokes:v20];
LABEL_31:
  [v9 _setIsNewCopy:0];
  v27 = v9;

  return v9;
}

- (id)_mergeUnparentedWithStroke:(id)a3 inDrawing:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(_PKStrokeConcrete *)v8 _strokeUUID];
  v10 = [(_PKStrokeConcrete *)v6 _strokeUUID];
  v11 = [v9 PK_compare:v10];

  v12 = v8;
  if (v11 == -1)
  {
    v12 = [(_PKStrokeConcrete *)v8 copyForMutation];

    v13 = [(_PKStrokeConcrete *)v6 _strokeUUID];
    [v12 _setStrokeUUID:v13];
  }

  [(_PKStrokeConcrete *)v8 _version];
  if (v6)
  {
    [(_PKStrokeConcrete *)v6 _version];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v14 = _PKStrokeIDCompare(&v36, &v35);
  [(_PKStrokeConcrete *)v8 _substrokesVersion];
  if (v6)
  {
    [(_PKStrokeConcrete *)v6 _substrokesVersion];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v15 = _PKStrokeIDCompare(&v36, &v35);
  if (!v15)
  {
    v18 = [(_PKStrokeConcrete *)v8 _substrokes];
    v19 = [(_PKStrokeConcrete *)v6 _substrokes];
    v20 = [(_PKStrokeConcrete *)v8 mergeArrayOfStrokes:v18 with:v19 inDrawing:v7];

    v21 = [(_PKStrokeConcrete *)v8 _substrokes];
    v22 = v20 == v21;

    if (v14 == -1)
    {
      v23 = v6;
    }

    else
    {
      v23 = v8;
    }

    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = [(_PKStrokeConcrete *)v23 copyForMutation];

      [(_PKStrokeConcrete *)v24 set_substrokes:v20];
      [(PKStroke *)v24 _setIsNewCopy:1];
    }

    v12 = v24;
    goto LABEL_29;
  }

  if (v14 != 1)
  {
    if (v14 == -1)
    {
      if (v15 != -1)
      {
        v16 = [(_PKStrokeConcrete *)v6 copyForMutation];

        v17 = [(_PKStrokeConcrete *)v8 _substrokes];
        [v16 set_substrokes:v17];

        [(_PKStrokeConcrete *)v8 _substrokesVersion];
        v36 = v34[1];
        [v16 set_substrokesVersion:&v36];
        v12 = v16;
        [v16 _setIsNewCopy:1];
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (v15 == -1)
    {
LABEL_25:
      v27 = v6;
      goto LABEL_26;
    }

    if (v15 != 1)
    {
      goto LABEL_30;
    }

LABEL_24:
    v27 = v8;
LABEL_26:
    v20 = v12;
    v12 = v27;
LABEL_29:

    goto LABEL_30;
  }

  if (v15 == 1)
  {
    goto LABEL_24;
  }

  v25 = [(_PKStrokeConcrete *)v8 copyForMutation];

  v12 = v25;
  v26 = [(_PKStrokeConcrete *)v6 _substrokes];
  [v12 set_substrokes:v26];

  if (v6)
  {
    [(_PKStrokeConcrete *)v6 _substrokesVersion];
  }

  else
  {
    memset(v34, 0, 24);
  }

  v36 = v34[0];
  [v12 set_substrokesVersion:&v36];
  [v12 _setIsNewCopy:1];
LABEL_30:
  v28 = [v12 _strokeData];
  v29 = [v28 _immutablePointsCount];
  v30 = [(PKStroke *)v6 _strokeData];
  LODWORD(v29) = v29 < [v30 _immutablePointsCount];

  if (v29)
  {
    if (([v12 _isNewCopy] & 1) == 0)
    {
      v31 = [v12 copyForMutation];

      v12 = v31;
      [v31 _setIsNewCopy:1];
    }

    v32 = [(PKStroke *)v6 _strokeData];
    [v12 set_strokeData:v32];
  }

  return v12;
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

- (void)set_sortID:(_PKStrokeID *)a3
{
  v3 = *&a3->replicaUUID[12];
  *&self->_secondaryParticleOffset = *&a3->clock;
  *&self->_sortID.replicaUUID[4] = v3;
}

- (void)set_version:(_PKStrokeID *)a3
{
  v3 = *&a3->replicaUUID[12];
  *&self->_sortID.replicaUUID[12] = *&a3->clock;
  *&self->_version.replicaUUID[4] = v3;
}

- (void)set_substrokesVersion:(_PKStrokeID *)a3
{
  v3 = *&a3->replicaUUID[12];
  *&self->_strokeData = *&a3->clock;
  *&self->_substrokesVersion.replicaUUID[4] = v3;
}

- (_PKStrokeConcrete)initWithArchive:(const void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 parent:(id)a6 isHidden:(BOOL)a7 transientArchiveDictionary:(id)a8
{
  v85 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v72 = a6;
  v16 = a8;
  v17 = *(a3 + 22);
  if (!v17 || (v18 = *(v17 + 16), v18 > [v14 count]))
  {
    v19 = 0;
    goto LABEL_76;
  }

  v20 = [(_PKStrokeConcrete *)self init];
  if (!v20)
  {
    goto LABEL_70;
  }

  if (*(a3 + 15))
  {
    v21 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(a3 + 15)];
  }

  else
  {
    v21 = [MEMORY[0x1E696AFB0] UUID];
  }

  [(_PKStrokeConcrete *)v20 _setStrokeUUID:v21];

  v22 = *(a3 + 13);
  if (v22)
  {
    [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v22 withSortedUUIDs:v14];
    *buf = v83;
    v79.i64[0] = v84;
    [(_PKStrokeConcrete *)v20 set_sortID:buf];
  }

  v23 = *(a3 + 22);
  if (v23)
  {
    [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v23 withSortedUUIDs:v14];
    *buf = v81;
    v79.i64[0] = v82;
    [(_PKStrokeConcrete *)v20 set_version:buf];
  }

  if ((*(a3 + 184) & 2) != 0)
  {
    [(_PKStrokeConcrete *)v20 _setShapeType:*(a3 + 12)];
  }

  v24 = *(a3 + 5);
  if (v24)
  {
    v25 = [_PKStrokeConcrete decodeRenameableUUIDFromData:*v24 transientArchiveDictionary:v16];
    [(_PKStrokeConcrete *)v20 _setGroupID:v25];
  }

  v26 = *(a3 + 11);
  if (v26)
  {
    v27 = [_PKStrokeConcrete decodeRenameableUUIDFromData:*v26 transientArchiveDictionary:v16];
    [(_PKStrokeConcrete *)v20 _setRenderGroupID:v27];
  }

  if (*(a3 + 184))
  {
    v29 = *(a3 + 6);
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || v29 >= [v15 count])
    {
      v30 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v29;
        _os_log_fault_impl(&dword_1C7CCA000, v30, OS_LOG_TYPE_FAULT, "Archive had invalid ink index: %lu", buf, 0xCu);
      }

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v29 < [v15 count])
  {
    v31 = [v15 objectAtIndexedSubscript:v29];
    [(PKStroke *)v20 _setInk:v31];
    goto LABEL_30;
  }

  if (v72)
  {
    v31 = [v72 ink];
    [(PKStroke *)v20 _setInk:v31];
LABEL_30:

    v32 = *(a3 + 4);
    if (v32)
    {
      drawing::Rectangle::Rectangle(buf, v32);
      [(_PKStrokeConcrete *)v20 _setBounds:*&buf[12], *v79.i32, *&v79.i32[1], *&buf[8]];
      PB::Base::~Base(buf);
    }

    v33 = MEMORY[0x1E695EFD0];
    v34 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    v79 = v34;
    v80 = *(MEMORY[0x1E695EFD0] + 32);
    [(_PKStrokeConcrete *)v20 _setTransform:buf];
    v35 = *(a3 + 21);
    if (v35)
    {
      v36 = *(v35 + 8);
      v37 = vcvtq_f64_f32(*v36.f32);
      v38 = vcvtq_f64_f32(*(v35 + 16));
      v39 = vcvtq_f64_f32(*(v35 + 24));
      v40 = v33[2];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v36, v36)))))
      {
        v41 = -1;
      }

      else
      {
        v41 = 0;
      }

      v42 = vdupq_n_s64(v41);
      v43 = vbslq_s8(v42, v33[1], v38);
      *buf = vbslq_s8(v42, *v33, v37);
      v79 = v43;
      v80 = vbslq_s8(v42, v40, v39);
      [(_PKStrokeConcrete *)v20 _setTransform:buf];
    }

    else if (v72)
    {
      [v72 _transform];
      *buf = v73;
      v79 = v74;
      v80 = v75;
      [(_PKStrokeConcrete *)v20 _setTransform:buf];
    }

    v44 = *(a3 + 7);
    if (v44)
    {
      v45 = *(v44 + 8);
      v46 = vcvtq_f64_f32(*v45.f32);
      v47 = vcvtq_f64_f32(*(v44 + 16));
      v48 = vcvtq_f64_f32(*(v44 + 24));
      v49 = v33[2];
      if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v45, v45)))))
      {
        v50 = -1;
      }

      else
      {
        v50 = 0;
      }

      v51 = vdupq_n_s64(v50);
      v52 = vbslq_s8(v51, v33[1], v47);
      *buf = vbslq_s8(v51, *v33, v46);
      v79 = v52;
      v80 = vbslq_s8(v51, v49, v48);
      [(_PKStrokeConcrete *)v20 _setInkTransform:buf];
    }

    [(_PKStrokeConcrete *)v20 _setFlags:*(a3 + 16)];
    if (*(a3 + 14))
    {
      v53 = [PKStrokePath strokeDataFromDataArchive:?];
      [(PKStroke *)v20 set_strokeData:v53];
    }

    else
    {
      if (!v72)
      {
LABEL_49:
        v55 = *(a3 + 17);
        v54 = *(a3 + 18);
        v56 = v54 - v55;
        if (v54 != v55)
        {
          v57 = *(a3 + 20);
          if (v57)
          {
            [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v57 withSortedUUIDs:v14];
            *buf = v76;
            v79.i64[0] = v77;
            [(_PKStrokeConcrete *)v20 set_substrokesVersion:buf];
          }

          v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:v56 >> 3];
          [(_PKStrokeConcrete *)v20 set_substrokes:v58];

          v59 = 0;
          if ((v56 >> 3) <= 1)
          {
            v60 = 1;
          }

          else
          {
            v60 = v56 >> 3;
          }

          do
          {
            if (*(*(*(a3 + 17) + 8 * v59) + 72) == *(*(*(a3 + 17) + 8 * v59) + 64))
            {
              v61 = [_PKStrokeConcrete alloc];
              v62 = *(*(a3 + 17) + 8 * v59);
              if (!a7)
              {
LABEL_60:
                v63 = [(_PKStrokeConcrete *)v20 _flags]& 1;
                goto LABEL_61;
              }

              v63 = 1;
            }

            else
            {
              v61 = [_PKStrokeConcrete alloc];
              v62 = *(*(a3 + 17) + 8 * v59);
              if (!a7)
              {
                goto LABEL_60;
              }

              v63 = 1;
            }

LABEL_61:
            v64 = [(_PKStrokeConcrete *)v61 initWithArchive:v62 sortedUUIDs:v14 inks:v15 parent:v20 isHidden:v63 transientArchiveDictionary:v16];
            if (!v64)
            {
              goto LABEL_75;
            }

            v65 = [(_PKStrokeConcrete *)v20 _substrokes];
            [v65 addObject:v64];

            ++v59;
          }

          while (v60 != v59);
        }

        if (*(a3 + 9) != *(a3 + 8))
        {
          v66 = [[PKStrokeMask alloc] initWithArchive:a3];
          [(_PKStrokeConcrete *)v20 _setStrokeMask:v66];
        }

        v67 = *(a3 + 24);
        if (v67)
        {
          v68 = *(a3 + 25);
          if (v68)
          {
            atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
          }

          cntrl = v20->_unknownFields.__cntrl_;
          v20->_unknownFields.__ptr_ = v67;
          v20->_unknownFields.__cntrl_ = v68;
          if (cntrl)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
          }
        }

LABEL_70:
        self = v20;
        v19 = self;
        goto LABEL_76;
      }

      v53 = [v72 _strokeData];
      [(PKStroke *)v20 set_strokeData:v53];
    }

    goto LABEL_49;
  }

  if ((v28 & 1) == 0)
  {
    v70 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v70, OS_LOG_TYPE_FAULT, "Unable to find ink from saved inkIndex or parent", buf, 2u);
    }
  }

LABEL_75:
  v19 = 0;
  self = v20;
LABEL_76:

  return v19;
}

+ (id)decodeRenameableUUIDFromData:(const char *)a3 transientArchiveDictionary:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3];
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [MEMORY[0x1E696AFB0] UUID];
      [v5 setObject:v7 forKeyedSubscript:v6];
    }

    v8 = v7;

    v6 = v8;
  }

  return v6;
}

+ (void)encodeUUID:(id)a3 toData:(void *)a4
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = 0;
  v6 = 0;
  [a3 getUUIDBytes:v5];
  PB::Data::assign(*a4, v5, &v7);
}

- (void)saveUUIDsTo:(id)a3
{
  *&v20[20] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _sortID];
  v6 = [v5 initWithUUIDBytes:v20];
  [v4 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _version];
  v8 = [v7 initWithUUIDBytes:v20];
  [v4 addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _substrokesVersion];
  v10 = [v9 initWithUUIDBytes:v20];
  [v4 addObject:v10];

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(_PKStrokeConcrete *)self _substrokes];
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v15 + 1) + 8 * v14++) saveUUIDsTo:v4];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)saveInksTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_PKStrokeConcrete *)self ink];

  if (v5)
  {
    v6 = [(_PKStrokeConcrete *)self ink];
    [v4 addObject:v6];
  }

  else
  {
    v7 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_FAULT, "Attempting to save a stroke with a nil ink.", buf, 2u);
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = [(_PKStrokeConcrete *)self _substrokes];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) saveInksTo:v4];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (unsigned)saveToArchive:(void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 withPathData:(BOOL)a6 parent:(id)a7 transient:(BOOL)a8
{
  v81 = a6;
  v88 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = [(_PKStrokeConcrete *)self _groupID];

  if (v15)
  {
    if (!*(a3 + 5))
    {
      operator new();
    }

    v16 = [(_PKStrokeConcrete *)self _groupID];
    [_PKStrokeConcrete encodeUUID:v16 toData:a3 + 40];
  }

  v17 = [(_PKStrokeConcrete *)self _renderGroupID];

  if (v17)
  {
    if (!*(a3 + 11))
    {
      operator new();
    }

    v18 = [(_PKStrokeConcrete *)self _renderGroupID];
    [_PKStrokeConcrete encodeUUID:v18 toData:a3 + 88];
  }

  if ([(_PKStrokeConcrete *)self _shapeType])
  {
    v19 = [(_PKStrokeConcrete *)self _shapeType];
    *(a3 + 184) |= 2u;
    *(a3 + 12) = v19;
  }

  if (!a8)
  {
    if (!*(a3 + 15))
    {
      operator new();
    }

    v20 = [(_PKStrokeConcrete *)self _strokeUUID];
    [_PKStrokeConcrete encodeUUID:v20 toData:a3 + 120];
  }

  drawing::Stroke::makeSortID(a3);
  v21 = *(a3 + 13);
  [(_PKStrokeConcrete *)self _sortID];
  [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v21 withSortedUUIDs:v13];
  drawing::Stroke::makeVersion(a3);
  v22 = *(a3 + 22);
  [(_PKStrokeConcrete *)self _version];
  [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v22 withSortedUUIDs:v13];
  v23 = [(_PKStrokeConcrete *)self ink];
  if (v23)
  {
    v24 = ([(_PKStrokeConcrete *)self _flags]& 4) == 0 || a7 == 0;
    v25 = v24;

    if (v25)
    {
      v26 = [(_PKStrokeConcrete *)self ink];
      v27 = [v14 indexOfObject:v26];

      if (v27 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          LOWORD(buf.a) = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_FAULT, "Ink was not in the set of inks we had when saving.", &buf, 2u);
        }
      }

      else
      {
        *(a3 + 184) |= 1u;
        *(a3 + 6) = v27;
      }
    }
  }

  if (![(_PKStrokeConcrete *)self _isFullyHidden])
  {
    if (v81)
    {
      drawing::Stroke::makeStrokeData(a3);
      v29 = [(PKStroke *)self _strokeData];
      [v29 saveToDataArchive:*(a3 + 14)];
    }

    [(PKStroke *)self _bounds];
    x = v89.origin.x;
    y = v89.origin.y;
    width = v89.size.width;
    height = v89.size.height;
    if (!CGRectIsNull(v89))
    {
      drawing::Stroke::makeBounds(a3);
      v34 = *(a3 + 4);
      v35 = x;
      v36 = *(v34 + 24);
      v37 = y;
      v38 = width;
      *(v34 + 16) = v37;
      *(v34 + 20) = v38;
      v39 = height;
      *(v34 + 24) = v36 | 0xF;
      *(v34 + 8) = v39;
      *(v34 + 12) = v35;
    }

    memset(&buf, 0, sizeof(buf));
    [(_PKStrokeConcrete *)self _transform];
    v40 = [(_PKStrokeConcrete *)self _flags];
    v41 = MEMORY[0x1E695EFD0];
    if (!a7 || (v40 & 8) == 0)
    {
      t1 = buf;
      v42 = *(MEMORY[0x1E695EFD0] + 16);
      *&t2.a = *MEMORY[0x1E695EFD0];
      *&t2.c = v42;
      *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        drawing::Stroke::makeTransform(a3);
        v43 = *(a3 + 21);
        a = buf.a;
        *(v43 + 32) |= 1u;
        *(v43 + 8) = a;
        v45 = *(a3 + 21);
        b = buf.b;
        *(v45 + 32) |= 2u;
        *(v45 + 12) = b;
        v47 = *(a3 + 21);
        c = buf.c;
        *(v47 + 32) |= 4u;
        *(v47 + 16) = c;
        v49 = *(a3 + 21);
        d = buf.d;
        *(v49 + 32) |= 8u;
        *(v49 + 20) = d;
        v51 = *(a3 + 21);
        tx = buf.tx;
        *(v51 + 32) |= 0x10u;
        *(v51 + 24) = tx;
        v53 = *(a3 + 21);
        ty = buf.ty;
        *(v53 + 32) |= 0x20u;
        *(v53 + 28) = ty;
      }
    }

    memset(&t1, 0, sizeof(t1));
    [(_PKStrokeConcrete *)self _inkTransform];
    t2 = t1;
    v55 = v41[1];
    *&v83.a = *v41;
    *&v83.c = v55;
    *&v83.tx = v41[2];
    if (!CGAffineTransformEqualToTransform(&t2, &v83))
    {
      drawing::Stroke::makeInkTransform(a3);
      v56 = *(a3 + 7);
      v57 = t1.a;
      *(v56 + 32) |= 1u;
      *(v56 + 8) = v57;
      v58 = *(a3 + 7);
      v59 = t1.b;
      *(v58 + 32) |= 2u;
      *(v58 + 12) = v59;
      v60 = *(a3 + 7);
      v61 = t1.c;
      *(v60 + 32) |= 4u;
      *(v60 + 16) = v61;
      v62 = *(a3 + 7);
      v63 = t1.d;
      *(v62 + 32) |= 8u;
      *(v62 + 20) = v63;
      v64 = *(a3 + 7);
      v65 = t1.tx;
      *(v64 + 32) |= 0x10u;
      *(v64 + 24) = v65;
      v66 = *(a3 + 7);
      v67 = t1.ty;
      *(v66 + 32) |= 0x20u;
      *(v66 + 28) = v67;
    }
  }

  v68 = [(_PKStrokeConcrete *)self _flags];
  *(a3 + 184) |= 4u;
  *(a3 + 16) = v68;
  v69 = [(_PKStrokeConcrete *)self _substrokes];
  v70 = [v69 count] == 0;

  if (!v70)
  {
    drawing::Stroke::makeSubstrokesVersion(a3);
    v71 = *(a3 + 20);
    [(_PKStrokeConcrete *)self _substrokesVersion];
    [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v71 withSortedUUIDs:v13];
    v72 = [(_PKStrokeConcrete *)self _substrokes];
    std::vector<std::unique_ptr<drawing::Stroke>>::reserve(a3 + 17, [v72 count]);

    memset(v82, 0, sizeof(v82));
    v73 = [(_PKStrokeConcrete *)self _substrokes];
    if ([v73 countByEnumeratingWithState:v82 objects:v86 count:16])
    {
      PB::PtrVector<drawing::Stroke>::emplace_back<>();
    }
  }

  v74 = [(_PKStrokeConcrete *)self _strokeMask];
  v75 = v74 == 0;

  if (!v75)
  {
    v76 = [(_PKStrokeConcrete *)self _strokeMask];
    [v76 saveToArchive:a3];
  }

  ptr = self->_unknownFields.__ptr_;
  cntrl = self->_unknownFields.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v79 = *(a3 + 25);
  *(a3 + 24) = ptr;
  *(a3 + 25) = cntrl;
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  return 2;
}

- (_PKStrokeConcrete)initWithV1Archive:(const void *)a3 sortedUUIDs:(id)a4 inks:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = *(a3 + 10);
  if (v10 && (v11 = *(v10 + 16), v11 <= [v8 count]))
  {
    v13 = [(_PKStrokeConcrete *)self init];
    v14 = v13;
    if (v13)
    {
      v15 = *(a3 + 6);
      if (v15)
      {
        [(_PKStrokeConcrete *)v13 readV1StrokeIDFromArchive:v15 withSortedUUIDs:v8];
        v46 = v51;
        v47.i64[0] = v52;
        [(_PKStrokeConcrete *)v14 set_sortID:&v46];
      }

      if (*(a3 + 7))
      {
        v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(a3 + 7)];
      }

      else
      {
        v16 = [MEMORY[0x1E696AFB0] UUID];
      }

      [(_PKStrokeConcrete *)v14 _setStrokeUUID:v16];

      v17 = *(a3 + 10);
      if (v17)
      {
        [(_PKStrokeConcrete *)v14 readV1StrokeIDFromArchive:v17 withSortedUUIDs:v8];
        v46 = v49;
        v47.i64[0] = v50;
        [(_PKStrokeConcrete *)v14 set_version:&v46];
      }

      v18 = [v9 objectAtIndexedSubscript:*(a3 + 2)];
      [(PKStroke *)v14 _setInk:v18];

      [(_PKStrokeConcrete *)v14 _setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      if (*(a3 + 8) == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *(a3 + 8);
      }

      [(PKStroke *)v14 _setHidden:*(a3 + 89)];
      v20 = MEMORY[0x1E695EFD0];
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      v46 = *MEMORY[0x1E695EFD0];
      v47 = v21;
      v48 = *(MEMORY[0x1E695EFD0] + 32);
      [(_PKStrokeConcrete *)v14 _setTransform:&v46];
      v22 = *(a3 + 9);
      if (v22)
      {
        v23 = *(v22 + 8);
        v24 = vcvtq_f64_f32(*v23.f32);
        v25 = vcvtq_f64_f32(*(v22 + 16));
        v26 = vcvtq_f64_f32(*(v22 + 24));
        v27 = v20[2];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v23, v23)))))
        {
          v28 = -1;
        }

        else
        {
          v28 = 0;
        }

        v29 = vdupq_n_s64(v28);
        v30 = vbslq_s8(v29, v20[1], v25);
        v46 = vbslq_s8(v29, *v20, v24);
        v47 = v30;
        v48 = vbslq_s8(v29, v27, v26);
        [(_PKStrokeConcrete *)v14 _setTransform:&v46];
      }

      v31 = *(a3 + 3);
      if (v31)
      {
        if ((*(a3 + 92) & 8) != 0)
        {
          v32 = *(a3 + 88) ^ 1;
        }

        else
        {
          v32 = 1;
        }

        v33 = *(a3 + 4);
        v34 = *v31;
        std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](__p, v33);
        if (v33)
        {
          v37 = 0;
          v38 = v33;
          do
          {
            PKConvertToCompressedStrokePoint(v34, &v46, v35, v36);
            v39 = (__p[0] + v37);
            *v39 = v46;
            v35 = v47.i64[0];
            v39[1] = v47;
            v39[2].i32[0] = v48.i32[0];
            v37 += 36;
            v34 += 24;
            --v38;
          }

          while (v38);
        }

        if (*(a3 + 5))
        {
          v40 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(a3 + 5)];
        }

        else
        {
          v40 = [MEMORY[0x1E696AFB0] UUID];
        }

        v41 = v40;
        v42 = [PKStrokePath alloc];
        v43 = [(PKStrokePath *)v42 initWithPoints:__p[0] count:v33 immutableCount:v33 inputType:v32 timestamp:v41 UUID:v19];
        [(PKStroke *)v14 set_strokeData:v43];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    self = v14;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_PKStrokeConcrete)initWithLegacyArchive:(const void *)a3 sortedUUIDs:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  v8 = *(a3 + 11);
  if (v8 && (v9 = *(v8 + 12), [v6 count] >= v9))
  {
    v11 = [(_PKStrokeConcrete *)self init];
    if (v11)
    {
      v12 = [v7 objectAtIndexedSubscript:*(*(a3 + 11) + 12)];
      [v12 getUUIDBytes:&v56 + 4];

      v13 = *(a3 + 11);
      v14 = *(v13 + 8);
      LODWORD(v13) = *(v13 + 16);
      LODWORD(v56) = v14;
      HIDWORD(v57) = v13;
      *&components.timestamp = v56;
      components.location.y = v57;
      [(_PKStrokeConcrete *)v11 set_version:&components];
      v15 = *(a3 + 6);
      if (v15)
      {
        v16 = [v7 objectAtIndexedSubscript:*(v15 + 12)];
        [v16 getUUIDBytes:&components.timestamp + 4];

        v17 = *(a3 + 6);
        v18 = *(v17 + 8);
        LODWORD(v17) = *(v17 + 16);
        LODWORD(components.timestamp) = v18;
        HIDWORD(components.location.y) = v17;
        *&v54.timestamp = *&components.timestamp;
        v54.location.y = components.location.y;
        [(_PKStrokeConcrete *)v11 set_sortID:&v54];
      }

      v19 = [MEMORY[0x1E696AFB0] UUID];
      [(_PKStrokeConcrete *)v11 _setStrokeUUID:v19];

      v20 = *(a3 + 5);
      if (v20)
      {
        v21 = *(v20 + 8);
        v48 = vcvt_hight_f64_f32(v21);
        v49 = vcvtq_f64_f32(*v21.f32);
      }

      else
      {
        v48 = 0u;
        v49 = xmmword_1C801F600;
      }

      v22 = *(a3 + 24);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      *&components.timestamp = vextq_s8(v48, v48, 8uLL);
      *&components.location.y = vextq_s8(v49, v49, 8uLL);
      v24 = CGColorCreate(DeviceRGB, &components.timestamp);
      CGColorSpaceRelease(DeviceRGB);
      CFAutorelease(v24);
      v25 = [PKInk identifierForCommandType:v22 wantsObjectErase:0];
      if ([v25 isEqualToString:@"com.apple.ink.marker"])
      {
        v26 = *(a3 + 7);
        if (v26)
        {
          v27 = (*(v26 + 20) >> 2) & 1;
        }

        else
        {
          v27 = 2;
        }
      }

      else
      {
        v27 = 0;
      }

      v28 = [PKInk alloc];
      v29 = [MEMORY[0x1E69DC888] colorWithCGColor:v24];
      v30 = [(PKInk *)v28 initWithIdentifier:v25 color:v29 version:v27 variant:0];
      [(PKStroke *)v11 _setInk:v30];

      memset(&components, 0, sizeof(components));
      v31 = *(a3 + 1);
      if (v31)
      {
        [(_PKStrokeConcrete *)v11 readPointFromLegacyArchive:v31 deltaFrom:&PKStrokePointDefault];
        components = v54;
      }

      if (*(a3 + 4) && *(a3 + 3))
      {
        memset(&v54, 0, sizeof(v54));
        [_PKStrokeConcrete readPointFromLegacyArchive:v11 deltaFrom:"readPointFromLegacyArchive:deltaFrom:"];
        memset(&v53, 0, sizeof(v53));
        [(_PKStrokeConcrete *)v11 readPointFromLegacyArchive:*(a3 + 3) deltaFrom:&components];
        v32 = [_PKStrokeClipPlane alloc];
        v33 = [(_PKStrokeClipPlane *)v32 initWithOrigin:v54.location.x normal:v54.location.y, -0.0, -0.0];
        [(_PKStrokeConcrete *)v11 _setClipPlane:v33];
      }

      v34 = *(a3 + 9) - *(a3 + 8);
      if (v34)
      {
        v35 = v34 >> 3;
        std::vector<PKCompressedStrokePoint>::vector[abi:ne200100](__p, v34 >> 3);
        v36 = 0;
        v37 = 0;
        if (v35 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = v35;
        }

        timestamp = 0.0;
        do
        {
          v40 = *(*(a3 + 8) + 8 * v37);
          memset(&v54, 0, sizeof(v54));
          [(_PKStrokeConcrete *)v11 readPointFromLegacyArchive:v40 deltaFrom:&components, *&v48, *&v49];
          if (!v37)
          {
            timestamp = v54.timestamp;
          }

          v53 = v54;
          PKCompressStrokePoint(&v53, timestamp, v50);
          v41 = (__p[0] + v36);
          v42 = v50[1];
          *v41 = v50[0];
          v41[1] = v42;
          v41[2].i32[0] = v51;
          ++v37;
          v36 += 36;
        }

        while (v38 != v37);
        v43 = [PKStrokePath alloc];
        v44 = __p[0];
        v45 = [MEMORY[0x1E696AFB0] UUID];
        v46 = [(PKStrokePath *)v43 initWithPoints:v44 count:v35 immutableCount:v35 inputType:1 timestamp:v45 UUID:0.0];
        [(PKStroke *)v11 set_strokeData:v46];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (*(a3 + 2))
      {
        [(_PKStrokeConcrete *)v11 _setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      }

      else
      {
        [(PKStroke *)v11 _setHidden:1];
      }
    }

    self = v11;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_PKStrokeID)readStrokeIDFromArchive:(SEL)a3 withSortedUUIDs:(const StrokeID *)a4
{
  var1 = a4->var1;
  var2 = a4->var2;
  retstr->clock = var1;
  v10 = [a5 objectAtIndexedSubscript:var2];
  [v10 getUUIDBytes:retstr->replicaUUID];

  retstr->subclock = a4->var3;
  return result;
}

- (void)saveStrokeID:(const _PKStrokeID *)a3 toArchive:(StrokeID *)a4 withSortedUUIDs:(id)a5
{
  v12 = a5;
  clock = a3->clock;
  *&a4->var4 |= 1u;
  a4->var1 = clock;
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3->replicaUUID];
  v9 = [v12 indexOfObject:v8];
  var4 = a4->var4;
  *&a4->var4 = var4 | 2;
  subclock = a3->subclock;
  *&a4->var4 = var4 | 6;
  a4->var2 = v9;
  a4->var3 = subclock;
}

- (_PKStrokeID)readV1StrokeIDFromArchive:(SEL)a3 withSortedUUIDs:(const StrokeID *)a4
{
  var1 = a4->var1;
  var2 = a4->var2;
  retstr->clock = var1;
  v10 = [a5 objectAtIndexedSubscript:var2];
  [v10 getUUIDBytes:retstr->replicaUUID];

  retstr->subclock = a4->var3;
  return result;
}

- (void)saveV1StrokeID:(const _PKStrokeID *)a3 toArchive:(StrokeID *)a4 withSortedUUIDs:(id)a5
{
  v12 = a5;
  clock = a3->clock;
  *&a4->var4 |= 1u;
  a4->var1 = clock;
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a3->replicaUUID];
  v9 = [v12 indexOfObject:v8];
  var4 = a4->var4;
  *&a4->var4 = var4 | 2;
  subclock = a3->subclock;
  *&a4->var4 = var4 | 6;
  a4->var2 = v9;
  a4->var3 = subclock;
}

- (CGPoint)readPointFromArchive:(const Point *)a3
{
  v3 = vceqz_s32(vand_s8(vdup_n_s32(LOBYTE(a3[4].v)), 0x200000001));
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  v5 = vbicq_s8(vcvtq_f64_f32(*&a3[2].v), v4);
  v6 = *&v5.i64[1];
  result.x = *v5.i64;
  result.y = v6;
  return result;
}

- (_PKStrokePoint)readPointFromLegacyArchive:(SEL)a3 deltaFrom:(const Point *)a4
{
  retstr->timestamp = 0.0;
  v_low = LOBYTE(a4[9].v);
  v6 = vdup_n_s32(v_low);
  v7 = vceqz_s32(vand_s8(v6, 0x4000000020));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  retstr->location = vbicq_s8(vcvtq_f64_f32(*&a4[7].v), v8);
  v9 = *&a4[6].v;
  v10 = vceqz_s32(vand_s8(v6, 0x100000010));
  v8.i64[0] = v10.i32[0];
  v8.i64[1] = v10.i32[1];
  v9.i32[1] = a4[2];
  *&retstr->radius = vbslq_s8(v8, *&a5->radius, vcvtq_f64_f32(v9));
  v11 = *&a4[3];
  edgeWidth = *&a4[4];
  if ((v_low & 4) == 0)
  {
    edgeWidth = a5->edgeWidth;
  }

  retstr->edgeWidth = edgeWidth;
  retstr->force = 0.0;
  azimuth = v11;
  if ((v_low & 2) == 0)
  {
    azimuth = a5->azimuth;
  }

  retstr->azimuth = azimuth;
  retstr->altitude = 0.0;
  opacity = *&a4[5];
  if ((v_low & 8) == 0)
  {
    opacity = a5->opacity;
  }

  retstr->opacity = opacity;
  retstr->radius2 = 0.0;
  retstr->threshold = 0.0;
  return self;
}

- (unsigned)saveToV1Archive:(void *)a3 sortedUUIDs:(id)a4 inks:(id)a5 withPathData:(BOOL)a6 transient:(BOOL)a7
{
  v8 = a6;
  v60 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  drawingV1::Stroke::makeStrokeID(a3);
  v14 = *(a3 + 6);
  [(_PKStrokeConcrete *)self _sortID];
  [(_PKStrokeConcrete *)self saveV1StrokeID:&v59 toArchive:v14 withSortedUUIDs:v12];
  if (!a7)
  {
    *&v59.a = 0uLL;
    v15 = [(_PKStrokeConcrete *)self _strokeUUID];
    [v15 getUUIDBytes:&v59];

    v16 = *(a3 + 7);
    if (!v16)
    {
      operator new();
    }

    PB::Data::assign(v16, &v59, &v59.c);
  }

  drawingV1::Stroke::makeVersion(a3);
  v17 = *(a3 + 10);
  [(_PKStrokeConcrete *)self _version];
  [(_PKStrokeConcrete *)self saveV1StrokeID:&v59 toArchive:v17 withSortedUUIDs:v12];
  v18 = [(_PKStrokeConcrete *)self ink];
  v19 = [v13 indexOfObject:v18];

  *(a3 + 92) |= 1u;
  *(a3 + 2) = v19;
  [(PKStroke *)self timestamp];
  *(a3 + 92) |= 4u;
  *(a3 + 8) = v20;
  v21 = [(PKStroke *)self _isHidden];
  *(a3 + 92) |= 0x10u;
  *(a3 + 89) = v21;
  if (![(PKStroke *)self _isHidden])
  {
    if (v8)
    {
      v22 = [(PKStroke *)self _pointsCount];
      *(a3 + 92) |= 2u;
      *(a3 + 4) = v22;
      v23 = malloc_type_malloc(24 * v22, 0x1000040504FFAC1uLL);
      v24 = v23;
      if (v22)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          v27 = [(PKStroke *)self _strokeData];
          v28 = v27;
          if (v27)
          {
            [v27 _compressedPointAt:v25];
          }

          else
          {
            memset(&v59, 0, 36);
          }

          PKConvertToCompressedStrokePointV1(&v59, &t1);
          *v26 = *&t1.a;
          *(v26 + 2) = *&t1.c;

          ++v25;
          v26 += 24;
        }

        while (v22 != v25);
      }

      v29 = *(a3 + 3);
      if (!v29)
      {
        operator new();
      }

      PB::Data::assign(v29, v24, &v24[24 * v22]);
      free(v24);
      v30 = [(PKStroke *)self _strokeDataUUID];
      v31 = v30;
      if (v30)
      {
        *&v59.a = 0uLL;
        [v30 getUUIDBytes:&v59];
        v32 = *(a3 + 5);
        if (!v32)
        {
          operator new();
        }

        PB::Data::assign(v32, &v59, &v59.c);
      }
    }

    [(PKStroke *)self _bounds];
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    if (!CGRectIsNull(v61))
    {
      drawingV1::Stroke::makeBounds(a3);
      v37 = *(a3 + 1);
      v38 = x;
      v39 = *(v37 + 24);
      v40 = y;
      v41 = width;
      *(v37 + 16) = v40;
      *(v37 + 20) = v41;
      v42 = height;
      *(v37 + 24) = v39 | 0xF;
      *(v37 + 8) = v42;
      *(v37 + 12) = v38;
    }

    memset(&v59, 0, sizeof(v59));
    [(_PKStrokeConcrete *)self _transform];
    t1 = v59;
    v43 = *(MEMORY[0x1E695EFD0] + 16);
    *&v57.a = *MEMORY[0x1E695EFD0];
    *&v57.c = v43;
    *&v57.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (!CGAffineTransformEqualToTransform(&t1, &v57))
    {
      drawingV1::Stroke::makeTransform(a3);
      v44 = *(a3 + 9);
      a = v59.a;
      *(v44 + 32) |= 1u;
      *(v44 + 8) = a;
      v46 = *(a3 + 9);
      b = v59.b;
      *(v46 + 32) |= 2u;
      *(v46 + 12) = b;
      v48 = *(a3 + 9);
      c = v59.c;
      *(v48 + 32) |= 4u;
      *(v48 + 16) = c;
      v50 = *(a3 + 9);
      d = v59.d;
      *(v50 + 32) |= 8u;
      *(v50 + 20) = d;
      v52 = *(a3 + 9);
      tx = v59.tx;
      *(v52 + 32) |= 0x10u;
      *(v52 + 24) = tx;
      v54 = *(a3 + 9);
      ty = v59.ty;
      *(v54 + 32) |= 0x20u;
      *(v54 + 28) = ty;
    }

    if (![(PKStroke *)self _inputType])
    {
      *(a3 + 92) |= 8u;
      *(a3 + 88) = 1;
    }
  }

  return 1;
}

@end