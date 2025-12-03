@interface QLDismissAction
- (QLDismissAction)initWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler;
@end

@implementation QLDismissAction

- (QLDismissAction)initWithTitle:(id)title image:(id)image shouldDismissQuickLookAutomatically:(BOOL)automatically handler:(id)handler
{
  titleCopy = title;
  imageCopy = image;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = QLDismissAction;
  v14 = [(QLDismissAction *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_title, title);
    objc_storeStrong(&v15->_image, image);
    v16 = _Block_copy(handlerCopy);
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    v15->_shouldDismissQuickLookAutomatically = automatically;
    v18 = v15;
  }

  return v15;
}

@end