@interface RAPPersonalPlaceSelectionQuestion
- (NSString)localizedDescription;
- (NSString)localizedTitle;
- (RAPPersonalPlaceSelectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcut:(id)a5;
- (UIImage)image;
@end

@implementation RAPPersonalPlaceSelectionQuestion

- (NSString)localizedDescription
{
  v2 = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  v3 = [v2 addressObject];
  v4 = [v3 shortAddress];

  return v4;
}

- (NSString)localizedTitle
{
  v2 = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  v3 = [v2 addressObject];
  v4 = [v3 name];

  return v4;
}

- (UIImage)image
{
  v2 = [(MapsSuggestionsShortcut *)self->_shortcut type];

  return sub_1008752EC(v2);
}

- (RAPPersonalPlaceSelectionQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 shortcut:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RAPPersonalPlaceSelectionQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shortcut, a5);
  }

  return v11;
}

@end