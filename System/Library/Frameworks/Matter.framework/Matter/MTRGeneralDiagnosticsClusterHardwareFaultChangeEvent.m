@interface MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent
- (MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent

- (MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent;
  v2 = [(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA60] array];
    current = v2->_current;
    v2->_current = v3;

    v5 = [MEMORY[0x277CBEA60] array];
    previous = v2->_previous;
    v2->_previous = v5;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent);
  v5 = [(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent *)self current];
  [(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent *)v4 setCurrent:v5];

  v6 = [(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent *)self previous];
  [(MTRGeneralDiagnosticsClusterHardwareFaultChangeEvent *)v4 setPrevious:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: current:%@ previous:%@; >", v5, self->_current, self->_previous];;

  return v6;
}

@end