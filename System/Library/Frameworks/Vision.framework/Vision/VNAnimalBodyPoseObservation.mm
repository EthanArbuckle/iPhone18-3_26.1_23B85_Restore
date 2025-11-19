@interface VNAnimalBodyPoseObservation
- (NSDictionary)recognizedPointsForJointsGroupName:(VNAnimalBodyPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error;
- (VNRecognizedPoint)recognizedPointForJointName:(VNAnimalBodyPoseObservationJointName)jointName error:(NSError *)error;
@end

@implementation VNAnimalBodyPoseObservation

- (NSDictionary)recognizedPointsForJointsGroupName:(VNAnimalBodyPoseObservationJointsGroupName)jointsGroupName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointsForGroupKey:jointsGroupName error:error];

  return v4;
}

- (VNRecognizedPoint)recognizedPointForJointName:(VNAnimalBodyPoseObservationJointName)jointName error:(NSError *)error
{
  v4 = [(VNRecognizedPointsObservation *)self recognizedPointForKey:jointName error:error];

  return v4;
}

@end