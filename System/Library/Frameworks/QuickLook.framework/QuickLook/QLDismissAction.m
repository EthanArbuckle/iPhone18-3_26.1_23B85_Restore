@interface QLDismissAction
- (QLDismissAction)initWithTitle:(id)a3 image:(id)a4 shouldDismissQuickLookAutomatically:(BOOL)a5 handler:(id)a6;
@end

@implementation QLDismissAction

- (QLDismissAction)initWithTitle:(id)a3 image:(id)a4 shouldDismissQuickLookAutomatically:(BOOL)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = QLDismissAction;
  v14 = [(QLDismissAction *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, a3);
    objc_storeStrong(&v15->_image, a4);
    v16 = _Block_copy(v13);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    v15->_shouldDismissQuickLookAutomatically = a5;
    v18 = v15;
  }

  return v15;
}

@end