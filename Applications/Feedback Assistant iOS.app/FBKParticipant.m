@interface FBKParticipant
- (UIImage)contactImage;
@end

@implementation FBKParticipant

- (UIImage)contactImage
{
  v3 = [(FBKParticipant *)self emailAddress];
  v4 = [_TtC18Feedback_Assistant15FBAAvatarHelper contactImageForEmailAddress:v3];

  if (!v4)
  {
    v5 = [(FBKParticipant *)self givenName];
    v6 = [(FBKParticipant *)self familyName];
    v4 = [_TtC18Feedback_Assistant15FBAAvatarHelper monogramAvatarImageForPreferredName:v5 familyName:v6];
  }

  return v4;
}

@end