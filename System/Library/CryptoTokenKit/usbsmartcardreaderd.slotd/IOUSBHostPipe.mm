@interface IOUSBHostPipe
- (id)receive:(unint64_t)receive timeout:(id)timeout;
- (unint64_t)send:(id)send timeout:(id)timeout;
@end

@implementation IOUSBHostPipe

- (unint64_t)send:(id)send timeout:(id)timeout
{
  timeoutCopy = timeout;
  v7 = [NSMutableData dataWithData:send];
  if (timeoutCopy)
  {
    [timeoutCopy doubleValue];
  }

  else
  {
    v8 = 5.0;
  }

  v14 = 0;
  v15 = 0;
  v9 = [(IOUSBHostPipe *)self sendIORequestWithData:v7 bytesTransferred:&v15 completionTimeout:&v14 error:v8];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = sub_100001170();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000143FC();
    }
  }

  v12 = v15;

  return v12;
}

- (id)receive:(unint64_t)receive timeout:(id)timeout
{
  timeoutCopy = timeout;
  endpointType = [(IOUSBHostPipe *)self endpointType];
  v8 = [NSMutableData dataWithLength:receive];
  if (timeoutCopy)
  {
    [timeoutCopy doubleValue];
  }

  else
  {
    v9 = 5.0;
  }

  v15 = 0;
  v16 = 0;
  v10 = [(IOUSBHostPipe *)self sendIORequestWithData:v8 bytesTransferred:&v16 completionTimeout:&v15 error:v9];
  v11 = v15;
  if (v10)
  {
    v12 = [v8 subdataWithRange:{0, v16}];
  }

  else
  {
    if (endpointType != 3)
    {
      v13 = sub_100001170();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10001446C();
      }
    }

    v12 = 0;
  }

  return v12;
}

@end