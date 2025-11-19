@interface CTPhoneNumberInfo
- (CTPhoneNumberInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPhoneNumberInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTPhoneNumberInfo *)self label];
  [v3 appendFormat:@", label=%@", v4];

  v5 = [(CTPhoneNumberInfo *)self number];
  [v3 appendFormat:@", number=%@", v5];

  v6 = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [v3 appendFormat:@", displayPhoneNumber=%@", v6];

  [v3 appendFormat:@", isPresent=%d", -[CTPhoneNumberInfo isPresent](self, "isPresent")];
  [v3 appendFormat:@", isEditable=%d", -[CTPhoneNumberInfo isEditable](self, "isEditable")];
  [v3 appendFormat:@", isRead=%d", -[CTPhoneNumberInfo isRead](self, "isRead")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTPhoneNumberInfo *)self label];
  [v4 setLabel:v5];

  v6 = [(CTPhoneNumberInfo *)self number];
  [v4 setNumber:v6];

  v7 = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [v4 setDisplayPhoneNumber:v7];

  [v4 setIsPresent:{-[CTPhoneNumberInfo isPresent](self, "isPresent")}];
  [v4 setIsEditable:{-[CTPhoneNumberInfo isEditable](self, "isEditable")}];
  [v4 setIsRead:{-[CTPhoneNumberInfo isRead](self, "isRead")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CTPhoneNumberInfo *)self label];
  [v7 encodeObject:v4 forKey:@"label"];

  v5 = [(CTPhoneNumberInfo *)self number];
  [v7 encodeObject:v5 forKey:@"number"];

  v6 = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [v7 encodeObject:v6 forKey:@"displayPhoneNumber"];

  [v7 encodeBool:-[CTPhoneNumberInfo isPresent](self forKey:{"isPresent"), @"isPresent"}];
  [v7 encodeBool:-[CTPhoneNumberInfo isEditable](self forKey:{"isEditable"), @"isEditable"}];
  [v7 encodeBool:-[CTPhoneNumberInfo isRead](self forKey:{"isRead"), @"isRead"}];
}

- (CTPhoneNumberInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTPhoneNumberInfo;
  v5 = [(CTPhoneNumberInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayPhoneNumber"];
    displayPhoneNumber = v5->_displayPhoneNumber;
    v5->_displayPhoneNumber = v10;

    v5->_isPresent = [v4 decodeBoolForKey:@"isPresent"];
    v5->_isEditable = [v4 decodeBoolForKey:@"isEditable"];
    v5->_isRead = [v4 decodeBoolForKey:@"isRead"];
  }

  return v5;
}

@end