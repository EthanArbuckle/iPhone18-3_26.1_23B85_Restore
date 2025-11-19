@interface VNHumanHandPoseObservation
- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanHandPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error;
- (VNChirality)chirality;
- (VNRecognizedPoint)recognizedPointForJointName:(VNHumanHandPoseObservationJointName)jointName error:(NSError *)error;
@end

@implementation VNHumanHandPoseObservation

- (VNChirality)chirality
{
  v2 = [(VNRecognizedPointsObservation *)self recognizedPointsSpecifier];
  v3 = [v2 chirality];

  return v3;
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