@interface CMCompanionRelativeElevationDataInternal
- (CMCompanionRelativeElevationDataInternal)initWithCompanionRelativeElevation:(float)elevation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CMCompanionRelativeElevationDataInternal

- (CMCompanionRelativeElevationDataInternal)initWithCompanionRelativeElevation:(float)elevation
{
  v10.receiver = self;
  v10.super_class = CMCompanionRelativeElevationDataInternal;
  v4 = [(CMCompanionRelativeElevationDataInternal *)&v10 init];
  v8 = v4;
  if (v4)
  {
    *&v7 = elevation;
    objc_msgSend_setCompanionRelativeElevation_(v4, v5, v6, v7);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (result)
  {
    *(result + 2) = LODWORD(self->fCompanionRelativeElevation);
  }

  return result;
}

@end