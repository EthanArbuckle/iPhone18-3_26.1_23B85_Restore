@interface BaseViewController
- (void)configureWithContext:(id)context completion:(id)completion;
@end

@implementation BaseViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  xpcEndpoint = [contextCopy xpcEndpoint];
  sub_1000012F8(self, xpcEndpoint);

  v9 = sub_1000043F8(self, contextCopy);

  presentationContext = self->_presentationContext;
  self->_presentationContext = v9;

  v11 = sub_10000143C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_presentationContext;
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received presentation context: %@", &v13, 0xCu);
  }

  completionCopy[2](completionCopy);
}

@end