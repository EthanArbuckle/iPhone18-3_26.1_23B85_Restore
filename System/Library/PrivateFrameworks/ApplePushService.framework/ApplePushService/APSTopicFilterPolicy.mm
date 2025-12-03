@interface APSTopicFilterPolicy
- (APSTopicFilterPolicy)initWithDelegate:(id)delegate;
- (APSTopicFilterPolicyDelegate)delegate;
- (id)topicChosenByPolicyFromTopics:(id)topics;
- (int64_t)filterChosenByPolicyForTopic:(id)topic;
- (void)filtersWillPotentiallyBeChangedBy:(id)by;
- (void)logFilterPolicyInformation;
@end

@implementation APSTopicFilterPolicy

- (APSTopicFilterPolicy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = APSTopicFilterPolicy;
  v5 = [(APSTopicFilterPolicy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)filtersWillPotentiallyBeChangedBy:(id)by
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    byCopy = by;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: Filter will potentially be changed by %@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained filtersWillPotentiallyBeChangedByPolicy:self];
}

- (int64_t)filterChosenByPolicyForTopic:(id)topic
{
  topicCopy = topic;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)topicChosenByPolicyFromTopics:(id)topics
{
  topicsCopy = topics;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)logFilterPolicyInformation
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"You must override %@ in a subclass", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (APSTopicFilterPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end