@interface CRLBezierHitTesterHitInfoWrapper
- ($83CD26A8C5B845DF12AAFDBAEBBD4A79)hitInfo;
- (CRLBezierHitTesterHitInfoWrapper)initWithHitInfo:(id *)info hitPath:(id)path;
- (id)description;
@end

@implementation CRLBezierHitTesterHitInfoWrapper

- (CRLBezierHitTesterHitInfoWrapper)initWithHitInfo:(id *)info hitPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = CRLBezierHitTesterHitInfoWrapper;
  v8 = [(CRLBezierHitTesterHitInfoWrapper *)&v14 init];
  v9 = v8;
  if (v8)
  {
    var0 = info->var0;
    var1 = info->var1;
    v12 = *&info->var2;
    v8->_hitInfo.distanceBetweenPoints = info->var4;
    v8->_hitInfo.hitPoint = var1;
    *&v8->_hitInfo.hitPathID = v12;
    v8->_hitInfo.testPoint = var0;
    objc_storeStrong(&v8->_hitPath, path);
  }

  return v9;
}

- (id)description
{
  v3 = NSStringFromCGPoint(self->_hitInfo.testPoint);
  v4 = NSStringFromCGPoint(self->_hitInfo.hitPoint);
  v5 = [NSString stringWithFormat:@"testPoint: %@ hitPoint: %@ hitPathID: %lu hitPath: %p hitPercentAlongPath:%f distanceBetweenPoints: %f", v3, v4, self->_hitInfo.hitPathID, self->_hitPath, *&self->_hitInfo.hitPercentAlongPath, *&self->_hitInfo.distanceBetweenPoints];

  return v5;
}

- ($83CD26A8C5B845DF12AAFDBAEBBD4A79)hitInfo
{
  v3 = *&self->var2;
  retstr->var0 = self->var1;
  retstr->var1 = v3;
  *&retstr->var2 = *&self->var4;
  retstr->var4 = self[1].var0.y;
  return self;
}

@end