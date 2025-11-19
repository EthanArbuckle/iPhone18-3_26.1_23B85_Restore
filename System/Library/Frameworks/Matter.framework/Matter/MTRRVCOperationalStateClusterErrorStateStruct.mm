@interface MTRRVCOperationalStateClusterErrorStateStruct
- (MTRRVCOperationalStateClusterErrorStateStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRRVCOperationalStateClusterErrorStateStruct

- (MTRRVCOperationalStateClusterErrorStateStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRRVCOperationalStateClusterErrorStateStruct;
  v2 = [(MTRRVCOperationalStateClusterErrorStateStruct *)&v8 init];
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
  v4 = objc_alloc_init(MTRRVCOperationalStateClusterErrorStateStruct);
  v5 = [(MTRRVCOperationalStateClusterErrorStateStruct *)self errorStateID];
  [(MTRRVCOperationalStateClusterErrorStateStruct *)v4 setErrorStateID:v5];

  v6 = [(MTRRVCOperationalStateClusterErrorStateStruct *)self errorStateLabel];
  [(MTRRVCOperationalStateClusterErrorStateStruct *)v4 setErrorStateLabel:v6];

  v7 = [(MTRRVCOperationalStateClusterErrorStateStruct *)self errorStateDetails];
  [(MTRRVCOperationalStateClusterErrorStateStruct *)v4 setErrorStateDetails:v7];

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