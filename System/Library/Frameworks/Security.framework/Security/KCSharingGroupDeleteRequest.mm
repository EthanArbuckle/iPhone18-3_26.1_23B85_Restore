@interface KCSharingGroupDeleteRequest
- (KCSharingGroupDeleteRequest)initWithCoder:(id)coder;
- (KCSharingGroupDeleteRequest)initWithGroupID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupDeleteRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  groupID = [(KCSharingGroupDeleteRequest *)self groupID];
  [coderCopy encodeObject:groupID forKey:@"groupID"];
}

- (KCSharingGroupDeleteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = KCSharingGroupDeleteRequest;
  v5 = [(KCSharingGroupDeleteRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];
    groupID = v5->_groupID;
    v5->_groupID = v6;
  }

  return v5;
}

- (KCSharingGroupDeleteRequest)initWithGroupID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = KCSharingGroupDeleteRequest;
  v6 = [(KCSharingGroupDeleteRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupID, d);
  }

  return v7;
}

@end