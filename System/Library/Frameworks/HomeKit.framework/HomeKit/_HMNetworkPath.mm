@interface _HMNetworkPath
- (_HMNetworkPath)initWithNwPath:(id)path;
- (int)status;
@end

@implementation _HMNetworkPath

- (int)status
{
  nwPath = [(_HMNetworkPath *)self nwPath];
  status = nw_path_get_status(nwPath);

  return status;
}

- (_HMNetworkPath)initWithNwPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _HMNetworkPath;
  v6 = [(_HMNetworkPath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nwPath, path);
  }

  return v7;
}

@end