@interface OverrideCardViewController
+ (id)createWithSubtitle:(id)subtitle actionTitle:(id)title action:(id)action;
@end

@implementation OverrideCardViewController

+ (id)createWithSubtitle:(id)subtitle actionTitle:(id)title action:(id)action
{
  v7 = _Block_copy(action);
  if (subtitle)
  {
    v8 = sub_1171B0();
    subtitle = v9;
    if (title)
    {
LABEL_3:
      v10 = sub_1171B0();
      title = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (title)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = sub_AA6E0(v8, subtitle, v10, title, sub_AAF28, v12);

  return v13;
}

@end