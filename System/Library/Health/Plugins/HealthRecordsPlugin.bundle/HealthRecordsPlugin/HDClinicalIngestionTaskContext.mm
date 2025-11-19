@interface HDClinicalIngestionTaskContext
- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)a3 reason:(id)a4 inputFileHandle:(id)a5;
- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)a3 unitTesting_options:(unint64_t)a4 reason:(id)a5;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)queryModeFromOptionsGivenQueryMode:(int64_t)a3;
@end

@implementation HDClinicalIngestionTaskContext

- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)a3 reason:(id)a4 inputFileHandle:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HDClinicalIngestionTaskContext;
  v10 = [(HDClinicalIngestionTaskContext *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_options = a3;
    v12 = [v8 copy];
    reason = v11->_reason;
    v11->_reason = v12;

    objc_storeStrong(&v11->_inputFileHandle, a5);
  }

  return v11;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(HDClinicalIngestionTaskContext *)self options];
  v6 = [(HDClinicalIngestionTaskContext *)self reason];
  v7 = [v3 initWithFormat:@"<%@:%p; options: %lX; reason: %@;>", v4, self, v5, v6, 0];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HDClinicalIngestionTaskMutableContext alloc];
  v5 = [(HDClinicalIngestionTaskContext *)self options];
  v6 = [(HDClinicalIngestionTaskContext *)self reason];
  v7 = [(HDClinicalIngestionTaskContext *)v4 initWithOptions:v5 reason:v6];

  objc_storeStrong(v7 + 3, self->_inputFileHandle);
  return v7;
}

- (int64_t)queryModeFromOptionsGivenQueryMode:(int64_t)a3
{
  if (([(HDClinicalIngestionTaskContext *)self options]& 0x20) != 0)
  {
    return 1;
  }

  if (([(HDClinicalIngestionTaskContext *)self options]& 0x40) != 0)
  {
    return 2;
  }

  return a3;
}

- (HDClinicalIngestionTaskContext)initWithOptions:(unint64_t)a3 unitTesting_options:(unint64_t)a4 reason:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = HDClinicalIngestionTaskContext;
  v9 = [(HDClinicalIngestionTaskContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_options = a3;
    v11 = [v8 copy];
    reason = v10->_reason;
    v10->_reason = v11;

    v10->_unitTesting_options = a4;
  }

  return v10;
}

@end