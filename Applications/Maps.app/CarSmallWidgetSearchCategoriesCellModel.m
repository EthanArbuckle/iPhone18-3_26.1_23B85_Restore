@interface CarSmallWidgetSearchCategoriesCellModel
- (CarSmallWidgetSearchCategoriesCellModel)initWithBrowseCategory:(id)a3;
- (id)image;
- (id)title;
@end

@implementation CarSmallWidgetSearchCategoriesCellModel

- (id)image
{
  image = self->_image;
  if (!image)
  {
    v4 = +[BrowseManager sharedManager];
    v5 = [v4 synchronousImageForCategory:self->_category scale:1 isCarplay:0.0];
    v6 = self->_image;
    self->_image = v5;

    [(UIImage *)self->_image setAccessibilityIdentifier:@"CarSmallWidgetSearchCategoryImage"];
    image = self->_image;
  }

  return image;
}

- (id)title
{
  v3 = [(BrowseCategory *)self->_category alternativeName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(BrowseCategory *)self->_category name];
  }

  v6 = v5;

  return v6;
}

- (CarSmallWidgetSearchCategoriesCellModel)initWithBrowseCategory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CarSmallWidgetSearchCategoriesCellModel;
  v6 = [(CarSmallWidgetSearchCategoriesCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, a3);
  }

  return v7;
}

@end