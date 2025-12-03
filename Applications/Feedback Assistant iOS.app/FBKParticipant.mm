@interface FBKParticipant
- (UIImage)contactImage;
@end

@implementation FBKParticipant

- (UIImage)contactImage
{
  emailAddress = [(FBKParticipant *)self emailAddress];
  v4 = [_TtC18Feedback_Assistant15FBAAvatarHelper contactImageForEmailAddress:emailAddress];

  if (!v4)
  {
    givenName = [(FBKParticipant *)self givenName];
    familyName = [(FBKParticipant *)self familyName];
    v4 = [_TtC18Feedback_Assistant15FBAAvatarHelper monogramAvatarImageForPreferredName:givenName familyName:familyName];
  }

  return v4;
}

@end