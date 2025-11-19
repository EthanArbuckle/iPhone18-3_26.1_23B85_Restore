@interface PHVisualVoicemailManagerFactory
+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4;
@end

@implementation PHVisualVoicemailManagerFactory

+ (id)getVisualVoiceMailWithVisualVoicemailManager:(id)a3 onVoicemailsChanged:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;
  v8 = sub_1001B0174(v7, sub_1001B02F0, v6);

  return v8;
}

@end