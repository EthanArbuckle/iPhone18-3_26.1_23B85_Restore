@interface KCSharingGroupCreateRequest
- (KCSharingGroupCreateRequest)initWithCoder:(id)coder;
- (KCSharingGroupCreateRequest)initWithNewGroup:(id)group;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupCreateRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  group = [(KCSharingGroupCreateRequest *)self group];
  [coderCopy encodeObject:group forKey:@"group"];
}

- (KCSharingGroupCreateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = KCSharingGroupCreateRequest;
  v5 = [(KCSharingGroupCreateRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (KCSharingGroupCreateRequest)initWithNewGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = KCSharingGroupCreateRequest;
  v6 = [(KCSharingGroupCreateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, group);
  }

  return v7;
}

@end