@interface GPImageEditionViewController
- (BOOL)sourceImageIsSketch;
- (GPImageEditionViewController)init;
- (GPImageEditionViewControllerDelegate)delegate;
- (GPRecipe)recipe;
- (NSString)localizedCreateButtonTitle;
- (UIImage)sourceImage;
- (void)imageEditionViewController:(id)controller didCreate:(id)create;
- (void)imageGenerationViewControllerWantsToShowGrid:(id)grid;
- (void)imagePlaygroundViewControllerDidCancel:(id)cancel;
- (void)setRecipe:(id)recipe;
- (void)setSourceImage:(id)image;
@end

@implementation GPImageEditionViewController

- (GPImageEditionViewController)init
{
  v8.receiver = self;
  v8.super_class = GPImageEditionViewController;
  v2 = [(GPImageEditionViewController *)&v8 initWithNibName:0 bundle:0];
  v3 = objc_alloc_init(_TtC15ImagePlayground29ImagePlaygroundViewController);
  [(GPImageEditionViewController *)v2 setGenerationViewController:v3];

  generationViewController = [(GPImageEditionViewController *)v2 generationViewController];
  [generationViewController setDelegate:v2];

  generationViewController2 = [(GPImageEditionViewController *)v2 generationViewController];
  [generationViewController2 setPrivateDelegate:v2];

  generationViewController3 = [(GPImageEditionViewController *)v2 generationViewController];
  [(UIViewController *)v2 gp_addChildViewController:generationViewController3];

  return v2;
}

- (GPRecipe)recipe
{
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  recipe = [generationViewController recipe];

  return recipe;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  [generationViewController setRecipe:recipeCopy];
}

- (UIImage)sourceImage
{
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  sourceImage = [generationViewController sourceImage];

  return sourceImage;
}

- (void)setSourceImage:(id)image
{
  imageCopy = image;
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  [generationViewController setSourceImage:imageCopy];
}

- (BOOL)sourceImageIsSketch
{
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  sourceImageIsSketch = [generationViewController sourceImageIsSketch];

  return sourceImageIsSketch;
}

- (NSString)localizedCreateButtonTitle
{
  generationViewController = [(GPImageEditionViewController *)self generationViewController];
  localizedCreateButtonTitle = [generationViewController localizedCreateButtonTitle];

  return localizedCreateButtonTitle;
}

- (void)imagePlaygroundViewControllerDidCancel:(id)cancel
{
  delegate = [(GPImageEditionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  delegate2 = [(GPImageEditionViewController *)self delegate];
  delegate3 = delegate2;
  if (v5)
  {
    [delegate2 imageEditionViewControllerDidCancel:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate3 = [(GPImageEditionViewController *)self delegate];
    [delegate3 imageEditionViewControllerDidCancel:self requiresShowingGrid:0];
  }
}

- (void)imageGenerationViewControllerWantsToShowGrid:(id)grid
{
  delegate = [(GPImageEditionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(GPImageEditionViewController *)self delegate];
    [delegate2 imageEditionViewControllerDidCancel:self requiresShowingGrid:1];
  }
}

- (void)imageEditionViewController:(id)controller didCreate:(id)create
{
  v11 = *MEMORY[0x1E69E9840];
  createCopy = create;
  v5 = MEMORY[0x1E695DEC8];
  createCopy2 = create;
  v7 = [v5 arrayWithObjects:&createCopy count:1];

  [(GPImageEditionViewController *)self setGeneratedAssets:v7, createCopy, v11];
  delegate = [(GPImageEditionViewController *)self delegate];
  [delegate imageEditionViewControllerDidFinishEditing:self error:0];

  v9 = *MEMORY[0x1E69E9840];
}

- (GPImageEditionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end