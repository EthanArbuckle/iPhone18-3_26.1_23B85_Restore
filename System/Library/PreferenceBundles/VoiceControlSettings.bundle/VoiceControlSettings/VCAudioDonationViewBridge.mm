@interface VCAudioDonationViewBridge
+ (id)makeViewController;
- (_TtC20VoiceControlSettings25VCAudioDonationViewBridge)init;
@end

@implementation VCAudioDonationViewBridge

+ (id)makeViewController
{
  v2 = type metadata accessor for VCAudioDonationView();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = swift_getKeyPath();
  sub_12210(&qword_2F628, &qword_1C2A0);
  swift_storeEnumTagMultiPayload();
  v7 = (v6 + *(v3 + 28));
  *v7 = 0xD000000000000024;
  v7[1] = 0x8000000000021750;
  v8 = *(v3 + 32);
  *(v6 + v8) = [objc_allocWithZone(UIViewController) init];
  v9 = objc_allocWithZone(sub_12210(&qword_2F630, &qword_1C2A8));
  v10 = sub_16FF4();

  return v10;
}

- (_TtC20VoiceControlSettings25VCAudioDonationViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VCAudioDonationViewBridge();
  return [(VCAudioDonationViewBridge *)&v3 init];
}

@end