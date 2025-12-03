@interface UNLocationNotificationTrigger
- (BOOL)isEqual:(id)equal;
- (UNLocationNotificationTrigger)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNLocationNotificationTrigger

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = UNLocationNotificationTrigger;
  v3 = [(UNNotificationTrigger *)&v7 hash];
  region = [(UNLocationNotificationTrigger *)self region];
  v5 = [region hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = UNLocationNotificationTrigger, [(UNNotificationTrigger *)&v9 isEqual:equalCopy]))
  {
    region = [(UNLocationNotificationTrigger *)self region];
    region2 = [equalCopy region];
    v7 = UNEqualObjects(region, region2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(UNNotificationTrigger *)self repeats];
  v5 = NSStringFromBOOL();
  region = [(UNLocationNotificationTrigger *)self region];
  v7 = [v3 stringWithFormat:@"<%@: %p repeats: %@, region: %@>", v4, self, v5, region];;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UNLocationNotificationTrigger;
  coderCopy = coder;
  [(UNNotificationTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UNLocationNotificationTrigger *)self region:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"region"];
}

- (UNLocationNotificationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = UNLocationNotificationTrigger;
  v5 = [(UNNotificationTrigger *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:NSClassFromString(@"CLRegion") forKey:@"region"];
    v7 = [v6 copy];
    region = v5->_region;
    v5->_region = v7;
  }

  return v5;
}

- (void)_initWithRegion:repeats:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end