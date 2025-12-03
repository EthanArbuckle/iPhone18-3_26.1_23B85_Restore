@interface ICAttachmentView
- (void)app_updateViewAnnotation;
@end

@implementation ICAttachmentView

- (void)app_updateViewAnnotation
{
  attachment = [(ICAttachmentView *)self attachment];
  [(ICAttachmentView *)self ic_annotateWithAttachment:attachment];
}

@end