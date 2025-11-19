@interface SADomainObject
- (id)ad_OTTModelRepresentation;
@end

@implementation SADomainObject

- (id)ad_OTTModelRepresentation
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[SADomainObject(ADMessageTransformer) ad_OTTModelRepresentation]";
    v7 = 2112;
    v8 = self;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s No OTT-model representation for %@", &v5, 0x16u);
  }

  return 0;
}

@end