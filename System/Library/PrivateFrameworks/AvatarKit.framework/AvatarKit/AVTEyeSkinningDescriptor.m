@interface AVTEyeSkinningDescriptor
- (uint64_t)leftEyeLookOutTargetIndex;
- (uint64_t)leftEyeLookUpTargetIndex;
- (uint64_t)rightEyeLookDownTargetIndex;
- (uint64_t)rightEyeLookInTargetIndex;
- (uint64_t)rightEyeLookOutTargetIndex;
- (uint64_t)rightEyeLookUpTargetIndex;
- (uint64_t)setLeftEyeLookOutTargetIndex:(uint64_t)result;
- (uint64_t)setLeftEyeLookUpTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeLookDownTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeLookInTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeLookOutTargetIndex:(uint64_t)result;
- (uint64_t)setRightEyeLookUpTargetIndex:(uint64_t)result;
@end

@implementation AVTEyeSkinningDescriptor

- (uint64_t)leftEyeLookOutTargetIndex
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)setLeftEyeLookOutTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)leftEyeLookUpTargetIndex
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)setLeftEyeLookUpTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)rightEyeLookDownTargetIndex
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)setRightEyeLookDownTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (uint64_t)rightEyeLookInTargetIndex
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)setRightEyeLookInTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)rightEyeLookOutTargetIndex
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)setRightEyeLookOutTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (uint64_t)rightEyeLookUpTargetIndex
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)setRightEyeLookUpTargetIndex:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

@end