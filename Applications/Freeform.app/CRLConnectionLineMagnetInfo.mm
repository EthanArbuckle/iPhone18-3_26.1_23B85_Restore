@interface CRLConnectionLineMagnetInfo
- (CGPoint)position;
- (CRLConnectionLineMagnetInfo)initWithType:(unint64_t)type position:(CGPoint)position layout:(id)layout connected:(BOOL)connected;
@end

@implementation CRLConnectionLineMagnetInfo

- (CRLConnectionLineMagnetInfo)initWithType:(unint64_t)type position:(CGPoint)position layout:(id)layout connected:(BOOL)connected
{
  y = position.y;
  x = position.x;
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = CRLConnectionLineMagnetInfo;
  v13 = [(CRLConnectionLineMagnetInfo *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->mMagnetType = type;
    v13->mPosition.x = x;
    v13->mPosition.y = y;
    objc_storeStrong(&v13->mLayout, layout);
    v14->mConnected = connected;
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