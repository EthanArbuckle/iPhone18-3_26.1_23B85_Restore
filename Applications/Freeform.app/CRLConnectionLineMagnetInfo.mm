@interface CRLConnectionLineMagnetInfo
- (CGPoint)position;
- (CRLConnectionLineMagnetInfo)initWithType:(unint64_t)a3 position:(CGPoint)a4 layout:(id)a5 connected:(BOOL)a6;
@end

@implementation CRLConnectionLineMagnetInfo

- (CRLConnectionLineMagnetInfo)initWithType:(unint64_t)a3 position:(CGPoint)a4 layout:(id)a5 connected:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = CRLConnectionLineMagnetInfo;
  v13 = [(CRLConnectionLineMagnetInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->mMagnetType = a3;
    v13->mPosition.x = x;
    v13->mPosition.y = y;
    objc_storeStrong(&v13->mLayout, a5);
    v14->mConnected = a6;
  }

  return v14;
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end