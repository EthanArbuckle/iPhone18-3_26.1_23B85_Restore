@interface CNContactRecentsReference
- (CNContactRecentsReference)init;
- (CNContactRecentsReference)initWithCoder:(id)a3;
- (CNContactRecentsReference)initWithRecentContactID:(id)a3 domain:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactRecentsReference

- (void)encodeWithCoder:(id)a3
{
  recentContactID = self->_recentContactID;
  v5 = a3;
  [v5 encodeObject:recentContactID forKey:@"_recentContactID"];
  [v5 encodeObject:self->_domain forKey:@"_domain"];
}

- (CNContactRecentsReference)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNContactRecentsReference;
  v5 = [(CNContactRecentsReference *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recentContactID"];
    v7 = [v6 copy];
    recentContactID = v5->_recentContactID;
    v5->_recentContactID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_domain"];
    v10 = [v9 copy];
    domain = v5->_domain;
    v5->_domain = v10;

    v12 = v5;
  }

  return v5;
}

- (CNContactRecentsReference)initWithRecentContactID:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactRecentsReference;
  v9 = [(CNContactRecentsReference *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recentContactID, a3);
    objc_storeStrong(&v10->_domain, a4);
    v11 = v10;
  }

  return v10;
}

- (CNContactRecentsReference)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

@end