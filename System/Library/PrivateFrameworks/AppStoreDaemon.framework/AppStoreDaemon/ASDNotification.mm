@interface ASDNotification
+ (id)notificationWithName:(id)name userInfo:(id)info;
- (ASDNotification)initWithCoder:(id)coder;
- (ASDNotification)initWithName:(id)name userInfo:(id)info;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDNotification

+ (id)notificationWithName:(id)name userInfo:(id)info
{
  infoCopy = info;
  nameCopy = name;
  v8 = [[self alloc] initWithName:nameCopy userInfo:infoCopy];

  return v8;
}

- (ASDNotification)initWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = ASDNotification;
  v8 = [(ASDNotification *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    v11 = [infoCopy copy];
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

- (ASDNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = ASDNotification;
  v5 = [(ASDNotification *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"N"];
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
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"U"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"N"];
  [coderCopy encodeObject:self->_userInfo forKey:@"U"];
}

@end