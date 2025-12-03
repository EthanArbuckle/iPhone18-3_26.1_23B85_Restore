@interface LanguageSupportRemoteModel
- (BOOL)shouldAcceptWithConnection:(id)connection;
- (void)preflightChecker:(id)checker continueCheckingFromStep:(int64_t)step forConfiguration:(id)configuration completion:(id)completion;
- (void)startRequestWithConfiguration:(id)configuration;
@end

@implementation LanguageSupportRemoteModel

- (void)preflightChecker:(id)checker continueCheckingFromStep:(int64_t)step forConfiguration:(id)configuration completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  checkerCopy = checker;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100014CB4(step, configurationCopy, sub_1000159D4, v11);
}

- (void)startRequestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  LanguageSupportRemoteModel.startRequest(configuration:)(configurationCopy);
}

- (BOOL)shouldAcceptWithConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  LanguageSupportRemoteModel.shouldAccept(connection:)(connectionCopy);

  return 1;
}

@end