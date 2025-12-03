@interface ICAttachmentBrickView
- (void)app_updateViewAnnotation;
@end

@implementation ICAttachmentBrickView

- (void)app_updateViewAnnotation
{
  attachment = [(ICAttachmentBrickView *)self attachment];
  [(ICAttachmentBrickView *)self ic_annotateWithAttachment:attachment];
}

@end