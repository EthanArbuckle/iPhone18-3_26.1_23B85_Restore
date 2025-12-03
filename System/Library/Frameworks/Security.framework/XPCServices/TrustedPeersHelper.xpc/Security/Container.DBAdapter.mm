@interface Container.DBAdapter
- (id)allPeerIDs:(id *)ds;
- (id)allRegisteredPolicyVersions:(id *)versions;
- (id)peerWithID:(id)d error:(id *)error;
- (id)policyWithVersion:(unint64_t)version error:(id *)error;
@end

@implementation Container.DBAdapter

- (id)allPeerIDs:(id *)ds
{

  sub_10010F840();

  v3.super.isa = sub_100216B14().super.isa;

  return v3.super.isa;
}

- (id)peerWithID:(id)d error:(id *)error
{
  v4 = sub_100216974();
  v6 = v5;

  v7 = sub_1001107F8(v4, v6);

  return v7;
}

- (id)policyWithVersion:(unint64_t)version error:(id *)error
{

  v6 = sub_100112BF4(version, error);

  return v6;
}

- (id)allRegisteredPolicyVersions:(id *)versions
{

  sub_1001131EC();

  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
  v3.super.isa = sub_100216B94().super.isa;

  return v3.super.isa;
}

@end