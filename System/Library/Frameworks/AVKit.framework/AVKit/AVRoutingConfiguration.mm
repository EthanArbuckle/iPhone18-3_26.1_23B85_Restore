@interface AVRoutingConfiguration
+ (AVRoutingConfiguration)configurationWithOutputContextID:(id)a3 sharingPolicy:(unint64_t)a4;
+ (id)defaultConfiguration;
@end

@implementation AVRoutingConfiguration

+ (AVRoutingConfiguration)configurationWithOutputContextID:(id)a3 sharingPolicy:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(AVRoutingConfiguration);
  outputContextID = v6->_outputContextID;
  v6->_outputContextID = v5;

  v6->_sharingPolicy = a4;

  return v6;
}

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(AVRoutingConfiguration);
  v2->_isDefault = 1;

  return v2;
}

@end