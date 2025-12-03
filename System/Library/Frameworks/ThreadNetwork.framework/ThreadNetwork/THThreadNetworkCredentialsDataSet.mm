@interface THThreadNetworkCredentialsDataSet
- (THThreadNetworkCredentialsDataSet)initWithCoder:(id)coder;
- (THThreadNetworkCredentialsDataSet)initWithDataSetArray:(id)array userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetworkCredentialsDataSet

- (THThreadNetworkCredentialsDataSet)initWithDataSetArray:(id)array userInfo:(id)info
{
  arrayCopy = array;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = THThreadNetworkCredentialsDataSet;
  v9 = [(THThreadNetworkCredentialsDataSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSetArray, array);
    objc_storeStrong(&v10->_userInfo, info);
  }

  return v10;
}

- (THThreadNetworkCredentialsDataSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"info"];

  v7 = [(THThreadNetworkCredentialsDataSet *)self initWithDataSetArray:v5 userInfo:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataSetArray = [(THThreadNetworkCredentialsDataSet *)self dataSetArray];
  [coderCopy encodeObject:dataSetArray forKey:@"ds"];

  userInfo = [(THThreadNetworkCredentialsDataSet *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"info"];
}

@end