@interface MusicApplicationContextProvider
- (double)lastMessageDisplayTime;
- (id)contextPropertyWithName:(id)name;
- (id)presentationPolicyForPolicyGroup:(int64_t)group;
- (id)viewControllerForModalPresentation;
- (void)messageCoordinator:(id)coordinator didRequestAction:(id)action;
- (void)setLastMessageDisplayTime:(double)time;
@end

@implementation MusicApplicationContextProvider

- (id)contextPropertyWithName:(id)name
{
  v5 = sub_AB92A0();
  v7 = v6;
  nameCopy = name;
  selfCopy = self;
  sub_192828(v5, v7, v17);

  v10 = v18;
  if (v18)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v12 = *(v10 - 8);
    __chkstk_darwin(v11);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_ABB3A0();
    (*(v12 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)viewControllerForModalPresentation
{
  sub_D5B6C();
  if (v2)
  {
    v3 = v2;
    static PresentationSource.topmost(in:)(v7);

    if (v8 != 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1611C(v7);
      v5 = Strong;
      goto LABEL_6;
    }
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v8 = 1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  sub_12E1C(v7, &unk_DEA520);
  v5 = 0;
LABEL_6:

  return v5;
}

- (void)messageCoordinator:(id)coordinator didRequestAction:(id)action
{
  v7 = sub_AB8FF0();
  coordinatorCopy = coordinator;
  actionCopy = action;
  selfCopy = self;
  sub_19358C(coordinatorCopy, v7);
}

- (id)presentationPolicyForPolicyGroup:(int64_t)group
{
  selfCopy = self;
  v5 = sub_193888(group);

  return v5;
}

- (double)lastMessageDisplayTime
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_193E0C();

  return v3;
}

- (void)setLastMessageDisplayTime:(double)time
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v6[3] = &type metadata for Double;
  *v6 = time;
  v5[0] = 0xD00000000000001CLL;
  v5[1] = 0x8000000000B551D0;
  sub_36A48();
  NSUserDefaults.subscript.setter(v6, v5, &type metadata for String);
}

@end