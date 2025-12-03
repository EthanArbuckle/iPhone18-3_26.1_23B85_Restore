@interface THWPLayout
- (void)willBeAddedToLayoutController:(id)controller;
@end

@implementation THWPLayout

- (void)willBeAddedToLayoutController:(id)controller
{
  info = [(THWPLayout *)self info];
  if ([objc_msgSend(objc_msgSend(-[THWPLayout sectionLayout](self "sectionLayout")])
  {
    v5 = [objc_msgSend(-[THWPLayout sectionLayout](self "sectionLayout")];

    [info updateAnnotationSourceWithContentNode:v5];
  }
}

@end