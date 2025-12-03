@interface UIContextMenuInteraction(WebKitInternal)
- (uint64_t)_wk_isMenuVisible;
@end

@implementation UIContextMenuInteraction(WebKitInternal)

- (uint64_t)_wk_isMenuVisible
{
  v4 = 0;
  v2 = malloc_type_malloc(0x28uLL, 0x10F0040536C3488uLL);
  *v2 = MEMORY[0x1E69E9818];
  v2[1] = 50331650;
  v2[2] = WTF::BlockPtr<UIMenu * ()(UIMenu *)>::fromCallable<[UIContextMenuInteraction(WebKitInternal) _wk_isMenuVisible]::$_1>([UIContextMenuInteraction(WebKitInternal) _wk_isMenuVisible]::$_1)::{lambda(void *,UIMenu *)#1}::__invoke;
  v2[3] = &WTF::BlockPtr<UIMenu * ()(UIMenu *)>::fromCallable<[UIContextMenuInteraction(WebKitInternal) _wk_isMenuVisible]::$_1>([UIContextMenuInteraction(WebKitInternal) _wk_isMenuVisible]::$_1)::descriptor;
  v2[4] = &v4;
  [self updateVisibleMenuWithBlock:v2];
  _Block_release(v2);
  return v4;
}

@end