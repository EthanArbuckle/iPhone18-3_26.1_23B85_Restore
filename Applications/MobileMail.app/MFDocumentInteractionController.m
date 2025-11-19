@interface MFDocumentInteractionController
+ (id)interactionControllerWithURL:(id)a3;
@end

@implementation MFDocumentInteractionController

+ (id)interactionControllerWithURL:(id)a3
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MFDocumentInteractionController;
  v5 = objc_msgSendSuper2(&v7, "interactionControllerWithURL:", v4);
  [v5 setOriginalURL:v4];

  return v5;
}

@end