@interface PHVisualVoicemailManagerFactory
+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed;
- (PHVisualVoicemailManagerFactory)init;
@end

@implementation PHVisualVoicemailManagerFactory

+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed
{
  v5 = _Block_copy(changed);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(type metadata accessor for VisualVoicemailManager());
  v8 = sub_100058CF0(manager, sub_1000529CC, v6);

  return v8;
}

- (PHVisualVoicemailManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PHVisualVoicemailManagerFactory *)&v3 init];
}

@end