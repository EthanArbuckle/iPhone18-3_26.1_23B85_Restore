@interface CTXPCServerSensitiveObjectClassifier
- (void)classifyObject:(id)object;
@end

@implementation CTXPCServerSensitiveObjectClassifier

- (void)classifyObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
    v5 = objectCopy;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = objectCopy;
  }

  if ([objc_opt_class() isSensitiveMessage])
  {
    self->_foundSensitiveObject = 1;
  }
}

@end