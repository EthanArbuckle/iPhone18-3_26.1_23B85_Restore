@interface CTXPCServerSensitiveObjectClassifier
- (void)classifyObject:(id)a3;
@end

@implementation CTXPCServerSensitiveObjectClassifier

- (void)classifyObject:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
    v5 = v7;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = v7;
  }

  if ([objc_opt_class() isSensitiveMessage])
  {
    self->_foundSensitiveObject = 1;
  }
}

@end