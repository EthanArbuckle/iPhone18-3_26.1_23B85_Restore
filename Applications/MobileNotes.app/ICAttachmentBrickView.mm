@interface ICAttachmentBrickView
- (void)app_updateViewAnnotation;
@end

@implementation ICAttachmentBrickView

- (void)app_updateViewAnnotation
{
  v3 = [(ICAttachmentBrickView *)self attachment];
  [(ICAttachmentBrickView *)self ic_annotateWithAttachment:v3];
}

@end