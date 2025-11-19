@interface SFCustomActivityProxy
- (BOOL)isEqual:(id)a3;
- (SFCustomActivityProxy)initWithActivity:(id)a3;
- (SFCustomActivityProxy)initWithCoder:(id)a3;
- (id)_initWithActivityType:(id)a3 title:(id)a4 image:(id)a5 proxyID:(unint64_t)a6;
- (id)activityTypeWithActivity:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCustomActivityProxy

- (SFCustomActivityProxy)initWithActivity:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFCustomActivityProxy;
  v5 = [(SFCustomActivityProxy *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(SFCustomActivityProxy *)v5 activityTypeWithActivity:v4];
    activityType = v6->_activityType;
    v6->_activityType = v7;

    v9 = [v4 activityTitle];
    activityTitle = v6->_activityTitle;
    v6->_activityTitle = v9;

    v11 = [v4 activityImage];
    activityImage = v6->_activityImage;
    v6->_activityImage = v11;

    v13 = initWithActivity__activityProxyID++;
    v6->_activityProxyID = v13;
    v14 = v6;
  }

  return v6;
}

- (id)_initWithActivityType:(id)a3 title:(id)a4 image:(id)a5 proxyID:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = SFCustomActivityProxy;
  v14 = [(SFCustomActivityProxy *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_activityType, a3);
    objc_storeStrong(&v15->_activityTitle, a4);
    objc_storeStrong(&v15->_activityImage, a5);
    v15->_activityProxyID = a6;
    v16 = v15;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_activityProxyID == v4[4];

  return v5;
}

- (id)activityTypeWithActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 safari_stringByRemovingCharactersInSet:v5], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 safari_stringByRemovingCharactersInSet:v5];

    v11 = [v3 activityTitle];
    v12 = [v11 safari_stringByRemovingCharactersInSet:v5];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariServices.hostApplicationActivity.%@.%@", v10, v12];

    v4 = v13;
  }

  return v4;
}

- (SFCustomActivityProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityTitle"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityImage"];
  v8 = [v4 decodeIntegerForKey:@"activityProxyID"];

  v9 = [(SFCustomActivityProxy *)self _initWithActivityType:v5 title:v6 image:v7 proxyID:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  activityType = self->_activityType;
  v5 = a3;
  [v5 encodeObject:activityType forKey:@"activityType"];
  [v5 encodeObject:self->_activityTitle forKey:@"activityTitle"];
  [v5 encodeObject:self->_activityImage forKey:@"activityImage"];
  [v5 encodeInteger:self->_activityProxyID forKey:@"activityProxyID"];
}

@end