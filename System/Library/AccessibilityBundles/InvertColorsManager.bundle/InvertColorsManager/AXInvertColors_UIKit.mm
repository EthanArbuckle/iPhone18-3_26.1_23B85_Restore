@interface AXInvertColors_UIKit
+ (void)installCategories:(id)a3;
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_UIKit

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIPortalView" hasInstanceMethod:@"setSourceView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"accessibilityApplyInvertFilter" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"accessibilityInvertFilterApplied" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"accessibilityUnapplyInvertFilter" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"_commonInitAttachedWindow:debugName:scene:" withFullSignature:{"v", "B", "@", "@", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_imageView:" withFullSignature:{"@", "B", 0}];
  [v3 validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"highlightedImageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"setHighlightedImageView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_inheritedRenderConfig" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIKBRenderConfig" hasInstanceMethod:@"lightKeyboard" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_UIActivityGroupActivityCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIStatusBarItemView" hasInstanceMethod:@"foregroundStyle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIStatusBarBatteryItemView" isKindOfClass:@"UIStatusBarItemView"];
  [v3 validateClass:@"_UIBatteryView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"_UIBatteryView" hasInstanceVariable:@"_boltLayer" withType:"CALayer"];
  [v3 validateClass:@"UIStatusBarForegroundStyleAttributes" hasInstanceMethod:@"tintColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"setAttributedText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"paste:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"_pasteAttributedString:pasteAsRichText:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"keyboardInputChanged:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"UIStatusBar_Base" hasInstanceMethod:@"foregroundColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIStatusBar_Modern" isKindOfClass:@"UIStatusBar_Base"];
  [v3 validateClass:@"_UIInteractiveHighlightEnvironment" hasInstanceMethod:@"newViewRecordForView:options:" withFullSignature:{"@", "@", "Q", 0}];
  [v3 validateClass:@"_UIInteractiveHighlightViewRecord"];
  [v3 validateClass:@"_UIInteractiveHighlightViewRecord" hasInstanceVariable:@"_effectView" withType:"UIVisualEffectView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"accessibilityApplyInvertFilter" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"setBackgroundColor:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITableViewCellLayoutManager" hasInstanceMethod:@"defaultImageViewForCell:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"_UIContextMenuUIController" hasInstanceVariable:@"_backgroundEffectView" withType:"UIVisualEffectView"];
  [v3 validateClass:@"UIKBKeyView" hasInstanceVariable:@"m_key" withType:"UIKBTree"];
  [v3 validateClass:@"UIKBTree" hasInstanceVariable:@"name" withType:"NSString"];
  [v3 validateClass:@"UIDynamicModifiedColor" hasInstanceVariable:@"_baseColor" withType:"UIDynamicColor"];
  [v3 validateClass:@"UIKBKeyView" hasInstanceMethod:@"layerForRenderFlags:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"UIKBKeyView" hasInstanceMethod:@"displayLayer:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIVisualEffectView" hasInstanceMethod:@"_ensureBackgroundHost" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIScreen" hasInstanceMethod:@"_notifyTraitsChangedAndPropagate" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UITabBarController" hasInstanceMethod:@"transitionFromViewController:toViewController:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"_UIPointerContentEffect" hasInstanceMethod:@"_ensureRelativeEffectViewOrderInContainer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_UIPointerContentEffect" hasInstanceMethod:@"pointerPortal" withFullSignature:{"@", 0}];
}

+ (void)installCategories:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A348;
  block[3] = &unk_44540;
  v6 = a3;
  v3 = qword_83518;
  v4 = v6;
  if (v3 != -1)
  {
    dispatch_once(&qword_83518, block);
  }
}

@end