@interface ASDNotification
+ (id)notificationWithName:(id)a3 userInfo:(id)a4;
- (ASDNotification)initWithCoder:(id)a3;
- (ASDNotification)initWithName:(id)a3 userInfo:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDNotification

+ (id)notificationWithName:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithName:v7 userInfo:v6];

  return v8;
}

- (ASDNotification)initWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASDNotification;
  v8 = [(ASDNotification *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 copy];
    userInfo = v8->_userInfo;
    v8->_userInfo = v11;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = ASDNotification;
  v4 = [(ASDNotification *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ {name = %@ userInfo = %@}", v4, self->_name, self->_userInfo];;

  return v5;
}

- (ASDNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ASDNotification;
  v5 = [(ASDNotification *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"N"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"U"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"N"];
  [v5 encodeObject:self->_userInfo forKey:@"U"];
}

@end