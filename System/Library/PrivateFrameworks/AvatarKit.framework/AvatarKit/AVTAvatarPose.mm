@interface AVTAvatarPose
+ (id)friendlyPose;
+ (id)neutralPose;
+ (id)posesForAnimojiNamed:(id)named inPosePack:(id)pack;
+ (id)posesInPosePack:(id)pack avatarSelectionBlock:(id)block;
- (AVTAvatarPose)initWithDictionaryRepresentation:(id)representation;
- (AVTAvatarPose)initWithScene:(id)scene;
- (AVTAvatarPose)initWithWeights:(id)weights neckPosition:neckOrientation:bakedAnimationBlendFactor:;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPose:(id)pose;
- (BOOL)isFriendlyPose;
- (BOOL)isNeutralPose;
- (double)weightForBlendShapeNamed:(id)named;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)hashString;
- (id)poseByMergingPose:(id)pose;
- (int8x16_t)setNeckOrientation:(int32x4_t)orientation;
- (void)setNeckPosition:(AVTAvatarPose *)self;
- (void)setNeckPositionAndOrientationFromHierarchy:(id)hierarchy;
- (void)setWeight:(double)weight forBlendShapeNamed:(id)named;
- (void)setWeights:(id)weights;
@end

@implementation AVTAvatarPose

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  weights = self->_weights;
  if (self->_hasNeckPosition)
  {
    neckPosition = self->_neckPosition;
  }

  else
  {
    neckPosition = 0;
  }

  if (self->_hasNeckOrientation)
  {
    v7 = self + 1;
  }

  else
  {
    v7 = 0;
  }

  bakedAnimationBlendFactor = self->_bakedAnimationBlendFactor;

  return [v4 initWithWeights:weights neckPosition:neckPosition neckOrientation:v7 bakedAnimationBlendFactor:bakedAnimationBlendFactor];
}

- (void)setWeights:(id)weights
{
  v4 = [weights mutableCopy];
  weights = self->_weights;
  self->_weights = v4;

  MEMORY[0x1EEE66BB8](v4, weights);
}

- (double)weightForBlendShapeNamed:(id)named
{
  v3 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:named];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)setWeight:(double)weight forBlendShapeNamed:(id)named
{
  namedCopy = named;
  weights = self->_weights;
  v12 = namedCopy;
  if (weight == 0.0)
  {
    [(NSMutableDictionary *)weights removeObjectForKey:namedCopy];
  }

  else
  {
    if (!weights)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      v10 = self->_weights;
      self->_weights = v9;

      weights = self->_weights;
    }

    *&v7 = weight;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
    [(NSMutableDictionary *)weights setValue:v11 forKey:v12];
  }
}

- (void)setNeckPosition:(AVTAvatarPose *)self
{
  v3.i32[0] = 0;
  v4.i64[0] = 0x3400000034000000;
  v4.i64[1] = 0x3400000034000000;
  v5 = vcgtq_f32(vabsq_f32(v2), v4);
  v5.i32[3] = v5.i32[2];
  v5.i32[0] = vmaxvq_u32(v5);
  self->_hasNeckPosition = v5.i32[0] < 0;
  *self->_neckPosition = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v3, v5), 0), v2, 0);
}

- (int8x16_t)setNeckOrientation:(int32x4_t)orientation
{
  orientation.i32[0] = 0;
  v3.i64[0] = 0x3400000034000000;
  v3.i64[1] = 0x3400000034000000;
  v4 = vcgtq_f32(vabsq_f32(vaddq_f32(a2, xmmword_1BB4F0EB0)), v3);
  v4.i32[0] = vmaxvq_u32(v4);
  result = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(orientation, v4), 0), a2, xmmword_1BB4F06F0);
  self->i8[9] = v4.i32[0] < 0;
  self[3] = result;
  return result;
}

