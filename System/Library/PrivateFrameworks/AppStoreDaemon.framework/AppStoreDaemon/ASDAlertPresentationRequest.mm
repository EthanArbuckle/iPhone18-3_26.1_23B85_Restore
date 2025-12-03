@interface ASDAlertPresentationRequest
+ (id)requestWithTitle:(id)title message:(id)message;
- (ASDAlertPresentationRequest)initWithCoder:(id)coder;
- (ASDAlertPresentationRequest)initWithTitle:(id)title message:(id)message;
- (NSArray)actions;
- (NSString)iconBundlePath;
- (id)addActionWithTitle:(id)title style:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
- (void)setActions:(id)actions;
@end

@implementation ASDAlertPresentationRequest

+ (id)requestWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v7 = [[ASDAlertPresentationRequest alloc] initWithTitle:titleCopy message:messageCopy];

  return v7;
}

- (ASDAlertPresentationRequest)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = ASDAlertPresentationRequest;
  v9 = [(ASDAlertPresentationRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_message, message);
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    actions = v10->_actions;
    v10->_actions = v11;
  }

  return v10;
}

- (id)addActionWithTitle:(id)title style:(int64_t)style
{
  titleCopy = title;
  v7 = [[ASDAlertAction alloc] initWithTitle:titleCopy style:style];

  [(NSMutableArray *)self->_actions addObject:v7];

  return v7;
}

- (NSArray)actions
{
  v2 = [(NSMutableArray *)self->_actions copy];

  return v2;
}

- (void)setActions:(id)actions
{
  v4 = [actions copy];
  actions = self->_actions;
  self->_actions = v4;

  MEMORY[0x1EEE66BB8](v4, actions);
}

- (NSString)iconBundlePath
{
  if (self->_icon != 1)
  {
    iconBundlePath = self->_iconBundlePath;
    self->_iconBundlePath = 0;
  }

  v4 = self->_iconBundlePath;

  return v4;
}

- (ASDAlertPresentationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ASDAlertPresentationRequest;
  v5 = [(ASDAlertPresentationRequest *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    v7 = [v6 mutableCopy];
    actions = v5->_actions;
    v5->_actions = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iconBundlePath"];
    iconBundlePath = v5->_iconBundlePath;
    v5->_iconBundlePath = v9;

    v5->_icon = [coderCopy decodeIntegerForKey:@"icon"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v13;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actions = self->_actions;
  coderCopy = coder;
  [coderCopy encodeObject:actions forKey:@"actions"];
  [coderCopy encodeObject:self->_iconBundlePath forKey:@"iconBundlePath"];
  [coderCopy encodeInteger:self->_icon forKey:@"icon"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_message forKey:@"message"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
}

@end