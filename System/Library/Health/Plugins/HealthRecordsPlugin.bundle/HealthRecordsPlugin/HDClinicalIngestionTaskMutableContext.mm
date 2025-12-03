@interface HDClinicalIngestionTaskMutableContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HDClinicalIngestionTaskMutableContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDClinicalIngestionTaskContext alloc];
  options = [(HDClinicalIngestionTaskMutableContext *)self options];
  reason = [(HDClinicalIngestionTaskMutableContext *)self reason];
  inputFileHandle = [(HDClinicalIngestionTaskMutableContext *)self inputFileHandle];
  v8 = [(HDClinicalIngestionTaskContext *)v4 initWithOptions:options reason:reason inputFileHandle:inputFileHandle];

  return v8;
}

@end