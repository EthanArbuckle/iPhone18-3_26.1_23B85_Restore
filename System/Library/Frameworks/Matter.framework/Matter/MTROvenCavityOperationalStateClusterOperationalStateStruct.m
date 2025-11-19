@interface MTROvenCavityOperationalStateClusterOperationalStateStruct
- (MTROvenCavityOperationalStateClusterOperationalStateStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROvenCavityOperationalStateClusterOperationalStateStruct

- (MTROvenCavityOperationalStateClusterOperationalStateStruct)init
{
  v7.receiver = self;
  v7.super_class = MTROvenCavityOperationalStateClusterOperationalStateStruct;
  v2 = [(MTROvenCavityOperationalStateClusterOperationalStateStruct *)&v7 init];
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
  v4 = objc_alloc_init(MTROvenCavityOperationalStateClusterOperationalStateStruct);
  v5 = [(MTROvenCavityOperationalStateClusterOperationalStateStruct *)self operationalStateID];
  [(MTROvenCavityOperationalStateClusterOperationalStateStruct *)v4 setOperationalStateID:v5];

  v6 = [(MTROvenCavityOperationalStateClusterOperationalStateStruct *)self operationalStateLabel];
  [(MTROvenCavityOperationalStateClusterOperationalStateStruct *)v4 setOperationalStateLabel:v6];

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