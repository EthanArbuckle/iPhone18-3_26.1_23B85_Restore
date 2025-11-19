@interface AVOutputDeviceGroupMembershipChangeResult
- (AVOutputDeviceGroupMembershipChangeResult)initWithStatus:(int64_t)a3 cancellationReason:(id)a4;
- (void)dealloc;
@end

@implementation AVOutputDeviceGroupMembershipChangeResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceGroupMembershipChangeResult;
  [(AVOutputDeviceGroupMembershipChangeResult *)&v3 dealloc];
}

- (AVOutputDeviceGroupMembershipChangeResult)initWithStatus:(int64_t)a3 cancellationReason:(id)a4
{
  v10.receiver = self;
  v10.super_class = AVOutputDeviceGroupMembershipChangeResult;
  v6 = [(AVOutputDeviceGroupMembershipChangeResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_status = a3;
    v6->_cancellationReason = [a4 copy];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end