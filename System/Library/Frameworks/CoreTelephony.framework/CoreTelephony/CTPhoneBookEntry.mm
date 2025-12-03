@interface CTPhoneBookEntry
- (CTPhoneBookEntry)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPhoneBookEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isHidden=%d", -[CTPhoneBookEntry isHidden](self, "isHidden")];
  name = [(CTPhoneBookEntry *)self name];
  [v3 appendFormat:@", name=%@", name];

  number = [(CTPhoneBookEntry *)self number];
  [v3 appendFormat:@", number=%@", number];

  altNumber = [(CTPhoneBookEntry *)self altNumber];
  [v3 appendFormat:@", altNumber=%@", altNumber];

  altText = [(CTPhoneBookEntry *)self altText];
  [v3 appendFormat:@", altText=%@", altText];

  email = [(CTPhoneBookEntry *)self email];
  [v3 appendFormat:@", email=%@", email];

  group = [(CTPhoneBookEntry *)self group];
  [v3 appendFormat:@", group=%@", group];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsHidden:{-[CTPhoneBookEntry isHidden](self, "isHidden")}];
  name = [(CTPhoneBookEntry *)self name];
  [v4 setName:name];

  number = [(CTPhoneBookEntry *)self number];
  [v4 setNumber:number];

  altNumber = [(CTPhoneBookEntry *)self altNumber];
  [v4 setAltNumber:altNumber];

  altText = [(CTPhoneBookEntry *)self altText];
  [v4 setAltText:altText];

  email = [(CTPhoneBookEntry *)self email];
  [v4 setEmail:email];

  group = [(CTPhoneBookEntry *)self group];
  [v4 setGroup:group];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTPhoneBookEntry isHidden](self forKey:{"isHidden"), @"isHidden"}];
  name = [(CTPhoneBookEntry *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  number = [(CTPhoneBookEntry *)self number];
  [coderCopy encodeObject:number forKey:@"number"];

  altNumber = [(CTPhoneBookEntry *)self altNumber];
  [coderCopy encodeObject:altNumber forKey:@"altNumber"];

  altText = [(CTPhoneBookEntry *)self altText];
  [coderCopy encodeObject:altText forKey:@"altText"];

  email = [(CTPhoneBookEntry *)self email];
  [coderCopy encodeObject:email forKey:@"email"];

  group = [(CTPhoneBookEntry *)self group];
  [coderCopy encodeObject:group forKey:@"group"];
}

- (CTPhoneBookEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTPhoneBookEntry;
  v5 = [(CTPhoneBookEntry *)&v19 init];
  if (v5)
  {
    v5->_isHidden = [coderCopy decodeBoolForKey:@"isHidden"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altNumber"];
    altNumber = v5->_altNumber;
    v5->_altNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altText"];
    altText = v5->_altText;
    v5->_altText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v16;
  }

  return v5;
}

@end