- (id)dictionaryRepresentation
{
  v3 = _AVTPoseRoundingBehaviour();
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  weights = self->_weights;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __41__AVTAvatarPose_dictionaryRepresentation__block_invoke;
  v17 = &unk_1E7F49F40;
  v6 = v4;
  v18 = v6;
  v7 = v3;
  v19 = v7;
  [(NSMutableDictionary *)weights enumerateKeysAndObjectsUsingBlock:&v14];
  if (self->_hasNeckPosition)
  {
    v8 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat3:v7 roundingBehavior:{*self->_neckPosition, v14, v15, v16, v17, v18}];
    [v6 setObject:v8 forKeyedSubscript:@"neckPosition"];
  }

  if (self->_hasNeckOrientation)
  {
    v9 = [MEMORY[0x1E695DEC8] avt_arrayWithFloat4:v7 roundingBehavior:*&self[1].super.isa];
    [v6 setObject:v9 forKeyedSubscript:@"neckOrientation"];
  }

  bakedAnimationBlendFactor = self->_bakedAnimationBlendFactor;
  *&bakedAnimationBlendFactor = bakedAnimationBlendFactor;
  v11 = [MEMORY[0x1E696AD98] avt_numberWithFloat:v7 roundingBehavior:{bakedAnimationBlendFactor, v14, v15, v16, v17}];
  [v6 setObject:v11 forKeyedSubscript:@"bakedAnimationBlendFactor"];

  v12 = [v6 copy];

  return v12;
}

void __41__AVTAvatarPose_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 avt_numberByRoundingWithBehavior:v5];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (AVTAvatarPose)initWithWeights:(id)weights neckPosition:neckOrientation:bakedAnimationBlendFactor:
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  weightsCopy = weights;
  v22.receiver = self;
  v22.super_class = AVTAvatarPose;
  v11 = [(AVTAvatarPose *)&v22 init];
  if (v11)
  {
    v12 = [weightsCopy mutableCopy];
    weights = v11->_weights;
    v11->_weights = v12;

    if (v8)
    {
      v14.i64[0] = 0x3400000034000000;
      v14.i64[1] = 0x3400000034000000;
      v15 = vcgtq_f32(vabsq_f32(*v8), v14);
      v15.i32[3] = v15.i32[2];
      v16 = vmaxvq_u32(v15);
      v11->_hasNeckPosition = v16 < 0;
      v17 = 0uLL;
      if (v16 < 0)
      {
        v17 = *v8;
      }
    }

    else
    {
      v11->_hasNeckPosition = 0;
      v17 = 0uLL;
    }

    *v11->_neckPosition = v17;
    if (v7)
    {
      v18.i64[0] = 0x3400000034000000;
      v18.i64[1] = 0x3400000034000000;
      v19 = vmaxvq_u32(vcgtq_f32(vabsq_f32(vaddq_f32(*v7, xmmword_1BB4F0EB0)), v18));
      v11->_hasNeckOrientation = v19 < 0;
      if (v19 < 0)
      {
        v20 = *v7;
LABEL_11:
        *&v11[1].super.isa = v20;
        v11->_bakedAnimationBlendFactor = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v11->_hasNeckOrientation = 0;
    }

    v20 = xmmword_1BB4F06F0;
    goto LABEL_11;
  }

LABEL_12:

  return v11;
}

- (AVTAvatarPose)initWithScene:(id)scene
{
  v4 = MEMORY[0x1E695DFA8];
  sceneCopy = scene;
  v6 = objc_alloc_init(v4);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __31__AVTAvatarPose_initWithScene___block_invoke;
  v24[3] = &unk_1E7F49F68;
  v25 = v6;
  v26 = dictionary;
  v8 = dictionary;
  v9 = v6;
  rootNode = [sceneCopy rootNode];
  v11 = [rootNode childNodeWithName:@"head_GES" recursively:1];

  __31__AVTAvatarPose_initWithScene___block_invoke(v24, v11);
  rootNode2 = [sceneCopy rootNode];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __31__AVTAvatarPose_initWithScene___block_invoke_2;
  v23[3] = &__block_descriptor_40_e21_v24__0__SCNNode_8_B16lu32l8;
  v23[4] = v24;
  [rootNode2 enumerateHierarchyUsingBlock:v23];

  rootNode3 = [sceneCopy rootNode];
  v14 = [rootNode3 childNodeWithName:@"root_JNT" recursively:1];

  [v14 simdPosition];
  v22 = v15;
  rootNode4 = [sceneCopy rootNode];

  v17 = [rootNode4 childNodeWithName:@"head_JNT" recursively:1];

  [v17 simdOrientation];
  v21 = v18;
  v19 = [(AVTAvatarPose *)self initWithWeights:v8 neckPosition:&v22 neckOrientation:&v21 bakedAnimationBlendFactor:0.0];

  return v19;
}

