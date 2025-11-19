@interface INObjectSection
- (INObjectSection)initWithCoder:(id)a3;
- (INObjectSection)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 items:(id)a7;
- (INObjectSection)initWithTitle:(NSString *)title items:(NSArray *)items;
- (INObjectSection)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 items:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INObjectSection

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_items forKey:@"items"];
  [v5 encodeObject:self->_identifier forKey:@"_identifier"];
}

- (INObjectSection)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"title"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"subtitle"];

  v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v14 = +[INSchema _supportedClasses];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:3];
  v16 = [v14 setByAddingObjectsFromArray:v15];
  v17 = [v5 decodeObjectOfClasses:v16 forKey:@"items"];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0, v25, v26}];
  v21 = [v5 decodeObjectOfClasses:v20 forKey:@"_identifier"];

  if (v17)
  {
    self = [(INObjectSection *)self initWithIdentifier:v21 title:v8 subtitle:v12 image:v13 items:v17];
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (INObjectSection)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 items:(id)a6
{
  if (a3)
  {
    v11 = a6;
    v12 = a5;
    v13 = a4;
    v14 = [a3 copy];
  }

  else
  {
    v15 = MEMORY[0x1E696AFB0];
    v16 = a6;
    v17 = a5;
    v18 = a4;
    v19 = [v15 UUID];
    v20 = [v19 UUIDString];
    v14 = [v20 copy];
  }

  v21 = [(INObjectSection *)self initWithIdentifier:v14 title:a3 subtitle:a4 image:a5 items:a6];

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
    v11 = [v9 UUID];
    v12 = [v11 UUIDString];
    v8 = [v12 copy];
  }

  v13 = [(INObjectSection *)self initWithIdentifier:v8 title:title subtitle:0 image:0 items:items];

  return v13;
}

- (INObjectSection)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 image:(id)a6 items:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = INObjectSection;
  v17 = [(INObjectSection *)&v29 init];
  if (v17)
  {
    v18 = [v13 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v16 copy];
    items = v17->_items;
    v17->_items = v20;

    v22 = [v14 copy];
    subtitle = v17->_subtitle;
    v17->_subtitle = v22;

    v24 = [v15 copy];
    image = v17->_image;
    v17->_image = v24;

    v26 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v26;
  }

  return v17;
}

@end