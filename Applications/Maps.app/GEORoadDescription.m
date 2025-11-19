@interface GEORoadDescription
- (UIColor)accentColor;
@end

@implementation GEORoadDescription

- (UIColor)accentColor
{
  v2 = [(GEORoadDescription *)self navigationFriendliness];
  if (v2 <= 1)
  {
    if (v2 <= 1)
    {
      v3 = +[UIColor systemRedColor];
      goto LABEL_9;
    }

LABEL_7:
    v3 = +[UIColor systemBackgroundColor];
    goto LABEL_9;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
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