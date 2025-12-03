@interface MTRUnitTestingClusterTestListStructOctet
- (MTRUnitTestingClusterTestListStructOctet)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRUnitTestingClusterTestListStructOctet

- (MTRUnitTestingClusterTestListStructOctet)init
{
  v8.receiver = self;
  v8.super_class = MTRUnitTestingClusterTestListStructOctet;
  v2 = [(MTRUnitTestingClusterTestListStructOctet *)&v8 init];
  v3 = v2;
  if (v2)
  {
    member1 = v2->_member1;
    v2->_member1 = &unk_284C3E588;

    data = [MEMORY[0x277CBEA90] data];
    member2 = v3->_member2;
    v3->_member2 = data;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRUnitTestingClusterTestListStructOctet);
  member1 = [(MTRUnitTestingClusterTestListStructOctet *)self member1];
  [(MTRUnitTestingClusterTestListStructOctet *)v4 setMember1:member1];

  member2 = [(MTRUnitTestingClusterTestListStructOctet *)self member2];
  [(MTRUnitTestingClusterTestListStructOctet *)v4 setMember2:member2];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  member1 = self->_member1;
  v7 = [(NSData *)self->_member2 base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: member1:%@ member2:%@; >", v5, member1, v7];;

  return v8;
}

@end