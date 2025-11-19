@interface FKATypeaheadTextField
- (FKATypeaheadTextField)initWithFrame:(CGRect)a3;
@end

@implementation FKATypeaheadTextField

- (FKATypeaheadTextField)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = FKATypeaheadTextField;
  v3 = [(FKATypeaheadTextField *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(FKATypeaheadTextField *)v3 setReturnKeyType:9];
    [(FKATypeaheadTextField *)v4 setAutocapitalizationType:0];
    [(FKATypeaheadTextField *)v4 setAutocorrectionType:1];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"KEYBOARD_NAVIGATION" value:&stru_100028C78 table:0];
    [(FKATypeaheadTextField *)v4 setPlaceholder:v6];
  }

  return v4;
}

@end