@interface VoiceOverActivityViewBridge
+ (id)makeViewControllerWithGet:(id)get set:(id)set;
- (_TtC21AccessibilitySettings27VoiceOverActivityViewBridge)init;
@end

@implementation VoiceOverActivityViewBridge

+ (id)makeViewControllerWithGet:(id)get set:(id)set
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9E60);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for VoiceOverActivityVoiceSelectionView();
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(get);
  v13 = _Block_copy(set);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_195F64;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_195F6C;
  v17[5] = v15;
  sub_19C394();

  sub_19BD54();
  sub_193AC4(v8, v11);
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9E68));
  v19 = sub_19B794();

  return v19;
}

- (_TtC21AccessibilitySettings27VoiceOverActivityViewBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VoiceOverActivityViewBridge();
  return [(VoiceOverActivityViewBridge *)&v3 init];
}

@end