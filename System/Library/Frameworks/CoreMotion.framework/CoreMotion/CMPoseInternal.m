@interface CMPoseInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPoseInternal:(id)a3;
- (CMPoseInternal)initWithPose:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CMPoseInternal

- (CMPoseInternal)initWithPose:(id *)a3
{
  v9.receiver = self;
  v9.super_class = CMPoseInternal;
  v4 = [(CMPoseInternal *)&v9 init];
  if (v4)
  {
    v5 = [CMAttitude alloc];
    v4->fAttitude = objc_msgSend_initWithQuaternion_(v5, v6, v7, a3->var0.var0, a3->var0.var1, a3->var0.var2, a3->var0.var3);
    *&v4->fTranslation.x = *&a3->var1.var0;
    *&v4->fTranslation.z = *&a3->var1.var2;
    v4->fReceivedAuxTimestamp = a3->var3;
    v4->fMachAbsTimestamp = a3->var4;
    v4->fPresentationTimestamp = a3->var5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPoseInternal;
  [(CMPoseInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v11 = objc_msgSend_init(v7, v8, v9);
  if (v11)
  {
    *(v11 + 8) = objc_msgSend_copyWithZone_(self->fAttitude, v10, a3);
    z = self->fTranslation.z;
    *(v11 + 16) = *&self->fTranslation.x;
    *(v11 + 32) = z;
    *(v11 + 40) = self->fConsumedAuxTimestamp;
    *(v11 + 48) = self->fReceivedAuxTimestamp;
    *(v11 + 56) = self->fMachAbsTimestamp;
    *(v11 + 64) = self->fPresentationTimestamp;
  }

  return v11;
}

- (BOOL)isEqualToPoseInternal:(id)a3
{
  if (a3)
  {
    isEqual = objc_msgSend_isEqual_(self->fAttitude, a2, *(a3 + 1));
    if (isEqual)
    {
      LOBYTE(isEqual) = self->fTranslation.x == *(a3 + 2) && self->fTranslation.y == *(a3 + 3) && self->fTranslation.z == *(a3 + 4) && self->fConsumedAuxTimestamp == *(a3 + 5) && self->fReceivedAuxTimestamp == *(a3 + 6) && self->fMachAbsTimestamp == *(a3 + 7) && self->fPresentationTimestamp == *(a3 + 8);
    }
  }

  else
  {
    LOBYTE(isEqual) = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToPoseInternal_, a3);
}

@end