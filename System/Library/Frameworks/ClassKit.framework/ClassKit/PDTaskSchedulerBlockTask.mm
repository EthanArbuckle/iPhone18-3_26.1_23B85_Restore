@interface PDTaskSchedulerBlockTask
- (NSString)description;
- (PDTaskSchedulerBlockTask)initWithIdentifier:(id)identifier queue:(id)queue block:(id)block;
- (void)clampToPredefinedTimePeriod:(unint64_t)period;
- (void)runWithTask:(id)task;
@end

@implementation PDTaskSchedulerBlockTask

- (PDTaskSchedulerBlockTask)initWithIdentifier:(id)identifier queue:(id)queue block:(id)block
{
  identifierCopy = identifier;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PDTaskSchedulerBlockTask;
  v11 = [(PDTaskSchedulerBlockTask *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_executionQueue, queue);
    v14 = [blockCopy copy];
    taskBlock = v11->_taskBlock;
    v11->_taskBlock = v14;

    v11->_repeating = 1;
    *&v11->_delay = xmmword_1001A84B0;
    *&v11->_priority = vdupq_n_s64(1uLL);
  }

  return v11;
}

- (void)clampToPredefinedTimePeriod:(unint64_t)period
{
  objc_opt_self();
  v5 = 0;
  while (1)
  {
    v6 = qword_1001A84C0[v5];
    if (v6 >= period)
    {
      break;
    }

    if (++v5 == 8)
    {
      v6 = 604800;
      [(PDTaskSchedulerBlockTask *)self setDelay:604800];
      goto LABEL_6;
    }
  }

  [(PDTaskSchedulerBlockTask *)self setDelay:qword_1001A84C0[v5]];
  if (!(v5 * 8))
  {
    v7 = 60;
    goto LABEL_9;
  }

LABEL_6:
  if (v6 - 1 >= 0xE10)
  {
    v7 = 3600;
  }

  else
  {
    v7 = v6 - 1;
  }

LABEL_9:

  [(PDTaskSchedulerBlockTask *)self setGracePeriod:v7];
}

- (void)runWithTask:(id)task
{
  taskCopy = task;
  CLSInitLog();
  v5 = CLSLogDefault;
  if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_DEBUG))
  {
    v8 = v5;
    identifier = [(PDTaskSchedulerBlockTask *)self identifier];
    *buf = 138412290;
    v12 = identifier;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Running scheduled task '%@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006EF18;
  v10[3] = &unk_100202D40;
  v10[4] = self;
  [taskCopy setExpirationHandler:v10];
  executionQueue = [(PDTaskSchedulerBlockTask *)self executionQueue];
  taskBlock = [(PDTaskSchedulerBlockTask *)self taskBlock];
  dispatch_sync(executionQueue, taskBlock);

  [taskCopy setTaskCompleted];
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = PDTaskSchedulerBlockTask;
  v3 = [(PDTaskSchedulerBlockTask *)&v13 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" (identifier: %@)", self->_identifier];
  v5 = [NSNumber numberWithUnsignedInteger:self->_delay];
  [v4 appendFormat:@" (delay: %@)", v5];

  v6 = [NSNumber numberWithUnsignedInteger:self->_gracePeriod];
  [v4 appendFormat:@" (gracePeriod: %@)", v6];

  priority = self->_priority;
  if (priority)
  {
    if (priority == 1)
    {
      v8 = @"Utility";
    }

    else
    {
      v8 = [NSString stringWithFormat:@"Unknown PDTaskSchedulerTaskPriority: '%ld'", self->_priority];
    }
  }

  else
  {
    v8 = @"Maintenance";
  }

  [v4 appendFormat:@" (priority: %@)", v8];

  if (self->_repeating)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@" (isRepeating: %@)", v9];
  requiredNetworkState = self->_requiredNetworkState;
  if (requiredNetworkState >= 3)
  {
    v11 = [NSString stringWithFormat:@"Unknown PDTaskSchedulerTaskNetworkState: '%ld'", self->_requiredNetworkState];
  }

  else
  {
    v11 = off_100203BF8[requiredNetworkState];
  }

  [v4 appendFormat:@" (requiredNetworkState: %@)", v11];

  return v4;
}

@end