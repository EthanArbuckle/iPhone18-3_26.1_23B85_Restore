@interface KCSharingGroupLeaveRequest
- (KCSharingGroupLeaveRequest)initWithCoder:(id)a3;
- (KCSharingGroupLeaveRequest)initWithGroupID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupLeaveRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupLeaveRequest *)self groupID];
  [v4 encodeObject:v5 forKey:@"groupID"];
}

- (KCSharingGroupLeaveRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupLeaveRequest;
  v5 = [(KCSharingGroupLeaveRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;
  }

  return v5;
}

- (KCSharingGroupLeaveRequest)initWithGroupID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupLeaveRequest;
  v6 = [(KCSharingGroupLeaveRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupID, a3);
  }

  return v7;
}

@end