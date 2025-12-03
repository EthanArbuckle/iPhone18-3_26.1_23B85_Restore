@interface RCSAttachmentController
- (RCSAttachmentController)init;
- (RCSAttachmentController)initWithSession:(id)session;
@end

@implementation RCSAttachmentController

- (RCSAttachmentController)initWithSession:(id)session
{
  v4.receiver = self;
  v4.super_class = RCSAttachmentController;
  return [(RCSAttachmentController *)&v4 initWithSession:session];
}

- (RCSAttachmentController)init
{
  v3.receiver = self;
  v3.super_class = RCSAttachmentController;
  return [(RCSAttachmentController *)&v3 init];
}

@end