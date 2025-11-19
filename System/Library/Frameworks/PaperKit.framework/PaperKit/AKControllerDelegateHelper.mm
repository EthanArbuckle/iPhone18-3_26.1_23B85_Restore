@interface AKControllerDelegateHelper
- (CGRect)maxPageRectWithPageIndex:(int64_t)a3 forAnnotationController:(id)a4;
- (_TtC8PaperKitP33_2B8C5C91434EFF0A5A4BB617ED0FC81826AKControllerDelegateHelper)init;
- (id)popoverPresentingViewControllerForAnnotationController:(id)a3;
- (id)undoManagerForAnnotationController:(id)a3;
@end

@implementation AKControllerDelegateHelper

- (CGRect)maxPageRectWithPageIndex:(int64_t)a3 forAnnotationController:(id)a4
{
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)undoManagerForAnnotationController:(id)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AFC8]) init];

  return v3;
}

- (id)popoverPresentingViewControllerForAnnotationController:(id)a3
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];

  return v3;
}

- (_TtC8PaperKitP33_2B8C5C91434EFF0A5A4BB617ED0FC81826AKControllerDelegateHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AKControllerDelegateHelper();
  return [(AKControllerDelegateHelper *)&v3 init];
}

@end