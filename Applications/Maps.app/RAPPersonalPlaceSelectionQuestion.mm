@interface RAPPersonalPlaceSelectionQuestion
- (NSString)localizedDescription;
- (NSString)localizedTitle;
- (RAPPersonalPlaceSelectionQuestion)initWithReport:(id)report parentQuestion:(id)question shortcut:(id)shortcut;
- (UIImage)image;
@end

@implementation RAPPersonalPlaceSelectionQuestion

- (NSString)localizedDescription
{
  geoMapItem = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  addressObject = [geoMapItem addressObject];
  shortAddress = [addressObject shortAddress];

  return shortAddress;
}

- (NSString)localizedTitle
{
  geoMapItem = [(MapsSuggestionsShortcut *)self->_shortcut geoMapItem];
  addressObject = [geoMapItem addressObject];
  name = [addressObject name];

  return name;
}

- (UIImage)image
{
  type = [(MapsSuggestionsShortcut *)self->_shortcut type];

  return sub_1008752EC(type);
}

- (RAPPersonalPlaceSelectionQuestion)initWithReport:(id)report parentQuestion:(id)question shortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v13.receiver = self;
  v13.super_class = RAPPersonalPlaceSelectionQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:question];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shortcut, shortcut);
  }

  return v11;
}

@end