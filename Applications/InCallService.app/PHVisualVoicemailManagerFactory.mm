@interface PHVisualVoicemailManagerFactory
+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed;
@end

@implementation PHVisualVoicemailManagerFactory

+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)manager onVoicemailsChanged:(id)changed
{
  v5 = _Block_copy(changed);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  managerCopy = manager;
  v8 = sub_1001B0174(managerCopy, sub_1001B02F0, v6);

  return v8;
}

@end