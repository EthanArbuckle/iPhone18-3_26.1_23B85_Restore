@interface CRLCollaboratorCursorHUDPosition
- (CGPoint)position;
- (CRLCollaboratorCursorHUDPosition)initWithPosition:(CGPoint)a3 direction:(unint64_t)a4;
- (id)description;
@end

@implementation CRLCollaboratorCursorHUDPosition

- (CRLCollaboratorCursorHUDPosition)initWithPosition:(CGPoint)a3 direction:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = CRLCollaboratorCursorHUDPosition;
  result = [(CRLCollaboratorCursorHUDPosition *)&v8 init];
  if (result)
  {
    result->mPosition.x = x;
    result->mPosition.y = y;
    result->mDirection = a4;
    result->mAllowedToFlip = 1;
  }

  return result;
}

- (id)description
{
  mDirection = self->mDirection;
  if (mDirection > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_1018595B0 + mDirection);
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromCGPoint(self->mPosition);
  v8 = v7;
  if (self->mAllowedToFlip)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"<%@ %p pos=%@ direction=%@ allowedToFlip %@>", v6, self, v7, v4, v9];

  return v10;
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