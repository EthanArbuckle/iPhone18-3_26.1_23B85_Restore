@interface CLKComplication
+ (CLKComplication)complicationWithFamily:(int64_t)family descriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)tl_isEqualToIdentifiable:(id)identifiable;
- (CLKComplication)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKComplication

+ (CLKComplication)complicationWithFamily:(int64_t)family descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v6 = objc_alloc_init(CLKComplication);
  v6->_family = family;
  identifier = [descriptorCopy identifier];
  identifier = v6->_identifier;
  v6->_identifier = identifier;

  userInfo = [descriptorCopy userInfo];
  userInfo = v6->_userInfo;
  v6->_userInfo = userInfo;

  clkUserActivity = [descriptorCopy clkUserActivity];

  clkUserActivity = v6->_clkUserActivity;
  v6->_clkUserActivity = clkUserActivity;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [equalCopy family] == self->_family)
  {
    identifier = [equalCopy identifier];
    v6 = [identifier isEqualToString:self->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_family;
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSDictionary *)self->_userInfo copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  objc_storeStrong((v5 + 8), self->_clkUserActivity);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  family = self->_family;
  coderCopy = coder;
  [coderCopy encodeInteger:family forKey:@"family"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  encodedUserActivity = [(CLKUserActivity *)self->_clkUserActivity encodedUserActivity];
  [coderCopy encodeObject:encodedUserActivity forKey:@"userActivity"];
}

- (CLKComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CLKComplication *)self init];
  if (v5)
  {
    v5->_family = [coderCopy decodeIntegerForKey:@"family"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = +[CLKComplicationDescriptor allowedDictionaryClasses];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userActivity"];
    v12 = [[CLKUserActivity alloc] initWithEncodedUserActivity:v11];
    clkUserActivity = v5->_clkUserActivity;
    v5->_clkUserActivity = v12;
  }

  return v5;
}

- (BOOL)tl_isEqualToIdentifiable:(id)identifiable
{
  identifiableCopy = identifiable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [identifiableCopy isEqual:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end