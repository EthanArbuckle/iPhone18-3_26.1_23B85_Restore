@interface FeedbackSubmissionPostAction
- (FeedbackSubmissionPostAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FeedbackSubmissionPostAction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FeedbackSubmissionPostAction *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(FeedbackSubmissionPostAction *)self communityIdentifier];
  [v4 encodeObject:v6 forKey:@"communityIdentifier"];
}

- (FeedbackSubmissionPostAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FeedbackSubmissionPostAction;
  v5 = [(FeedbackSubmissionPostAction *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(FeedbackSubmissionPostAction *)v5 setData:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"communityIdentifier"];
    v8 = [v7 copy];
    [(FeedbackSubmissionPostAction *)v5 setCommunityIdentifier:v8];
  }

  return v5;
}

@end