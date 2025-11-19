__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B7CD6C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7CD6E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27E184F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E184F40);
    }
  }
}

_MarketplaceKit_UIKit::ActionButton::ButtonImagePlacement_optional __swiftcall ActionButton.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_23B7CD788()
{
  v1 = *v0;
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](v1);
  return sub_23B7DA598();
}

uint64_t sub_23B7CD7FC()
{
  v1 = *v0;
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](v1);
  return sub_23B7DA598();
}

id ActionButton.init(action:)(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E184FB0, &qword_23B7DAE80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v31 - v5;
  v7 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  *v7 = 32;
  v7[1] = 0xE100000000000000;
  v8 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor;
  v10 = objc_opt_self();
  *&v2[v9] = [v10 whiteColor];
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth] = 0;
  v11 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  *&v2[v11] = [v10 clearColor];
  v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement] = 1;
  v12 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize] = 0x4028000000000000;
  v13 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView;
  *&v2[v13] = [objc_allocWithZone(MEMORY[0x277D76260]) init];
  v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction] = 0;
  sub_23B7D4A18(a1, &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], type metadata accessor for ActionButton.Action);
  v14 = *MEMORY[0x277CD5040];
  v15 = sub_23B7DA148();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = [v10 whiteColor];
  v18 = [v17 CGColor];

  v19 = [v10 blueColor];
  v20 = [v19 CGColor];

  v21 = [v10 clearColor];
  v22 = [v21 CGColor];

  v23 = objc_allocWithZone(sub_23B7DA168());
  v24 = sub_23B7DA158();
  v25 = type metadata accessor for SecureButtonContentDelegate();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag] = v24;
  v32.receiver = v26;
  v32.super_class = v25;
  v27 = v24;
  *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate] = objc_msgSendSuper2(&v32, sel_init);
  v28 = type metadata accessor for ActionButton(0);
  v31.receiver = v2;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_23B7CF19C();

  sub_23B7D47F8(a1, type metadata accessor for ActionButton.Action);
  return v29;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B7CDD08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23B7CDE1C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for ActionButton(0);
  v6 = objc_msgSendSuper2(&v8, *a4);

  return v6;
}

void sub_23B7CDEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  sub_23B7DA348();
  sub_23B7DA338();
  sub_23B7DA328();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ActionButton(0);
  v8 = *a5;
  v9 = a1;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_23B7CF0C4();
}

id sub_23B7CE34C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label;
  v6 = v5[1];
  *v5 = v3;
  v5[1] = v2;

  sub_23B7CF0C4();
  v7 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v8 = sub_23B7CF5D4();
  v9 = *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v8;

  [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v4 setNeedsLayout];
}

uint64_t sub_23B7CE3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);
  v2 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label + 8);

  return v1;
}

id sub_23B7CE42C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label + 8];
  *v3 = a1;
  *(v3 + 1) = a2;

  sub_23B7CF0C4();
  v5 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v6 = sub_23B7CF5D4();
  v7 = *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v6;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id (*sub_23B7CE4C4(void *a1))(void *a1, char a2)
{
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_23B7CE520;
}

id sub_23B7CE520(void *a1, char a2)
{
  v2 = a1[2];
  v3 = &v2[a1[3]];
  v4 = a1[1];
  v5 = *(v3 + 1);
  *v3 = *a1;
  *(v3 + 1) = v4;
  if (a2)
  {

    sub_23B7CF0C4();
    v6 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v7 = sub_23B7CF5D4();
    v8 = *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v7;

    [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v2 setNeedsLayout];
  }

  else
  {

    sub_23B7CF0C4();
    v10 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v11 = sub_23B7CF5D4();
    v12 = *(v10 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v10 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v11;

    [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

    return [v2 setNeedsLayout];
  }
}

id sub_23B7CE64C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName;
  v6 = v5[1];
  *v5 = v3;
  v5[1] = v2;

  sub_23B7CF0C4();
  v7 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v8 = sub_23B7CF5D4();
  v9 = *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v7 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v8;

  [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v4 setNeedsLayout];
}

uint64_t sub_23B7CE6F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);
  v2 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName + 8);

  return v1;
}

id sub_23B7CE72C(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName + 8];
  *v3 = a1;
  *(v3 + 1) = a2;

  sub_23B7CF0C4();
  v5 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v6 = sub_23B7CF5D4();
  v7 = *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v6;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id (*sub_23B7CE7C4(void *a1))(void *a1, char a2)
{
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName;
  a1[2] = v1;
  a1[3] = v3;
  v4 = (v1 + v3);
  v5 = v4[1];
  *a1 = *v4;
  a1[1] = v5;

  return sub_23B7CE520;
}

id sub_23B7CE834(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement] = *a1;
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id (*sub_23B7CE8C0(uint64_t a1))(char **a1)
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_23B7CE8F4;
}

id sub_23B7CE8F4(char **a1)
{
  v1 = *a1;
  a1[1][*a1] = *(a1 + 16);
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

double sub_23B7CE97C()
{
  result = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  v2 = *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size + 8);
  return result;
}

id sub_23B7CE990(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size];
  *v3 = a1;
  v3[1] = a2;
  [v2 frame];
  [v2 setFrame_];
  sub_23B7CF0C4();
  v4 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id (*sub_23B7CEA54(uint64_t a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *(a1 + 16) = v1;
  *a1 = v2;
  return sub_23B7CEA88;
}

uint64_t (*sub_23B7CEACC(void *a1))()
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize;
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v3;
  return sub_23B7D4DD8;
}

id sub_23B7CEB00(double *a1, id *a2)
{
  v2 = *a2;
  [*a2 _setCornerRadius_];
  sub_23B7CF0C4();
  v3 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v4 = sub_23B7CF5D4();
  v5 = *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v4;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

id sub_23B7CEBA4()
{
  [v0 _setCornerRadius_];
  sub_23B7CF0C4();
  v1 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v2 = sub_23B7CF5D4();
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v2;

  [*&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v0 setNeedsLayout];
}

id (*sub_23B7CEC30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 _cornerRadius];
  *a1 = v3;
  return sub_23B7CEC84;
}

