@interface UITableViewCell
@end

@implementation UITableViewCell

void __89__UITableViewCell_SafariServicesExtras__sf_registerDynamicImageProvider_forTraitChanges___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [v8 traitCollection];
  v5 = (*(v3 + 16))(v3, v4);

  v6 = [v8 contentConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setImage:v5];
    [v8 setContentConfiguration:v6];
  }

  else
  {
    v7 = [v8 imageView];
    [v7 setImage:v5];
  }
}

@end