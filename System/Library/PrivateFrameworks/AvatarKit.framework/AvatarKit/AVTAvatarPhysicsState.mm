@interface AVTAvatarPhysicsState
- (AVTAvatarPhysicsState)initWithDictionaryRepresentation:(id)representation;
@end

@implementation AVTAvatarPhysicsState

- (AVTAvatarPhysicsState)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = AVTAvatarPhysicsState;
  v5 = [(AVTAvatarPhysicsState *)&v9 init];
  if (v5)
  {
    v6 = [representationCopy copy];
    dictionaryRepresentation = v5->_dictionaryRepresentation;
    v5->_dictionaryRepresentation = v6;
  }

  return v5;
}

@end