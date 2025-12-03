@interface KCSharingGroupLeaveRequest
- (KCSharingGroupLeaveRequest)initWithCoder:(id)coder;
- (KCSharingGroupLeaveRequest)initWithGroupID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupLeaveRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupID = [(KCSharingGroupLeaveRequest *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];
}

- (KCSharingGroupLeaveRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = KCSharingGroupLeaveRequest;
  v5 = [(KCSharingGroupLeaveRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;
  }

  return v5;
}

- (KCSharingGroupLeaveRequest)initWithGroupID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = KCSharingGroupLeaveRequest;
  v6 = [(KCSharingGroupLeaveRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupID, d);
  }

  return v7;
}

@end