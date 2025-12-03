@interface ICTodoButton
- (void)app_updateViewAnnotation;
@end

@implementation ICTodoButton

- (void)app_updateViewAnnotation
{
  note = [(ICTodoButton *)self note];
  trackedParagraph = [(ICTodoButton *)self trackedParagraph];
  paragraph = [trackedParagraph paragraph];
  uuid = [paragraph uuid];
  [(ICTodoButton *)self ic_annotateWithNote:note checklistParagraphUUID:uuid];
}

@end