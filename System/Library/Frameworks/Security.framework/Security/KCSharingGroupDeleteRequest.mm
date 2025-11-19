@interface KCSharingGroupDeleteRequest
- (KCSharingGroupDeleteRequest)initWithCoder:(id)a3;
- (KCSharingGroupDeleteRequest)initWithGroupID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupDeleteRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupDeleteRequest *)self groupID];
  [v4 encodeObject:v5 forKey:@"groupID"];
}

- (KCSharingGroupDeleteRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupDeleteRequest;
  v5 = [(KCSharingGroupDeleteRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;
  }

  return v5;
}

- (KCSharingGroupDeleteRequest)initWithGroupID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupDeleteRequest;
  v6 = [(KCSharingGroupDeleteRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupID, a3);
  }

  return v7;
}

@end