void __31__AVTAvatarPose_initWithScene___block_invoke(uint64_t a1, void *a2)
{
  v14 = [a2 morpher];
  v3 = [v14 weights];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [v14 targets];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [v7 name];
      if (AVTMorphTargetNameDefinesPose(v8) && ([*(a1 + 32) containsObject:v8] & 1) == 0)
      {
        v9 = [v14 weights];
        v10 = [v9 objectAtIndexedSubscript:v5];

        [v10 floatValue];
        if (v11 != 0.0)
        {
          [*(a1 + 40) setValue:v10 forKey:v8];
          [*(a1 + 32) addObject:v8];
        }
      }

      ++v5;
      v12 = [v14 weights];
      v13 = [v12 count];
    }

    while (v13 > v5);
  }
}

- (void)setNeckPositionAndOrientationFromHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  v6 = [hierarchyCopy childNodeWithName:@"root_JNT" recursively:1];
  [v6 simdPosition];
  [(AVTAvatarPose *)self setNeckPosition:?];
  v5 = [hierarchyCopy childNodeWithName:@"head_JNT" recursively:1];

  [v5 simdOrientation];
  [(AVTAvatarPose *)self setNeckOrientation:?];
}

- (AVTAvatarPose)initWithDictionaryRepresentation:(id)representation
{
  v22[3] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v21 = 0uLL;
  v5 = [representationCopy objectForKeyedSubscript:@"neckPosition"];
  v6 = v5;
  if (v5)
  {
    [v5 avt_float3];
    v21 = v7;
  }

  v8 = [representationCopy objectForKeyedSubscript:{@"neckOrientation", 0, 0x3F80000000000000, v21}];

  if (v8)
  {
    [v8 avt_float4];
    v20 = v9;
    v10 = &v20;
  }

  else
  {
    v10 = 0;
  }

  v11 = [representationCopy objectForKeyedSubscript:{@"bakedAnimationBlendFactor", v20}];
  [v11 doubleValue];
  v13 = v12;

  v14 = [representationCopy mutableCopy];
  v22[0] = @"neckPosition";
  v22[1] = @"neckOrientation";
  v22[2] = @"bakedAnimationBlendFactor";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [v14 removeObjectsForKeys:v15];

  if (v6)
  {
    v16 = &v21;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(AVTAvatarPose *)self initWithWeights:v14 neckPosition:v16 neckOrientation:v10 bakedAnimationBlendFactor:v13];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (id)neutralPose
{
  if (neutralPose_onceToken_0 != -1)
  {
    +[AVTAvatarPose neutralPose];
  }

  v3 = neutralPose_pose;

  return v3;
}

uint64_t __28__AVTAvatarPose_neutralPose__block_invoke()
{
  v0 = objc_alloc_init(AVTAvatarPose);
  v1 = neutralPose_pose;
  neutralPose_pose = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)friendlyPose
{
  if (friendlyPose_onceToken != -1)
  {
    +[AVTAvatarPose friendlyPose];
  }

  v3 = friendlyPose_pose;

  return v3;
}

uint64_t __29__AVTAvatarPose_friendlyPose__block_invoke()
{
  v0 = objc_alloc_init(AVTAvatarPose);
  v1 = friendlyPose_pose;
  friendlyPose_pose = v0;

  v2 = friendlyPose_pose;

  return [v2 setWeight:@"Emoji" forBlendShapeNamed:1.0];
}

- (BOOL)isNeutralPose
{
  v3 = +[AVTAvatarPose neutralPose];
  LOBYTE(self) = [(AVTAvatarPose *)self isEqualToPose:v3];

  return self;
}

- (BOOL)isFriendlyPose
{
  v3 = +[AVTAvatarPose friendlyPose];
  LOBYTE(self) = [(AVTAvatarPose *)self isEqualToPose:v3];

  return self;
}

- (BOOL)isEqualToPose:(id)pose
{
  poseCopy = pose;
  p_isa = &poseCopy->super.isa;
  if (poseCopy == self)
  {
    v6 = 1;
  }

  else if (poseCopy && self->_bakedAnimationBlendFactor == poseCopy->_bakedAnimationBlendFactor && (v8 = vmvnq_s8(vceqq_f32(*self->_neckPosition, *poseCopy->_neckPosition)), v8.i32[3] = v8.i32[2], (vmaxvq_u32(v8) & 0x80000000) == 0) && (vmaxvq_u32(vmvnq_s8(vceqq_f32(*&self[1].super.isa, *&poseCopy[1].super.isa))) & 0x80000000) == 0 && (v9 = -[NSMutableDictionary count](self->_weights, "count"), v9 == [p_isa[3] count]))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    weights = self->_weights;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __31__AVTAvatarPose_isEqualToPose___block_invoke;
    v13[3] = &unk_1E7F49FB0;
    v14 = p_isa;
    v15 = &v16;
    [(NSMutableDictionary *)weights enumerateKeysAndObjectsUsingBlock:v13];
    if (*(v17 + 24))
    {
      v11 = p_isa[3];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __31__AVTAvatarPose_isEqualToPose___block_invoke_2;
      v12[3] = &unk_1E7F49FB0;
      v12[4] = self;
      v12[5] = &v16;
      [v11 enumerateKeysAndObjectsUsingBlock:v12];
      v6 = *(v17 + 24);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __31__AVTAvatarPose_isEqualToPose___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  [a3 floatValue];
  v9 = v8;
  v10 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v7];

  [v10 floatValue];
  v12 = v11;

  if (vabds_f32(v9, v12) > 0.000001)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __31__AVTAvatarPose_isEqualToPose___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 24);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  [v9 floatValue];
  v11 = v10;

  [v8 floatValue];
  v13 = v12;

  if (vabds_f32(v11, v13) > 0.000001)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVTAvatarPose *)self isEqualToPose:v5];
  }

  return v6;
}

