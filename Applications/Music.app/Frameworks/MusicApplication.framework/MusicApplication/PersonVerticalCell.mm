@interface PersonVerticalCell
+ (double)visualContentInsets;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PersonVerticalCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1FDD20(a3);
}

+ (double)visualContentInsets
{
  if (qword_DE69B0 != -1)
  {
    swift_once();
  }

  v7[2] = xmmword_DF86D8;
  v7[3] = xmmword_DF86E8;
  v7[4] = xmmword_DF86F8;
  v7[0] = xmmword_DF86B8;
  v7[1] = xmmword_DF86C8;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v0 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v7);
  sub_2F118(v7, v6);
  v1 = qword_DE69B8;

  if (v1 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_DF8728;
  v6[3] = unk_DF8738;
  v6[4] = xmmword_DF8748;
  v6[0] = xmmword_DF8708;
  v6[1] = unk_DF8718;
  swift_initStackObject();
  TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF82B0;
  *(inited + 32) = v0;
  sub_2F118(v6, &v5);
  if (qword_DE6AC0 != -1)
  {
    swift_once();
  }

  v3 = *&xmmword_E71560;
  if ((inited & 0xC000000000000001) != 0)
  {
    sub_36003C(0, inited);
  }

  else
  {
  }

  swift_beginAccess();

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

@end