@interface OverrideCardViewController
+ (id)createWithSubtitle:(id)a3 actionTitle:(id)a4 action:(id)a5;
@end

@implementation OverrideCardViewController

+ (id)createWithSubtitle:(id)a3 actionTitle:(id)a4 action:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    v8 = sub_1171B0();
    a3 = v9;
    if (a4)
    {
LABEL_3:
      v10 = sub_1171B0();
      a4 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v13 = sub_AA6E0(v8, a3, v10, a4, sub_AAF28, v12);

  return v13;
}

@end