@interface CTPhoneBookEntry
- (CTPhoneBookEntry)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPhoneBookEntry

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isHidden=%d", -[CTPhoneBookEntry isHidden](self, "isHidden")];
  v4 = [(CTPhoneBookEntry *)self name];
  [v3 appendFormat:@", name=%@", v4];

  v5 = [(CTPhoneBookEntry *)self number];
  [v3 appendFormat:@", number=%@", v5];

  v6 = [(CTPhoneBookEntry *)self altNumber];
  [v3 appendFormat:@", altNumber=%@", v6];

  v7 = [(CTPhoneBookEntry *)self altText];
  [v3 appendFormat:@", altText=%@", v7];

  v8 = [(CTPhoneBookEntry *)self email];
  [v3 appendFormat:@", email=%@", v8];

  v9 = [(CTPhoneBookEntry *)self group];
  [v3 appendFormat:@", group=%@", v9];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsHidden:{-[CTPhoneBookEntry isHidden](self, "isHidden")}];
  v5 = [(CTPhoneBookEntry *)self name];
  [v4 setName:v5];

  v6 = [(CTPhoneBookEntry *)self number];
  [v4 setNumber:v6];

  v7 = [(CTPhoneBookEntry *)self altNumber];
  [v4 setAltNumber:v7];

  v8 = [(CTPhoneBookEntry *)self altText];
  [v4 setAltText:v8];

  v9 = [(CTPhoneBookEntry *)self email];
  [v4 setEmail:v9];

  v10 = [(CTPhoneBookEntry *)self group];
  [v4 setGroup:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CTPhoneBookEntry isHidden](self forKey:{"isHidden"), @"isHidden"}];
  v5 = [(CTPhoneBookEntry *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(CTPhoneBookEntry *)self number];
  [v4 encodeObject:v6 forKey:@"number"];

  v7 = [(CTPhoneBookEntry *)self altNumber];
  [v4 encodeObject:v7 forKey:@"altNumber"];

  v8 = [(CTPhoneBookEntry *)self altText];
  [v4 encodeObject:v8 forKey:@"altText"];

  v9 = [(CTPhoneBookEntry *)self email];
  [v4 encodeObject:v9 forKey:@"email"];

  v10 = [(CTPhoneBookEntry *)self group];
  [v4 encodeObject:v10 forKey:@"group"];
}

- (CTPhoneBookEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTPhoneBookEntry;
  v5 = [(CTPhoneBookEntry *)&v19 init];
  if (v5)
  {
    v5->_isHidden = [v4 decodeBoolForKey:@"isHidden"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"number"];
    number = v5->_number;
    v5->_number = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altNumber"];
    altNumber = v5->_altNumber;
    v5->_altNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altText"];
    altText = v5->_altText;
    v5->_altText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"email"];
    email = v5->_email;
    v5->_email = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v16;
  }

  return v5;
}

@end