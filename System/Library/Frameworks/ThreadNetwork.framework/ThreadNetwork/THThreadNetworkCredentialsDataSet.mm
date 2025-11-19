@interface THThreadNetworkCredentialsDataSet
- (THThreadNetworkCredentialsDataSet)initWithCoder:(id)a3;
- (THThreadNetworkCredentialsDataSet)initWithDataSetArray:(id)a3 userInfo:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetworkCredentialsDataSet

- (THThreadNetworkCredentialsDataSet)initWithDataSetArray:(id)a3 userInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsDataSet;
  v9 = [(THThreadNetworkCredentialsDataSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSetArray, a3);
    objc_storeStrong(&v10->_userInfo, a4);
  }

  return v10;
}

- (THThreadNetworkCredentialsDataSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"info"];

  v7 = [(THThreadNetworkCredentialsDataSet *)self initWithDataSetArray:v5 userInfo:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsDataSet *)self dataSetArray];
  [v4 encodeObject:v5 forKey:@"ds"];

  v6 = [(THThreadNetworkCredentialsDataSet *)self userInfo];
  [v4 encodeObject:v6 forKey:@"info"];
}

@end