@interface FBAInformationCell
- (void)awakeFromNib;
- (void)setQuestion:(id)question;
@end

@implementation FBAInformationCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FBAInformationCell;
  [(FBAInformationCell *)&v2 awakeFromNib];
}

- (void)setQuestion:(id)question
{
  questionCopy = question;
  if ([questionCopy answerType] == 6)
  {
    objc_storeStrong(&self->_question, question);
    text = [questionCopy text];
    textLabel = [(FBAInformationCell *)self textLabel];
    [textLabel setText:text];
  }

  else
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100093EAC(questionCopy, v8);
    }
  }
}

@end