- (id)poseByMergingPose:(id)pose
{
  poseCopy = pose;
  weights = self->_weights;
  if (weights)
  {
    v6 = [(NSMutableDictionary *)weights mutableCopy];
    [v6 addEntriesFromDictionary:*(poseCopy + 3)];
  }

  else
  {
    v6 = [*(poseCopy + 3) copy];
  }

  hasNeckPosition = self->_hasNeckPosition;
  v16 = *self->_neckPosition;
  if (*(poseCopy + 8) == 1)
  {
    v16 = *(poseCopy + 2);
    hasNeckPosition = 1;
  }

  hasNeckOrientation = self->_hasNeckOrientation;
  v15 = *&self[1].super.isa;
  if (*(poseCopy + 9) == 1)
  {
    v15 = *(poseCopy + 3);
    hasNeckOrientation = 1;
  }

  if (self->_bakedAnimationBlendFactor >= *(poseCopy + 2))
  {
    bakedAnimationBlendFactor = self->_bakedAnimationBlendFactor;
  }

  else
  {
    bakedAnimationBlendFactor = *(poseCopy + 2);
  }

  v10 = objc_alloc(objc_opt_class());
  if (hasNeckPosition)
  {
    v11 = &v16;
  }

  else
  {
    v11 = 0;
  }

  if (hasNeckOrientation)
  {
    v12 = &v15;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 initWithWeights:v6 neckPosition:v11 neckOrientation:v12 bakedAnimationBlendFactor:{bakedAnimationBlendFactor, v15, v16}];

  return v13;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F39AEE78];
  allKeys = [(NSMutableDictionary *)self->_weights allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __28__AVTAvatarPose_description__block_invoke;
  v16 = &unk_1E7F49FD8;
  v6 = v3;
  v17 = v6;
  selfCopy = self;
  [v5 enumerateObjectsUsingBlock:&v13];
  if (self->_hasNeckPosition)
  {
    [(__CFString *)v6 appendFormat:@"\n\tNeck position : (%.2f, %.2f, %.2f)", COERCE_FLOAT(*self->_neckPosition), COERCE_FLOAT(HIDWORD(*self->_neckPosition)), COERCE_FLOAT(*&self->_neckPosition[8])];
  }

  if (self->_hasNeckOrientation)
  {
    [(__CFString *)v6 appendFormat:@"\n\tNeck orientation : (%.2f, %.2f, %.2f, %.2f)", COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(*&self[1]._hasNeckPosition), COERCE_FLOAT(HIDWORD(*&self[1].super.isa)), v13, v14, v15, v16];
  }

  if (self->_bakedAnimationBlendFactor > 0.0)
  {
    [(__CFString *)v6 appendFormat:@"\n\tAnimation factor : %.2f", *&self->_bakedAnimationBlendFactor];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(__CFString *)v6 length];
  v10 = @" | empty pose";
  if (v9)
  {
    v10 = v6;
  }

  v11 = [v7 stringWithFormat:@"<%@ %p%@>", v8, self, v10];

  return v11;
}