id sub_23B7CEC84(uint64_t a1)
{
  v1 = *(a1 + 8);
  [v1 _setCornerRadius_];
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id sub_23B7CED18(void *a1, void **a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  *(*a2 + *a5) = *a1;
  sub_23B7CF0C4();
  v6 = *&v5[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v7 = sub_23B7CF5D4();
  v8 = *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v6 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v7;

  [*&v5[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v5 setNeedsLayout];
}

id sub_23B7CEDC0(void *a1, double a2)
{
  *&v2[*a1] = a2;
  sub_23B7CF0C4();
  v3 = *&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v4 = sub_23B7CF5D4();
  v5 = *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v3 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v4;

  [*&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v2 setNeedsLayout];
}

uint64_t (*sub_23B7CEE44(void *a1))()
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth;
  v3 = *(v1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v3;
  return sub_23B7CEE78;
}

id sub_23B7CEE7C(void *a1)
{
  v1 = a1[1];
  *&v1[a1[2]] = *a1;
  sub_23B7CF0C4();
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v3 = sub_23B7CF5D4();
  v4 = *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v2 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v3;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

void sub_23B7CEF14(void *a1)
{
  sub_23B7D2984(a1);
}

void (*sub_23B7CEF4C(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_23B7CEFA4;
}

void sub_23B7CEFA4(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a1;
  v6 = *&v4[v3];
  *&v4[v3] = *a1;
  v7 = v5;
  v15 = v7;
  if (a2)
  {
    v8 = v7;

    sub_23B7CF0C4();
    v9 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v10 = sub_23B7CF5D4();
    v11 = *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v9 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v10;

    [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v4 setNeedsLayout];
  }

  else
  {

    sub_23B7CF0C4();
    v12 = *&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
    v13 = sub_23B7CF5D4();
    v14 = *(v12 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
    *(v12 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v13;

    [*&v4[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];
    [v4 setNeedsLayout];
  }
}

id sub_23B7CF0C4()
{
  if ([v0 isEnabled])
  {
    v1 = [v0 traitCollection];
    v2 = [v1 userInterfaceStyle] == 2;

    v3 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
    v4 = [v0 isHighlighted];
    v5 = dbl_23B7DAE50[v2];
    if (!v4)
    {
      v5 = 1.0;
    }

    v6 = v3;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
    v5 = 0.25;
  }

  return [v6 setAlpha_];
}

id sub_23B7CF19C()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for ActionButton.Action(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView];
  [v5 _setContentDelegate_];
  [v1 addTarget:v1 action:sel_defaultAction_event_ forControlEvents:64];
  v6 = [objc_opt_self() whiteColor];
  [v5 setTintColor_];

  [v1 setIsAccessibilityElement_];
  sub_23B7D4A18(&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], v4, type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v8 = *v4;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_23B7DA3D8();

      v9 = 0x68636E75614CLL;
      goto LABEL_7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v8 = *v4;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_23B7DA3D8();

    v9 = 0x6574656C6544;
LABEL_7:
    v27 = v9 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v28 = 0xE700000000000000;
    v26[1] = v8;
    v12 = sub_23B7DA548();
    MEMORY[0x23EEA9A40](v12);

    MEMORY[0x23EEA9A40](0x6E6F7474754220, 0xE700000000000000);
    goto LABEL_8;
  }

  sub_23B7D47F8(v4, type metadata accessor for ActionButton.Action);
  v11 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  v10 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label + 8];

LABEL_8:
  v13 = sub_23B7DA298();

  [v1 setAccessibilityIdentifier_];

  [v5 setUserInteractionEnabled_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185068, &unk_23B7DB070);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23B7DAE60;
  v16 = [v5 centerXAnchor];
  v17 = [v1 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [v5 centerYAnchor];
  v20 = [v1 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  sub_23B7D4D84();
  v22 = sub_23B7DA2F8();

  [v14 activateConstraints_];

  LODWORD(v23) = 1144750080;
  [v1 setContentHuggingPriority:1 forAxis:v23];
  LODWORD(v24) = 1144750080;
  return [v1 setContentHuggingPriority:0 forAxis:v24];
}

id sub_23B7CF5D4()
{
  v1 = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E184FB0, &qword_23B7DAE80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  v4 = *&v0[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label];
  v5 = *(v3 + 1);
  v6 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName];
  v7 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName + 8];
  v8 = v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement];

  sub_23B7DA138();
  v9 = [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor] CGColor];
  result = [v1 tintColor];
  if (result)
  {
    v11 = result;
    v12 = [result CGColor];

    [v1 _cornerRadius];
    v13 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize];
    v14 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth];
    v15 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size];
    v16 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size + 8];
    v17 = [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor] CGColor];
    v18 = objc_allocWithZone(sub_23B7DA168());
    return sub_23B7DA158();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23B7CF7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_23B7DA258();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = sub_23B7DA1A8();
  v7[18] = v11;
  v12 = *(v11 - 8);
  v7[19] = v12;
  v13 = *(v12 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v14 = sub_23B7DA178();
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v16 = *(v15 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v17 = type metadata accessor for ActionButton.Action(0);
  v7[27] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v19 = type metadata accessor for InstallConfiguration(0);
  v7[31] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v21 = sub_23B7DA0C8();
  v7[33] = v21;
  v22 = *(v21 - 8);
  v7[34] = v22;
  v23 = *(v22 + 64) + 15;
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v24 = sub_23B7DA1F8();
  v7[37] = v24;
  v25 = *(v24 - 8);
  v7[38] = v25;
  v26 = *(v25 + 64) + 15;
  v7[39] = swift_task_alloc();
  v27 = sub_23B7DA218();
  v7[40] = v27;
  v28 = *(v27 - 8);
  v7[41] = v28;
  v29 = *(v28 + 64) + 15;
  v7[42] = swift_task_alloc();
  v30 = sub_23B7DA1B8();
  v7[43] = v30;
  v31 = *(v30 - 8);
  v7[44] = v31;
  v32 = *(v31 + 64) + 15;
  v7[45] = swift_task_alloc();
  v33 = sub_23B7DA1E8();
  v7[46] = v33;
  v34 = *(v33 - 8);
  v7[47] = v34;
  v35 = *(v34 + 64) + 15;
  v7[48] = swift_task_alloc();
  sub_23B7DA348();
  v7[49] = sub_23B7DA338();
  v37 = sub_23B7DA328();
  v7[50] = v37;
  v7[51] = v36;

  return MEMORY[0x2822009F8](sub_23B7CFBF0, v37, v36);
}

uint64_t sub_23B7CFBF0()
{
  v1 = v0[48];
  v2 = v0[12];
  (*(v0[44] + 16))(v0[45], v0[11], v0[43]);
  v3 = v2;
  sub_23B7DA1D8();
  v4 = *(MEMORY[0x277CD5090] + 4);
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_23B7CFCCC;
  v6 = v0[48];
  v7 = v0[42];

  return MEMORY[0x282123830](v7);
}

uint64_t sub_23B7CFCCC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_23B7D03B4;
  }

  else
  {
    v7 = sub_23B7CFE08;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23B7CFE08()
{
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  sub_23B7DA208();
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 == *MEMORY[0x277CD5098])
  {
    v6 = v0[39];
    v7 = v0[36];
    v8 = v0[33];
    v9 = v0[34];
    v10 = v0[30];
    v11 = v0[27];
    v12 = v0[13];
    (*(v0[38] + 96))(v6, v0[37]);
    (*(v9 + 32))(v7, v6, v8);
    sub_23B7D4A18(v12 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v10, type metadata accessor for ActionButton.Action);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v13 = v0[31];
      v14 = v0[32];
      sub_23B7D473C(v0[30], v14);
      v15 = (v14 + *(v13 + 20));
      v16 = v15[1];
      v66 = (*v15 + **v15);
      v17 = (*v15)[1];
      v18 = swift_task_alloc();
      v0[54] = v18;
      *v18 = v0;
      v18[1] = sub_23B7D0844;
      v19 = v0 + 5;
LABEL_16:

      return v66(v19);
    }

    v37 = v0[49];
    v67 = v0[48];
    v28 = v0[46];
    v29 = v0[47];
    v31 = v0[41];
    v30 = v0[42];
    v32 = v0[40];
    v34 = v0[36];
    v35 = v0[33];
    v33 = v0[34];
    v36 = v0[30];
  }

  else
  {
    if (v5 != *MEMORY[0x277CD50A0])
    {
      if (v5 != *MEMORY[0x277CD50A8])
      {
        return sub_23B7DA428();
      }

      v39 = v0[48];
      v38 = v0[49];
      v40 = v0[46];
      v41 = v0[47];
      v43 = v0[41];
      v42 = v0[42];
      v44 = v0[40];

      (*(v43 + 8))(v42, v44);
      (*(v41 + 8))(v39, v40);
      *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
      goto LABEL_11;
    }

    v20 = v0[39];
    v22 = v0[34];
    v21 = v0[35];
    v23 = v0[33];
    v24 = v0[29];
    v25 = v0[27];
    v26 = v0[13];
    (*(v0[38] + 96))(v20, v0[37]);
    (*(v22 + 32))(v21, v20, v23);
    sub_23B7D4A18(v26 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v24, type metadata accessor for ActionButton.Action);
    if (!swift_getEnumCaseMultiPayload())
    {
      v57 = v0[29];
      v0[60] = *v57;
      v58 = v57[1];
      v0[61] = v57[2];
      v66 = (v58 + *v58);
      v59 = v58[1];
      v60 = swift_task_alloc();
      v0[62] = v60;
      *v60 = v0;
      v60[1] = sub_23B7D1424;
      v19 = v0 + 8;
      goto LABEL_16;
    }

    v27 = v0[49];
    v67 = v0[48];
    v28 = v0[46];
    v29 = v0[47];
    v31 = v0[41];
    v30 = v0[42];
    v32 = v0[40];
    v33 = v0[34];
    v34 = v0[35];
    v35 = v0[33];
    v36 = v0[29];
  }

  (*(v33 + 8))(v34, v35);
  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v67, v28);
  sub_23B7D47F8(v36, type metadata accessor for ActionButton.Action);
