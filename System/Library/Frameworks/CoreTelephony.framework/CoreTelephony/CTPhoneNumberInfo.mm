@interface CTPhoneNumberInfo
- (CTPhoneNumberInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPhoneNumberInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  label = [(CTPhoneNumberInfo *)self label];
  [v3 appendFormat:@", label=%@", label];

  number = [(CTPhoneNumberInfo *)self number];
  [v3 appendFormat:@", number=%@", number];

  displayPhoneNumber = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [v3 appendFormat:@", displayPhoneNumber=%@", displayPhoneNumber];

  [v3 appendFormat:@", isPresent=%d", -[CTPhoneNumberInfo isPresent](self, "isPresent")];
  [v3 appendFormat:@", isEditable=%d", -[CTPhoneNumberInfo isEditable](self, "isEditable")];
  [v3 appendFormat:@", isRead=%d", -[CTPhoneNumberInfo isRead](self, "isRead")];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  label = [(CTPhoneNumberInfo *)self label];
  [v4 setLabel:label];

  number = [(CTPhoneNumberInfo *)self number];
  [v4 setNumber:number];

  displayPhoneNumber = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [v4 setDisplayPhoneNumber:displayPhoneNumber];

  [v4 setIsPresent:{-[CTPhoneNumberInfo isPresent](self, "isPresent")}];
  [v4 setIsEditable:{-[CTPhoneNumberInfo isEditable](self, "isEditable")}];
  [v4 setIsRead:{-[CTPhoneNumberInfo isRead](self, "isRead")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(CTPhoneNumberInfo *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  number = [(CTPhoneNumberInfo *)self number];
  [coderCopy encodeObject:number forKey:@"number"];

  displayPhoneNumber = [(CTPhoneNumberInfo *)self displayPhoneNumber];
  [coderCopy encodeObject:displayPhoneNumber forKey:@"displayPhoneNumber"];

  [coderCopy encodeBool:-[CTPhoneNumberInfo isPresent](self forKey:{"isPresent"), @"isPresent"}];
  [coderCopy encodeBool:-[CTPhoneNumberInfo isEditable](self forKey:{"isEditable"), @"isEditable"}];
  [coderCopy encodeBool:-[CTPhoneNumberInfo isRead](self forKey:{"isRead"), @"isRead"}];
}

- (CTPhoneNumberInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTPhoneNumberInfo;
  v5 = [(CTPhoneNumberInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayPhoneNumber"];
    displayPhoneNumber = v5->_displayPhoneNumber;
    v5->_displayPhoneNumber = v10;

    v5->_isPresent = [coderCopy decodeBoolForKey:@"isPresent"];
    v5->_isEditable = [coderCopy decodeBoolForKey:@"isEditable"];
    v5->_isRead = [coderCopy decodeBoolForKey:@"isRead"];
  }

  return v5;
}

@end