@interface MTROperationalCredentialsClusterNOCStruct
- (MTROperationalCredentialsClusterNOCStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterNOCStruct

- (MTROperationalCredentialsClusterNOCStruct)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterNOCStruct;
  v2 = [(MTROperationalCredentialsClusterNOCStruct *)&v9 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    noc = v2->_noc;
    v2->_noc = data;

    icac = v2->_icac;
    v2->_icac = 0;

    vvsc = v2->_vvsc;
    v2->_vvsc = 0;

    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E588;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterNOCStruct);
  v5 = [(MTROperationalCredentialsClusterNOCStruct *)self noc];
  [(MTROperationalCredentialsClusterNOCStruct *)v4 setNoc:v5];

  icac = [(MTROperationalCredentialsClusterNOCStruct *)self icac];
  [(MTROperationalCredentialsClusterNOCStruct *)v4 setIcac:icac];

  vvsc = [(MTROperationalCredentialsClusterNOCStruct *)self vvsc];
  [(MTROperationalCredentialsClusterNOCStruct *)v4 setVvsc:vvsc];

  fabricIndex = [(MTROperationalCredentialsClusterNOCStruct *)self fabricIndex];
  [(MTROperationalCredentialsClusterNOCStruct *)v4 setFabricIndex:fabricIndex];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_noc base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_icac base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_vvsc base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: noc:%@ icac:%@; vvsc:%@; fabricIndex:%@; >", v5, v6, v7, v8, self->_fabricIndex];;

  return v9;
}

@end