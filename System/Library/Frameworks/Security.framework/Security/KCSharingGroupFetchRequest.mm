@interface KCSharingGroupFetchRequest
+ (id)all;
+ (id)groupName:(id)name;
+ (id)pending;
- (KCSharingGroupFetchRequest)init;
- (KCSharingGroupFetchRequest)initWithCoder:(id)coder;
- (KCSharingGroupFetchRequest)initWithPredicate:(id)predicate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCSharingGroupFetchRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  predicate = [(KCSharingGroupFetchRequest *)self predicate];
  [coderCopy encodeObject:predicate forKey:@"predicate"];
}

- (KCSharingGroupFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = KCSharingGroupFetchRequest;
  v5 = [(KCSharingGroupFetchRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (KCSharingGroupFetchRequest)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v9.receiver = self;
  v9.super_class = KCSharingGroupFetchRequest;
  v6 = [(KCSharingGroupFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, predicate);
  }

  return v7;
}

- (KCSharingGroupFetchRequest)init
{
  v6.receiver = self;
  v6.super_class = KCSharingGroupFetchRequest;
  v2 = [(KCSharingGroupFetchRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    predicate = v2->_predicate;
    v2->_predicate = v3;
  }

  return v2;
}

+ (id)pending
{
  v2 = [KCSharingGroupFetchRequest predicateMatchingGroupsWithInviteStatus:1];
  v3 = [[KCSharingGroupFetchRequest alloc] initWithPredicate:v2];

  return v3;
}

+ (id)groupName:(id)name
{
  v3 = [KCSharingGroupFetchRequest predicateMatchingGroupsWithName:name];
  v4 = [[KCSharingGroupFetchRequest alloc] initWithPredicate:v3];

  return v4;
}

+ (id)all
{
  v2 = objc_alloc_init(KCSharingGroupFetchRequest);

  return v2;
}

@end