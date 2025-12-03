@interface INObjectSection
- (INObjectSection)initWithCoder:(id)coder;
- (INObjectSection)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle image:(id)image items:(id)items;
- (INObjectSection)initWithTitle:(NSString *)title items:(NSArray *)items;
- (INObjectSection)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image items:(id)items;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INObjectSection

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_items forKey:@"items"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
}

- (INObjectSection)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"title"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"subtitle"];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v14 = +[INSchema _supportedClasses];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:3];
  v16 = [v14 setByAddingObjectsFromArray:v15];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"items"];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0, v25, v26}];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"_identifier"];

  if (v17)
  {
    self = [(INObjectSection *)self initWithIdentifier:v21 title:v8 subtitle:v12 image:v13 items:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (INObjectSection)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image items:(id)items
{
  if (title)
  {
    itemsCopy = items;
    imageCopy = image;
    subtitleCopy = subtitle;
    v14 = [title copy];
  }

  else
  {
    v15 = MEMORY[0x1E696AFB0];
    itemsCopy2 = items;
    imageCopy2 = image;
    subtitleCopy2 = subtitle;
    uUID = [v15 UUID];
    uUIDString = [uUID UUIDString];
    v14 = [uUIDString copy];
  }

  v21 = [(INObjectSection *)self initWithIdentifier:v14 title:title subtitle:subtitle image:image items:items];

  return v21;
}

- (INObjectSection)initWithTitle:(NSString *)title items:(NSArray *)items
{
  if (title)
  {
    v7 = items;
    v8 = [(NSString *)title copy];
  }

  else
  {
    v9 = MEMORY[0x1E696AFB0];
    v10 = items;
    uUID = [v9 UUID];
    uUIDString = [uUID UUIDString];
    v8 = [uUIDString copy];
  }

  v13 = [(INObjectSection *)self initWithIdentifier:v8 title:title subtitle:0 image:0 items:items];

  return v13;
}

- (INObjectSection)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle image:(id)image items:(id)items
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  itemsCopy = items;
  v29.receiver = self;
  v29.super_class = INObjectSection;
  v17 = [(INObjectSection *)&v29 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [itemsCopy copy];
    items = v17->_items;
    v17->_items = v20;

    v22 = [subtitleCopy copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v22;

    v24 = [imageCopy copy];
    image = v17->_image;
    v17->_image = v24;

    v26 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v26;
  }

  return v17;
}

@end