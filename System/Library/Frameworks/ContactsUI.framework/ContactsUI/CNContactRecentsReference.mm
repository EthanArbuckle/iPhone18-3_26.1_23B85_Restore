@interface CNContactRecentsReference
- (CNContactRecentsReference)init;
- (CNContactRecentsReference)initWithCoder:(id)coder;
- (CNContactRecentsReference)initWithRecentContactID:(id)d domain:(id)domain;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactRecentsReference

- (void)encodeWithCoder:(id)coder
{
  recentContactID = self->_recentContactID;
  coderCopy = coder;
  [coderCopy encodeObject:recentContactID forKey:@"_recentContactID"];
  [coderCopy encodeObject:self->_domain forKey:@"_domain"];
}

- (CNContactRecentsReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNContactRecentsReference;
  v5 = [(CNContactRecentsReference *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recentContactID"];
    v7 = [v6 copy];
    recentContactID = v5->_recentContactID;
    v5->_recentContactID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
    v10 = [v9 copy];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = v5;
  }

  return v5;
}

- (CNContactRecentsReference)initWithRecentContactID:(id)d domain:(id)domain
{
  dCopy = d;
  domainCopy = domain;
  v13.receiver = self;
  v13.super_class = CNContactRecentsReference;
  v9 = [(CNContactRecentsReference *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recentContactID, d);
    objc_storeStrong(&v10->_domain, domain);
    v11 = v10;
  }

  return v10;
}

- (CNContactRecentsReference)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end