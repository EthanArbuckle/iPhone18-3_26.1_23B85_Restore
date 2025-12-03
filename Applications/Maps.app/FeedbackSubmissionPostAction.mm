@interface FeedbackSubmissionPostAction
- (FeedbackSubmissionPostAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FeedbackSubmissionPostAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(FeedbackSubmissionPostAction *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  communityIdentifier = [(FeedbackSubmissionPostAction *)self communityIdentifier];
  [coderCopy encodeObject:communityIdentifier forKey:@"communityIdentifier"];
}

- (FeedbackSubmissionPostAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FeedbackSubmissionPostAction;
  v5 = [(FeedbackSubmissionPostAction *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(FeedbackSubmissionPostAction *)v5 setData:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"communityIdentifier"];
    v8 = [v7 copy];
    [(FeedbackSubmissionPostAction *)v5 setCommunityIdentifier:v8];
  }

  return v5;
}

@end