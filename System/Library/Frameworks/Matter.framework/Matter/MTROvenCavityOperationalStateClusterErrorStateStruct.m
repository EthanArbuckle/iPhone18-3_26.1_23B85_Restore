@interface MTROvenCavityOperationalStateClusterErrorStateStruct
- (MTROvenCavityOperationalStateClusterErrorStateStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROvenCavityOperationalStateClusterErrorStateStruct

- (MTROvenCavityOperationalStateClusterErrorStateStruct)init
{
  v8.receiver = self;
  v8.super_class = MTROvenCavityOperationalStateClusterErrorStateStruct;
  v2 = [(MTROvenCavityOperationalStateClusterErrorStateStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    errorStateID = v2->_errorStateID;
    v2->_errorStateID = &unk_284C3E588;

    errorStateLabel = v3->_errorStateLabel;
    v3->_errorStateLabel = 0;

    errorStateDetails = v3->_errorStateDetails;
    v3->_errorStateDetails = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROvenCavityOperationalStateClusterErrorStateStruct);
  v5 = [(MTROvenCavityOperationalStateClusterErrorStateStruct *)self errorStateID];
  [(MTROvenCavityOperationalStateClusterErrorStateStruct *)v4 setErrorStateID:v5];

  v6 = [(MTROvenCavityOperationalStateClusterErrorStateStruct *)self errorStateLabel];
  [(MTROvenCavityOperationalStateClusterErrorStateStruct *)v4 setErrorStateLabel:v6];

  v7 = [(MTROvenCavityOperationalStateClusterErrorStateStruct *)self errorStateDetails];
  [(MTROvenCavityOperationalStateClusterErrorStateStruct *)v4 setErrorStateDetails:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: errorStateID:%@ errorStateLabel:%@; errorStateDetails:%@; >", v5, self->_errorStateID, self->_errorStateLabel, self->_errorStateDetails];;

  return v6;
}

@end