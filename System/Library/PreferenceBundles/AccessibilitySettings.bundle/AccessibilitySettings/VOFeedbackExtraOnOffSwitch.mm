@interface VOFeedbackExtraOnOffSwitch
- (VOFeedbackExtraOnOffSwitch)initWithTitle:(id)title setter:(id)setter getter:(id)getter;
@end

@implementation VOFeedbackExtraOnOffSwitch

- (VOFeedbackExtraOnOffSwitch)initWithTitle:(id)title setter:(id)setter getter:(id)getter
{
  v12.receiver = self;
  v12.super_class = VOFeedbackExtraOnOffSwitch;
  getterCopy = getter;
  setterCopy = setter;
  titleCopy = title;
  v10 = [(VOFeedbackExtraOnOffSwitch *)&v12 init];
  [(VOFeedbackExtraOnOffSwitch *)v10 setTitle:titleCopy, v12.receiver, v12.super_class];

  [(VOFeedbackExtraOnOffSwitch *)v10 setSetter:setterCopy];
  [(VOFeedbackExtraOnOffSwitch *)v10 setGetter:getterCopy];

  return v10;
}

@end