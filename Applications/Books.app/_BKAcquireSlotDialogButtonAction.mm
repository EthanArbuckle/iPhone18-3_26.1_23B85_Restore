@interface _BKAcquireSlotDialogButtonAction
+ (id)actionButtonWithTitle:(id)title;
@end

@implementation _BKAcquireSlotDialogButtonAction

+ (id)actionButtonWithTitle:(id)title
{
  titleCopy = title;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTitle:titleCopy];

  return v4;
}

@end