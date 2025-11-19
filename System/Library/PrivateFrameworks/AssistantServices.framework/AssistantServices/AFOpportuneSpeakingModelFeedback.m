@interface AFOpportuneSpeakingModelFeedback
- (AFOpportuneSpeakingModelFeedback)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFOpportuneSpeakingModelFeedback

- (void)encodeWithCoder:(id)a3
{
  lastNegativeFeedback = self->_lastNegativeFeedback;
  v5 = a3;
  [v5 encodeObject:lastNegativeFeedback forKey:@"_lastNegativeFeedback"];
  [v5 encodeObject:self->_negativeFeedbackByContact forKey:@"_negativeFeedbackByContact"];
}

- (AFOpportuneSpeakingModelFeedback)initWithCoder:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFOpportuneSpeakingModelFeedback;
  v5 = [(AFOpportuneSpeakingModelFeedback *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastNegativeFeedback"];
    lastNegativeFeedback = v5->_lastNegativeFeedback;
    v5->_lastNegativeFeedback = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_negativeFeedbackByContact"];
    negativeFeedbackByContact = v5->_negativeFeedbackByContact;
    v5->_negativeFeedbackByContact = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

@end