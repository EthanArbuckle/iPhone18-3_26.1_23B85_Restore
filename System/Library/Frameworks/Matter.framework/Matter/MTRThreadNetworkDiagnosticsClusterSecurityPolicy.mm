@interface MTRThreadNetworkDiagnosticsClusterSecurityPolicy
- (MTRThreadNetworkDiagnosticsClusterSecurityPolicy)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRThreadNetworkDiagnosticsClusterSecurityPolicy

- (MTRThreadNetworkDiagnosticsClusterSecurityPolicy)init
{
  v7.receiver = self;
  v7.super_class = MTRThreadNetworkDiagnosticsClusterSecurityPolicy;
  v2 = [(MTRThreadNetworkDiagnosticsClusterSecurityPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    rotationTime = v2->_rotationTime;
    v2->_rotationTime = &unk_284C3E588;

    flags = v3->_flags;
    v3->_flags = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRThreadNetworkDiagnosticsClusterSecurityPolicy);
  rotationTime = [(MTRThreadNetworkDiagnosticsClusterSecurityPolicy *)self rotationTime];
  [(MTRThreadNetworkDiagnosticsClusterSecurityPolicy *)v4 setRotationTime:rotationTime];

  flags = [(MTRThreadNetworkDiagnosticsClusterSecurityPolicy *)self flags];
  [(MTRThreadNetworkDiagnosticsClusterSecurityPolicy *)v4 setFlags:flags];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: rotationTime:%@ flags:%@; >", v5, self->_rotationTime, self->_flags];;

  return v6;
}

@end