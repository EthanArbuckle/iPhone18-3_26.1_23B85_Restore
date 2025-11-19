@interface AKAuthorizationSubPaneImage
+ (id)_imageViewWithImage:(id)a3;
- (AKAuthorizationSubPaneImage)initWithImage:(id)a3;
- (UIImage)image;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)addToStackView:(id)a3 context:(id)a4;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 animated:(BOOL)a4;
@end

@implementation AKAuthorizationSubPaneImage

- (AKAuthorizationSubPaneImage)initWithImage:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [objc_opt_class() _imageViewWithImage:location[0]];
  imageView = v12->_imageView;
  v12->_imageView = v3;
  *&v5 = MEMORY[0x277D82BD8](imageView).n128_u64[0];
  v6 = v12;
  v7 = v12->_imageView;
  v12 = 0;
  v10.receiver = v6;
  v10.super_class = AKAuthorizationSubPaneImage;
  v12 = [(AKAuthorizationSubPane *)&v10 initWithView:v7, v5];
  objc_storeStrong(&v12, v12);
  v9 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v9;
}

- (UIImage)image
{
  v3 = [(AKAuthorizationSubPaneImage *)self imageView];
  v4 = [(UIImageView *)v3 image];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setImage:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKAuthorizationSubPaneImage *)v6 imageView];
  [(UIImageView *)v4 setImage:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)setImage:(id)a3 animated:(BOOL)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  if (a4)
  {
    v5 = MEMORY[0x277D75D18];
    v6 = [(AKAuthorizationSubPaneImage *)v17 imageView];
    v4 = *&_AKImageFadeAnimationDuration;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __49__AKAuthorizationSubPaneImage_setImage_animated___block_invoke;
    v12 = &unk_2784A6420;
    v13 = MEMORY[0x277D82BE0](v17);
    v14 = MEMORY[0x277D82BE0](location[0]);
    [v5 transitionWithView:v6 duration:5242880 options:&v8 animations:v4 completion:?];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    [(AKAuthorizationSubPaneImage *)v17 setImage:location[0]];
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

- (void)addToStackView:(id)a3 context:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = AKAuthorizationSubPaneImage;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)a3 context:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [(AKAuthorizationSubPaneImage *)v11 imageViewConstraints];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v5 = location[0];
    v6 = [(AKAuthorizationSubPaneImage *)v11 imageViewConstraints];
    [v5 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

+ (id)_imageViewWithImage:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v6 = [v3 initWithImage:location[0]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end