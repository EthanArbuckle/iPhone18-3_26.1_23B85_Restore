@interface AVRoutingConfiguration
+ (AVRoutingConfiguration)configurationWithOutputContextID:(id)d sharingPolicy:(unint64_t)policy;
+ (id)defaultConfiguration;
@end

@implementation AVRoutingConfiguration

+ (AVRoutingConfiguration)configurationWithOutputContextID:(id)d sharingPolicy:(unint64_t)policy
{
  dCopy = d;
  v6 = objc_alloc_init(AVRoutingConfiguration);
  outputContextID = v6->_outputContextID;
  v6->_outputContextID = dCopy;

  v6->_sharingPolicy = policy;

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(AVRoutingConfiguration);
  v2->_isDefault = 1;

  return v2;
}

@end