LABEL_11:
  v45 = v0[48];
  v46 = v0[45];
  v47 = v0[42];
  v48 = v0[39];
  v50 = v0[35];
  v49 = v0[36];
  v51 = v0[32];
  v52 = v0[29];
  v53 = v0[30];
  v54 = v0[28];
  v61 = v0[26];
  v62 = v0[25];
  v63 = v0[24];
  v64 = v0[21];
  v65 = v0[20];
  v68 = v0[17];

  v55 = v0[1];

  return v55();
}

uint64_t sub_23B7D03B4()
{
  v54 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[46];
  v4 = v0[47];

  (*(v4 + 8))(v2, v3);
  v5 = v0[53];
  v6 = v0[17];
  sub_23B7DA228();
  v7 = v5;
  v8 = sub_23B7DA248();
  v9 = sub_23B7DA378();

  if (os_log_type_enabled(v8, v9))
  {
    v47 = v0[16];
    v49 = v0[15];
    v51 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = v5;
    v13 = v0[2];
    v14 = *(v0[3] - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    (*(v14 + 16))();
    v16 = sub_23B7DA2A8();
    v18 = v17;

    v19 = v16;
    v5 = v12;
    v20 = sub_23B7D7840(v19, v18, &v53);

    *(v10 + 4) = v20;
    _os_log_impl(&dword_23B7CC000, v8, v9, "[ActionButton] Error performing action: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23EEAA190](v11, -1, -1);
    MEMORY[0x23EEAA190](v10, -1, -1);

    (*(v47 + 8))(v51, v49);
  }

  else
  {
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];

    (*(v21 + 8))(v22, v23);
  }

  v24 = v0[27];
  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v26 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v26 >> 62)
  {
    if (v0[14] < 0)
    {
      v43 = v0[14];
    }

    v27 = sub_23B7DA438();
    if (!v27)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v27 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v29++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v27 != v29);
  }

  else
  {
    v30 = (v0[14] + 32);
    do
    {
      v31 = *v30++;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v27;
    }

    while (v27);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  v32 = v0[48];
  v33 = v0[45];
  v34 = v0[42];
  v35 = v0[39];
  v37 = v0[35];
  v36 = v0[36];
  v38 = v0[32];
  v39 = v0[29];
  v40 = v0[30];
  v41 = v0[28];
  v44 = v0[26];
  v45 = v0[25];
  v46 = v0[24];
  v48 = v0[21];
  v50 = v0[20];
  v52 = v0[17];

  v42 = v0[1];

  return v42();
}

uint64_t sub_23B7D0844()
{
  v1 = *v0;
  v2 = *(*v0 + 432);
  v6 = *v0;

  v3 = *(v1 + 408);
  v4 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_23B7D0964, v4, v3);
}

uint64_t sub_23B7D0964()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[55] = v2;
  v0[56] = v1;
  v3 = v0[7];
  v0[57] = v3;
  if (!v1)
  {
    (*(v0[34] + 16))(v0[26], v0[36], v0[33]);
    v9 = MEMORY[0x277CD5048];
    goto LABEL_10;
  }

  if (!v3)
  {

LABEL_8:
    v26 = 0;
    v8 = 0xF000000000000000;
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v4 externalizedContext];
  if (!v5)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v26 = sub_23B7DA0B8();
  v8 = v7;

LABEL_9:
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[34];
  v13 = v0[26];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185060, &qword_23B7DB068);
  v15 = (v13 + *(v14 + 48));
  v16 = (v13 + *(v14 + 64));
  (*(v12 + 16))(v13, v10, v11);
  *v15 = v2;
  v15[1] = v1;
  *v16 = v26;
  v16[1] = v8;
  v9 = MEMORY[0x277CD5050];
LABEL_10:
  v17 = v0[25];
  v18 = v0[26];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[21];
  (*(v20 + 104))(v18, *v9, v19);
  (*(v20 + 16))(v17, v18, v19);
  sub_23B7DA198();
  v22 = *(MEMORY[0x277CD5068] + 4);
  v23 = swift_task_alloc();
  v0[58] = v23;
  *v23 = v0;
  v23[1] = sub_23B7D0B64;
  v24 = v0[21];

  return MEMORY[0x282123810]();
}

uint64_t sub_23B7D0B64()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_23B7D0ECC;
  }

  else
  {
    v7 = sub_23B7D0CA0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23B7D0CA0()
{
  v23 = v0[56];
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[47];
  v35 = v0[46];
  v37 = v0[48];
  v4 = v0[41];
  v29 = v0[40];
  v31 = v0[42];
  v27 = v0[36];
  v5 = v0[34];
  v25 = v0[57];
  v26 = v0[33];
  v33 = v0[32];
  v24 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  sub_23B7D4D40(v1, v23, v25);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v24, v7);
  (*(v5 + 8))(v27, v26);
  (*(v4 + 8))(v31, v29);
  (*(v3 + 8))(v37, v35);
  sub_23B7D47F8(v33, type metadata accessor for InstallConfiguration);
  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  v11 = v0[48];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[39];
  v16 = v0[35];
  v15 = v0[36];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  v20 = v0[28];
  v28 = v0[26];
  v30 = v0[25];
  v32 = v0[24];
  v34 = v0[21];
  v36 = v0[20];
  v38 = v0[17];

  v21 = v0[1];

  return v21();
}

uint64_t sub_23B7D0ECC()
{
  v70 = v0;
  v50 = v0[56];
  v1 = v0[55];
  v2 = v0[49];
  v3 = v0[47];
  v63 = v0[46];
  v66 = v0[48];
  v4 = v0[41];
  v56 = v0[40];
  v58 = v0[42];
  v54 = v0[36];
  v5 = v0[34];
  v52 = v0[57];
  v53 = v0[33];
  v60 = v0[32];
  v51 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[18];
  v9 = v0[19];

  sub_23B7D4D40(v1, v50, v52);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v51, v7);
  (*(v5 + 8))(v54, v53);
  (*(v4 + 8))(v58, v56);
  (*(v3 + 8))(v66, v63);
  sub_23B7D47F8(v60, type metadata accessor for InstallConfiguration);
  v11 = v0[59];
  v12 = v0[17];
  sub_23B7DA228();
  v13 = v11;
  v14 = sub_23B7DA248();
  v15 = sub_23B7DA378();

  if (os_log_type_enabled(v14, v15))
  {
    v61 = v0[16];
    v64 = v0[15];
    v67 = v0[17];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v69 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v18 = v11;
    v19 = v0[2];
    v20 = *(v0[3] - 8);
    v21 = *(v20 + 64) + 15;
    swift_task_alloc();
    (*(v20 + 16))();
    v22 = sub_23B7DA2A8();
    v24 = v23;

    v25 = v22;
    v11 = v18;
    v26 = sub_23B7D7840(v25, v24, &v69);

    *(v16 + 4) = v26;
    _os_log_impl(&dword_23B7CC000, v14, v15, "[ActionButton] Error performing action: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEAA190](v17, -1, -1);
    MEMORY[0x23EEAA190](v16, -1, -1);

    (*(v61 + 8))(v67, v64);
  }

  else
  {
    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];

    (*(v27 + 8))(v28, v29);
  }

  v30 = v0[27];
  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v32 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v32 >> 62)
  {
    if (v0[14] < 0)
    {
      v49 = v0[14];
    }

    v33 = sub_23B7DA438();
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v33 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v35++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v33 != v35);
  }

  else
  {
    v36 = (v0[14] + 32);
    do
    {
      v37 = *v36++;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v33;
    }

    while (v33);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  v38 = v0[48];
  v39 = v0[45];
  v40 = v0[42];
  v41 = v0[39];
  v43 = v0[35];
  v42 = v0[36];
  v44 = v0[32];
  v45 = v0[29];
  v46 = v0[30];
  v47 = v0[28];
  v55 = v0[26];
  v57 = v0[25];
  v59 = v0[24];
  v62 = v0[21];
  v65 = v0[20];
  v68 = v0[17];

  v48 = v0[1];

  return v48();
}

