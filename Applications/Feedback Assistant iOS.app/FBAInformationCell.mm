@interface FBAInformationCell
- (void)awakeFromNib;
- (void)setQuestion:(id)a3;
@end

@implementation FBAInformationCell

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FBAInformationCell;
  [(FBAInformationCell *)&v2 awakeFromNib];
}

- (void)setQuestion:(id)a3
{
  v5 = a3;
  if ([v5 answerType] == 6)
  {
    objc_storeStrong(&self->_question, a3);
    v6 = [v5 text];
    v7 = [(FBAInformationCell *)self textLabel];
    [v7 setText:v6];
  }

  else
  {
    v8 = +[FBALog appHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100093EAC(v5, v8);
    }
  }
}

@end