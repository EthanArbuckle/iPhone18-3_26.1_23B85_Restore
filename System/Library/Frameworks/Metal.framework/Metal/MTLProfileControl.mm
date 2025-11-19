@interface MTLProfileControl
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation MTLProfileControl

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 4) = *&self->_uscCliqueTraceLevel;
    *(result + 10) = self->_uscEmitThreadControlFlow;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(a3) && self->_uscCliqueTraceLevel == *(a3 + 8) && self->_uscEmitPosition == *(a3 + 9) && self->_uscEmitThreadControlFlow == *(a3 + 10);
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

- (id)formattedDescription:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = MTLProfileControl;
  return [(MTLProfileControl *)&v4 description];
}

@end