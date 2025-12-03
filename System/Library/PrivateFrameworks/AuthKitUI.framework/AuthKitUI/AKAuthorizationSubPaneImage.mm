@interface AKAuthorizationSubPaneImage
+ (id)_imageViewWithImage:(id)image;
- (AKAuthorizationSubPaneImage)initWithImage:(id)image;
- (UIImage)image;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)addToStackView:(id)view context:(id)context;
- (void)setImage:(id)image;
- (void)setImage:(id)image animated:(BOOL)animated;
@end

@implementation AKAuthorizationSubPaneImage

- (AKAuthorizationSubPaneImage)initWithImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = [objc_opt_class() _imageViewWithImage:location[0]];
  imageView = selfCopy->_imageView;
  selfCopy->_imageView = v3;
  *&v5 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  v6 = selfCopy;
  v7 = selfCopy->_imageView;
  selfCopy = 0;
  v10.receiver = v6;
  v10.super_class = AKAuthorizationSubPaneImage;
  selfCopy = [(AKAuthorizationSubPane *)&v10 initWithView:v7, v5];
  objc_storeStrong(&selfCopy, selfCopy);
  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (UIImage)image
{
  imageView = [(AKAuthorizationSubPaneImage *)self imageView];
  image = [(UIImageView *)imageView image];
  MEMORY[0x277D82BD8](imageView);

  return image;
}

- (void)setImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = location[0];
  imageView = [(AKAuthorizationSubPaneImage *)selfCopy imageView];
  [(UIImageView *)imageView setImage:v3];
  MEMORY[0x277D82BD8](imageView);
  objc_storeStrong(location, 0);
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  animatedCopy = animated;
  if (animated)
  {
    v5 = MEMORY[0x277D75D18];
    imageView = [(AKAuthorizationSubPaneImage *)selfCopy imageView];
    v4 = *&_AKImageFadeAnimationDuration;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __49__AKAuthorizationSubPaneImage_setImage_animated___block_invoke;
    v12 = &unk_2784A6420;
    v13 = MEMORY[0x277D82BE0](selfCopy);
    v14 = MEMORY[0x277D82BE0](location[0]);
    [v5 transitionWithView:imageView duration:5242880 options:&v8 animations:v4 completion:?];
    MEMORY[0x277D82BD8](imageView);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    [(AKAuthorizationSubPaneImage *)selfCopy setImage:location[0]];
  }

  objc_storeStrong(location, 0);
}

double __49__AKAuthorizationSubPaneImage_setImage_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) imageView];
  [v3 setImage:v2];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)addToStackView:(id)view context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, context);
  v5.receiver = selfCopy;
  v5.super_class = AKAuthorizationSubPaneImage;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v9 = 0;
  objc_storeStrong(&v9, context);
  imageViewConstraints = [(AKAuthorizationSubPaneImage *)selfCopy imageViewConstraints];
  *&v4 = MEMORY[0x277D82BD8](imageViewConstraints).n128_u64[0];
  if (imageViewConstraints)
  {
    v5 = location[0];
    imageViewConstraints2 = [(AKAuthorizationSubPaneImage *)selfCopy imageViewConstraints];
    [v5 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](imageViewConstraints2);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (id)_imageViewWithImage:(id)image
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = [v3 initWithImage:location[0]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end