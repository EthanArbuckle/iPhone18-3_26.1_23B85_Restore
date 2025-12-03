@interface _PKStrokeConcrete
+ (id)decodeRenameableUUIDFromData:(const char *)data transientArchiveDictionary:(id)dictionary;
+ (void)encodeUUID:(id)d toData:(void *)data;
- ($751B26FBF8AE17756294EB075CA14786)_flags;
- (BOOL)hasSubstrokes;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)_inkTransform;
- (CGAffineTransform)_transform;
- (CGPoint)_anchorPointForTexture;
- (CGPoint)readPointFromArchive:(const Point *)archive;
- (CGRect)renderBounds;
- (_PKStrokeConcrete)init;
- (_PKStrokeConcrete)initWithArchive:(const void *)archive error:(id *)error;
- (_PKStrokeConcrete)initWithArchive:(const void *)archive sortedUUIDs:(id)ds inks:(id)inks parent:(id)parent isHidden:(BOOL)hidden transientArchiveDictionary:(id)dictionary;
- (_PKStrokeConcrete)initWithData:(id)data error:(id *)error;
- (_PKStrokeConcrete)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes;
- (_PKStrokeConcrete)initWithData:(id)data id:(id)id sortID:(_PKStrokeID *)d flags:(id)flags version:(_PKStrokeID *)version ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)self0 substrokesVersion:(_PKStrokeID *)self1;
- (_PKStrokeConcrete)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask randomSeed:(unsigned int)seed;
- (_PKStrokeConcrete)initWithLegacyArchive:(const void *)archive sortedUUIDs:(id)ds;
- (_PKStrokeConcrete)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_PKStrokeID *)version ink:(id)ink transform:(CGAffineTransform *)transform;
- (_PKStrokeConcrete)initWithV1Archive:(const void *)archive sortedUUIDs:(id)ds inks:(id)inks;
- (_PKStrokeID)readStrokeIDFromArchive:(SEL)archive withSortedUUIDs:(const StrokeID *)ds;
- (_PKStrokeID)readV1StrokeIDFromArchive:(SEL)archive withSortedUUIDs:(const StrokeID *)ds;
- (_PKStrokePoint)readPointFromLegacyArchive:(SEL)archive deltaFrom:(const Point *)from;
- (id).cxx_construct;
- (id)_copyWithNewParticleOffset:(double)offset secondaryParticleOffset:(double)particleOffset;
- (id)_dataInUnknownFields;
- (id)_mergeUnparentedWithStroke:(id)stroke inDrawing:(id)drawing;
- (id)_mergeWithStroke:(id)stroke inDrawing:(id)drawing;
- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing;
- (id)_strokeByAppendingTransform:(CGAffineTransform *)transform;
- (id)_strokeWithUUID:(id)d dataUUID:(id)iD;
- (id)_updateStroke:(id)stroke inDrawing:(id)drawing;
- (id)_updateWithParent:(id)parent inDrawing:(id)drawing;
- (id)copyForMutation;
- (id)copyForSubstroke;
- (id)copyWithNewAnchorPointForTexture:(CGPoint)texture;
- (id)dataRepresentation;
- (id)deltaTo:(id)to;
- (id)mergeArrayOfStrokes:(id)strokes with:(id)with inDrawing:(id)drawing;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)parentStrokeForInsertionInDrawing:(id)drawing;
- (id)sliceIdentifierForTStart:(double)start tEnd:(double)end;
- (id)strokeApplying:(id)applying;
- (int64_t)compareToStroke:(id)stroke;
- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds inks:(id)inks withPathData:(BOOL)data parent:(id)parent transient:(BOOL)transient;
- (unsigned)saveToV1Archive:(void *)archive sortedUUIDs:(id)ds inks:(id)inks withPathData:(BOOL)data transient:(BOOL)transient;
- (void)_invalidateBounds;
- (void)_setBounds:(CGRect)bounds;
- (void)_setInkTransform:(CGAffineTransform *)transform;
- (void)_setTransform:(CGAffineTransform *)transform;
- (void)didUpdateInDrawing:(id)drawing;
- (void)didUpdateSubstrokesInDrawing:(id)drawing;
- (void)saveInksTo:(id)to;
- (void)saveStrokeID:(const _PKStrokeID *)d toArchive:(StrokeID *)archive withSortedUUIDs:(id)ds;
- (void)saveToArchive:(void *)archive;
- (void)saveUUIDsTo:(id)to;
- (void)saveV1StrokeID:(const _PKStrokeID *)d toArchive:(StrokeID *)archive withSortedUUIDs:(id)ds;
- (void)setInk:(id)ink;
- (void)set_sortID:(_PKStrokeID *)d;
- (void)set_substrokesVersion:(_PKStrokeID *)version;
- (void)set_version:(_PKStrokeID *)set_version;
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

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v13 = *(v2 + 9);
  *(v2 + 9) = uUID;

  return v2;
}

- (_PKStrokeConcrete)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v9 = &unk_1F476AEE0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  if (PKProtobufUtilitiesParseArchiveFromNSDataWithHeader<drawing::StrokeDelta>(&v9, dataCopy, error))
  {
    self = [(_PKStrokeConcrete *)self initWithArchive:&v9 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  drawing::StrokeDelta::~StrokeDelta(&v9);

  return selfCopy;
}

- (_PKStrokeConcrete)initWithArchive:(const void *)archive error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{(*(archive + 3) - *(archive + 2)) >> 4, error}];
  v7 = *(archive + 3) - *(archive + 2);
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
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:*(*(archive + 2) + v8)];
      [v6 addObject:v11];

      v8 += 16;
      --v10;
    }

    while (v10);
  }

  v12 = [[PKInk alloc] initWithArchive:*(archive + 1)];
  v13 = v12;
  v14 = *(archive + 5);
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

- (void)saveToArchive:(void *)archive
{
  v22 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = MEMORY[0x1E695DFB8];
  v7 = [(_PKStrokeConcrete *)self ink];
  v8 = [v6 orderedSetWithObject:v7];

  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _sortID];
  v10 = [v9 initWithUUIDBytes:v20 + 4];
  [orderedSet addObject:v10];

  v11 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _version];
  v12 = [v11 initWithUUIDBytes:v20 + 4];
  [orderedSet addObject:v12];

  drawing::StrokeDelta::makeInk(archive);
  v13 = [(_PKStrokeConcrete *)self ink];
  [v13 saveToArchive:*(archive + 1)];

  drawing::StrokeDelta::makeStroke(archive);
  [(_PKStrokeConcrete *)self saveToArchive:*(archive + 5) sortedUUIDs:orderedSet inks:v8 withPathData:1 transient:0];
  v14 = [orderedSet count];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = [orderedSet objectAtIndex:v16];
      v18 = *(archive + 3);
      if (v18 >= *(archive + 4))
      {
        v19 = std::vector<PB::Data>::__emplace_back_slow_path<>(archive + 16);
      }

      else
      {
        *v18 = 0;
        v18[1] = 0;
        v19 = (v18 + 2);
      }

      *(archive + 3) = v19;
      v20[0] = 0;
      v20[1] = 0;
      [v17 getUUIDBytes:v20];
      PB::Data::assign((*(archive + 2) + v15), v20, v21);

      ++v16;
      v15 += 16;
    }

    while (v14 != v16);
  }
}

