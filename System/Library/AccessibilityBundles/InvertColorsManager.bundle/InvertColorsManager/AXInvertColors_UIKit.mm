@interface AXInvertColors_UIKit
+ (void)installCategories:(id)categories;
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_UIKit

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIPortalView" hasInstanceMethod:@"setSourceView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"accessibilityApplyInvertFilter" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"accessibilityInvertFilterApplied" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"accessibilityUnapplyInvertFilter" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIWindow" hasInstanceMethod:@"_commonInitAttachedWindow:debugName:scene:" withFullSignature:{"v", "B", "@", "@", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_imageView:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"highlightedImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"setHighlightedImageView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_inheritedRenderConfig" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIKBRenderConfig" hasInstanceMethod:@"lightKeyboard" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIStatusBarItemView" hasInstanceMethod:@"foregroundStyle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIStatusBarBatteryItemView" isKindOfClass:@"UIStatusBarItemView"];
  [validationsCopy validateClass:@"_UIBatteryView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"_UIBatteryView" hasInstanceVariable:@"_boltLayer" withType:"CALayer"];
  [validationsCopy validateClass:@"UIStatusBarForegroundStyleAttributes" hasInstanceMethod:@"tintColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"paste:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"_pasteAttributedString:pasteAsRichText:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"keyboardInputChanged:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"UIStatusBar_Base" hasInstanceMethod:@"foregroundColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIStatusBar_Modern" isKindOfClass:@"UIStatusBar_Base"];
  [validationsCopy validateClass:@"_UIInteractiveHighlightEnvironment" hasInstanceMethod:@"newViewRecordForView:options:" withFullSignature:{"@", "@", "Q", 0}];
  [validationsCopy validateClass:@"_UIInteractiveHighlightViewRecord"];
  [validationsCopy validateClass:@"_UIInteractiveHighlightViewRecord" hasInstanceVariable:@"_effectView" withType:"UIVisualEffectView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"accessibilityApplyInvertFilter" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"setBackgroundColor:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCellLayoutManager" hasInstanceMethod:@"defaultImageViewForCell:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"_UIContextMenuUIController" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  [validationsCopy validateClass:@"UIKBKeyView" hasInstanceVariable:@"m_key" withType:"UIKBTree"];
  [validationsCopy validateClass:@"UIKBTree" hasInstanceVariable:@"name" withType:"NSString"];
  [validationsCopy validateClass:@"UIDynamicModifiedColor" hasInstanceVariable:@"_baseColor" withType:"UIDynamicColor"];
  [validationsCopy validateClass:@"UIKBKeyView" hasInstanceMethod:@"layerForRenderFlags:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"UIKBKeyView" hasInstanceMethod:@"displayLayer:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIVisualEffectView" hasInstanceMethod:@"_ensureBackgroundHost" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIScreen" hasInstanceMethod:@"_notifyTraitsChangedAndPropagate" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UITabBarController" hasInstanceMethod:@"transitionFromViewController:toViewController:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"_UIPointerContentEffect" hasInstanceMethod:@"_ensureRelativeEffectViewOrderInContainer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"_UIPointerContentEffect" hasInstanceMethod:@"pointerPortal" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)categories
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A348;
  block[3] = &unk_44540;
  categoriesCopy = categories;
  v3 = qword_83518;
  v4 = categoriesCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_83518, block);
  }
}

@end