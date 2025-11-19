@interface VOFeedbackExtraOnOffSwitch
- (VOFeedbackExtraOnOffSwitch)initWithTitle:(id)a3 setter:(id)a4 getter:(id)a5;
@end

@implementation VOFeedbackExtraOnOffSwitch

- (VOFeedbackExtraOnOffSwitch)initWithTitle:(id)a3 setter:(id)a4 getter:(id)a5
{
  v12.receiver = self;
  v12.super_class = VOFeedbackExtraOnOffSwitch;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(VOFeedbackExtraOnOffSwitch *)&v12 init];
  [(VOFeedbackExtraOnOffSwitch *)v10 setTitle:v9, v12.receiver, v12.super_class];

  [(VOFeedbackExtraOnOffSwitch *)v10 setSetter:v8];
  [(VOFeedbackExtraOnOffSwitch *)v10 setGetter:v7];

  return v10;
}

@end