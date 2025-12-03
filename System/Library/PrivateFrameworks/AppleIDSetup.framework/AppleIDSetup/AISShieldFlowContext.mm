@interface AISShieldFlowContext
- (AISShieldFlowContext)init;
- (AISShieldFlowContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AISShieldFlowContext

- (AISShieldFlowContext)init
{
  v3.receiver = self;
  v3.super_class = AISShieldFlowContext;
  result = [(AISShieldFlowContext *)&v3 init];
  if (result)
  {
    result->_signInFlowType = 1;
  }

  return result;
}

- (AISShieldFlowContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AISShieldFlowContext;
  v5 = [(AISShieldFlowContext *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_forceOfferAgeRangePicker"];
    v5->_forceOfferAgeRangePicker = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_skipConnectFamily"];
    v5->_skipConnectToFamily = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_skipSetupGuardian"];
    v5->_skipSetupWithGuardian = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_shouldNotDismiss"];
    v5->_shouldNotDismiss = [v13 BOOLValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_setupSelfFlow"];
    v5->_setupSelfFlow = [v14 integerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_setupLaterFlow"];
    v5->_setupLaterFlow = [v15 integerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_signInFlowType"];
    v5->_signInFlowType = [v16 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeObject:self->_message forKey:@"_message"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_forceOfferAgeRangePicker];
  [coderCopy encodeObject:v6 forKey:@"_forceOfferAgeRangePicker"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_skipConnectToFamily];
  [coderCopy encodeObject:v7 forKey:@"_skipConnectFamily"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_skipSetupWithGuardian];
  [coderCopy encodeObject:v8 forKey:@"_skipSetupGuardian"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldNotDismiss];
  [coderCopy encodeObject:v9 forKey:@"_shouldNotDismiss"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_setupSelfFlow];
  [coderCopy encodeObject:v10 forKey:@"_setupSelfFlow"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_setupLaterFlow];
  [coderCopy encodeObject:v11 forKey:@"_setupLaterFlow"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_signInFlowType];
  [coderCopy encodeObject:v12 forKey:@"_signInFlowType"];
}

@end