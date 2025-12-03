@interface GEORoadDescription
- (UIColor)accentColor;
@end

@implementation GEORoadDescription

- (UIColor)accentColor
{
  navigationFriendliness = [(GEORoadDescription *)self navigationFriendliness];
  if (navigationFriendliness <= 1)
  {
    if (navigationFriendliness <= 1)
    {
      v3 = +[UIColor systemRedColor];
      goto LABEL_9;
    }

LABEL_7:
    v3 = +[UIColor systemBackgroundColor];
    goto LABEL_9;
  }

  if (navigationFriendliness != 2)
  {
    if (navigationFriendliness == 3)
    {
      v3 = +[UIColor systemGreenColor];
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v3 = +[UIColor systemOrangeColor];
LABEL_9:

  return v3;
}

@end