@interface PKHandwritingFeedbackActivity
- (PKHandwritingFeedbackActivity)initWithBlock:(id)a3;
- (void)performActivity;
@end

@implementation PKHandwritingFeedbackActivity

- (PKHandwritingFeedbackActivity)initWithBlock:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKHandwritingFeedbackActivity;
  v3 = a3;
  v4 = [(UIActivity *)&v9 init];
  v5 = _PencilKitBundle();
  v6 = [v5 localizedStringForKey:@"Handwriting Feedback" value:@"Handwriting Feedback" table:{@"Localizable", v9.receiver, v9.super_class}];
  [(PKHandwritingFeedbackActivity *)v4 setTitle:v6];

  [(PKHandwritingFeedbackActivity *)v4 setBlock:v3];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.bubble"];
  [(PKHandwritingFeedbackActivity *)v4 setImage:v7];

  return v4;
}

- (void)performActivity
{
  v2 = [(PKHandwritingFeedbackActivity *)self block];
  v2[2]();
}

@end