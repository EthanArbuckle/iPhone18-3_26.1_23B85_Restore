@interface MFDocumentInteractionController
+ (id)interactionControllerWithURL:(id)l;
@end

@implementation MFDocumentInteractionController

+ (id)interactionControllerWithURL:(id)l
{
  lCopy = l;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MFDocumentInteractionController;
  v5 = objc_msgSendSuper2(&v7, "interactionControllerWithURL:", lCopy);
  [v5 setOriginalURL:lCopy];

  return v5;
}

@end