uint64_t sub_23B7D1424()
{
  v1 = *v0;
  v2 = *(*v0 + 496);
  v6 = *v0;

  v3 = *(v1 + 408);
  v4 = *(v1 + 400);

  return MEMORY[0x2822009F8](sub_23B7D1544, v4, v3);
}

uint64_t sub_23B7D1544()
{
  v2 = v0[8];
  v1 = v0[9];
  v0[63] = v2;
  v0[64] = v1;
  if (!v2)
  {
    (*(v0[34] + 16))(v0[24], v0[35], v0[33]);
    v8 = MEMORY[0x277CD5058];
    goto LABEL_10;
  }

  if (!v1)
  {

LABEL_8:
    v7 = 0xF000000000000000;
    goto LABEL_9;
  }

  v3 = v1;
  v4 = [v3 externalizedContext];
  if (!v4)
  {

    v1 = 0;
    goto LABEL_8;
  }

  v5 = v4;
  v1 = sub_23B7DA0B8();
  v7 = v6;

LABEL_9:
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[24];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185058, &qword_23B7DB060);
  v14 = *(v13 + 48);
  v15 = (v12 + *(v13 + 64));
  (*(v10 + 16))(v12, v9, v11);
  *(v12 + v14) = v2;
  *v15 = v1;
  v15[1] = v7;
  v8 = MEMORY[0x277CD5060];
LABEL_10:
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[20];
  (*(v19 + 104))(v16, *v8, v18);
  (*(v19 + 16))(v17, v16, v18);
  sub_23B7DA198();
  v21 = *(MEMORY[0x277CD5068] + 4);
  v22 = swift_task_alloc();
  v0[65] = v22;
  *v22 = v0;
  v22[1] = sub_23B7D1734;
  v23 = v0[20];

  return MEMORY[0x282123810]();
}

uint64_t sub_23B7D1734()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_23B7D1A84;
  }

  else
  {
    v7 = sub_23B7D1870;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23B7D1870()
{
  v2 = v0[63];
  v1 = v0[64];
  v23 = v0[60];
  v3 = v0[49];
  v4 = v0[47];
  v35 = v0[46];
  v37 = v0[48];
  v5 = v0[41];
  v31 = v0[40];
  v33 = v0[42];
  v6 = v0[34];
  v27 = v0[33];
  v29 = v0[35];
  v7 = v0[23];
  v25 = v0[61];
  v26 = v0[24];
  v24 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];

  sub_23B7D4D00(v2, v1);

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v26, v24);
  (*(v6 + 8))(v29, v27);
  (*(v5 + 8))(v33, v31);
  (*(v4 + 8))(v37, v35);
  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  v11 = v0[48];
  v12 = v0[45];
  v13 = v0[42];
  v14 = v0[39];
  v16 = v0[35];
  v15 = v0[36];
  v17 = v0[32];
  v18 = v0[29];
  v19 = v0[30];
  v20 = v0[28];
  v28 = v0[26];
  v30 = v0[25];
  v32 = v0[24];
  v34 = v0[21];
  v36 = v0[20];
  v38 = v0[17];

  v21 = v0[1];

  return v21();
}

uint64_t sub_23B7D1A84()
{
  v70 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v50 = v0[60];
  v3 = v0[49];
  v4 = v0[47];
  v63 = v0[46];
  v66 = v0[48];
  v5 = v0[41];
  v58 = v0[40];
  v60 = v0[42];
  v6 = v0[34];
  v54 = v0[33];
  v56 = v0[35];
  v7 = v0[23];
  v52 = v0[61];
  v53 = v0[24];
  v51 = v0[22];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];

  sub_23B7D4D00(v2, v1);

  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v53, v51);
  (*(v6 + 8))(v56, v54);
  (*(v5 + 8))(v60, v58);
  (*(v4 + 8))(v66, v63);
  v11 = v0[66];
  v12 = v0[17];
  sub_23B7DA228();
  v13 = v11;
  v14 = sub_23B7DA248();
  v15 = sub_23B7DA378();

  if (os_log_type_enabled(v14, v15))
  {
    v61 = v0[16];
    v64 = v0[15];
    v67 = v0[17];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v69 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v18 = v11;
    v19 = v0[2];
    v20 = *(v0[3] - 8);
    v21 = *(v20 + 64) + 15;
    swift_task_alloc();
    (*(v20 + 16))();
    v22 = sub_23B7DA2A8();
    v24 = v23;

    v25 = v22;
    v11 = v18;
    v26 = sub_23B7D7840(v25, v24, &v69);

    *(v16 + 4) = v26;
    _os_log_impl(&dword_23B7CC000, v14, v15, "[ActionButton] Error performing action: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23EEAA190](v17, -1, -1);
    MEMORY[0x23EEAA190](v16, -1, -1);

    (*(v61 + 8))(v67, v64);
  }

  else
  {
    v27 = v0[16];
    v28 = v0[17];
    v29 = v0[15];

    (*(v27 + 8))(v28, v29);
  }

  v30 = v0[27];
  sub_23B7D4A18(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action, v0[28], type metadata accessor for ActionButton.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    goto LABEL_17;
  }

  v32 = v0[14];
  sub_23B7D47F8(v0[28], type metadata accessor for ActionButton.Action);
  if (v32 >> 62)
  {
    if (v0[14] < 0)
    {
      v49 = v0[14];
    }

    v33 = sub_23B7DA438();
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  result = sub_23B7DA128();
  if (v33 < 1)
  {
    __break(1u);
    return result;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v35 = 0;
    do
    {
      MEMORY[0x23EEA9B60](v35++, v0[14]);
      sub_23B7DA118();
      sub_23B7DA0E8();

      swift_unknownObjectRelease();
    }

    while (v33 != v35);
  }

  else
  {
    v36 = (v0[14] + 32);
    do
    {
      v37 = *v36++;

      sub_23B7DA118();
      sub_23B7DA0E8();

      --v33;
    }

    while (v33);
  }

LABEL_17:

  *(v0[13] + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  v38 = v0[48];
  v39 = v0[45];
  v40 = v0[42];
  v41 = v0[39];
  v43 = v0[35];
  v42 = v0[36];
  v44 = v0[32];
  v45 = v0[29];
  v46 = v0[30];
  v47 = v0[28];
  v55 = v0[26];
  v57 = v0[25];
  v59 = v0[24];
  v62 = v0[21];
  v65 = v0[20];
  v68 = v0[17];

  v48 = v0[1];

  return v48();
}

uint64_t sub_23B7D1FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23B7D4A80(a3, v26 - v10);
  v12 = sub_23B7DA368();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B7D4AF0(v11);
  }

  else
  {
    sub_23B7DA358();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23B7DA328();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23B7DA2B8() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23B7D4AF0(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B7D4AF0(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id ActionButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ActionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B7D257C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B7D2674;

  return v7(a1);
}

uint64_t sub_23B7D2674()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_23B7D276C()
{
  v1 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);
  *v1 = 32;
  v1[1] = 0xE100000000000000;
  v2 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor;
  v4 = objc_opt_self();
  *(v0 + v3) = [v4 whiteColor];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth) = 0;
  v5 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor;
  *(v0 + v5) = [v4 clearColor];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imagePlacement) = 1;
  v6 = (v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize) = 0x4028000000000000;
  v7 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D76260]) init];
  *(v0 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction) = 0;
  sub_23B7DA428();
  __break(1u);
}

