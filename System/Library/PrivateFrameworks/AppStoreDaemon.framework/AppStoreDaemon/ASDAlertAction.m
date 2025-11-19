@interface ASDAlertAction
+ (id)actionWithTitle:(id)a3;
+ (id)actionWithTitle:(id)a3 style:(int64_t)a4;
- (ASDAlertAction)initWithCoder:(id)a3;
- (ASDAlertAction)initWithTitle:(id)a3 style:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDAlertAction

- (ASDAlertAction)initWithTitle:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASDAlertAction;
  v8 = [(ASDAlertAction *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_title, a3);
    v8->_style = a4;
  }

  return v8;
}

+ (id)actionWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[ASDAlertAction alloc] initWithTitle:v3];

  return v4;
}

+ (id)actionWithTitle:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v6 = [[ASDAlertAction alloc] initWithTitle:v5 style:a4];

  return v6;
}

- (ASDAlertAction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ASDAlertAction;
  v5 = [(ASDAlertAction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_style forKey:@"style"];
}

@end