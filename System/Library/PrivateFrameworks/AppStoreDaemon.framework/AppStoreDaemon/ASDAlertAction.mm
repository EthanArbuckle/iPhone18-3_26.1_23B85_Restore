@interface ASDAlertAction
+ (id)actionWithTitle:(id)title;
+ (id)actionWithTitle:(id)title style:(int64_t)style;
- (ASDAlertAction)initWithCoder:(id)coder;
- (ASDAlertAction)initWithTitle:(id)title style:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDAlertAction

- (ASDAlertAction)initWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = ASDAlertAction;
  v8 = [(ASDAlertAction *)&v12 init];
  if (v8)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;

    objc_storeStrong(&v8->_title, title);
    v8->_style = style;
  }

  return v8;
}

+ (id)actionWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[ASDAlertAction alloc] initWithTitle:titleCopy];

  return v4;
}

+ (id)actionWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  v6 = [[ASDAlertAction alloc] initWithTitle:titleCopy style:style];

  return v6;
}

- (ASDAlertAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASDAlertAction;
  v5 = [(ASDAlertAction *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
}

@end