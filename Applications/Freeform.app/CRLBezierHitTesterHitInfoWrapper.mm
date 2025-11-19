@interface CRLBezierHitTesterHitInfoWrapper
- ($83CD26A8C5B845DF12AAFDBAEBBD4A79)hitInfo;
- (CRLBezierHitTesterHitInfoWrapper)initWithHitInfo:(id *)a3 hitPath:(id)a4;
- (id)description;
@end

@implementation CRLBezierHitTesterHitInfoWrapper

- (CRLBezierHitTesterHitInfoWrapper)initWithHitInfo:(id *)a3 hitPath:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRLBezierHitTesterHitInfoWrapper;
  v8 = [(CRLBezierHitTesterHitInfoWrapper *)&v14 init];
  v9 = v8;
  if (v8)
  {
    var0 = a3->var0;
    var1 = a3->var1;
    v12 = *&a3->var2;
    v8->_hitInfo.distanceBetweenPoints = a3->var4;
    v8->_hitInfo.hitPoint = var1;
    *&v8->_hitInfo.hitPathID = v12;
    v8->_hitInfo.testPoint = var0;
    objc_storeStrong(&v8->_hitPath, a4);
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