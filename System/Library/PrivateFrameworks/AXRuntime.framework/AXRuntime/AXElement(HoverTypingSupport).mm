@interface AXElement(HoverTypingSupport)
- (BOOL)hoverTypingShouldAdjustDockedMode;
@end

@implementation AXElement(HoverTypingSupport)

- (BOOL)hoverTypingShouldAdjustDockedMode
{
  uiElement = [(AXElement *)self uiElement];
  v3 = [uiElement BOOLWithAXAttribute:4006];

  return v3;
}

@end