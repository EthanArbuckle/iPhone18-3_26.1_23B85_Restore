@interface SFCustomActivityProxy
- (BOOL)isEqual:(id)equal;
- (SFCustomActivityProxy)initWithActivity:(id)activity;
- (SFCustomActivityProxy)initWithCoder:(id)coder;
- (id)_initWithActivityType:(id)type title:(id)title image:(id)image proxyID:(unint64_t)d;
- (id)activityTypeWithActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCustomActivityProxy

- (SFCustomActivityProxy)initWithActivity:(id)activity
{
  activityCopy = activity;
  v16.receiver = self;
  v16.super_class = SFCustomActivityProxy;
  v5 = [(SFCustomActivityProxy *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SFCustomActivityProxy *)v5 activityTypeWithActivity:activityCopy];
    activityType = v6->_activityType;
    v6->_activityType = v7;

    activityTitle = [activityCopy activityTitle];
    activityTitle = v6->_activityTitle;
    v6->_activityTitle = activityTitle;

    activityImage = [activityCopy activityImage];
    activityImage = v6->_activityImage;
    v6->_activityImage = activityImage;

    v13 = initWithActivity__activityProxyID++;
    v6->_activityProxyID = v13;
    v14 = v6;
  }

  return v6;
}

- (id)_initWithActivityType:(id)type title:(id)title image:(id)image proxyID:(unint64_t)d
{
  typeCopy = type;
  titleCopy = title;
  imageCopy = image;
  v18.receiver = self;
  v18.super_class = SFCustomActivityProxy;
  v14 = [(SFCustomActivityProxy *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activityType, type);
    objc_storeStrong(&v15->_activityTitle, title);
    objc_storeStrong(&v15->_activityImage, image);
    v15->_activityProxyID = d;
    v16 = v15;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_activityProxyID == equalCopy[4];

  return v5;
}

- (id)activityTypeWithActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([activityType safari_stringByRemovingCharactersInSet:whitespaceCharacterSet], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v10 = [bundleIdentifier safari_stringByRemovingCharactersInSet:whitespaceCharacterSet];

    activityTitle = [activityCopy activityTitle];
    v12 = [activityTitle safari_stringByRemovingCharactersInSet:whitespaceCharacterSet];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariServices.hostApplicationActivity.%@.%@", v10, v12];

    activityType = v13;
  }

  return activityType;
}

- (SFCustomActivityProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityImage"];
  v8 = [coderCopy decodeIntegerForKey:@"activityProxyID"];

  v9 = [(SFCustomActivityProxy *)self _initWithActivityType:v5 title:v6 image:v7 proxyID:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  activityType = self->_activityType;
  coderCopy = coder;
  [coderCopy encodeObject:activityType forKey:@"activityType"];
  [coderCopy encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [coderCopy encodeObject:self->_activityImage forKey:@"activityImage"];
  [coderCopy encodeInteger:self->_activityProxyID forKey:@"activityProxyID"];
}

@end