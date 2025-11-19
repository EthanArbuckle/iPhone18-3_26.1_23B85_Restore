@interface _EXViewControllerSceneConfiguration
- (Class)viewControllerClass;
- (UIStoryboard)storyboard;
@end

@implementation _EXViewControllerSceneConfiguration

- (UIStoryboard)storyboard
{
  storyboard = self->_storyboard;
  if (!storyboard)
  {
    v4 = [(_EXViewControllerSceneConfiguration *)self storyboardName];
    if (v4 && ([MEMORY[0x1E69DCFB8] storyboardWithName:v4 bundle:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = self->_storyboard;
      self->_storyboard = v5;
      v7 = v5;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      v7 = self->_storyboard;
      self->_storyboard = v8;
    }

    storyboard = self->_storyboard;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  if (storyboard == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = self->_storyboard;
  }

  return v10;
}

- (Class)viewControllerClass
{
  viewControllerClass = self->_viewControllerClass;
  if (!viewControllerClass)
  {
    viewControllerClass = self->_viewControllerClassName;
    if (viewControllerClass)
    {
      v4 = NSClassFromString(viewControllerClass);
      v5 = self->_viewControllerClass;
      self->_viewControllerClass = v4;

      viewControllerClass = self->_viewControllerClass;
    }
  }

  return viewControllerClass;
}

@end