@interface AMSACLConstraintsProvider
+ (BOOL)isActionSupported:(int64_t)a3 withAcl:(__SecAccessControl *)a4;
+ (BOOL)isActionSupported:(int64_t)a3 withConstraints:(id)a4;
+ (id)extendedConstraintsForStyle:(unint64_t)a3;
+ (id)primaryConstraintsForStyle:(unint64_t)a3;
@end

@implementation AMSACLConstraintsProvider

+ (BOOL)isActionSupported:(int64_t)a3 withConstraints:(id)a4
{
  sub_192F9669C();
  swift_getObjCClassMetadata();
  static ACLConstraintsProvider.isSupported(_:with:)(a3);
  LOBYTE(a3) = v5;

  return a3 & 1;
}

+ (BOOL)isActionSupported:(int64_t)a3 withAcl:(__SecAccessControl *)a4
{
  swift_getObjCClassMetadata();
  v6 = a4;
  static ACLConstraintsProvider.isSupported(_:with:)(a3, a4);
  LOBYTE(a4) = v7;

  return a4 & 1;
}

+ (id)primaryConstraintsForStyle:(unint64_t)a3
{
  static ACLConstraintsProvider.primaryConstraints(for:)(a3);
  v3 = sub_192F9667C();

  return v3;
}

+ (id)extendedConstraintsForStyle:(unint64_t)a3
{
  static ACLConstraintsProvider.extendedConstraints(for:)(a3);
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