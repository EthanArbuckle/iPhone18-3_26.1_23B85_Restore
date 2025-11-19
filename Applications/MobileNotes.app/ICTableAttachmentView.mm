@interface ICTableAttachmentView
- (void)app_updateViewAnnotation;
@end

@implementation ICTableAttachmentView

- (void)app_updateViewAnnotation
{
  v3 = [(ICTableAttachmentView *)self attachment];
  [(ICTableAttachmentView *)self ic_annotateWithTable:v3];
}

@end