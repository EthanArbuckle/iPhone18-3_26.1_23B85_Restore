@interface CLKComplication
+ (CLKComplication)complicationWithFamily:(int64_t)a3 descriptor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)tl_isEqualToIdentifiable:(id)a3;
- (CLKComplication)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKComplication

+ (CLKComplication)complicationWithFamily:(int64_t)a3 descriptor:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(CLKComplication);
  v6->_family = a3;
  v7 = [v5 identifier];
  identifier = v6->_identifier;
  v6->_identifier = v7;

  v9 = [v5 userInfo];
  userInfo = v6->_userInfo;
  v6->_userInfo = v9;

  v11 = [v5 clkUserActivity];

  clkUserActivity = v6->_clkUserActivity;
  v6->_clkUserActivity = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 family] == self->_family)
  {
    v5 = [v4 identifier];
    v6 = [v5 isEqualToString:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_family;
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSDictionary *)self->_userInfo copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  objc_storeStrong((v5 + 8), self->_clkUserActivity);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  family = self->_family;
  v5 = a3;
  [v5 encodeInteger:family forKey:@"family"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
  v6 = [(CLKUserActivity *)self->_clkUserActivity encodedUserActivity];
  [v5 encodeObject:v6 forKey:@"userActivity"];
}

- (CLKComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CLKComplication *)self init];
  if (v5)
  {
    v5->_family = [v4 decodeIntegerForKey:@"family"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    v12 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v11];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v12;
  }

  return v5;
}

- (BOOL)tl_isEqualToIdentifiable:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 isEqual:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end