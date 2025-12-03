@interface RAPReportComposerCommentPart
- (RAPReportComposerCommentPart)initWithCommentQuestion:(id)question;
@end

@implementation RAPReportComposerCommentPart

- (RAPReportComposerCommentPart)initWithCommentQuestion:(id)question
{
  questionCopy = question;
  v20.receiver = self;
  v20.super_class = RAPReportComposerCommentPart;
  v5 = [(RAPTablePart *)&v20 initWithSections:&__NSArray0__struct];
  if (!v5)
  {
    goto LABEL_23;
  }

  if ([questionCopy emphasis] != 4)
  {
    v6 = [[RAPReportComposerCommentSection alloc] initWithQuestion:questionCopy];
    commentSection = v5->_commentSection;
    v5->_commentSection = v6;
  }

  if ([questionCopy emphasis] != 3)
  {
    v8 = [[RAPReportComposerPhotosSection alloc] initWithQuestion:questionCopy];
    photoSection = v5->_photoSection;
    v5->_photoSection = v8;
  }

  emphasis = [questionCopy emphasis];
  if (emphasis > 2)
  {
    switch(emphasis)
    {
      case 3:
        v23 = v5->_commentSection;
        v11 = &v23;
        break;
      case 4:
        v22 = v5->_photoSection;
        v11 = &v22;
        break;
      case 5:
        goto LABEL_14;
      default:
        goto LABEL_21;
    }

    v12 = 1;
    goto LABEL_20;
  }

  switch(emphasis)
  {
    case 0:
      goto LABEL_14;
    case 1:
      v24[0] = v5->_photoSection;
      v24[1] = v5->_commentSection;
      v11 = v24;
      goto LABEL_17;
    case 2:
LABEL_14:
      v25[0] = v5->_commentSection;
      v25[1] = v5->_photoSection;
      v11 = v25;
LABEL_17:
      v12 = 2;
LABEL_20:
      v13 = [NSArray arrayWithObjects:v11 count:v12];
      [(RAPTablePart *)v5 setSections:v13];

      break;
  }

LABEL_21:
  if ([questionCopy shouldShowEmail])
  {
    v14 = [[RAPReportComposerEmailSection alloc] initWithQuestion:questionCopy];
    emailSection = v5->_emailSection;
    v5->_emailSection = v14;

    v21 = v5->_emailSection;
    v16 = [NSArray arrayWithObjects:&v21 count:1];
    sections = [(RAPTablePart *)v5 sections];
    v18 = [v16 arrayByAddingObjectsFromArray:sections];
    [(RAPTablePart *)v5 setSections:v18];
  }

LABEL_23:

  return v5;
}

@end