void __28__AVTAvatarPose_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [v2 appendFormat:@"\n\t%@ : %@", v4, v5];
}

- (id)hashString
{
  if ([(AVTAvatarPose *)self isNeutralPose])
  {
    v3 = @"neutral";
  }

  else if ([(AVTAvatarPose *)self isFriendlyPose])
  {
    v3 = @"friendly";
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F39AEE78];
    for (i = 0; i != 52; ++i)
    {
      v5 = AVTBlendShapeLocationFromARIndex(i);
      v6 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:v5];
      [v6 floatValue];
      v8 = v7;

      if (v8 > 0.0)
      {
        if ([(__CFString *)v3 length])
        {
          v9 = 59;
        }

        else
        {
          v9 = 0;
        }

        [(__CFString *)v3 appendFormat:@"%c%d:%.4f", v9, i, v8];
      }
    }

    v10 = [(NSMutableDictionary *)self->_weights objectForKeyedSubscript:@"Emoji"];
    [v10 floatValue];
    v12 = v11;

    if (v12 > 0.0)
    {
      v13 = [(__CFString *)v3 length];
      v14 = 59;
      if (!v13)
      {
        v14 = 0;
      }

      [(__CFString *)v3 appendFormat:@"%c%@:%.4f", v14, @"Emoji", v12];
    }

    if (self->_hasNeckPosition)
    {
      [(__CFString *)v3 appendFormat:@"%cpos:(%.4f;%.4f;%.4f)", 32 * ([(__CFString *)v3 length]!= 0), COERCE_FLOAT(*self->_neckPosition), COERCE_FLOAT(HIDWORD(*self->_neckPosition)), COERCE_FLOAT(*&self->_neckPosition[8])];
    }

    if (self->_hasNeckOrientation)
    {
      [(__CFString *)v3 appendFormat:@"%crot:(%.4f;%.4f;%.4f;%.4f)", 32 * ([(__CFString *)v3 length]!= 0), COERCE_FLOAT(*&self[1].super.isa), COERCE_FLOAT(self[1].super.isa >> 32), COERCE_FLOAT(*&self[1]._hasNeckPosition), COERCE_FLOAT(HIDWORD(*&self[1].super.isa))];
    }

    if (self->_bakedAnimationBlendFactor > 0.0)
    {
      [(__CFString *)v3 appendFormat:@"%canim:%.3f", 32 * ([(__CFString *)v3 length]!= 0), *&self->_bakedAnimationBlendFactor];
    }
  }

  return v3;
}

+ (id)posesForAnimojiNamed:(id)named inPosePack:(id)pack
{
  namedCopy = named;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__AVTAvatarPose_posesForAnimojiNamed_inPosePack___block_invoke;
  v10[3] = &unk_1E7F4A020;
  v11 = namedCopy;
  v7 = namedCopy;
  v8 = [self posesInPosePack:pack avatarSelectionBlock:v10];

  return v8;
}

id __49__AVTAvatarPose_posesForAnimojiNamed_inPosePack___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"animoji"];
  }

  v7 = v6;

  return v7;
}

+ (id)posesInPosePack:(id)pack avatarSelectionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  packCopy = pack;
  blockCopy = block;
  if ([packCopy isEqualToString:@"watchFaceToybox"] && (+[AVTResourceLocator sharedResourceLocator](), v7 = objc_claimAutoreleasedReturnValue(), -[AVTResourceLocator pathForPoseResource:ofType:isDirectory:](v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v8];
    v9 = blockCopy[2](blockCopy);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[AVTAvatarPose alloc] initWithDictionaryRepresentation:*(*(&v20 + 1) + 8 * i)];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v8 = avt_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AVTAvatarBodyPose *)packCopy posesInPosePack:v8];
    }

    v10 = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

@end