@interface MTLProfileControl
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hash;
@end

@implementation MTLProfileControl

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    *(result + 4) = *&self->_uscCliqueTraceLevel;
    *(result + 10) = self->_uscEmitThreadControlFlow;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_uscCliqueTraceLevel == *(equal + 8) && self->_uscEmitPosition == *(equal + 9) && self->_uscEmitThreadControlFlow == *(equal + 10);
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  uscEmitPosition = self->_uscEmitPosition;
  v5[0] = self->_uscCliqueTraceLevel;
  v5[1] = uscEmitPosition;
  v5[2] = self->_uscEmitThreadControlFlow;
  LODWORD(result) = _MTLHashState(v5, 0xCuLL);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v4.receiver = self;
  v4.super_class = MTLProfileControl;
  return [(MTLProfileControl *)&v4 description];
}

@end