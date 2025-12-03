@interface TUIButtonAttributes
- (BOOL)isEqual:(id)equal;
- (TUIButtonAttributes)initWithTitle:(id)title image:(id)image;
- (id)attributesForButtonType:(unint64_t)type;
@end

@implementation TUIButtonAttributes

- (TUIButtonAttributes)initWithTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = TUIButtonAttributes;
  v9 = [(TUIButtonAttributes *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_image, image);
  }

  return v10;
}

- (id)attributesForButtonType:(unint64_t)type
{
  selfCopy = self;
  v5 = [(NSAttributedString *)selfCopy->_title tui_attributedTitleForButtonType:type];
  if (v5 != selfCopy->_title)
  {
    v6 = [[TUIButtonAttributes alloc] initWithTitle:v5 image:selfCopy->_image];

    selfCopy = v6;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    v6 = objc_opt_class();
    v7 = TUIDynamicCast(v6, equalCopy);
  }

  return self == equal;
}

@end