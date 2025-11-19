@interface MTRAccessControlClusterAccessControlExtensionStruct
- (MTRAccessControlClusterAccessControlExtensionStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRAccessControlClusterAccessControlExtensionStruct

- (MTRAccessControlClusterAccessControlExtensionStruct)init
{
  v7.receiver = self;
  v7.super_class = MTRAccessControlClusterAccessControlExtensionStruct;
  v2 = [(MTRAccessControlClusterAccessControlExtensionStruct *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    data = v2->_data;
    v2->_data = v3;

    fabricIndex = v2->_fabricIndex;
    v2->_fabricIndex = &unk_284C3E588;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRAccessControlClusterAccessControlExtensionStruct);
  v5 = [(MTRAccessControlClusterAccessControlExtensionStruct *)self data];
  [(MTRAccessControlClusterAccessControlExtensionStruct *)v4 setData:v5];

  v6 = [(MTRAccessControlClusterAccessControlExtensionStruct *)self fabricIndex];
  [(MTRAccessControlClusterAccessControlExtensionStruct *)v4 setFabricIndex:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: data:%@ fabricIndex:%@; >", v5, v6, self->_fabricIndex];;

  return v7;
}

@end