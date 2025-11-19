@interface MTRGroupKeyManagementClusterGroupKeySetStruct
- (MTRGroupKeyManagementClusterGroupKeySetStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupKeyManagementClusterGroupKeySetStruct

- (MTRGroupKeyManagementClusterGroupKeySetStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRGroupKeyManagementClusterGroupKeySetStruct;
  v2 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    groupKeySetID = v2->_groupKeySetID;
    v2->_groupKeySetID = &unk_284C3E588;

    groupKeySecurityPolicy = v3->_groupKeySecurityPolicy;
    v3->_groupKeySecurityPolicy = &unk_284C3E588;

    epochKey0 = v3->_epochKey0;
    v3->_epochKey0 = 0;

    epochStartTime0 = v3->_epochStartTime0;
    v3->_epochStartTime0 = 0;

    epochKey1 = v3->_epochKey1;
    v3->_epochKey1 = 0;

    epochStartTime1 = v3->_epochStartTime1;
    v3->_epochStartTime1 = 0;

    epochKey2 = v3->_epochKey2;
    v3->_epochKey2 = 0;

    epochStartTime2 = v3->_epochStartTime2;
    v3->_epochStartTime2 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupKeyManagementClusterGroupKeySetStruct);
  v5 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self groupKeySetID];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setGroupKeySetID:v5];

  v6 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self groupKeySecurityPolicy];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setGroupKeySecurityPolicy:v6];

  v7 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochKey0];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochKey0:v7];

  v8 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochStartTime0];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochStartTime0:v8];

  v9 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochKey1];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochKey1:v9];

  v10 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochStartTime1];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochStartTime1:v10];

  v11 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochKey2];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochKey2:v11];

  v12 = [(MTRGroupKeyManagementClusterGroupKeySetStruct *)self epochStartTime2];
  [(MTRGroupKeyManagementClusterGroupKeySetStruct *)v4 setEpochStartTime2:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  groupKeySetID = self->_groupKeySetID;
  groupKeySecurityPolicy = self->_groupKeySecurityPolicy;
  v8 = [(NSData *)self->_epochKey0 base64EncodedStringWithOptions:0];
  epochStartTime0 = self->_epochStartTime0;
  v10 = [(NSData *)self->_epochKey1 base64EncodedStringWithOptions:0];
  epochStartTime1 = self->_epochStartTime1;
  v12 = [(NSData *)self->_epochKey2 base64EncodedStringWithOptions:0];
  v13 = [v3 stringWithFormat:@"<%@: groupKeySetID:%@ groupKeySecurityPolicy:%@; epochKey0:%@; epochStartTime0:%@; epochKey1:%@; epochStartTime1:%@; epochKey2:%@; epochStartTime2:%@; >", v5, groupKeySetID, groupKeySecurityPolicy, v8, epochStartTime0, v10, epochStartTime1, v12, self->_epochStartTime2];;

  return v13;
}

@end