- (id)deltaTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  _strokeUUID = [(_PKStrokeConcrete *)self _strokeUUID];
  _strokeUUID2 = [toCopy _strokeUUID];
  v7 = [_strokeUUID isEqual:_strokeUUID2];

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  [(_PKStrokeConcrete *)self _version];
  if (toCopy)
  {
    [toCopy _version];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v8 = _PKStrokeIDCompare(&v16, &v15);
  if (!v8)
  {
    _strokeData = [(PKStroke *)self _strokeData];
    _strokeData2 = [toCopy _strokeData];
    v13 = [_strokeData deltaTo:_strokeData2];

    if (v13)
    {
      v9 = objc_alloc_init(PKStrokeDelta);
      [(PKStrokeDelta *)v9 setDeltaStrokeData:v13];
      _strokeUUID3 = [(_PKStrokeConcrete *)self _strokeUUID];
      [(PKStrokeDelta *)v9 set_strokeUUID:_strokeUUID3];
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
    [(PKStrokeDelta *)v9 setDeltaStroke:toCopy];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (id)strokeApplying:(id)applying
{
  applyingCopy = applying;
  _strokeUUID = [(_PKStrokeConcrete *)self _strokeUUID];
  _strokeUUID2 = [applyingCopy _strokeUUID];
  v7 = [_strokeUUID isEqual:_strokeUUID2];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    selfCopy = self;
    goto LABEL_8;
  }

  deltaStroke = [applyingCopy deltaStroke];

  if (!deltaStroke)
  {
    deltaStrokeData = [applyingCopy deltaStrokeData];

    if (deltaStrokeData)
    {
      _strokeData = [(PKStroke *)self _strokeData];
      deltaStrokeData2 = [applyingCopy deltaStrokeData];
      v13 = [_strokeData dataApplying:deltaStrokeData2];

      if (v13)
      {
        copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
        [(PKStroke *)copyForMutation set_strokeData:v13];

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  selfCopy = [applyingCopy deltaStroke];
LABEL_8:
  copyForMutation = selfCopy;
LABEL_9:

  return copyForMutation;
}

- (_PKStrokeConcrete)initWithData:(id)data id:(id)id flags:(id)flags ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)substrokes
{
  v10 = *(&flags.var0.var1 + 1);
  var1 = flags.var0.var1;
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  idCopy = id;
  v16 = v10;
  transformCopy = transform;
  v32 = 0uLL;
  pK_zero = [MEMORY[0x1E696AFB0] PK_zero];
  [pK_zero getUUIDBytes:&v32];

  v30 = v32;
  v27 = v32;
  v19 = *(ink + 1);
  v22[0] = *ink;
  v22[1] = v19;
  v22[2] = *(ink + 2);
  v28 = 0;
  v29 = 0;
  v31 = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = v32;
  v20 = [(_PKStrokeConcrete *)self initWithData:dataCopy id:idCopy sortID:&v29 flags:var1 version:&v26 ink:v16 transform:v22 substrokes:transformCopy substrokesVersion:&v23];

  return v20;
}

- (_PKStrokeConcrete)initWithData:(id)data id:(id)id sortID:(_PKStrokeID *)d flags:(id)flags version:(_PKStrokeID *)version ink:(id)ink transform:(CGAffineTransform *)transform substrokes:(id)self0 substrokesVersion:(_PKStrokeID *)self1
{
  v12 = *(&flags.var0.var1 + 1);
  var1 = flags.var0.var1;
  dataCopy = data;
  idCopy = id;
  versionCopy = version;
  transformCopy = transform;
  v36.receiver = self;
  v36.super_class = _PKStrokeConcrete;
  v17 = [(PKStroke *)&v36 init];
  v19 = *(MEMORY[0x1E695F050] + 16);
  *(v17 + 24) = *MEMORY[0x1E695F050];
  *(v17 + 40) = v19;
  objc_storeStrong(v17 + 7, version);
  *(v17 + 8) = var1;
  objc_storeStrong(v17 + 9, id);
  objc_storeStrong(v17 + 10, data);
  v20 = *(substrokes + 2);
  *(v17 + 88) = *substrokes;
  *(v17 + 13) = v20;
  objc_storeStrong(v17 + 14, transform);
  v21 = *v12;
  *(v17 + 41) = *(v12 + 2);
  *(v17 + 312) = v21;
  v22 = *&d->clock;
  *(v17 + 38) = *&d->replicaUUID[12];
  *(v17 + 18) = v22;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*ink, *ink), vceqq_f64(*(ink + 1), *(ink + 1)))))))
  {
    ink = MEMORY[0x1E695EFD0];
  }

  v23 = *ink;
  v24 = *(ink + 2);
  *(v17 + 11) = *(ink + 1);
  *(v17 + 12) = v24;
  *(v17 + 10) = v23;
  behavior = [(_PKStrokeID *)versionCopy behavior];
  v26 = behavior;
  if (behavior)
  {
    [behavior inkTransform];
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

- (_PKStrokeConcrete)initWithStroke:(id)stroke hidden:(BOOL)hidden version:(_PKStrokeID *)version ink:(id)ink transform:(CGAffineTransform *)transform
{
  hiddenCopy = hidden;
  v41[3] = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  inkCopy = ink;
  _flags = [strokeCopy _flags];
  _strokeData = [strokeCopy _strokeData];
  _strokeUUID = [strokeCopy _strokeUUID];
  if (strokeCopy)
  {
    [strokeCopy _sortID];
  }

  else
  {
    memset(v41, 0, 24);
  }

  v39 = *&version->clock;
  v40 = *&version->replicaUUID[12];
  v17 = *&transform->c;
  v35 = *&transform->a;
  v36 = v17;
  v37 = *&transform->tx;
  _substrokes = [strokeCopy _substrokes];
  if (strokeCopy)
  {
    [strokeCopy _substrokesVersion];
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  v19 = [(_PKStrokeConcrete *)self initWithData:_strokeData id:_strokeUUID sortID:v41 flags:_flags | hiddenCopy version:&v39 ink:inkCopy transform:&v35 substrokes:_substrokes substrokesVersion:v38];

  _clipPlane = [strokeCopy _clipPlane];
  [(_PKStrokeConcrete *)v19 _setClipPlane:_clipPlane];

  _strokeMask = [strokeCopy _strokeMask];
  [(_PKStrokeConcrete *)v19 _setStrokeMask:_strokeMask];

  _renderMask = [strokeCopy _renderMask];
  [(PKStroke *)v19 _setRenderMask:_renderMask];

  _groupID = [strokeCopy _groupID];
  [(_PKStrokeConcrete *)v19 _setGroupID:_groupID];

  _renderGroupID = [strokeCopy _renderGroupID];
  [(_PKStrokeConcrete *)v19 _setRenderGroupID:_renderGroupID];

  -[_PKStrokeConcrete _setShapeType:](v19, "_setShapeType:", [strokeCopy _shapeType]);
  if (strokeCopy)
  {
    [strokeCopy _inkTransform];
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
  [strokeCopy _anchorPointForTexture];
  v19->_inkTransform.ty = v27;
  v19->_anchorPointForTexture.x = v28;
  [strokeCopy _particleOffset];
  v19->_anchorPointForTexture.y = v29;
  [strokeCopy _secondaryParticleOffset];
  v19->_particleOffset = v30;
  v32 = strokeCopy[1];
  v31 = strokeCopy[2];
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

- (_PKStrokeConcrete)initWithInk:(id)ink strokePath:(id)path transform:(CGAffineTransform *)transform mask:(id)mask randomSeed:(unsigned int)seed
{
  inkCopy = ink;
  pathCopy = path;
  maskCopy = mask;
  v31.receiver = self;
  v31.super_class = _PKStrokeConcrete;
  v16 = [(PKStroke *)&v31 init];
  objc_storeStrong(v16 + 7, ink);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v18 = *(v16 + 9);
  *(v16 + 9) = uUID;

  objc_storeStrong(v16 + 10, path);
  v19 = *(MEMORY[0x1E695F050] + 16);
  *(v16 + 24) = *MEMORY[0x1E695F050];
  *(v16 + 40) = v19;
  v20 = *(v16 + 14);
  *(v16 + 14) = MEMORY[0x1E695E0F0];

  v22 = *&transform->c;
  v21 = *&transform->tx;
  *(v16 + 10) = *&transform->a;
  *(v16 + 11) = v22;
  *(v16 + 12) = v21;
  behavior = [inkCopy behavior];
  v24 = behavior;
  if (behavior)
  {
    [behavior inkTransform];
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

  if (maskCopy)
  {
    if (([maskCopy isEmpty] & 1) == 0)
    {
      [maskCopy bounds];
      if (!CGRectIsEmpty(v32))
      {
        v25 = [[PKStrokeMask alloc] initWithBezierPath:maskCopy stroke:v16];
        v26 = *(v16 + 16);
        *(v16 + 16) = v25;
      }
    }
  }

  *(v16 + 8) = *(v16 + 8) & 0xFFFFFFC00000001FLL | (32 * seed) | 0x2000000000;

  return v16;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [PKMutableStroke alloc];
  _isHidden = [(PKStroke *)self _isHidden];
  [(_PKStrokeConcrete *)self _version];
  v6 = [(_PKStrokeConcrete *)self ink];
  [(PKStroke *)self transform];
  v7 = [(_PKStrokeConcrete *)v4 initWithStroke:self hidden:_isHidden version:v10 ink:v6 transform:&v9];

  return v7;
}

- (id)copyForMutation
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [_PKStrokeConcrete alloc];
  _isHidden = [(PKStroke *)self _isHidden];
  [(_PKStrokeConcrete *)self _version];
  v5 = [(_PKStrokeConcrete *)self ink];
  [(PKStroke *)self transform];
  v6 = [(_PKStrokeConcrete *)v3 initWithStroke:self hidden:_isHidden version:v9 ink:v5 transform:&v8];

  return v6;
}

- (id)copyForSubstroke
{
  copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
  [copyForMutation _setFlags:{-[_PKStrokeConcrete _flags](self, "_flags") & 0x1FFFFFFFE0 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x2000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x10000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x80000000000 | -[_PKStrokeConcrete _flags](self, "_flags") & 0x100000000000 | 0xE}];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [copyForMutation _setStrokeUUID:uUID];

  return copyForMutation;
}

- (id)parentStrokeForInsertionInDrawing:(id)drawing
{
  v22 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  v21 = 0uLL;
  replicaUUID = [drawingCopy replicaUUID];
  [replicaUUID getUUIDBytes:&v21];

  v6 = [_PKStrokeConcrete alloc];
  _strokeData = [(PKStroke *)self _strokeData];
  uUID = [MEMORY[0x1E696AFB0] UUID];
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
  v11 = [(_PKStrokeConcrete *)v6 initWithData:_strokeData id:uUID sortID:v20 flags:0 version:&v17 ink:v9 transform:v13 substrokes:MEMORY[0x1E695E0F0] substrokesVersion:&v14];

  return v11;
}

- (id)sliceIdentifierForTStart:(double)start tEnd:(double)end
{
  v11[3] = *MEMORY[0x1E69E9840];
  v7 = [PKStrokeProviderSliceIdentifierConcrete alloc];
  _strokeUUID = [(_PKStrokeConcrete *)self _strokeUUID];
  [(_PKStrokeConcrete *)self _version];
  v9 = [(PKStrokeProviderSliceIdentifierConcrete *)v7 initWithUUID:_strokeUUID version:v11 tStart:start tEnd:end];

  return v9;
}

- (void)setInk:(id)ink
{
  inkCopy = ink;
  objc_storeStrong(&self->_ink, ink);
  behavior = [inkCopy behavior];
  v7 = behavior;
  if (behavior)
  {
    [behavior inkTransform];
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

- (void)_setTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_shapeType = *&transform->a;
  *&self->_transform.b = v4;
  *&self->_transform.d = v3;
  [(_PKStrokeConcrete *)self _invalidateBounds];
}

- (void)_setInkTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_transform.ty = *&transform->a;
  *&self->_inkTransform.b = v4;
  *&self->_inkTransform.d = v3;
  [(_PKStrokeConcrete *)self _invalidateBounds];
}

- (id)_strokeByAppendingTransform:(CGAffineTransform *)transform
{
  v5 = *&transform->c;
  *&v27.a = *&transform->a;
  *&v27.c = v5;
  *&v27.tx = *&transform->tx;
  if (CGAffineTransformIsIdentity(&v27))
  {
    copyForMutation = [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
    [(_PKStrokeConcrete *)self _transform];
    v7 = *&transform->c;
    *&v25.a = *&transform->a;
    *&v25.c = v7;
    *&v25.tx = *&transform->tx;
    CGAffineTransformConcat(&v27, &t1, &v25);
    v9 = *&v27.c;
    v8 = *&v27.tx;
    copyForMutation[10] = *&v27.a;
    copyForMutation[11] = v9;
    copyForMutation[12] = v8;
    selfCopy = self;
    os_unfair_lock_lock(&bounds_lock);
    x = selfCopy->_cachedBounds.origin.x;
    y = selfCopy->_cachedBounds.origin.y;
    width = selfCopy->_cachedBounds.size.width;
    height = selfCopy->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (CGRectIsNull(v29) || (v15 = *&transform->c, *&v27.a = *&transform->a, *&v27.c = v15, *&v27.tx = *&transform->tx, !CGAffineTransformIsRectilinear()))
    {
      [copyForMutation _invalidateBounds];
    }

    else
    {
      v16 = *&transform->c;
      *&v27.a = *&transform->a;
      *&v27.c = v16;
      *&v27.tx = *&transform->tx;
      v17 = x;
      *&v16 = y;
      v18 = width;
      v19 = height;
      v30 = CGRectApplyAffineTransform(*(&v16 - 8), &v27);
      v20 = v30.origin.x;
      v21 = v30.origin.y;
      v22 = v30.size.width;
      v23 = v30.size.height;
      copyForMutation = copyForMutation;
      os_unfair_lock_lock(&bounds_lock);
      *(copyForMutation + 3) = v20;
      *(copyForMutation + 4) = v21;
      *(copyForMutation + 5) = v22;
      *(copyForMutation + 6) = v23;

      os_unfair_lock_unlock(&bounds_lock);
    }
  }

  return copyForMutation;
}

- (id)_strokeWithUUID:(id)d dataUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
  [copyForMutation _setStrokeUUID:dCopy];
  path = [(_PKStrokeConcrete *)self path];
  v10 = [path copyWithStrokeDataUUID:iDCopy];

  [copyForMutation setPath:v10];
  selfCopy = self;
  os_unfair_lock_lock(&bounds_lock);
  x = selfCopy->_cachedBounds.origin.x;
  y = selfCopy->_cachedBounds.origin.y;
  width = selfCopy->_cachedBounds.size.width;
  height = selfCopy->_cachedBounds.size.height;

  os_unfair_lock_unlock(&bounds_lock);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  if (!CGRectIsNull(v19))
  {
    v16 = copyForMutation;
    os_unfair_lock_lock(&bounds_lock);
    v16[3] = x;
    v16[4] = y;
    v16[5] = width;
    v16[6] = height;

    os_unfair_lock_unlock(&bounds_lock);
  }

  return copyForMutation;
}

- (id)copyWithNewAnchorPointForTexture:(CGPoint)texture
{
  y = texture.y;
  x = texture.x;
  [(_PKStrokeConcrete *)self _anchorPointForTexture];
  if (v7 == x && v6 == y)
  {

    return [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
    copyForMutation[32] = x;
    copyForMutation[33] = y;
    selfCopy = self;
    os_unfair_lock_lock(&bounds_lock);
    v11 = selfCopy->_cachedBounds.origin.x;
    v12 = selfCopy->_cachedBounds.origin.y;
    width = selfCopy->_cachedBounds.size.width;
    height = selfCopy->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v17.origin.x = v11;
    v17.origin.y = v12;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsNull(v17))
    {
      copyForMutation = copyForMutation;
      os_unfair_lock_lock(&bounds_lock);
      copyForMutation[3] = v11;
      copyForMutation[4] = v12;
      copyForMutation[5] = width;
      copyForMutation[6] = height;

      os_unfair_lock_unlock(&bounds_lock);
    }

    return copyForMutation;
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

- (id)_copyWithNewParticleOffset:(double)offset secondaryParticleOffset:(double)particleOffset
{
  [(_PKStrokeConcrete *)self _particleOffset];
  if (v7 == offset && ([(_PKStrokeConcrete *)self _secondaryParticleOffset], v8 == particleOffset))
  {

    return [(_PKStrokeConcrete *)self copy];
  }

  else
  {
    copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
    copyForMutation[34] = offset;
    copyForMutation[35] = particleOffset;
    selfCopy = self;
    os_unfair_lock_lock(&bounds_lock);
    x = selfCopy->_cachedBounds.origin.x;
    y = selfCopy->_cachedBounds.origin.y;
    width = selfCopy->_cachedBounds.size.width;
    height = selfCopy->_cachedBounds.size.height;

    os_unfair_lock_unlock(&bounds_lock);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    if (!CGRectIsNull(v17))
    {
      copyForMutation = copyForMutation;
      os_unfair_lock_lock(&bounds_lock);
      copyForMutation[3] = x;
      copyForMutation[4] = y;
      copyForMutation[5] = width;
      copyForMutation[6] = height;

      os_unfair_lock_unlock(&bounds_lock);
    }

    return copyForMutation;
  }
}

- (BOOL)hasSubstrokes
{
  _substrokes = [(_PKStrokeConcrete *)self _substrokes];
  v3 = [_substrokes count] != 0;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  v19 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = *(&self->_flags.var0.allFlags + 1);
      _strokeUUID = [(_PKStrokeConcrete *)equalCopy _strokeUUID];
      if ([v5 isEqual:_strokeUUID])
      {
        *&t1.a = *&self->_sortID.replicaUUID[12];
        t1.c = *&self->_version.replicaUUID[4];
        if (equalCopy)
        {
          [(_PKStrokeConcrete *)equalCopy _version];
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
              _isHidden = [(PKStroke *)self _isHidden];
              if (_isHidden != [(PKStroke *)equalCopy _isHidden])
              {
                goto LABEL_12;
              }

              v12 = [(_PKStrokeConcrete *)self ink];
              v13 = [(_PKStrokeConcrete *)equalCopy ink];
              if (([v12 isEqualUnweightedInk:v13] & 1) == 0)
              {

                goto LABEL_12;
              }

              [(_PKStrokeConcrete *)self _transform];
              if (equalCopy)
              {
                [(_PKStrokeConcrete *)equalCopy _transform];
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
            _strokeDataUUID = [(PKStroke *)equalCopy _strokeDataUUID];
            v8 = [v15 isEqual:_strokeDataUUID];

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

- (void)didUpdateInDrawing:(id)drawing
{
  v10 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  [(_PKStrokeConcrete *)self _version];
  replicaUUID = [drawingCopy replicaUUID];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:replicaUUID];
  v6 = v8;
  v7 = v9;
  [(_PKStrokeConcrete *)self set_version:&v6];
}

- (void)didUpdateSubstrokesInDrawing:(id)drawing
{
  v10 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  [(_PKStrokeConcrete *)self _substrokesVersion];
  replicaUUID = [drawingCopy replicaUUID];
  [PKDrawingConcrete newStrokeIDGreaterThan:&v6 forUUID:replicaUUID];
  v6 = v8;
  v7 = v9;
  [(_PKStrokeConcrete *)self set_substrokesVersion:&v6];
}

- (id)_newStrokeWithSubstrokes:(id)substrokes inDrawing:(id)drawing
{
  substrokesCopy = substrokes;
  drawingCopy = drawing;
  copyForMutation = [(_PKStrokeConcrete *)self copyForMutation];
  [copyForMutation _setSubstrokes:substrokesCopy];
  [copyForMutation didUpdateSubstrokesInDrawing:drawingCopy];

  return copyForMutation;
}

- (CGRect)renderBounds
{
  selfCopy = self;
  os_unfair_lock_lock(&bounds_lock);
  x = selfCopy->_cachedBounds.origin.x;
  y = selfCopy->_cachedBounds.origin.y;
  width = selfCopy->_cachedBounds.size.width;
  height = selfCopy->_cachedBounds.size.height;

  os_unfair_lock_unlock(&bounds_lock);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIsNull(v16))
  {
    [(PKStroke *)selfCopy _calculateBounds];
    x = v7;
    y = v8;
    width = v9;
    height = v10;
    v11 = selfCopy;
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

- (void)_setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  os_unfair_lock_lock(&bounds_lock);
  selfCopy->_cachedBounds.origin.x = x;
  selfCopy->_cachedBounds.origin.y = y;
  selfCopy->_cachedBounds.size.width = width;
  selfCopy->_cachedBounds.size.height = height;

  os_unfair_lock_unlock(&bounds_lock);
}

- (void)_invalidateBounds
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  v4 = *MEMORY[0x1E695F050];
  selfCopy = self;
  os_unfair_lock_lock(&bounds_lock);
  selfCopy->_cachedBounds.origin = v4;
  selfCopy->_cachedBounds.size = v3;

  os_unfair_lock_unlock(&bounds_lock);
}

- (int64_t)compareToStroke:(id)stroke
{
  v9 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  [(_PKStrokeConcrete *)self _sortID];
  if (strokeCopy)
  {
    [strokeCopy _sortID];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v5 = _PKStrokeIDCompare(&v8, &v7);

  return v5;
}

- (id)_updateStroke:(id)stroke inDrawing:(id)drawing
{
  strokeCopy = stroke;
  drawingCopy = drawing;
  v22 = 0;
  v8 = strokeCopy[2](strokeCopy, self, &v22);
  v9 = v8;
  if ((v22 & 1) == 0 && [v8 hasSubstrokes])
  {
    v10 = [v9 _substrokesInDrawing:drawingCopy];
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
          v17 = [v15 _updateStroke:strokeCopy inDrawing:drawingCopy];
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
        copyForMutation = [v9 copyForMutation];

        [copyForMutation set_substrokes:v12];
        v9 = copyForMutation;
      }
    }

LABEL_18:
  }

  return v9;
}

- (id)mergeArrayOfStrokes:(id)strokes with:(id)with inDrawing:(id)drawing
{
  strokesCopy = strokes;
  withCopy = with;
  drawingCopy = drawing;
  v10 = [withCopy count];
  if (v10 == [strokesCopy count])
  {
    v11 = [strokesCopy count];
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [strokesCopy objectAtIndexedSubscript:v13];
        v15 = [withCopy objectAtIndexedSubscript:v13];
        v16 = [v14 _mergeWithStroke:v15 inDrawing:drawingCopy];

        v17 = [strokesCopy objectAtIndexedSubscript:v13];

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
          [v18 replaceObjectsInRange:0 withObjectsFromArray:0 range:{strokesCopy, 0, v13}];
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
      v22 = strokesCopy;
    }

    v21 = v22;
  }

  else
  {
    v19 = [withCopy count];
    if (v19 >= [strokesCopy count])
    {
      v20 = strokesCopy;
    }

    else
    {
      v20 = withCopy;
    }

    v21 = v20;
  }

  return v21;
}

- (id)_mergeWithStroke:(id)stroke inDrawing:(id)drawing
{
  drawingCopy = drawing;
  v7 = [(_PKStrokeConcrete *)self _mergeUnparentedWithStroke:stroke inDrawing:drawingCopy];
  v8 = [v7 _updateWithParent:0 inDrawing:drawingCopy];

  return v8;
}

- (id)_updateWithParent:(id)parent inDrawing:(id)drawing
{
  parentCopy = parent;
  drawingCopy = drawing;
  selfCopy = self;
  v9 = selfCopy;
  v29 = parentCopy;
  if (parentCopy)
  {
    if (([(_PKStrokeConcrete *)selfCopy _flags]& 8) != 0)
    {
      if (v9)
      {
        [v9 _transform];
      }

      else
      {
        memset(&t1, 0, sizeof(t1));
      }

      [parentCopy _transform];
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        if (([v9 _isNewCopy] & 1) == 0)
        {
          copyForMutation = [v9 copyForMutation];

          v9 = copyForMutation;
          [copyForMutation _setIsNewCopy:1];
        }

        [parentCopy _transform];
        t1 = v30;
        [v9 _setTransform:&t1];
      }
    }

    if (([v9 _flags] & 4) != 0)
    {
      v11 = [parentCopy ink];
      v12 = [v9 ink];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        if (([v9 _isNewCopy] & 1) == 0)
        {
          copyForMutation2 = [v9 copyForMutation];

          v9 = copyForMutation2;
          [copyForMutation2 _setIsNewCopy:1];
        }

        v15 = [parentCopy ink];
        [v9 _setInk:v15];
      }
    }
  }

  v16 = [v9 _substrokesInDrawing:drawingCopy];
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
    v22 = [v21 _updateWithParent:v9 inDrawing:drawingCopy];

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
    copyForMutation3 = [v9 copyForMutation];

    v9 = copyForMutation3;
  }

  [v9 set_substrokes:v20];
LABEL_31:
  [v9 _setIsNewCopy:0];
  v27 = v9;

  return v9;
}

- (id)_mergeUnparentedWithStroke:(id)stroke inDrawing:(id)drawing
{
  v37 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  drawingCopy = drawing;
  selfCopy = self;
  _strokeUUID = [(_PKStrokeConcrete *)selfCopy _strokeUUID];
  _strokeUUID2 = [(_PKStrokeConcrete *)strokeCopy _strokeUUID];
  v11 = [_strokeUUID PK_compare:_strokeUUID2];

  copyForMutation = selfCopy;
  if (v11 == -1)
  {
    copyForMutation = [(_PKStrokeConcrete *)selfCopy copyForMutation];

    _strokeUUID3 = [(_PKStrokeConcrete *)strokeCopy _strokeUUID];
    [copyForMutation _setStrokeUUID:_strokeUUID3];
  }

  [(_PKStrokeConcrete *)selfCopy _version];
  if (strokeCopy)
  {
    [(_PKStrokeConcrete *)strokeCopy _version];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v14 = _PKStrokeIDCompare(&v36, &v35);
  [(_PKStrokeConcrete *)selfCopy _substrokesVersion];
  if (strokeCopy)
  {
    [(_PKStrokeConcrete *)strokeCopy _substrokesVersion];
  }

  else
  {
    memset(&v35, 0, sizeof(v35));
  }

  v15 = _PKStrokeIDCompare(&v36, &v35);
  if (!v15)
  {
    _substrokes = [(_PKStrokeConcrete *)selfCopy _substrokes];
    _substrokes2 = [(_PKStrokeConcrete *)strokeCopy _substrokes];
    v20 = [(_PKStrokeConcrete *)selfCopy mergeArrayOfStrokes:_substrokes with:_substrokes2 inDrawing:drawingCopy];

    _substrokes3 = [(_PKStrokeConcrete *)selfCopy _substrokes];
    v22 = v20 == _substrokes3;

    if (v14 == -1)
    {
      v23 = strokeCopy;
    }

    else
    {
      v23 = selfCopy;
    }

    if (v22)
    {
      copyForMutation2 = v23;
    }

    else
    {
      copyForMutation2 = [(_PKStrokeConcrete *)v23 copyForMutation];

      [(_PKStrokeConcrete *)copyForMutation2 set_substrokes:v20];
      [(PKStroke *)copyForMutation2 _setIsNewCopy:1];
    }

    copyForMutation = copyForMutation2;
    goto LABEL_29;
  }

  if (v14 != 1)
  {
    if (v14 == -1)
    {
      if (v15 != -1)
      {
        copyForMutation3 = [(_PKStrokeConcrete *)strokeCopy copyForMutation];

        _substrokes4 = [(_PKStrokeConcrete *)selfCopy _substrokes];
        [copyForMutation3 set_substrokes:_substrokes4];

        [(_PKStrokeConcrete *)selfCopy _substrokesVersion];
        v36 = v34[1];
        [copyForMutation3 set_substrokesVersion:&v36];
        copyForMutation = copyForMutation3;
        [copyForMutation3 _setIsNewCopy:1];
        goto LABEL_30;
      }

      goto LABEL_25;
    }

    if (v15 == -1)
    {
LABEL_25:
      v27 = strokeCopy;
      goto LABEL_26;
    }

    if (v15 != 1)
    {
      goto LABEL_30;
    }

LABEL_24:
    v27 = selfCopy;
LABEL_26:
    v20 = copyForMutation;
    copyForMutation = v27;
LABEL_29:

    goto LABEL_30;
  }

  if (v15 == 1)
  {
    goto LABEL_24;
  }

  copyForMutation4 = [(_PKStrokeConcrete *)selfCopy copyForMutation];

  copyForMutation = copyForMutation4;
  _substrokes5 = [(_PKStrokeConcrete *)strokeCopy _substrokes];
  [copyForMutation set_substrokes:_substrokes5];

  if (strokeCopy)
  {
    [(_PKStrokeConcrete *)strokeCopy _substrokesVersion];
  }

  else
  {
    memset(v34, 0, 24);
  }

  v36 = v34[0];
  [copyForMutation set_substrokesVersion:&v36];
  [copyForMutation _setIsNewCopy:1];
LABEL_30:
  _strokeData = [copyForMutation _strokeData];
  _immutablePointsCount = [_strokeData _immutablePointsCount];
  _strokeData2 = [(PKStroke *)strokeCopy _strokeData];
  LODWORD(_immutablePointsCount) = _immutablePointsCount < [_strokeData2 _immutablePointsCount];

  if (_immutablePointsCount)
  {
    if (([copyForMutation _isNewCopy] & 1) == 0)
    {
      v12CopyForMutation = [copyForMutation copyForMutation];

      copyForMutation = v12CopyForMutation;
      [v12CopyForMutation _setIsNewCopy:1];
    }

    _strokeData3 = [(PKStroke *)strokeCopy _strokeData];
    [copyForMutation set_strokeData:_strokeData3];
  }

  return copyForMutation;
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

- (void)set_sortID:(_PKStrokeID *)d
{
  v3 = *&d->replicaUUID[12];
  *&self->_secondaryParticleOffset = *&d->clock;
  *&self->_sortID.replicaUUID[4] = v3;
}

- (void)set_version:(_PKStrokeID *)set_version
{
  v3 = *&set_version->replicaUUID[12];
  *&self->_sortID.replicaUUID[12] = *&set_version->clock;
  *&self->_version.replicaUUID[4] = v3;
}

- (void)set_substrokesVersion:(_PKStrokeID *)version
{
  v3 = *&version->replicaUUID[12];
  *&self->_strokeData = *&version->clock;
  *&self->_substrokesVersion.replicaUUID[4] = v3;
}

- (_PKStrokeConcrete)initWithArchive:(const void *)archive sortedUUIDs:(id)ds inks:(id)inks parent:(id)parent isHidden:(BOOL)hidden transientArchiveDictionary:(id)dictionary
{
  v85 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  inksCopy = inks;
  parentCopy = parent;
  dictionaryCopy = dictionary;
  v17 = *(archive + 22);
  if (!v17 || (v18 = *(v17 + 16), v18 > [dsCopy count]))
  {
    selfCopy = 0;
    goto LABEL_76;
  }

  v20 = [(_PKStrokeConcrete *)self init];
  if (!v20)
  {
    goto LABEL_70;
  }

  if (*(archive + 15))
  {
    uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(archive + 15)];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  [(_PKStrokeConcrete *)v20 _setStrokeUUID:uUID];

  v22 = *(archive + 13);
  if (v22)
  {
    [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v22 withSortedUUIDs:dsCopy];
    *buf = v83;
    v79.i64[0] = v84;
    [(_PKStrokeConcrete *)v20 set_sortID:buf];
  }

  v23 = *(archive + 22);
  if (v23)
  {
    [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v23 withSortedUUIDs:dsCopy];
    *buf = v81;
    v79.i64[0] = v82;
    [(_PKStrokeConcrete *)v20 set_version:buf];
  }

  if ((*(archive + 184) & 2) != 0)
  {
    [(_PKStrokeConcrete *)v20 _setShapeType:*(archive + 12)];
  }

  v24 = *(archive + 5);
  if (v24)
  {
    v25 = [_PKStrokeConcrete decodeRenameableUUIDFromData:*v24 transientArchiveDictionary:dictionaryCopy];
    [(_PKStrokeConcrete *)v20 _setGroupID:v25];
  }

  v26 = *(archive + 11);
  if (v26)
  {
    v27 = [_PKStrokeConcrete decodeRenameableUUIDFromData:*v26 transientArchiveDictionary:dictionaryCopy];
    [(_PKStrokeConcrete *)v20 _setRenderGroupID:v27];
  }

  if (*(archive + 184))
  {
    v29 = *(archive + 6);
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || v29 >= [inksCopy count])
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

  if (v29 < [inksCopy count])
  {
    v31 = [inksCopy objectAtIndexedSubscript:v29];
    [(PKStroke *)v20 _setInk:v31];
    goto LABEL_30;
  }

  if (parentCopy)
  {
    v31 = [parentCopy ink];
    [(PKStroke *)v20 _setInk:v31];
LABEL_30:

    v32 = *(archive + 4);
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
    v35 = *(archive + 21);
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

    else if (parentCopy)
    {
      [parentCopy _transform];
      *buf = v73;
      v79 = v74;
      v80 = v75;
      [(_PKStrokeConcrete *)v20 _setTransform:buf];
    }

    v44 = *(archive + 7);
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

    [(_PKStrokeConcrete *)v20 _setFlags:*(archive + 16)];
    if (*(archive + 14))
    {
      _strokeData = [PKStrokePath strokeDataFromDataArchive:?];
      [(PKStroke *)v20 set_strokeData:_strokeData];
    }

    else
    {
      if (!parentCopy)
      {
LABEL_49:
        v55 = *(archive + 17);
        v54 = *(archive + 18);
        v56 = v54 - v55;
        if (v54 != v55)
        {
          v57 = *(archive + 20);
          if (v57)
          {
            [(_PKStrokeConcrete *)v20 readStrokeIDFromArchive:v57 withSortedUUIDs:dsCopy];
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
            if (*(*(*(archive + 17) + 8 * v59) + 72) == *(*(*(archive + 17) + 8 * v59) + 64))
            {
              v61 = [_PKStrokeConcrete alloc];
              v62 = *(*(archive + 17) + 8 * v59);
              if (!hidden)
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
              v62 = *(*(archive + 17) + 8 * v59);
              if (!hidden)
              {
                goto LABEL_60;
              }

              v63 = 1;
            }

LABEL_61:
            v64 = [(_PKStrokeConcrete *)v61 initWithArchive:v62 sortedUUIDs:dsCopy inks:inksCopy parent:v20 isHidden:v63 transientArchiveDictionary:dictionaryCopy];
            if (!v64)
            {
              goto LABEL_75;
            }

            _substrokes = [(_PKStrokeConcrete *)v20 _substrokes];
            [_substrokes addObject:v64];

            ++v59;
          }

          while (v60 != v59);
        }

        if (*(archive + 9) != *(archive + 8))
        {
          v66 = [[PKStrokeMask alloc] initWithArchive:archive];
          [(_PKStrokeConcrete *)v20 _setStrokeMask:v66];
        }

        v67 = *(archive + 24);
        if (v67)
        {
          v68 = *(archive + 25);
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
        selfCopy = self;
        goto LABEL_76;
      }

      _strokeData = [parentCopy _strokeData];
      [(PKStroke *)v20 set_strokeData:_strokeData];
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
  selfCopy = 0;
  self = v20;
LABEL_76:

  return selfCopy;
}

+ (id)decodeRenameableUUIDFromData:(const char *)data transientArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:data];
  if (dictionaryCopy)
  {
    uUID = [dictionaryCopy objectForKeyedSubscript:v6];
    if (!uUID)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [dictionaryCopy setObject:uUID forKeyedSubscript:v6];
    }

    v8 = uUID;

    v6 = v8;
  }

  return v6;
}

+ (void)encodeUUID:(id)d toData:(void *)data
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = 0;
  v6 = 0;
  [d getUUIDBytes:v5];
  PB::Data::assign(*data, v5, &v7);
}

- (void)saveUUIDsTo:(id)to
{
  *&v20[20] = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _sortID];
  v6 = [v5 initWithUUIDBytes:v20];
  [toCopy addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _version];
  v8 = [v7 initWithUUIDBytes:v20];
  [toCopy addObject:v8];

  v9 = objc_alloc(MEMORY[0x1E696AFB0]);
  [(_PKStrokeConcrete *)self _substrokesVersion];
  v10 = [v9 initWithUUIDBytes:v20];
  [toCopy addObject:v10];

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  _substrokes = [(_PKStrokeConcrete *)self _substrokes];
  v12 = [_substrokes countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(_substrokes);
        }

        [*(*(&v15 + 1) + 8 * v14++) saveUUIDsTo:toCopy];
      }

      while (v12 != v14);
      v12 = [_substrokes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)saveInksTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v5 = [(_PKStrokeConcrete *)self ink];

  if (v5)
  {
    v6 = [(_PKStrokeConcrete *)self ink];
    [toCopy addObject:v6];
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
  _substrokes = [(_PKStrokeConcrete *)self _substrokes];
  v9 = [_substrokes countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(_substrokes);
        }

        [*(*(&v12 + 1) + 8 * v11++) saveInksTo:toCopy];
      }

      while (v9 != v11);
      v9 = [_substrokes countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds inks:(id)inks withPathData:(BOOL)data parent:(id)parent transient:(BOOL)transient
{
  dataCopy = data;
  v88 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  inksCopy = inks;
  _groupID = [(_PKStrokeConcrete *)self _groupID];

  if (_groupID)
  {
    if (!*(archive + 5))
    {
      operator new();
    }

    _groupID2 = [(_PKStrokeConcrete *)self _groupID];
    [_PKStrokeConcrete encodeUUID:_groupID2 toData:archive + 40];
  }

  _renderGroupID = [(_PKStrokeConcrete *)self _renderGroupID];

  if (_renderGroupID)
  {
    if (!*(archive + 11))
    {
      operator new();
    }

    _renderGroupID2 = [(_PKStrokeConcrete *)self _renderGroupID];
    [_PKStrokeConcrete encodeUUID:_renderGroupID2 toData:archive + 88];
  }

  if ([(_PKStrokeConcrete *)self _shapeType])
  {
    _shapeType = [(_PKStrokeConcrete *)self _shapeType];
    *(archive + 184) |= 2u;
    *(archive + 12) = _shapeType;
  }

  if (!transient)
  {
    if (!*(archive + 15))
    {
      operator new();
    }

    _strokeUUID = [(_PKStrokeConcrete *)self _strokeUUID];
    [_PKStrokeConcrete encodeUUID:_strokeUUID toData:archive + 120];
  }

  drawing::Stroke::makeSortID(archive);
  v21 = *(archive + 13);
  [(_PKStrokeConcrete *)self _sortID];
  [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v21 withSortedUUIDs:dsCopy];
  drawing::Stroke::makeVersion(archive);
  v22 = *(archive + 22);
  [(_PKStrokeConcrete *)self _version];
  [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v22 withSortedUUIDs:dsCopy];
  v23 = [(_PKStrokeConcrete *)self ink];
  if (v23)
  {
    v24 = ([(_PKStrokeConcrete *)self _flags]& 4) == 0 || parent == 0;
    v25 = v24;

    if (v25)
    {
      v26 = [(_PKStrokeConcrete *)self ink];
      v27 = [inksCopy indexOfObject:v26];

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
        *(archive + 184) |= 1u;
        *(archive + 6) = v27;
      }
    }
  }

  if (![(_PKStrokeConcrete *)self _isFullyHidden])
  {
    if (dataCopy)
    {
      drawing::Stroke::makeStrokeData(archive);
      _strokeData = [(PKStroke *)self _strokeData];
      [_strokeData saveToDataArchive:*(archive + 14)];
    }

    [(PKStroke *)self _bounds];
    x = v89.origin.x;
    y = v89.origin.y;
    width = v89.size.width;
    height = v89.size.height;
    if (!CGRectIsNull(v89))
    {
      drawing::Stroke::makeBounds(archive);
      v34 = *(archive + 4);
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
    _flags = [(_PKStrokeConcrete *)self _flags];
    v41 = MEMORY[0x1E695EFD0];
    if (!parent || (_flags & 8) == 0)
    {
      t1 = buf;
      v42 = *(MEMORY[0x1E695EFD0] + 16);
      *&t2.a = *MEMORY[0x1E695EFD0];
      *&t2.c = v42;
      *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        drawing::Stroke::makeTransform(archive);
        v43 = *(archive + 21);
        a = buf.a;
        *(v43 + 32) |= 1u;
        *(v43 + 8) = a;
        v45 = *(archive + 21);
        b = buf.b;
        *(v45 + 32) |= 2u;
        *(v45 + 12) = b;
        v47 = *(archive + 21);
        c = buf.c;
        *(v47 + 32) |= 4u;
        *(v47 + 16) = c;
        v49 = *(archive + 21);
        d = buf.d;
        *(v49 + 32) |= 8u;
        *(v49 + 20) = d;
        v51 = *(archive + 21);
        tx = buf.tx;
        *(v51 + 32) |= 0x10u;
        *(v51 + 24) = tx;
        v53 = *(archive + 21);
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
      drawing::Stroke::makeInkTransform(archive);
      v56 = *(archive + 7);
      v57 = t1.a;
      *(v56 + 32) |= 1u;
      *(v56 + 8) = v57;
      v58 = *(archive + 7);
      v59 = t1.b;
      *(v58 + 32) |= 2u;
      *(v58 + 12) = v59;
      v60 = *(archive + 7);
      v61 = t1.c;
      *(v60 + 32) |= 4u;
      *(v60 + 16) = v61;
      v62 = *(archive + 7);
      v63 = t1.d;
      *(v62 + 32) |= 8u;
      *(v62 + 20) = v63;
      v64 = *(archive + 7);
      v65 = t1.tx;
      *(v64 + 32) |= 0x10u;
      *(v64 + 24) = v65;
      v66 = *(archive + 7);
      v67 = t1.ty;
      *(v66 + 32) |= 0x20u;
      *(v66 + 28) = v67;
    }
  }

  _flags2 = [(_PKStrokeConcrete *)self _flags];
  *(archive + 184) |= 4u;
  *(archive + 16) = _flags2;
  _substrokes = [(_PKStrokeConcrete *)self _substrokes];
  v70 = [_substrokes count] == 0;

  if (!v70)
  {
    drawing::Stroke::makeSubstrokesVersion(archive);
    v71 = *(archive + 20);
    [(_PKStrokeConcrete *)self _substrokesVersion];
    [(_PKStrokeConcrete *)self saveStrokeID:&buf toArchive:v71 withSortedUUIDs:dsCopy];
    _substrokes2 = [(_PKStrokeConcrete *)self _substrokes];
    std::vector<std::unique_ptr<drawing::Stroke>>::reserve(archive + 17, [_substrokes2 count]);

    memset(v82, 0, sizeof(v82));
    _substrokes3 = [(_PKStrokeConcrete *)self _substrokes];
    if ([_substrokes3 countByEnumeratingWithState:v82 objects:v86 count:16])
    {
      PB::PtrVector<drawing::Stroke>::emplace_back<>();
    }
  }

  _strokeMask = [(_PKStrokeConcrete *)self _strokeMask];
  v75 = _strokeMask == 0;

  if (!v75)
  {
    _strokeMask2 = [(_PKStrokeConcrete *)self _strokeMask];
    [_strokeMask2 saveToArchive:archive];
  }

  ptr = self->_unknownFields.__ptr_;
  cntrl = self->_unknownFields.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v79 = *(archive + 25);
  *(archive + 24) = ptr;
  *(archive + 25) = cntrl;
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  return 2;
}

- (_PKStrokeConcrete)initWithV1Archive:(const void *)archive sortedUUIDs:(id)ds inks:(id)inks
{
  v53 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  inksCopy = inks;
  v10 = *(archive + 10);
  if (v10 && (v11 = *(v10 + 16), v11 <= [dsCopy count]))
  {
    v13 = [(_PKStrokeConcrete *)self init];
    v14 = v13;
    if (v13)
    {
      v15 = *(archive + 6);
      if (v15)
      {
        [(_PKStrokeConcrete *)v13 readV1StrokeIDFromArchive:v15 withSortedUUIDs:dsCopy];
        v46 = v51;
        v47.i64[0] = v52;
        [(_PKStrokeConcrete *)v14 set_sortID:&v46];
      }

      if (*(archive + 7))
      {
        uUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(archive + 7)];
      }

      else
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
      }

      [(_PKStrokeConcrete *)v14 _setStrokeUUID:uUID];

      v17 = *(archive + 10);
      if (v17)
      {
        [(_PKStrokeConcrete *)v14 readV1StrokeIDFromArchive:v17 withSortedUUIDs:dsCopy];
        v46 = v49;
        v47.i64[0] = v50;
        [(_PKStrokeConcrete *)v14 set_version:&v46];
      }

      v18 = [inksCopy objectAtIndexedSubscript:*(archive + 2)];
      [(PKStroke *)v14 _setInk:v18];

      [(_PKStrokeConcrete *)v14 _setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      if (*(archive + 8) == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = *(archive + 8);
      }

      [(PKStroke *)v14 _setHidden:*(archive + 89)];
      v20 = MEMORY[0x1E695EFD0];
      v21 = *(MEMORY[0x1E695EFD0] + 16);
      v46 = *MEMORY[0x1E695EFD0];
      v47 = v21;
      v48 = *(MEMORY[0x1E695EFD0] + 32);
      [(_PKStrokeConcrete *)v14 _setTransform:&v46];
      v22 = *(archive + 9);
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

      v31 = *(archive + 3);
      if (v31)
      {
        if ((*(archive + 92) & 8) != 0)
        {
          v32 = *(archive + 88) ^ 1;
        }

        else
        {
          v32 = 1;
        }

        v33 = *(archive + 4);
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

        if (*(archive + 5))
        {
          uUID2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:**(archive + 5)];
        }

        else
        {
          uUID2 = [MEMORY[0x1E696AFB0] UUID];
        }

        v41 = uUID2;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_PKStrokeConcrete)initWithLegacyArchive:(const void *)archive sortedUUIDs:(id)ds
{
  v58 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = dsCopy;
  v8 = *(archive + 11);
  if (v8 && (v9 = *(v8 + 12), [dsCopy count] >= v9))
  {
    v11 = [(_PKStrokeConcrete *)self init];
    if (v11)
    {
      v12 = [v7 objectAtIndexedSubscript:*(*(archive + 11) + 12)];
      [v12 getUUIDBytes:&v56 + 4];

      v13 = *(archive + 11);
      v14 = *(v13 + 8);
      LODWORD(v13) = *(v13 + 16);
      LODWORD(v56) = v14;
      HIDWORD(v57) = v13;
      *&components.timestamp = v56;
      components.location.y = v57;
      [(_PKStrokeConcrete *)v11 set_version:&components];
      v15 = *(archive + 6);
      if (v15)
      {
        v16 = [v7 objectAtIndexedSubscript:*(v15 + 12)];
        [v16 getUUIDBytes:&components.timestamp + 4];

        v17 = *(archive + 6);
        v18 = *(v17 + 8);
        LODWORD(v17) = *(v17 + 16);
        LODWORD(components.timestamp) = v18;
        HIDWORD(components.location.y) = v17;
        *&v54.timestamp = *&components.timestamp;
        v54.location.y = components.location.y;
        [(_PKStrokeConcrete *)v11 set_sortID:&v54];
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      [(_PKStrokeConcrete *)v11 _setStrokeUUID:uUID];

      v20 = *(archive + 5);
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

      v22 = *(archive + 24);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      *&components.timestamp = vextq_s8(v48, v48, 8uLL);
      *&components.location.y = vextq_s8(v49, v49, 8uLL);
      v24 = CGColorCreate(DeviceRGB, &components.timestamp);
      CGColorSpaceRelease(DeviceRGB);
      CFAutorelease(v24);
      v25 = [PKInk identifierForCommandType:v22 wantsObjectErase:0];
      if ([v25 isEqualToString:@"com.apple.ink.marker"])
      {
        v26 = *(archive + 7);
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
      v31 = *(archive + 1);
      if (v31)
      {
        [(_PKStrokeConcrete *)v11 readPointFromLegacyArchive:v31 deltaFrom:&PKStrokePointDefault];
        components = v54;
      }

      if (*(archive + 4) && *(archive + 3))
      {
        memset(&v54, 0, sizeof(v54));
        [_PKStrokeConcrete readPointFromLegacyArchive:v11 deltaFrom:"readPointFromLegacyArchive:deltaFrom:"];
        memset(&v53, 0, sizeof(v53));
        [(_PKStrokeConcrete *)v11 readPointFromLegacyArchive:*(archive + 3) deltaFrom:&components];
        v32 = [_PKStrokeClipPlane alloc];
        v33 = [(_PKStrokeClipPlane *)v32 initWithOrigin:v54.location.x normal:v54.location.y, -0.0, -0.0];
        [(_PKStrokeConcrete *)v11 _setClipPlane:v33];
      }

      v34 = *(archive + 9) - *(archive + 8);
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
          v40 = *(*(archive + 8) + 8 * v37);
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
        uUID2 = [MEMORY[0x1E696AFB0] UUID];
        v46 = [(PKStrokePath *)v43 initWithPoints:v44 count:v35 immutableCount:v35 inputType:1 timestamp:uUID2 UUID:0.0];
        [(PKStroke *)v11 set_strokeData:v46];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      if (*(archive + 2))
      {
        [(_PKStrokeConcrete *)v11 _setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
      }

      else
      {
        [(PKStroke *)v11 _setHidden:1];
      }
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_PKStrokeID)readStrokeIDFromArchive:(SEL)archive withSortedUUIDs:(const StrokeID *)ds
{
  var1 = ds->var1;
  var2 = ds->var2;
  retstr->clock = var1;
  v10 = [a5 objectAtIndexedSubscript:var2];
  [v10 getUUIDBytes:retstr->replicaUUID];

  retstr->subclock = ds->var3;
  return result;
}

- (void)saveStrokeID:(const _PKStrokeID *)d toArchive:(StrokeID *)archive withSortedUUIDs:(id)ds
{
  dsCopy = ds;
  clock = d->clock;
  *&archive->var4 |= 1u;
  archive->var1 = clock;
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:d->replicaUUID];
  v9 = [dsCopy indexOfObject:v8];
  var4 = archive->var4;
  *&archive->var4 = var4 | 2;
  subclock = d->subclock;
  *&archive->var4 = var4 | 6;
  archive->var2 = v9;
  archive->var3 = subclock;
}

- (_PKStrokeID)readV1StrokeIDFromArchive:(SEL)archive withSortedUUIDs:(const StrokeID *)ds
{
  var1 = ds->var1;
  var2 = ds->var2;
  retstr->clock = var1;
  v10 = [a5 objectAtIndexedSubscript:var2];
  [v10 getUUIDBytes:retstr->replicaUUID];

  retstr->subclock = ds->var3;
  return result;
}

- (void)saveV1StrokeID:(const _PKStrokeID *)d toArchive:(StrokeID *)archive withSortedUUIDs:(id)ds
{
  dsCopy = ds;
  clock = d->clock;
  *&archive->var4 |= 1u;
  archive->var1 = clock;
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:d->replicaUUID];
  v9 = [dsCopy indexOfObject:v8];
  var4 = archive->var4;
  *&archive->var4 = var4 | 2;
  subclock = d->subclock;
  *&archive->var4 = var4 | 6;
  archive->var2 = v9;
  archive->var3 = subclock;
}

- (CGPoint)readPointFromArchive:(const Point *)archive
{
  v3 = vceqz_s32(vand_s8(vdup_n_s32(LOBYTE(archive[4].v)), 0x200000001));
  v4.i64[0] = v3.i32[0];
  v4.i64[1] = v3.i32[1];
  v5 = vbicq_s8(vcvtq_f64_f32(*&archive[2].v), v4);
  v6 = *&v5.i64[1];
  result.x = *v5.i64;
  result.y = v6;
  return result;
}

- (_PKStrokePoint)readPointFromLegacyArchive:(SEL)archive deltaFrom:(const Point *)from
{
  retstr->timestamp = 0.0;
  v_low = LOBYTE(from[9].v);
  v6 = vdup_n_s32(v_low);
  v7 = vceqz_s32(vand_s8(v6, 0x4000000020));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  retstr->location = vbicq_s8(vcvtq_f64_f32(*&from[7].v), v8);
  v9 = *&from[6].v;
  v10 = vceqz_s32(vand_s8(v6, 0x100000010));
  v8.i64[0] = v10.i32[0];
  v8.i64[1] = v10.i32[1];
  v9.i32[1] = from[2];
  *&retstr->radius = vbslq_s8(v8, *&a5->radius, vcvtq_f64_f32(v9));
  v11 = *&from[3];
  edgeWidth = *&from[4];
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
  opacity = *&from[5];
  if ((v_low & 8) == 0)
  {
    opacity = a5->opacity;
  }

  retstr->opacity = opacity;
  retstr->radius2 = 0.0;
  retstr->threshold = 0.0;
  return self;
}

- (unsigned)saveToV1Archive:(void *)archive sortedUUIDs:(id)ds inks:(id)inks withPathData:(BOOL)data transient:(BOOL)transient
{
  dataCopy = data;
  v60 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  inksCopy = inks;
  drawingV1::Stroke::makeStrokeID(archive);
  v14 = *(archive + 6);
  [(_PKStrokeConcrete *)self _sortID];
  [(_PKStrokeConcrete *)self saveV1StrokeID:&v59 toArchive:v14 withSortedUUIDs:dsCopy];
  if (!transient)
  {
    *&v59.a = 0uLL;
    _strokeUUID = [(_PKStrokeConcrete *)self _strokeUUID];
    [_strokeUUID getUUIDBytes:&v59];

    v16 = *(archive + 7);
    if (!v16)
    {
      operator new();
    }

    PB::Data::assign(v16, &v59, &v59.c);
  }

  drawingV1::Stroke::makeVersion(archive);
  v17 = *(archive + 10);
  [(_PKStrokeConcrete *)self _version];
  [(_PKStrokeConcrete *)self saveV1StrokeID:&v59 toArchive:v17 withSortedUUIDs:dsCopy];
  v18 = [(_PKStrokeConcrete *)self ink];
  v19 = [inksCopy indexOfObject:v18];

  *(archive + 92) |= 1u;
  *(archive + 2) = v19;
  [(PKStroke *)self timestamp];
  *(archive + 92) |= 4u;
  *(archive + 8) = v20;
  _isHidden = [(PKStroke *)self _isHidden];
  *(archive + 92) |= 0x10u;
  *(archive + 89) = _isHidden;
  if (![(PKStroke *)self _isHidden])
  {
    if (dataCopy)
    {
      _pointsCount = [(PKStroke *)self _pointsCount];
      *(archive + 92) |= 2u;
      *(archive + 4) = _pointsCount;
      v23 = malloc_type_malloc(24 * _pointsCount, 0x1000040504FFAC1uLL);
      v24 = v23;
      if (_pointsCount)
      {
        v25 = 0;
        v26 = v23;
        do
        {
          _strokeData = [(PKStroke *)self _strokeData];
          v28 = _strokeData;
          if (_strokeData)
          {
            [_strokeData _compressedPointAt:v25];
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

        while (_pointsCount != v25);
      }

      v29 = *(archive + 3);
      if (!v29)
      {
        operator new();
      }

      PB::Data::assign(v29, v24, &v24[24 * _pointsCount]);
      free(v24);
      _strokeDataUUID = [(PKStroke *)self _strokeDataUUID];
      v31 = _strokeDataUUID;
      if (_strokeDataUUID)
      {
        *&v59.a = 0uLL;
        [_strokeDataUUID getUUIDBytes:&v59];
        v32 = *(archive + 5);
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
      drawingV1::Stroke::makeBounds(archive);
      v37 = *(archive + 1);
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
      drawingV1::Stroke::makeTransform(archive);
      v44 = *(archive + 9);
      a = v59.a;
      *(v44 + 32) |= 1u;
      *(v44 + 8) = a;
      v46 = *(archive + 9);
      b = v59.b;
      *(v46 + 32) |= 2u;
      *(v46 + 12) = b;
      v48 = *(archive + 9);
      c = v59.c;
      *(v48 + 32) |= 4u;
      *(v48 + 16) = c;
      v50 = *(archive + 9);
      d = v59.d;
      *(v50 + 32) |= 8u;
      *(v50 + 20) = d;
      v52 = *(archive + 9);
      tx = v59.tx;
      *(v52 + 32) |= 0x10u;
      *(v52 + 24) = tx;
      v54 = *(archive + 9);
      ty = v59.ty;
      *(v54 + 32) |= 0x20u;
      *(v54 + 28) = ty;
    }

    if (![(PKStroke *)self _inputType])
    {
      *(archive + 92) |= 8u;
      *(archive + 88) = 1;
    }
  }

  return 1;
}

@end