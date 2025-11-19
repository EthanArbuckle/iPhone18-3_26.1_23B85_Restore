@interface ASDAlertPresentationRequest
+ (id)requestWithTitle:(id)a3 message:(id)a4;
- (ASDAlertPresentationRequest)initWithCoder:(id)a3;
- (ASDAlertPresentationRequest)initWithTitle:(id)a3 message:(id)a4;
- (NSArray)actions;
- (NSString)iconBundlePath;
- (id)addActionWithTitle:(id)a3 style:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setActions:(id)a3;
@end

@implementation ASDAlertPresentationRequest

+ (id)requestWithTitle:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ASDAlertPresentationRequest alloc] initWithTitle:v6 message:v5];

  return v7;
}

- (ASDAlertPresentationRequest)initWithTitle:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ASDAlertPresentationRequest;
  v9 = [(ASDAlertPresentationRequest *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_message, a4);
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    actions = v10->_actions;
    v10->_actions = v11;
  }

  return v10;
}

- (id)addActionWithTitle:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [[ASDAlertAction alloc] initWithTitle:v6 style:a4];

  [(NSMutableArray *)self->_actions addObject:v7];

  return v7;
}

- (NSArray)actions
{
  v2 = [(NSMutableArray *)self->_actions copy];

  return v2;
}

- (void)setActions:(id)a3
{
  v4 = [a3 copy];
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

- (ASDAlertPresentationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ASDAlertPresentationRequest;
  v5 = [(ASDAlertPresentationRequest *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    v7 = [v6 mutableCopy];
    actions = v5->_actions;
    v5->_actions = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconBundlePath"];
    iconBundlePath = v5->_iconBundlePath;
    v5->_iconBundlePath = v9;

    v5->_icon = [v4 decodeIntegerForKey:@"icon"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v13;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actions = self->_actions;
  v5 = a3;
  [v5 encodeObject:actions forKey:@"actions"];
  [v5 encodeObject:self->_iconBundlePath forKey:@"iconBundlePath"];
  [v5 encodeInteger:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_message forKey:@"message"];
  [v5 encodeInteger:self->_style forKey:@"style"];
}

@end