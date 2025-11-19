@interface APSKDestination
- (APSKDestination)initWithDiscoveryInfo:(id)a3;
- (APSKDestination)initWithEndpointID:(id)a3;
- (APSKDestination)initWithEndpointName:(id)a3;
- (APSKDestination)initWithNetworkAddress:(id)a3;
- (void)dealloc;
@end

@implementation APSKDestination

- (APSKDestination)initWithNetworkAddress:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = APSKDestination;
  v5 = [(APSKDestination *)&v9 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  LODWORD(v8) = 0;
  [v4 UTF8String];
  if (!StringToSockAddr())
  {
    v5->_destinationType = 0;
    v5->_value = v4;
    CFRetain(v4);
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (APSKDestination)initWithEndpointName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APSKDestination;
  v5 = [(APSKDestination *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 1;
    v5->_value = v4;
    CFRetain(v4);
  }

  return v6;
}

- (APSKDestination)initWithEndpointID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = APSKDestination;
  v5 = [(APSKDestination *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_destinationType = 2;
    v5->_value = v4;
    CFRetain(v4);
  }

  return v6;
}

- (APSKDestination)initWithDiscoveryInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = APSKDestination;
  v5 = [(APSKDestination *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v6 objectForKeyedSubscript:@"AuthString"], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {

      v8 = 0;
      goto LABEL_8;
    }

    v5->_destinationType = 3;
    v5->_value = v6;
    CFRetain(v6);
  }

  v8 = v5;
LABEL_8:

  return v8;
}

- (void)dealloc
{
  value = self->_value;
  if (value)
  {
    CFRelease(value);
    self->_value = 0;
  }

  v4.receiver = self;
  v4.super_class = APSKDestination;
  [(APSKDestination *)&v4 dealloc];
}

@end