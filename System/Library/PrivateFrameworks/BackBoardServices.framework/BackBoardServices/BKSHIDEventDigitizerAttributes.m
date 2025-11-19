@interface BKSHIDEventDigitizerAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)a3;
- (CGSize)digitizerSurfaceSize;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation BKSHIDEventDigitizerAttributes

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_436 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_436, block);
  }

  v2 = protobufSchema_schema_435;

  return v2;
}

uint64_t __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_435 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_438];

  return MEMORY[0x1EEE66BB8]();
}

void __48__BKSHIDEventDigitizerAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_maximumForce"];
  [v2 addField:"_maximumPositionZ"];
  [v2 addField:"_digitizerSurfaceSize"];
  [v2 addField:"_initialTouchTimestamp"];
  [v2 addField:"_activeModifiers"];
  [v2 addField:"_systemGesturesPossible"];
  [v2 addField:"_systemGestureStateChange"];
  [v2 addField:"_sceneTouchBehavior"];
  [v2 addField:"_touchStreamIdentifier"];
  [v2 addRepeatingField:"_pathAttributes" containsClass:objc_opt_class()];
}

- (CGSize)digitizerSurfaceSize
{
  width = self->_digitizerSurfaceSize.width;
  height = self->_digitizerSurfaceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = BKSHIDEventDigitizerAttributes;
  [(BKSHIDEventBaseAttributes *)&v19 appendDescriptionToFormatter:v4];
  v5 = [v4 appendObject:self->_pathAttributes withName:@"pathAttributes" skipIfNil:1];
  maximumForce = self->_maximumForce;
  if (maximumForce != 0.0)
  {
    v7 = [v4 appendFloat:@"maximumForce" withName:maximumForce];
  }

  if (self->_maximumPositionZ != 0.0)
  {
    v8 = [v4 appendFloat:@"maximumPositionZ" withName:?];
  }

  v9 = [v4 appendBool:self->_systemGesturesPossible withName:@"systemGesturesPossible" ifEqualTo:1];
  v10 = [v4 appendBool:self->_systemGestureStateChange withName:@"systemGestureStateChange" ifEqualTo:1];
  sceneTouchBehavior = self->_sceneTouchBehavior;
  if (sceneTouchBehavior)
  {
    v12 = NSStringFromBKSSceneHostTouchBehavior(sceneTouchBehavior);
    [v4 appendString:v12 withName:@"sceneTouchBehavior"];
  }

  if (self->_touchStreamIdentifier)
  {
    v13 = NSStringFromBKSTouchStreamIdentifier(self->_touchStreamIdentifier);
    [v4 appendString:v13 withName:@"touchStreamIdentifier"];
  }

  if (self->_initialTouchTimestamp != 0.0)
  {
    v14 = [v4 appendTimeInterval:@"initialTouchTimestamp" withName:0 decomposeUnits:?];
  }

  activeModifiers = self->_activeModifiers;
  if (activeModifiers)
  {
    v16 = NSStringFromBKSKeyModifierFlags(activeModifiers);
    v17 = [v4 appendObject:v16 withName:@"activeModifiers"];
  }

  if (self->_digitizerSurfaceSize.width != 0.0 || self->_digitizerSurfaceSize.height != 0.0)
  {
    v18 = [v4 appendSize:@"surfaceDimensions" withName:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BKSHIDEventDigitizerAttributes;
  if ([(BKSHIDEventBaseAttributes *)&v11 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if (self->_maximumForce == *(v5 + 15) && self->_maximumPositionZ == *(v5 + 8) && self->_digitizerSurfaceSize.height == *(v5 + 14) && self->_digitizerSurfaceSize.width == *(v5 + 13) && self->_initialTouchTimestamp == *(v5 + 10) && self->_activeModifiers == v5[11] && self->_systemGesturesPossible == *(v5 + 57) && self->_systemGestureStateChange == *(v5 + 58) && self->_sceneTouchBehavior == v5[12] && self->_touchStreamIdentifier == *(v5 + 56))
    {
      pathAttributes = self->_pathAttributes;
      v7 = v5[9];
      v10 = v5;
      v8 = BSEqualObjects();
      v5 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = BKSHIDEventDigitizerAttributes;
  v4 = [(BKSHIDEventBaseAttributes *)&v8 copyWithZone:a3];
  *(v4 + 15) = LODWORD(self->_maximumForce);
  *(v4 + 8) = *&self->_maximumPositionZ;
  *(v4 + 104) = self->_digitizerSurfaceSize;
  *(v4 + 10) = *&self->_initialTouchTimestamp;
  *(v4 + 11) = self->_activeModifiers;
  v4[57] = self->_systemGesturesPossible;
  v4[58] = self->_systemGestureStateChange;
  *(v4 + 12) = self->_sceneTouchBehavior;
  v4[56] = self->_touchStreamIdentifier;
  v5 = [(NSArray *)self->_pathAttributes copy];
  v6 = *(v4 + 9);
  *(v4 + 9) = v5;

  return v4;
}

@end