@interface AXSBSideAppCustomAction
- (AXSBSideAppCustomAction)initWithName:(id)name gesture:(unint64_t)gesture target:(id)target selector:(SEL)selector;
@end

@implementation AXSBSideAppCustomAction

- (AXSBSideAppCustomAction)initWithName:(id)name gesture:(unint64_t)gesture target:(id)target selector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = AXSBSideAppCustomAction;
  v7 = [(AXSBSideAppCustomAction *)&v10 initWithName:name target:target selector:selector];
  v8 = v7;
  if (v7)
  {
    [(AXSBSideAppCustomAction *)v7 setGesture:gesture];
  }

  return v8;
}

@end