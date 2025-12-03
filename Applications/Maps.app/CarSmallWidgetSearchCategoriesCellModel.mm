@interface CarSmallWidgetSearchCategoriesCellModel
- (CarSmallWidgetSearchCategoriesCellModel)initWithBrowseCategory:(id)category;
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
  alternativeName = [(BrowseCategory *)self->_category alternativeName];
  v4 = alternativeName;
  if (alternativeName)
  {
    name = alternativeName;
  }

  else
  {
    name = [(BrowseCategory *)self->_category name];
  }

  v6 = name;

  return v6;
}

- (CarSmallWidgetSearchCategoriesCellModel)initWithBrowseCategory:(id)category
{
  categoryCopy = category;
  v9.receiver = self;
  v9.super_class = CarSmallWidgetSearchCategoriesCellModel;
  v6 = [(CarSmallWidgetSearchCategoriesCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_category, category);
  }

  return v7;
}

@end