id sub_23B7D28B8(id a1)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_opt_self() whiteColor];
  }

  v3 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor];
  *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__backgroundColor] = a1;
  v4 = v2;

  sub_23B7CF0C4();
  v5 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v6 = sub_23B7CF5D4();
  v7 = *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v5 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v6;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

id sub_23B7D2984(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor];
  *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor] = a1;
  v3 = a1;

  sub_23B7CF0C4();
  v4 = *&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_contentDelegate];
  v5 = sub_23B7CF5D4();
  v6 = *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag);
  *(v4 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit27SecureButtonContentDelegate_templateTag) = v5;

  [*&v1[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_slotView] _updateContent];

  return [v1 setNeedsLayout];
}

unint64_t sub_23B7D2A1C()
{
  result = qword_27E185010;
  if (!qword_27E185010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185010);
  }

  return result;
}

uint64_t sub_23B7D2A70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__label);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_23B7D2A90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__imageName);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

id sub_23B7D2AC8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_23B7CE834(&v4);
}

__n128 sub_23B7D2B00@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__size);
  *a2 = result;
  return result;
}

double sub_23B7D2B40@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__fontSize);
  *a2 = result;
  return result;
}

id sub_23B7D2B78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 _cornerRadius];
  *a2 = v4;
  return result;
}

double sub_23B7D2BB0@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderWidth);
  *a2 = result;
  return result;
}

id sub_23B7D2BE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton__borderColor);
  *a2 = v2;
  return v2;
}

void sub_23B7D2C00(id *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  sub_23B7D2984(v3);
}

uint64_t sub_23B7D2C54()
{
  result = type metadata accessor for ActionButton.Action(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B7D3358()
{
  result = type metadata accessor for InstallConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionButton.ButtonImagePlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionButton.ButtonImagePlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B7D3538(void *a1)
{
  v2 = v1;
  v4 = sub_23B7DA258();
  v5 = *(v4 - 8);
  v119 = v4;
  v120 = v5;
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v116 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v117 = &v107 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v107 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v107 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - 8, v22);
  v118 = &v107 - v23;
  v24 = type metadata accessor for InstallConfiguration(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for InstallMetadata(0);
  v115 = *(v29 - 8);
  v30 = *(v115 + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = (&v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for ActionButton.Action(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = (&v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_23B7DA1B8();
  v40 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v44 = MEMORY[0x28223BE20](v42, v43);
  if (v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction])
  {
    sub_23B7DA228();
    v48 = sub_23B7DA248();
    v49 = sub_23B7DA378();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_23B7CC000, v48, v49, "[ActionButton] Ignoring press for ongoing action", v50, 2u);
      MEMORY[0x23EEAA190](v50, -1, -1);
    }

    return v120[1](v16, v119);
  }

  v112 = OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_performingAction;
  v110 = v47;
  v113 = (&v107 - v45);
  v114 = v44;
  v111 = v46;
  v52 = [a1 _authenticationMessage];
  if (v52)
  {
    v53 = v52;
    v2[v112] = 1;
    v122 = MEMORY[0x277D84F90];
    sub_23B7D4A18(&v2[OBJC_IVAR____TtC21_MarketplaceKit_UIKit12ActionButton_action], v38, type metadata accessor for ActionButton.Action);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v108 = v2;
        v63 = v38;
        v64 = v28;
        sub_23B7D473C(v63, v28);
        v65 = sub_23B7DA098();
        v66 = *(v65 + 48);
        v67 = *(v65 + 52);
        swift_allocObject();
        sub_23B7DA088();
        sub_23B7D47A0();
        v86 = sub_23B7DA078();
        v88 = v87;
        v109 = v53;

        v89 = v113;
        *v113 = v86;
        v89[1] = v88;
        v90 = *MEMORY[0x277CD5088];
        (*(v111 + 104))();
        sub_23B7DA128();
        sub_23B7D48A4(v86, v88);
        sub_23B7DA118();
        v91 = *(v28 + 1);
        v92 = *(v28 + 2);
        v93 = *v64;
        sub_23B7DA0F8();

        sub_23B7DA118();
        sub_23B7DA108();

        MEMORY[0x23EEA9A60](v94);
        if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v106 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23B7DA308();
        }

        sub_23B7DA318();
        sub_23B7D48F8(v86, v88);
        v72 = v122;
        sub_23B7D47F8(v64, type metadata accessor for InstallConfiguration);
        goto LABEL_28;
      }

      v109 = v53;
      v68 = v113;
      *v113 = *v38;
      v69 = MEMORY[0x277CD5080];
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v108 = v2;
        v55 = *v38;
        v56 = v38[2];
        v57 = sub_23B7DA098();
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();
        sub_23B7DA088();
        v121 = v55;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185048, &qword_23B7DB040);
        sub_23B7D494C();
        v73 = sub_23B7DA078();
        v75 = v74;
        v109 = v53;

        v76 = v113;
        *v113 = v73;
        v76[1] = v75;
        v77 = *MEMORY[0x277CD5070];
        (*(v111 + 104))();
        v78 = *(v55 + 16);
        if (v78)
        {
          v120 = v56;
          sub_23B7DA128();
          v79 = v115;
          v80 = v55 + ((*(v115 + 80) + 32) & ~*(v115 + 80));

          v119 = v73;
          sub_23B7D48A4(v73, v75);
          v81 = *(v79 + 72);
          do
          {
            sub_23B7D4A18(v80, v33, type metadata accessor for InstallMetadata);
            sub_23B7DA118();
            v82 = v33[1];
            v83 = v33[2];
            v84 = *v33;
            sub_23B7DA0F8();

            sub_23B7DA118();
            sub_23B7DA108();

            MEMORY[0x23EEA9A60](v85);
            if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v117 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_23B7DA308();
            }

            sub_23B7DA318();
            v72 = v122;
            sub_23B7D47F8(v33, type metadata accessor for InstallMetadata);
            v80 += v81;
            --v78;
          }

          while (v78);
          v73 = v119;
        }

        else
        {

          sub_23B7D48A4(v73, v75);
          v72 = MEMORY[0x277D84F90];
        }

        swift_bridgeObjectRelease_n();
        sub_23B7D48F8(v73, v75);
LABEL_28:
        v2 = v108;
        v68 = v113;
        v71 = v114;
        v70 = v111;
        goto LABEL_29;
      }

      v109 = v53;
      v68 = v113;
      *v113 = *v38;
      v69 = MEMORY[0x277CD5078];
    }

    v70 = v111;
    v71 = v114;
    (*(v111 + 104))(v68, *v69, v114);
    v72 = MEMORY[0x277D84F90];
