@interface MTRDescriptorClusterSemanticTagStruct
- (MTRDescriptorClusterSemanticTagStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDescriptorClusterSemanticTagStruct

- (MTRDescriptorClusterSemanticTagStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRDescriptorClusterSemanticTagStruct;
  v2 = [(MTRDescriptorClusterSemanticTagStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    mfgCode = v2->_mfgCode;
    v2->_mfgCode = 0;

    namespaceID = v3->_namespaceID;
    v3->_namespaceID = &unk_284C3E588;

    tag = v3->_tag;
    v3->_tag = &unk_284C3E588;

    label = v3->_label;
    v3->_label = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDescriptorClusterSemanticTagStruct);
  mfgCode = [(MTRDescriptorClusterSemanticTagStruct *)self mfgCode];
  [(MTRDescriptorClusterSemanticTagStruct *)v4 setMfgCode:mfgCode];

  namespaceID = [(MTRDescriptorClusterSemanticTagStruct *)self namespaceID];
  [(MTRDescriptorClusterSemanticTagStruct *)v4 setNamespaceID:namespaceID];

  v7 = [(MTRDescriptorClusterSemanticTagStruct *)self tag];
  [(MTRDescriptorClusterSemanticTagStruct *)v4 setTag:v7];

  label = [(MTRDescriptorClusterSemanticTagStruct *)self label];
  [(MTRDescriptorClusterSemanticTagStruct *)v4 setLabel:label];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: mfgCode:%@ namespaceID:%@; tag:%@; label:%@; >", v5, self->_mfgCode, self->_namespaceID, self->_tag, self->_label];;

  return v6;
}

@end