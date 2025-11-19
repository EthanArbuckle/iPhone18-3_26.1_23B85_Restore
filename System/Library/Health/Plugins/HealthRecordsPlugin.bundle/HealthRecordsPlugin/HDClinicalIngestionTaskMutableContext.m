@interface HDClinicalIngestionTaskMutableContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HDClinicalIngestionTaskMutableContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDClinicalIngestionTaskContext alloc];
  v5 = [(HDClinicalIngestionTaskMutableContext *)self options];
  v6 = [(HDClinicalIngestionTaskMutableContext *)self reason];
  v7 = [(HDClinicalIngestionTaskMutableContext *)self inputFileHandle];
  v8 = [(HDClinicalIngestionTaskContext *)v4 initWithOptions:v5 reason:v6 inputFileHandle:v7];

  return v8;
}

@end