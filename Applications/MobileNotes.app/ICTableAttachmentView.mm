@interface ICTableAttachmentView
- (void)app_updateViewAnnotation;
@end

@implementation ICTableAttachmentView

- (void)app_updateViewAnnotation
{
  attachment = [(ICTableAttachmentView *)self attachment];
  [(ICTableAttachmentView *)self ic_annotateWithTable:attachment];
}

@end