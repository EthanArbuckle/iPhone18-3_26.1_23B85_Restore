@interface KCSharingGroupCreateRequest
- (KCSharingGroupCreateRequest)initWithCoder:(id)a3;
- (KCSharingGroupCreateRequest)initWithNewGroup:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupCreateRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupCreateRequest *)self group];
  [v4 encodeObject:v5 forKey:@"group"];
}

- (KCSharingGroupCreateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupCreateRequest;
  v5 = [(KCSharingGroupCreateRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (KCSharingGroupCreateRequest)initWithNewGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupCreateRequest;
  v6 = [(KCSharingGroupCreateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, a3);
  }

  return v7;
}

@end