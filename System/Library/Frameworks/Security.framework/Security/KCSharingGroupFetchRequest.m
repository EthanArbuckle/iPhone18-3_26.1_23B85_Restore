@interface KCSharingGroupFetchRequest
+ (id)all;
+ (id)groupName:(id)a3;
+ (id)pending;
- (KCSharingGroupFetchRequest)init;
- (KCSharingGroupFetchRequest)initWithCoder:(id)a3;
- (KCSharingGroupFetchRequest)initWithPredicate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCSharingGroupFetchRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(KCSharingGroupFetchRequest *)self predicate];
  [v4 encodeObject:v5 forKey:@"predicate"];
}

- (KCSharingGroupFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupFetchRequest;
  v5 = [(KCSharingGroupFetchRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;
  }

  return v5;
}

- (KCSharingGroupFetchRequest)initWithPredicate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KCSharingGroupFetchRequest;
  v6 = [(KCSharingGroupFetchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_predicate, a3);
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

+ (id)groupName:(id)a3
{
  v3 = [KCSharingGroupFetchRequest predicateMatchingGroupsWithName:a3];
  v4 = [[KCSharingGroupFetchRequest alloc] initWithPredicate:v3];

  return v4;
}

+ (id)all
{
  v2 = objc_alloc_init(KCSharingGroupFetchRequest);

  return v2;
}

@end