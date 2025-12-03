@interface KCSharingGroupUpdateRequest
- (KCSharingGroupUpdateRequest)initWithCoder:(id)coder;
- (KCSharingGroupUpdateRequest)initWithUpdatedGroup:(id)group;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupUpdateRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  group = [(KCSharingGroupUpdateRequest *)self group];
  [coderCopy encodeObject:group forKey:@"group"];
}

- (KCSharingGroupUpdateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = KCSharingGroupUpdateRequest;
  v5 = [(KCSharingGroupUpdateRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    group = v5->_group;
    v5->_group = v6;
  }

  return v5;
}

- (KCSharingGroupUpdateRequest)initWithUpdatedGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = KCSharingGroupUpdateRequest;
  v6 = [(KCSharingGroupUpdateRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, group);
  }

  return v7;
}

@end