@interface CMPoseInternal
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPoseInternal:(id)internal;
- (CMPoseInternal)initWithPose:(id *)pose;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CMPoseInternal

- (CMPoseInternal)initWithPose:(id *)pose
{
  v9.receiver = self;
  v9.super_class = CMPoseInternal;
  v4 = [(CMPoseInternal *)&v9 init];
  if (v4)
  {
    v5 = [CMAttitude alloc];
    v4->fAttitude = objc_msgSend_initWithQuaternion_(v5, v6, v7, pose->var0.var0, pose->var0.var1, pose->var0.var2, pose->var0.var3);
    *&v4->fTranslation.x = *&pose->var1.var0;
    *&v4->fTranslation.z = *&pose->var1.var2;
    v4->fReceivedAuxTimestamp = pose->var3;
    v4->fMachAbsTimestamp = pose->var4;
    v4->fPresentationTimestamp = pose->var5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMPoseInternal;
  [(CMPoseInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v11 = objc_msgSend_init(v7, v8, v9);
  if (v11)
  {
    *(v11 + 8) = objc_msgSend_copyWithZone_(self->fAttitude, v10, zone);
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

- (BOOL)isEqualToPoseInternal:(id)internal
{
  if (internal)
  {
    isEqual = objc_msgSend_isEqual_(self->fAttitude, a2, *(internal + 1));
    if (isEqual)
    {
      LOBYTE(isEqual) = self->fTranslation.x == *(internal + 2) && self->fTranslation.y == *(internal + 3) && self->fTranslation.z == *(internal + 4) && self->fConsumedAuxTimestamp == *(internal + 5) && self->fReceivedAuxTimestamp == *(internal + 6) && self->fMachAbsTimestamp == *(internal + 7) && self->fPresentationTimestamp == *(internal + 8);
    }
  }

  else
  {
    LOBYTE(isEqual) = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToPoseInternal_, equal);
}

@end