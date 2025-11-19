@interface _BKAcquireSlotDialogButtonAction
+ (id)actionButtonWithTitle:(id)a3;
@end

@implementation _BKAcquireSlotDialogButtonAction

+ (id)actionButtonWithTitle:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTitle:v3];

  return v4;
}

@end