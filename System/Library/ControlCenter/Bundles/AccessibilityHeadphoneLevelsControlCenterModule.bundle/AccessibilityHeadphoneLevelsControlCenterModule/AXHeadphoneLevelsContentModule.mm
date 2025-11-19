@interface AXHeadphoneLevelsContentModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation AXHeadphoneLevelsContentModule

- (id)contentViewControllerForContext:(id)a3
{
  moduleViewController = self->_moduleViewController;
  if (!moduleViewController)
  {
    v6 = objc_alloc_init(AXHeadphoneLevelsModuleViewController);
    v7 = self->_moduleViewController;
    self->_moduleViewController = v6;

    moduleViewController = self->_moduleViewController;
  }

  v8 = objc_msgSend_contentModuleContext(self, a2, a3, v3);
  objc_msgSend_setContentModuleContext_(moduleViewController, v9, v8, v10);

  v11 = self->_moduleViewController;

  return v11;
}

@end