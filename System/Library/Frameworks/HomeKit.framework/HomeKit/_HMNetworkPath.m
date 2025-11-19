@interface _HMNetworkPath
- (_HMNetworkPath)initWithNwPath:(id)a3;
- (int)status;
@end

@implementation _HMNetworkPath

- (int)status
{
  v2 = [(_HMNetworkPath *)self nwPath];
  status = nw_path_get_status(v2);

  return status;
}

- (_HMNetworkPath)initWithNwPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HMNetworkPath;
  v6 = [(_HMNetworkPath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nwPath, a3);
  }

  return v7;
}

@end