@interface PHVisualVoicemailManagerFactory
+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4;
- (PHVisualVoicemailManagerFactory)init;
@end

@implementation PHVisualVoicemailManagerFactory

+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(type metadata accessor for VisualVoicemailManager());
  v8 = sub_100058CF0(a3, sub_1000529CC, v6);

  return v8;
}

- (PHVisualVoicemailManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PHVisualVoicemailManagerFactory *)&v3 init];
}

@end