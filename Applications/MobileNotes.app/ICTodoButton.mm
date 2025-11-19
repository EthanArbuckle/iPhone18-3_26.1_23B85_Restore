@interface ICTodoButton
- (void)app_updateViewAnnotation;
@end

@implementation ICTodoButton

- (void)app_updateViewAnnotation
{
  v6 = [(ICTodoButton *)self note];
  v3 = [(ICTodoButton *)self trackedParagraph];
  v4 = [v3 paragraph];
  v5 = [v4 uuid];
  [(ICTodoButton *)self ic_annotateWithNote:v6 checklistParagraphUUID:v5];
}

@end