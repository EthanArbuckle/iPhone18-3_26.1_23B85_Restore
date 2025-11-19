@interface PHVoicemailManagerFactory
+ (id)getFTVoiceMailWithOnVoicemailsChanged:(id)a3;
- (PHVoicemailManagerFactory)init;
@end

@implementation PHVoicemailManagerFactory

+ (id)getFTVoiceMailWithOnVoicemailsChanged:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_100079BD0(sub_100079430, v4);

  return v5;
}

- (PHVoicemailManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PHVoicemailManagerFactory *)&v3 init];
}

@end