LABEL_29:
    v95 = sub_23B7DA368();
    (*(*(v95 - 8) + 56))(v118, 1, 1, v95);
    v96 = v110;
    (*(v70 + 16))(v110, v68, v71);
    sub_23B7DA348();
    v97 = v109;
    v120 = v2;
    v98 = sub_23B7DA338();
    v99 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v100 = (v40 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
    v102 = swift_allocObject();
    v103 = MEMORY[0x277D85700];
    *(v102 + 16) = v98;
    *(v102 + 24) = v103;
    v104 = v102 + v99;
    v105 = v114;
    (*(v70 + 32))(v104, v96, v114);
    *(v102 + v100) = v97;
    *(v102 + v101) = v120;
    *(v102 + ((v101 + 15) & 0xFFFFFFFFFFFFFFF8)) = v72;
    sub_23B7D1FC4(0, 0, v118, &unk_23B7DB038, v102);

    return (*(v70 + 8))(v113, v105);
  }

  sub_23B7DA228();
  v60 = sub_23B7DA248();
  v61 = sub_23B7DA378();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_23B7CC000, v60, v61, "[ActionButton] Unable to authenticate button press", v62, 2u);
    MEMORY[0x23EEAA190](v62, -1, -1);
  }

  return v120[1](v19, v119);
}

uint64_t sub_23B7D43FC()
{
  v1 = sub_23B7DA1B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_23B7D44FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23B7DA1B8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_23B7D4648;

  return sub_23B7CF7CC(a1, v9, v10, v1 + v6, v11, v12, v13);
}

uint64_t sub_23B7D4648()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B7D473C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7D47A0()
{
  result = qword_27E185040;
  if (!qword_27E185040)
  {
    type metadata accessor for InstallMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185040);
  }

  return result;
}

uint64_t sub_23B7D47F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23B7D48A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23B7D48F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_23B7D494C()
{
  result = qword_27E185050;
  if (!qword_27E185050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E185048, &qword_23B7DB040);
    sub_23B7D47A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185050);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B7D4A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B7D4A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7D4AF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185038, &qword_23B7DB028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7D4B58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7D4B90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B7D4DD4;

  return sub_23B7D257C(a1, v5);
}

uint64_t sub_23B7D4C48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B7D4648;

  return sub_23B7D257C(a1, v5);
}

void sub_23B7D4D00(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_23B7D4D40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_23B7D4D84()
{
  result = qword_27E185070;
  if (!qword_27E185070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E185070);
  }

  return result;
}

uint64_t sub_23B7D4DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B7DA558();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B7D4E90(uint64_t a1)
{
  v2 = sub_23B7D58C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D4ECC(uint64_t a1)
{
  v2 = sub_23B7D58C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D4F08()
{
  v1 = 0x6552686372616573;
  if (*v0 != 1)
  {
    v1 = 0x69746E6568747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x50746375646F7270;
  }
}

uint64_t sub_23B7D4F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B7D6D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B7D4FB8(uint64_t a1)
{
  v2 = sub_23B7D5874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D4FF4(uint64_t a1)
{
  v2 = sub_23B7D5874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D5048()
{
  if (*v0)
  {
    result = 0x726556656C707061;
  }

  else
  {
    result = 0x657449656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_23B7D5098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v6 || (sub_23B7DA558() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23B7DA558();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_23B7D518C(uint64_t a1)
{
  v2 = sub_23B7D5970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D51C8(uint64_t a1)
{
  v2 = sub_23B7D5970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23B7D5208()
{
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](0);
  return sub_23B7DA598();
}

uint64_t sub_23B7D5278()
{
  sub_23B7DA578();
  MEMORY[0x23EEA9D00](0);
  return sub_23B7DA598();
}

uint64_t sub_23B7D52CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23B7DA558();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23B7D535C(uint64_t a1)
{
  v2 = sub_23B7D591C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D5398(uint64_t a1)
{
  v2 = sub_23B7D591C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketplaceDisplayOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185078, &qword_23B7DB080);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185080, &qword_23B7DB088);
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v36, v9);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185088, &qword_23B7DB090);
  v33 = *(v35 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v35, v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185090, &qword_23B7DB098);
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v32 - v19;
  v21 = *v1;
  v39 = v1[1];
  v40 = v21;
  v22 = *(v1 + 16);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7D5874();
  sub_23B7DA5B8();
  if (v22 >> 6)
  {
    if (v22 >> 6 == 1)
    {
      v47 = 1;
      sub_23B7D591C();
      v24 = v42;
      sub_23B7DA4D8();
      v25 = v36;
      sub_23B7DA508();
      (*(v34 + 8))(v11, v25);
      return (*(v41 + 8))(v20, v24);
    }

    v48 = 2;
    sub_23B7D58C8();
    v28 = v42;
    sub_23B7DA4D8();
    v31 = v38;
    sub_23B7DA508();
    (*(v37 + 8))(v7, v31);
  }

  else
  {
    v27 = v33;
    v46 = 0;
    sub_23B7D5970();
    v28 = v42;
    sub_23B7DA4D8();
    v45 = 0;
    v29 = v35;
    v30 = v43;
    sub_23B7DA538();
    if (!v30)
    {
      v44 = 1;
      sub_23B7DA4F8();
    }

    (*(v27 + 8))(v15, v29);
  }

  return (*(v41 + 8))(v20, v28);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23B7D5874()
{
  result = qword_27E185098;
  if (!qword_27E185098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185098);
  }

  return result;
}

unint64_t sub_23B7D58C8()
{
  result = qword_27E1850A0;
  if (!qword_27E1850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850A0);
  }

  return result;
}

unint64_t sub_23B7D591C()
{
  result = qword_27E1850A8;
  if (!qword_27E1850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850A8);
  }

  return result;
}

unint64_t sub_23B7D5970()
{
  result = qword_27E1850B0;
  if (!qword_27E1850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850B0);
  }

  return result;
}

uint64_t MarketplaceDisplayOption.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850B8, &qword_23B7DB0A0);
  v61 = *(v57 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v57, v4);
  v63 = &v56 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850C0, &qword_23B7DB0A8);
  v60 = *(v58 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v58, v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850C8, &qword_23B7DB0B0);
  v59 = *(v10 - 8);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850D0, &qword_23B7DB0B8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v56 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_23B7D5874();
  v23 = v64;
  sub_23B7DA5A8();
  if (!v23)
  {
    v56 = v10;
    v24 = v63;
    v64 = v16;
    v25 = v20;
    v26 = sub_23B7DA4C8();
    v27 = *(v26 + 16);
    v28 = v15;
    if (!v27 || ((v29 = *(v26 + 32), v27 == 1) ? (v30 = v29 == 3) : (v30 = 1), v30))
    {
      v31 = sub_23B7DA408();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1850D8, &qword_23B7DB0C0) + 48);
      *v33 = &type metadata for MarketplaceDisplayOption;
      sub_23B7DA458();
      sub_23B7DA3F8();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v64 + 8))(v25, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32))
      {
        v35 = v20;
        if (v29 == 1)
        {
          v69 = 1;
          sub_23B7D591C();
          v36 = v9;
          v37 = v28;
          sub_23B7DA448();
          v38 = v64;
          v39 = v58;
          v47 = sub_23B7DA488();
          v49 = v48;
          (*(v60 + 8))(v36, v39);
          (*(v38 + 8))(v35, v37);
          swift_unknownObjectRelease();
          v50 = 64;
          v51 = v62;
        }

        else
        {
          v70 = 2;
          sub_23B7D58C8();
          v44 = v24;
          sub_23B7DA448();
          v45 = v64;
          v51 = v62;
          v60 = v28;
          v46 = v57;
          v47 = sub_23B7DA488();
          v49 = v53;
          (*(v61 + 8))(v44, v46);
          (*(v45 + 8))(v35, v60);
          swift_unknownObjectRelease();
          v50 = 0x80;
        }
      }

      else
      {
        v68 = 0;
        sub_23B7D5970();
        v40 = v14;
        v41 = v20;
        v42 = v28;
        sub_23B7DA448();
        v67 = 0;
        v43 = v56;
        v63 = sub_23B7DA4B8();
        v66 = 1;
        v49 = sub_23B7DA478();
        v55 = v54;
        (*(v59 + 8))(v40, v43);
        (*(v64 + 8))(v41, v42);
        swift_unknownObjectRelease();
        v50 = v55 & 1;
        v51 = v62;
        v47 = v63;
      }

      *v51 = v47;
      *(v51 + 8) = v49;
      *(v51 + 16) = v50;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v65);
}

