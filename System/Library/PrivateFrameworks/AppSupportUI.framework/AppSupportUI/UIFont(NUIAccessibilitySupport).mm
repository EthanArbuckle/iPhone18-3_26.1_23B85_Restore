@interface UIFont(NUIAccessibilitySupport)
+ (uint64_t)_nui_isAccessibilityEnabled;
@end

@implementation UIFont(NUIAccessibilitySupport)

+ (uint64_t)_nui_isAccessibilityEnabled
{
  v0 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  if (+[UIFont(NUIAccessibilitySupport) _nui_isAccessibilityEnabled]::onceToken != -1)
  {
    +[UIFont(NUIAccessibilitySupport) _nui_isAccessibilityEnabled];
  }

  v1 = +[UIFont(NUIAccessibilitySupport) _nui_isAccessibilityEnabled]::largeSizes;

  return [v1 containsObject:v0];
}

@end