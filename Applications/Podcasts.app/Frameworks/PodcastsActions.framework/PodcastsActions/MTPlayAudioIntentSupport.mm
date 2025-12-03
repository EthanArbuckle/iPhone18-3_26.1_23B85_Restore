@interface MTPlayAudioIntentSupport
+ (void)donate:(NSArray *)donate completionHandler:(id)handler;
- (MTPlayAudioIntentSupport)init;
@end

@implementation MTPlayAudioIntentSupport

+ (void)donate:(NSArray *)donate completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = donate;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_E7324();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_F0778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_F0788;
  v15[5] = v14;
  donateCopy = donate;
  sub_8E218(0, 0, v10, &unk_F0798, v15);
}

- (MTPlayAudioIntentSupport)init
{
  v3.receiver = self;
  v3.super_class = MTPlayAudioIntentSupport;
  return [(MTPlayAudioIntentSupport *)&v3 init];
}

@end