uint64_t UISceneConnectionOptions.marketplaceDisplayOption.getter()
{
  v0 = sub_23B7DA0D8();
  v1 = sub_23B7D6128();

  return MEMORY[0x2821DDDF8](v0, v0, &type metadata for MarketplaceDisplayOption, v1);
}

unint64_t sub_23B7D6128()
{
  result = qword_27E1850E0;
  if (!qword_27E1850E0)
  {
    sub_23B7DA0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850E0);
  }

  return result;
}

uint64_t sub_23B7D619C(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v10[0] = v4;
  v10[1] = v5;
  v11 = v6;
  return (*(v8 + 8))(a1, v10, v7, v8);
}

uint64_t (*sub_23B7D6224(uint64_t a1))()
{
  sub_23B7D6F14(a1, v3);
  v1 = swift_allocObject();
  sub_23B7D6FB0(v3, v1 + 16);
  return sub_23B7D7010;
}

unint64_t sub_23B7D6290()
{
  result = qword_27E1850E8;
  if (!qword_27E1850E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850E8);
  }

  return result;
}

unint64_t sub_23B7D62E8()
{
  result = qword_27E1850F0;
  if (!qword_27E1850F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850F0);
  }

  return result;
}

uint64_t sub_23B7D6358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_23B7D6F14(a1, v5);
  v3 = swift_allocObject();
  sub_23B7D6FB0(v5, v3 + 16);
  result = swift_allocObject();
  *(result + 16) = sub_23B7D6FC8;
  *(result + 24) = v3;
  *a2 = sub_23B7D6FD0;
  a2[1] = result;
  return result;
}

uint64_t sub_23B7D63E8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_23B7DA288();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7D64BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23B7D6510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceDisplayOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceDisplayOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketplaceDisplayOption.ProductPageCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceDisplayOption.ProductPageCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B7D687C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_23B7D68CC(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23B7D695C()
{
  result = qword_27E1850F8;
  if (!qword_27E1850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1850F8);
  }

  return result;
}

unint64_t sub_23B7D69B4()
{
  result = qword_27E185100;
  if (!qword_27E185100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185100);
  }

  return result;
}

unint64_t sub_23B7D6A0C()
{
  result = qword_27E185108;
  if (!qword_27E185108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185108);
  }

  return result;
}

unint64_t sub_23B7D6A64()
{
  result = qword_27E185110;
  if (!qword_27E185110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185110);
  }

  return result;
}

unint64_t sub_23B7D6ABC()
{
  result = qword_27E185118;
  if (!qword_27E185118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185118);
  }

  return result;
}

unint64_t sub_23B7D6B14()
{
  result = qword_27E185120;
  if (!qword_27E185120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185120);
  }

  return result;
}

unint64_t sub_23B7D6B6C()
{
  result = qword_27E185128;
  if (!qword_27E185128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185128);
  }

  return result;
}

unint64_t sub_23B7D6BC4()
{
  result = qword_27E185130;
  if (!qword_27E185130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185130);
  }

  return result;
}

unint64_t sub_23B7D6C1C()
{
  result = qword_27E185138;
  if (!qword_27E185138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185138);
  }

  return result;
}

unint64_t sub_23B7D6C74()
{
  result = qword_27E185140;
  if (!qword_27E185140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185140);
  }

  return result;
}

unint64_t sub_23B7D6CCC()
{
  result = qword_27E185148;
  if (!qword_27E185148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185148);
  }

  return result;
}

unint64_t sub_23B7D6D24()
{
  result = qword_27E185150;
  if (!qword_27E185150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185150);
  }

  return result;
}

