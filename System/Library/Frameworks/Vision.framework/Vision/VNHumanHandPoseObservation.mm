@interface VNHumanHandPoseObservation
- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanHandPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error;
- (VNChirality)chirality;
- (VNRecognizedPoint)recognizedPointForJointName:(VNHumanHandPoseObservationJointName)jointName error:(NSError *)error;
@end

@implementation VNHumanHandPoseObservation

- (VNChirality)chirality
{
  recognizedPointsSpecifier = [(VNRecognizedPointsObservation *)self recognizedPointsSpecifier];
  chirality = [recognizedPointsSpecifier chirality];

  return chirality;
}

- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanHandPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointsForGroupKey:jointsGroupName error:error];

  return v4;
}

- (VNRecognizedPoint)recognizedPointForJointName:(VNHumanHandPoseObservationJointName)jointName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointForKey:jointName error:error];

  return v4;
}

@end