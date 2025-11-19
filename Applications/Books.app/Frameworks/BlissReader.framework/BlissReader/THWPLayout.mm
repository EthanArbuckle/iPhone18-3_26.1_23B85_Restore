@interface THWPLayout
- (void)willBeAddedToLayoutController:(id)a3;
@end

@implementation THWPLayout

- (void)willBeAddedToLayoutController:(id)a3
{
  v4 = [(THWPLayout *)self info];
  if ([objc_msgSend(objc_msgSend(-[THWPLayout sectionLayout](self "sectionLayout")])
  {
    v5 = [objc_msgSend(-[THWPLayout sectionLayout](self "sectionLayout")];

    [v4 updateAnnotationSourceWithContentNode:v5];
  }
}

@end