uint64_t sub_23B7D6D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50746375646F7270 && a2 == 0xEB00000000656761;
  if (v4 || (sub_23B7DA558() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552686372616573 && a2 == 0xED000073746C7573 || (sub_23B7DA558() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163)
  {

    return 2;
  }

  else
  {
    v6 = sub_23B7DA558();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23B7D6EA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B7D6EDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_23B7D6F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B7D6F78()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B7D6FB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B7D6FD0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

id sub_23B7D70DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureButtonContentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23B7D7144(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_23B7D71AC()
{
  if (qword_27E184F38 != -1)
  {
    swift_once();
  }

  v0 = *(qword_27E1852D8 + 16);
  aBlock[4] = sub_23B7D758C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23B7D7144;
  aBlock[3] = &block_descriptor;
  v1 = _Block_copy(aBlock);
  v2 = [v0 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v1);
  sub_23B7DA3B8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E185230, &qword_23B7DB738);
  swift_dynamicCast();
  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23B7D72FC()
{
  result = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  qword_27E1852D0 = result;
  return result;
}

id sub_23B7D73BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23B7D741C()
{
  type metadata accessor for RenderingService();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_23B7DA298();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  v4 = objc_opt_self();
  v5 = &unk_284E44370;
  v6 = [v4 interfaceWithProtocol_];

  [v3 setExportedInterface_];
  if (qword_27E184F30 != -1)
  {
    swift_once();
  }

  [v3 setExportedObject_];
  v7 = UISSlotMachineInterface();
  [v3 setRemoteObjectInterface_];

  result = [v3 resume];
  *(v0 + 16) = v3;
  qword_27E1852D8 = v0;
  return result;
}

uint64_t sub_23B7D758C(void *a1)
{
  v2 = sub_23B7DA258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B7DA238();
  v8 = a1;
  v9 = sub_23B7DA248();
  v10 = sub_23B7DA378();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    ErrorValue = swift_getErrorValue();
    v14 = *(*(v21[2] - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue, v21[1]);
    (*(v16 + 16))(v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = sub_23B7DA2A8();
    v19 = sub_23B7D7840(v17, v18, &v22);

    *(v11 + 4) = v19;
    _os_log_impl(&dword_23B7CC000, v9, v10, "Error fetching remote proxy: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EEAA190](v12, -1, -1);
    MEMORY[0x23EEAA190](v11, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_23B7D77E4()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23B7D7840(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B7D790C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23B7D7DE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23B7D790C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23B7D7A18(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23B7DA418();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23B7D7A18(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B7D7A64(a1, a2);
  sub_23B7D7B94(&unk_284E35958);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B7D7A64(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23B7D7C80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23B7DA418();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23B7DA2D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B7D7C80(v10, 0);
        result = sub_23B7DA3C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23B7D7B94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23B7D7CF4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23B7D7C80(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185240, &qword_23B7DB788);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B7D7CF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185240, &qword_23B7DB788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23B7D7DE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B7D7E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallConfiguration.confirmInstall.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallConfiguration(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallConfiguration.init(install:confirmInstall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23B7D7F84(a1, a4);
  result = type metadata accessor for InstallConfiguration(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_23B7D7F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.account.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstallMetadata.alternativeDistributionPackage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InstallMetadata(0) + 24);
  v4 = sub_23B7DA0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InstallMetadata.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InstallMetadata(0) + 32);

  return sub_23B7D8104(v3, a1);
}

uint64_t sub_23B7D8104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InstallMetadata(0) + 32);

  return sub_23B7D81B8(a1, v3);
}

uint64_t sub_23B7D81B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InstallMetadata.requestAgeException.setter(char a1)
{
  result = type metadata accessor for InstallMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t InstallMetadata.init(account:appleItemID:alternativeDistributionPackage:isUpdate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  v9 = type metadata accessor for InstallMetadata(0);
  v10 = v9[8];
  v11 = sub_23B7DA0A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(&a6[v10], 1, 1, v11);
  v14 = v9[9];
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  (*(v12 + 32))(&a6[v9[6]], a4, v11);
  a6[v9[7]] = a5;
  sub_23B7D842C(&a6[v10]);
  result = (v13)(&a6[v10], 1, 1, v11);
  a6[v14] = 0;
  return result;
}

uint64_t sub_23B7D842C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InstallMetadata.init(account:appleItemID:alternativeDistributionPackage:isUpdate:appShareURL:requestAgeException:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  v13 = type metadata accessor for InstallMetadata(0);
  v14 = v13[8];
  v15 = sub_23B7DA0A8();
  v16 = *(v15 - 8);
  (*(v16 + 56))(&a8[v14], 1, 1, v15);
  v17 = v13[9];
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  (*(v16 + 32))(&a8[v13[6]], a4, v15);
  a8[v13[7]] = a5;
  result = sub_23B7D81B8(a6, &a8[v14]);
  a8[v17] = a7;
  return result;
}

uint64_t sub_23B7D85AC()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x6574616470557369;
  v4 = 0x6572616853707061;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657449656C707061;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23B7D867C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23B7D9DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23B7D86B0(uint64_t a1)
{
  v2 = sub_23B7D89B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23B7D86EC(uint64_t a1)
{
  v2 = sub_23B7D89B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185250, &qword_23B7DB798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7D89B0();
  sub_23B7DA5B8();
  v12 = *v3;
  v13 = v3[1];
  v27 = 0;
  sub_23B7DA508();
  if (!v2)
  {
    v15 = v3[2];
    v26 = 1;
    sub_23B7DA538();
    v16 = type metadata accessor for InstallMetadata(0);
    v17 = v16[6];
    v25 = 2;
    sub_23B7DA0A8();
    sub_23B7D8E90(&qword_27E185260);
    sub_23B7DA528();
    v18 = *(v3 + v16[7]);
    v24 = 3;
    sub_23B7DA518();
    v19 = v16[8];
    v23 = 4;
    sub_23B7DA4E8();
    v20 = *(v3 + v16[9]);
    v22 = 5;
    sub_23B7DA518();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_23B7D89B0()
{
  result = qword_27E185258;
  if (!qword_27E185258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E185258);
  }

  return result;
}

uint64_t InstallMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v37 = &v36 - v6;
  v7 = sub_23B7DA0A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185268, &qword_23B7DB7A0);
  v38 = *(v13 - 8);
  v39 = v13;
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for InstallMetadata(0);
  v19 = *(*(v18 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = *(v8 + 56);
  v42 = *(v21 + 32);
  v24 = (&v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23(v24 + v42, 1, 1, v7);
  v25 = a1[3];
  v26 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_23B7D89B0();
  v40 = v17;
  v27 = v41;
  sub_23B7DA5A8();
  if (v27)
  {
    v29 = v42;
    __swift_destroy_boxed_opaque_existential_0(v43);
    return sub_23B7D842C(v24 + v29);
  }

  else
  {
    v28 = v38;
    v49 = 0;
    *v24 = sub_23B7DA488();
    v24[1] = v30;
    v48 = 1;
    v31 = sub_23B7DA4B8();
    v32 = v42;
    v24[2] = v31;
    v47 = 2;
    v41 = sub_23B7D8E90(&qword_27E185270);
    sub_23B7DA4A8();
    (*(v8 + 32))(v24 + v18[6], v12, v7);
    v46 = 3;
    *(v24 + v18[7]) = sub_23B7DA498() & 1;
    v45 = 4;
    sub_23B7DA468();
    sub_23B7D81B8(v37, v24 + v32);
    v44 = 5;
    v33 = sub_23B7DA498();
    v34 = v18[9];
    (*(v28 + 8))(v40, v39);
    *(v24 + v34) = v33 & 1;
    sub_23B7D7E54(v24, v36);
    __swift_destroy_boxed_opaque_existential_0(v43);
    return sub_23B7D8ED4(v24);
  }
}

uint64_t sub_23B7D8E90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23B7DA0A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23B7D8ED4(uint64_t a1)
{
  v2 = type metadata accessor for InstallMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7D8F64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_23B7D90D4(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_23B7DA558();
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t BatchInstallConfiguration.confirmInstall.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BatchInstallConfiguration.init(installs:confirmInstall:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

unint64_t sub_23B7D90D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23B7DA568();

  return sub_23B7D9118(a1, v4);
}

unint64_t sub_23B7D9118(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

BOOL _s21_MarketplaceKit_UIKit30BatchInstallConfirmationResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!*a1)
  {
    if (!v5)
    {
      sub_23B7D4D00(0, v2);
      sub_23B7D4D00(0, v4);
      return 1;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
LABEL_9:
    sub_23B7D9FEC(*a2, *(a2 + 8));
    sub_23B7D9FEC(v3, v2);
LABEL_11:
    sub_23B7D4D00(v3, v2);
    sub_23B7D4D00(v5, v4);
    return 0;
  }

  sub_23B7D9FEC(*a2, *(a2 + 8));
  sub_23B7D9FEC(v3, v2);
  v6 = v4;
  v7 = v2;
  if ((sub_23B7D8F64(v3, v5) & 1) == 0)
  {

    goto LABEL_11;
  }

  if (v2)
  {
    if (v4)
    {
      sub_23B7DA02C();
      v8 = v7;
      v9 = sub_23B7DA398();

      sub_23B7D4D00(v3, v2);
      sub_23B7D4D00(v5, v4);

      return (v9 & 1) != 0;
    }

    sub_23B7D4D00(v3, v2);
    sub_23B7D4D00(v5, 0);
    v6 = v7;
LABEL_17:

    return 0;
  }

  sub_23B7D4D00(v3, 0);
  sub_23B7D4D00(v5, v4);
  if (v4)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t get_enum_tag_for_layout_string_21_MarketplaceKit_UIKit25InstallConfirmationResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B7D9330(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7D9380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_23B7D93D8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B7D9420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for InstallMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B7D94F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for InstallMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_23B7D95A8()
{
  result = type metadata accessor for InstallMetadata(319);
  if (v1 <= 0x3F)
  {
    result = sub_23B7D962C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23B7D962C()
{
  result = qword_27E185288;
  if (!qword_27E185288)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E185288);
  }

  return result;
}

uint64_t sub_23B7D9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23B7DA0A8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23B7D97D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_23B7DA0A8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E185248, &qword_23B7DB790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23B7D9904()
{
  sub_23B7DA0A8();
  if (v0 <= 0x3F)
  {
    sub_23B7D99A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B7D99A8()
{
  if (!qword_27E1852A0)
  {
    sub_23B7DA0A8();
    v0 = sub_23B7DA3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1852A0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21_MarketplaceKit_UIKit30BatchInstallConfirmationResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23B7D9A18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B7D9A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_23B7D9ABC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_23B7D9AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23B7D9B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InstallMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstallMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B7D9CD8()
{
  result = qword_27E1852A8;
  if (!qword_27E1852A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852A8);
  }

  return result;
}

unint64_t sub_23B7D9D30()
{
  result = qword_27E1852B0;
  if (!qword_27E1852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852B0);
  }

  return result;
}

unint64_t sub_23B7D9D88()
{
  result = qword_27E1852B8;
  if (!qword_27E1852B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1852B8);
  }

  return result;
}

uint64_t sub_23B7D9DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v4 || (sub_23B7DA558() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL || (sub_23B7DA558() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023B7DCDE0 == a2 || (sub_23B7DA558() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_23B7DA558() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255 || (sub_23B7DA558() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023B7DCE00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_23B7DA558();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_23B7D9FEC(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = a2;
  }

  return result;
}

unint64_t sub_23B7DA02C()
{
  result = qword_27E1852C0;
  if (!qword_27E1852C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1852C0);
  }

  return result;
}