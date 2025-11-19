@interface SelectedColorButtonAccessibility
+ (id)buttonWithType:(int64_t)a3 radius:(double)a4 color:(id)a5;
@end

@implementation SelectedColorButtonAccessibility

+ (id)buttonWithType:(int64_t)a3 radius:(double)a4 color:(id)a5
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS___SelectedColorButtonAccessibility;
  v7 = a5;
  v8 = objc_msgSendSuper2(&v11, sel_buttonWithType_radius_color_, a3, v7, a4);
  v9 = accessibilityLabelForFlagColor(v7);

  [v8 setAccessibilityLabel:{v9, v11.receiver, v11.super_class}];

  return v8;
}

@end