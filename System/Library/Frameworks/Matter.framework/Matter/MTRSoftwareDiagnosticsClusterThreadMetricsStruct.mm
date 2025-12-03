@interface MTRSoftwareDiagnosticsClusterThreadMetricsStruct
- (MTRSoftwareDiagnosticsClusterThreadMetricsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRSoftwareDiagnosticsClusterThreadMetricsStruct

- (MTRSoftwareDiagnosticsClusterThreadMetricsStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRSoftwareDiagnosticsClusterThreadMetricsStruct;
  v2 = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)&v10 init];
  v3 = v2;
  if (v2)
  {
    id = v2->_id;
    v2->_id = &unk_284C3E588;

    name = v3->_name;
    v3->_name = 0;

    stackFreeCurrent = v3->_stackFreeCurrent;
    v3->_stackFreeCurrent = 0;

    stackFreeMinimum = v3->_stackFreeMinimum;
    v3->_stackFreeMinimum = 0;

    stackSize = v3->_stackSize;
    v3->_stackSize = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRSoftwareDiagnosticsClusterThreadMetricsStruct);
  v5 = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)self id];
  [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)v4 setId:v5];

  name = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)self name];
  [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)v4 setName:name];

  stackFreeCurrent = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)self stackFreeCurrent];
  [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)v4 setStackFreeCurrent:stackFreeCurrent];

  stackFreeMinimum = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)self stackFreeMinimum];
  [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)v4 setStackFreeMinimum:stackFreeMinimum];

  stackSize = [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)self stackSize];
  [(MTRSoftwareDiagnosticsClusterThreadMetricsStruct *)v4 setStackSize:stackSize];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: id:%@ name:%@; stackFreeCurrent:%@; stackFreeMinimum:%@; stackSize:%@; >", v5, self->_id, self->_name, self->_stackFreeCurrent, self->_stackFreeMinimum, self->_stackSize];;

  return v6;
}

@end