@interface AVTAvatarPhysicsState
- (AVTAvatarPhysicsState)initWithDictionaryRepresentation:(id)a3;
@end

@implementation AVTAvatarPhysicsState

- (AVTAvatarPhysicsState)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AVTAvatarPhysicsState;
  v5 = [(AVTAvatarPhysicsState *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

@end