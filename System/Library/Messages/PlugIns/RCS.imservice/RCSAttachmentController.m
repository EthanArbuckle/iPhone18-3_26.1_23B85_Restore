@interface RCSAttachmentController
- (RCSAttachmentController)init;
- (RCSAttachmentController)initWithSession:(id)a3;
@end

@implementation RCSAttachmentController

- (RCSAttachmentController)initWithSession:(id)a3
{
  v4.receiver = self;
  v4.super_class = RCSAttachmentController;
  return [(RCSAttachmentController *)&v4 initWithSession:a3];
}

- (RCSAttachmentController)init
{
  v3.receiver = self;
  v3.super_class = RCSAttachmentController;
  return [(RCSAttachmentController *)&v3 init];
}

@end