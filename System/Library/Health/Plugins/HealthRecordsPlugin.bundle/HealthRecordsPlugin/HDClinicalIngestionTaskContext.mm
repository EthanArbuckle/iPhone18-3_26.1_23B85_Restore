@interface HDClinicalIngestionTaskContext
- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)options reason:(id)reason inputFileHandle:(id)handle;
- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)options unitTesting_options:(unint64_t)testing_options reason:(id)reason;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)queryModeFromOptionsGivenQueryMode:(int64_t)mode;
@end

@implementation HDClinicalIngestionTaskContext

- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)options reason:(id)reason inputFileHandle:(id)handle
{
  reasonCopy = reason;
  handleCopy = handle;
  v15.receiver = self;
  v15.super_class = HDClinicalIngestionTaskContext;
  v10 = [(HDClinicalIngestionTaskContext *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = options;
    v12 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v12;

    objc_storeStrong(&v11->_inputFileHandle, handle);
  }

  return v11;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  options = [(HDClinicalIngestionTaskContext *)self options];
  reason = [(HDClinicalIngestionTaskContext *)self reason];
  v7 = [v3 initWithFormat:@"<%@:%p; options: %lX; reason: %@;>", v4, self, options, reason, 0];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HDClinicalIngestionTaskMutableContext alloc];
  options = [(HDClinicalIngestionTaskContext *)self options];
  reason = [(HDClinicalIngestionTaskContext *)self reason];
  v7 = [(HDClinicalIngestionTaskContext *)v4 initWithOptions:options reason:reason];

  objc_storeStrong(v7 + 3, self->_inputFileHandle);
  return v7;
}

- (int64_t)queryModeFromOptionsGivenQueryMode:(int64_t)mode
{
  if (([(HDClinicalIngestionTaskContext *)self options]& 0x20) != 0)
  {
    return 1;
  }

  if (([(HDClinicalIngestionTaskContext *)self options]& 0x40) != 0)
  {
    return 2;
  }

  return mode;
}

- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)options unitTesting_options:(unint64_t)testing_options reason:(id)reason
{
  reasonCopy = reason;
  v14.receiver = self;
  v14.super_class = HDClinicalIngestionTaskContext;
  v9 = [(HDClinicalIngestionTaskContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_options = options;
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;

    v10->_unitTesting_options = testing_options;
  }

  return v10;
}

@end