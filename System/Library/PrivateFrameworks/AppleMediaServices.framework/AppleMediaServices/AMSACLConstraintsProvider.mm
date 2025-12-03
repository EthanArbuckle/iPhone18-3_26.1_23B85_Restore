@interface AMSACLConstraintsProvider
+ (BOOL)isActionSupported:(int64_t)supported withAcl:(__SecAccessControl *)acl;
+ (BOOL)isActionSupported:(int64_t)supported withConstraints:(id)constraints;
+ (id)extendedConstraintsForStyle:(unint64_t)style;
+ (id)primaryConstraintsForStyle:(unint64_t)style;
@end

@implementation AMSACLConstraintsProvider

+ (BOOL)isActionSupported:(int64_t)supported withConstraints:(id)constraints
{
  sub_192F9669C();
  swift_getObjCClassMetadata();
  static ACLConstraintsProvider.isSupported(_:with:)(supported);
  LOBYTE(supported) = v5;

  return supported & 1;
}

+ (BOOL)isActionSupported:(int64_t)supported withAcl:(__SecAccessControl *)acl
{
  swift_getObjCClassMetadata();
  aclCopy = acl;
  static ACLConstraintsProvider.isSupported(_:with:)(supported, acl);
  LOBYTE(acl) = v7;

  return acl & 1;
}

+ (id)primaryConstraintsForStyle:(unint64_t)style
{
  static ACLConstraintsProvider.primaryConstraints(for:)(style);
  v3 = sub_192F9667C();

  return v3;
}

+ (id)extendedConstraintsForStyle:(unint64_t)style
{
  static ACLConstraintsProvider.extendedConstraints(for:)(style);
  if (v3)
  {
    v4 = sub_192F9667C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end