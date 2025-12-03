@interface StepByStepUIViewController_ExtendWired_Config
- (StepByStepUIViewController_ExtendWired_Config)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation StepByStepUIViewController_ExtendWired_Config

- (StepByStepUIViewController_ExtendWired_Config)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = StepByStepUIViewController_ExtendWired_Config;
  result = [(StepByStepUIViewController_ExtendWireless_Config *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->super.connectionType = &off_27E3830E0[0]->isa;
    result->super.unlocalizedStatusString = @"StepByStepStatus_ExtendWired%@";
  }

  return result;
}

@end