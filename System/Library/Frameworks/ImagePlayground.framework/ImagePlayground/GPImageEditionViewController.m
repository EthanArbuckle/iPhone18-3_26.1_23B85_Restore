@interface GPImageEditionViewController
- (BOOL)sourceImageIsSketch;
- (GPImageEditionViewController)init;
- (GPImageEditionViewControllerDelegate)delegate;
- (GPRecipe)recipe;
- (NSString)localizedCreateButtonTitle;
- (UIImage)sourceImage;
- (void)imageEditionViewController:(id)a3 didCreate:(id)a4;
- (void)imageGenerationViewControllerWantsToShowGrid:(id)a3;
- (void)imagePlaygroundViewControllerDidCancel:(id)a3;
- (void)setRecipe:(id)a3;
- (void)setSourceImage:(id)a3;
@end

@implementation GPImageEditionViewController

- (GPImageEditionViewController)init
{
  v8.receiver = self;
  v8.super_class = GPImageEditionViewController;
  v2 = [(GPImageEditionViewController *)&v8 initWithNibName:0 bundle:0];
  v3 = objc_alloc_init(_TtC15ImagePlayground29ImagePlaygroundViewController);
  [(GPImageEditionViewController *)v2 setGenerationViewController:v3];

  v4 = [(GPImageEditionViewController *)v2 generationViewController];
  [v4 setDelegate:v2];

  v5 = [(GPImageEditionViewController *)v2 generationViewController];
  [v5 setPrivateDelegate:v2];

  v6 = [(GPImageEditionViewController *)v2 generationViewController];
  [(UIViewController *)v2 gp_addChildViewController:v6];

  return v2;
}

- (GPRecipe)recipe
{
  v2 = [(GPImageEditionViewController *)self generationViewController];
  v3 = [v2 recipe];

  return v3;
}

- (void)setRecipe:(id)a3
{
  v4 = a3;
  v5 = [(GPImageEditionViewController *)self generationViewController];
  [v5 setRecipe:v4];
}

- (UIImage)sourceImage
{
  v2 = [(GPImageEditionViewController *)self generationViewController];
  v3 = [v2 sourceImage];

  return v3;
}

- (void)setSourceImage:(id)a3
{
  v4 = a3;
  v5 = [(GPImageEditionViewController *)self generationViewController];
  [v5 setSourceImage:v4];
}

- (BOOL)sourceImageIsSketch
{
  v2 = [(GPImageEditionViewController *)self generationViewController];
  v3 = [v2 sourceImageIsSketch];

  return v3;
}

- (NSString)localizedCreateButtonTitle
{
  v2 = [(GPImageEditionViewController *)self generationViewController];
  v3 = [v2 localizedCreateButtonTitle];

  return v3;
}

- (void)imagePlaygroundViewControllerDidCancel:(id)a3
{
  v4 = [(GPImageEditionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(GPImageEditionViewController *)self delegate];
  v8 = v6;
  if (v5)
  {
    [v6 imageEditionViewControllerDidCancel:self];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(GPImageEditionViewController *)self delegate];
    [v8 imageEditionViewControllerDidCancel:self requiresShowingGrid:0];
  }
}

- (void)imageGenerationViewControllerWantsToShowGrid:(id)a3
{
  v4 = [(GPImageEditionViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(GPImageEditionViewController *)self delegate];
    [v6 imageEditionViewControllerDidCancel:self requiresShowingGrid:1];
  }
}

- (void)imageEditionViewController:(id)a3 didCreate:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:&v10 count:1];

  [(GPImageEditionViewController *)self setGeneratedAssets:v7, v10, v11];
  v8 = [(GPImageEditionViewController *)self delegate];
  [v8 imageEditionViewControllerDidFinishEditing:self error:0];

  v9 = *MEMORY[0x1E69E9840];
}

- (GPImageEditionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end