@interface QLWebLocationBarViewInterface
+ (id)makeLocationBarUI:(id)a3;
- (_TtC9QuickLook29QLWebLocationBarViewInterface)init;
@end

@implementation QLWebLocationBarViewInterface

+ (id)makeLocationBarUI:(id)a3
{
  v3 = type metadata accessor for QLWebLocationBarView();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = sub_23A7EDF64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDF44();
  (*(v11 + 16))(v9, v14, v10);
  sub_23A7ABC3C(v9, v7);
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9718, &unk_23A7FD680));
  v16 = sub_23A7EE564();
  sub_23A7ABCA0(v9);
  (*(v11 + 8))(v14, v10);

  return v16;
}

- (_TtC9QuickLook29QLWebLocationBarViewInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QLWebLocationBarViewInterface();
  return [(QLWebLocationBarViewInterface *)&v3 init];
}

@end