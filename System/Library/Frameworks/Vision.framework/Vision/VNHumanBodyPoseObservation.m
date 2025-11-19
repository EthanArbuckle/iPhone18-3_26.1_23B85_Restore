@interface VNHumanBodyPoseObservation
- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanBodyPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error;
- (VNRecognizedPoint)recognizedPointForJointName:(VNHumanBodyPoseObservationJointName)jointName error:(NSError *)error;
@end

@implementation VNHumanBodyPoseObservation

- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanBodyPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointsForGroupKey:jointsGroupName error:error];

  return v4;
}

- (VNRecognizedPoint)recognizedPointForJointName:(VNHumanBodyPoseObservationJointName)jointName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointForKey:jointName error:error];

  return v4;
}

@end