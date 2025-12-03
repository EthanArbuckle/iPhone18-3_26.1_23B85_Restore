@interface MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent
- (MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent

- (MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent)init
{
  v8.receiver = self;
  v8.super_class = MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent;
  v2 = [(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEA60] array];
    current = v2->_current;
    v2->_current = array;

    array2 = [MEMORY[0x277CBEA60] array];
    previous = v2->_previous;
    v2->_previous = array2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent);
  current = [(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent *)self current];
  [(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent *)v4 setCurrent:current];

  previous = [(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent *)self previous];
  [(MTRThreadNetworkDiagnosticsClusterNetworkFaultChangeEvent *)v4 setPrevious:previous];

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