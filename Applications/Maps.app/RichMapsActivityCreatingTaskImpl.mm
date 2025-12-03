@interface RichMapsActivityCreatingTaskImpl
- (id)description;
- (void)performTaskWithCompletion:(id)completion;
- (void)taskFailed;
- (void)taskFinished:(id)finished;
- (void)taskStarted;
@end

@implementation RichMapsActivityCreatingTaskImpl

- (void)taskFailed
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "taskFailed %@", &v6, 0xCu);
  }

  completion = self->_completion;
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
    v5 = self->_completion;
    self->_completion = 0;
  }
}

- (void)taskFinished:(id)finished
{
  finishedCopy = finished;
  objc_storeStrong(&self->_computedRichMapsActivity, finished);
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "taskFinished %@", &v9, 0xCu);
  }

  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self->_computedRichMapsActivity, 0);
    v8 = self->_completion;
    self->_completion = 0;
  }
}

- (void)taskStarted
{
  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "taskStarted %@", &v4, 0xCu);
  }
}

- (void)performTaskWithCompletion:(id)completion
{
  v4 = [completion copy];
  completion = self->_completion;
  self->_completion = v4;

  [(RichMapsActivityCreatingTaskImpl *)self performTask];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  shortDescription = [self->_computedRichMapsActivity shortDescription];
  v6 = [NSString stringWithFormat:@"<%@ %p %@", v4, self, shortDescription];

  return v6;
}

@end