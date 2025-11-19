@interface MTROperationalStateClusterOperationalStateStruct
- (MTROperationalStateClusterOperationalStateStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalStateClusterOperationalStateStruct

- (MTROperationalStateClusterOperationalStateStruct)init
{
  v7.receiver = self;
  v7.super_class = MTROperationalStateClusterOperationalStateStruct;
  v2 = [(MTROperationalStateClusterOperationalStateStruct *)&v7 init];
  v3 = v2;
  if (v2)
  {
    operationalStateID = v2->_operationalStateID;
    v2->_operationalStateID = &unk_284C3E588;

    operationalStateLabel = v3->_operationalStateLabel;
    v3->_operationalStateLabel = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalStateClusterOperationalStateStruct);
  v5 = [(MTROperationalStateClusterOperationalStateStruct *)self operationalStateID];
  [(MTROperationalStateClusterOperationalStateStruct *)v4 setOperationalStateID:v5];

  v6 = [(MTROperationalStateClusterOperationalStateStruct *)self operationalStateLabel];
  [(MTROperationalStateClusterOperationalStateStruct *)v4 setOperationalStateLabel:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: operationalStateID:%@ operationalStateLabel:%@; >", v5, self->_operationalStateID, self->_operationalStateLabel];;

  return v6;
}

@end