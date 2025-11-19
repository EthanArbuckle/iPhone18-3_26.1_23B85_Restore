@interface BKSHIDEventPointerAttributes
+ (id)protobufSchema;
- (BOOL)isEqual:(id)a3;
- (CGPoint)acceleratedRelativePosition;
- (CGPoint)unacceleratedRelativePosition;
- (id)copyWithZone:(_NSZone *)a3;
- (unsigned)pointerState;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)setPointerState:(unsigned __int16)a3;
@end

@implementation BKSHIDEventPointerAttributes

- (CGPoint)acceleratedRelativePosition
{
  x = self->_acceleratedRelativePosition.x;
  y = self->_acceleratedRelativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)unacceleratedRelativePosition
{
  x = self->_unacceleratedRelativePosition.x;
  y = self->_unacceleratedRelativePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BKSHIDEventPointerAttributes;
  [(BKSHIDEventDigitizerAttributes *)&v14 appendDescriptionToFormatter:v4];
  v5 = NSStringFromBKSHIDEventContextType(self->_contextType);
  [v4 appendString:v5 withName:@"contextType"];

  v6 = NSStringFromBKSHIDEventContextMove(self->_contextMove);
  [v4 appendString:v6 withName:@"contextMove"];

  v7 = [v4 appendObject:self->_hitTestContexts withName:@"hitTestContexts" skipIfNil:1];
  v8 = [v4 appendObject:self->_hitTestSecurityAnalysis withName:@"hitTestSecurityAnalysis" skipIfNil:1];
  v9 = [v4 appendPoint:@"unacceleratedRelativePosition" withName:{self->_unacceleratedRelativePosition.x, self->_unacceleratedRelativePosition.y}];
  v10 = [v4 appendPoint:@"acceleratedRelativePosition" withName:{self->_acceleratedRelativePosition.x, self->_acceleratedRelativePosition.y}];
  if (self->_fingerDownCount >= 1)
  {
    v11 = [v4 appendInteger:? withName:?];
  }

  if (self->_pointerEdgeMask)
  {
    v12 = NSStringFromBKSHIDEventScreenEdgeMask(self->_pointerEdgeMask);
    [v4 appendString:v12 withName:@"pointerEdgeMask"];
  }

  if (self->_teleportState)
  {
    v13 = NSStringFromBKSHIDEventTeleportState(self->_teleportState);
    [v4 appendString:v13 withName:@"teleportState"];
  }
}

- (void)setPointerState:(unsigned __int16)a3
{
  if ((a3 - 1) <= 3u)
  {
    v3 = (a3 - 1);
    v4 = qword_1863CFBC0[v3];
    v5 = qword_1863CFBE0[v3];
    self->_contextType = v4;
    self->_contextMove = v5;
  }
}

- (unsigned)pointerState
{
  contextType = self->_contextType;
  if (contextType >= 2)
  {
    if (contextType == 2)
    {
      contextMove = self->_contextMove;
      if (contextMove < 3)
      {
        return 0x300040004uLL >> (16 * contextMove);
      }
    }

LABEL_7:
    LOWORD(v4) = 2;
    return v4;
  }

  v3 = self->_contextMove;
  if (v3 >= 3)
  {
    goto LABEL_7;
  }

  return 0x300010002uLL >> (16 * v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKSHIDEventPointerAttributes;
  if ([(BKSHIDEventDigitizerAttributes *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = v5;
    v11 = self->_contextMove == *(v5 + 16) && self->_contextType == *(v5 + 17) && (hitTestContexts = self->_hitTestContexts, v8 = *(v6 + 18), BSEqualObjects()) && (hitTestSecurityAnalysis = self->_hitTestSecurityAnalysis, v10 = *(v6 + 20), BSEqualObjects()) && self->_unacceleratedRelativePosition.x == v6[21] && self->_unacceleratedRelativePosition.y == v6[22] && self->_acceleratedRelativePosition.x == v6[23] && self->_acceleratedRelativePosition.y == v6[24] && self->_fingerDownCount == *(v6 + 19) && self->_pointerEdgeMask == *(v6 + 120) && self->_teleportState == *(v6 + 61);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = BKSHIDEventPointerAttributes;
  v5 = [(BKSHIDEventDigitizerAttributes *)&v9 copyWithZone:?];
  *(v5 + 17) = self->_contextType;
  *(v5 + 16) = self->_contextMove;
  v6 = [(NSArray *)self->_hitTestContexts copyWithZone:a3];
  v7 = *(v5 + 18);
  *(v5 + 18) = v6;

  objc_storeStrong(v5 + 20, self->_hitTestSecurityAnalysis);
  *(v5 + 168) = self->_unacceleratedRelativePosition;
  *(v5 + 184) = self->_acceleratedRelativePosition;
  *(v5 + 19) = self->_fingerDownCount;
  v5[120] = self->_pointerEdgeMask;
  *(v5 + 61) = self->_teleportState;
  return v5;
}

+ (id)protobufSchema
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (protobufSchema_onceToken_551 != -1)
  {
    dispatch_once(&protobufSchema_onceToken_551, block);
  }

  v2 = protobufSchema_schema_550;

  return v2;
}

uint64_t __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke(uint64_t a1)
{
  protobufSchema_schema_550 = [MEMORY[0x1E698E750] buildSchemaForClass:*(a1 + 32) builder:&__block_literal_global_553];

  return MEMORY[0x1EEE66BB8]();
}

void __46__BKSHIDEventPointerAttributes_protobufSchema__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:"_contextType"];
  [v2 addField:"_contextMove"];
  [v2 addRepeatingField:"_hitTestContexts" containsClass:objc_opt_class()];
  [v2 addField:"_hitTestSecurityAnalysis"];
  [v2 addField:"_unacceleratedRelativePosition"];
  [v2 addField:"_acceleratedRelativePosition"];
  [v2 addField:"_fingerDownCount"];
  [v2 addField:"_pointerEdgeMask"];
  [v2 addField:"_teleportState"];
}

@end