@interface Singleton
- (void)alarmsDidUpdateWithParameters:(id)parameters completion:(id)completion;
- (void)stateDidUpdateWithParameters:(id)parameters completion:(id)completion;
@end

@implementation Singleton

- (void)alarmsDidUpdateWithParameters:(id)parameters completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_1BBBE6B14(parameters, &v8);
  _Block_copy(v6);
  selfCopy = self;
  sub_1BBBDD1FC(&v8, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)stateDidUpdateWithParameters:(id)parameters completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_1BBBE7B7C(parameters, &v8);
  _Block_copy(v6);
  selfCopy = self;
  sub_1BBBED5C0(&v8, selfCopy, v6);
  _Block_release(v6);

  _Block_release(v6);
}

@end