@interface MTRGroupsClusterGetGroupMembershipResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTRGroupsClusterGetGroupMembershipResponseParams)init;
- (MTRGroupsClusterGetGroupMembershipResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTRGroupsClusterGetGroupMembershipResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGroupsClusterGetGroupMembershipResponseParams

- (MTRGroupsClusterGetGroupMembershipResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTRGroupsClusterGetGroupMembershipResponseParams;
  v2 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)&v9 init];
  v3 = v2;
  if (v2)
  {
    capacity = v2->_capacity;
    v2->_capacity = 0;

    v5 = [MEMORY[0x277CBEA60] array];
    groupList = v3->_groupList;
    v3->_groupList = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGroupsClusterGetGroupMembershipResponseParams);
  v5 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)self capacity];
  [(MTRGroupsClusterGetGroupMembershipResponseParams *)v4 setCapacity:v5];

  v6 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)self groupList];
  [(MTRGroupsClusterGetGroupMembershipResponseParams *)v4 setGroupList:v6];

  v7 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)self timedInvokeTimeoutMs];
  [(MTRGroupsClusterGetGroupMembershipResponseParams *)v4 setTimedInvokeTimeoutMs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: capacity:%@ groupList:%@; >", v5, self->_capacity, self->_groupList];;

  return v6;
}

- (MTRGroupsClusterGetGroupMembershipResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v16.receiver = self;
  v16.super_class = MTRGroupsClusterGetGroupMembershipResponseParams;
  v7 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)&v16 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:4 commandID:2 error:error];
  if (v15)
  {
    sub_2393C5AAC(v14);
    sub_2393C5ADC(v14, *(v15 + 1), *(v15 + 3));
    v8 = sub_2393C6FD0(v14, 256);
    if (!v8)
    {
      *v12 = 0;
      sub_2393C5AAC(v13);
      sub_2393C5ADC(v13, 0, 0);
      v8 = sub_238F19EB4(v12, v14);
      if (!v8)
      {
        v8 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v15);
LABEL_10:

  return v10;
}

- (MTRGroupsClusterGetGroupMembershipResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTRGroupsClusterGetGroupMembershipResponseParams;
  v4 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRGroupsClusterGetGroupMembershipResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  if (*(a3 + 1))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*a3];
    [(MTRGroupsClusterGetGroupMembershipResponseParams *)self setCapacity:v5];
  }

  else
  {
    [(MTRGroupsClusterGetGroupMembershipResponseParams *)self setCapacity:0];
  }

  v6 = objc_opt_new();
  sub_2393C5AAC(v14);
  v12 = 0;
  v13 = 0;
  sub_2393C5BDC(v14, a3 + 8);
  while (sub_238DD5C4C(&v12))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v14[36]];
    [v6 addObject:v7];
  }

  if (v12 == 33 || (v8 = v12, !v12))
  {
    [(MTRGroupsClusterGetGroupMembershipResponseParams *)self setGroupList:v6, v12];

    v9 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v13;
  }

  v10 = v8;
  v11 = v9;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

@end