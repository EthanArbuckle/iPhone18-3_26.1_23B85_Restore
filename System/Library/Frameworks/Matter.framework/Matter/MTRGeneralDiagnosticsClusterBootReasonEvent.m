@interface MTRGeneralDiagnosticsClusterBootReasonEvent
- (MTRGeneralDiagnosticsClusterBootReasonEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralDiagnosticsClusterBootReasonEvent

- (MTRGeneralDiagnosticsClusterBootReasonEvent)init
{
  v6.receiver = self;
  v6.super_class = MTRGeneralDiagnosticsClusterBootReasonEvent;
  v2 = [(MTRGeneralDiagnosticsClusterBootReasonEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    bootReason = v2->_bootReason;
    v2->_bootReason = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralDiagnosticsClusterBootReasonEvent);
  v5 = [(MTRGeneralDiagnosticsClusterBootReasonEvent *)self bootReason];
  [(MTRGeneralDiagnosticsClusterBootReasonEvent *)v4 setBootReason:v5];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: bootReason:%@ >", v5, self->_bootReason];;

  return v6;
}

@end