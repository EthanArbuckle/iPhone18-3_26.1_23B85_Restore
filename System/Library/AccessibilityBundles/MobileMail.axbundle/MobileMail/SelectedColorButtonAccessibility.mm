@interface SelectedColorButtonAccessibility
+ (id)buttonWithType:(int64_t)type radius:(double)radius color:(id)color;
@end

@implementation SelectedColorButtonAccessibility

+ (id)buttonWithType:(int64_t)type radius:(double)radius color:(id)color
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___SelectedColorButtonAccessibility;
  colorCopy = color;
  v8 = objc_msgSendSuper2(&v11, sel_buttonWithType_radius_color_, type, colorCopy, radius);
  v9 = accessibilityLabelForFlagColor(colorCopy);

  [v8 setAccessibilityLabel:{v9, v11.receiver, v11.super_class}];

  return v8;
}

@end