@interface ATXMenuItem
+ (id)fullMenuPathStringFromMenuPathWithMenuPath:(id)a3;
- (ATXMenuItem)init;
- (ATXMenuItem)initWithBundleID:(id)a3 identifier:(id)a4 localizedTitle:(id)a5 standaloneTitle:(id)a6 menuHierarchyComponents:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSArray)fullMenuPath;
- (NSArray)menuHierarchyComponents;
- (NSString)bundleID;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)fullMenuPathString;
- (NSString)identifierForIndexing;
- (int64_t)hash;
- (void)setIdentifierForIndexing:(id)a3;
@end

@implementation ATXMenuItem

- (NSString)bundleID
{
  v2 = *(self + OBJC_IVAR___ATXMenuItem_bundleID);
  v3 = *(self + OBJC_IVAR___ATXMenuItem_bundleID + 8);

  v4 = sub_2268363F8();

  return v4;
}

- (NSArray)menuHierarchyComponents
{
  v2 = *(self + OBJC_IVAR___ATXMenuItem_menuHierarchyComponents);

  v3 = sub_226836558();

  return v3;
}

- (NSArray)fullMenuPath
{
  v2 = self;
  sub_22679D174();

  v3 = sub_226836558();

  return v3;
}

- (NSString)fullMenuPathString
{
  v2 = *((*MEMORY[0x277D85000] & *self) + 0x80);
  v3 = self;
  v2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50);
  sub_226836388();

  v4 = sub_2268363F8();

  return v4;
}

- (NSString)identifierForIndexing
{
  v2 = self;
  sub_22679D5C0();

  v3 = sub_2268363F8();

  return v3;
}

- (void)setIdentifierForIndexing:(id)a3
{
  v4 = sub_226836408();
  v5 = (self + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing);
  v6 = *(self + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (ATXMenuItem)initWithBundleID:(id)a3 identifier:(id)a4 localizedTitle:(id)a5 standaloneTitle:(id)a6 menuHierarchyComponents:(id)a7
{
  v11 = sub_226836408();
  v13 = v12;
  if (a4)
  {
    a4 = sub_226836408();
    v15 = v14;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  a5 = sub_226836408();
  v17 = v16;
  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  a6 = sub_226836408();
  v19 = v18;
LABEL_8:
  v20 = sub_226836568();
  v21 = (self + OBJC_IVAR___ATXMenuItem____lazy_storage___identifierForIndexing);
  *v21 = 0;
  v21[1] = 0;
  v22 = (self + OBJC_IVAR___ATXMenuItem_bundleID);
  *v22 = v11;
  v22[1] = v13;
  v23 = (self + OBJC_IVAR___ATXMenuItem_identifier);
  *v23 = a4;
  v23[1] = v15;
  v24 = (self + OBJC_IVAR___ATXMenuItem_localizedTitle);
  *v24 = a5;
  v24[1] = v17;
  v25 = (self + OBJC_IVAR___ATXMenuItem_standaloneTitle);
  *v25 = a6;
  v25[1] = v19;
  *(self + OBJC_IVAR___ATXMenuItem_menuHierarchyComponents) = v20;
  v27.receiver = self;
  v27.super_class = type metadata accessor for MenuItemContext.MenuItem();
  return [(ATXMenuItem *)&v27 init];
}

- (NSString)debugDescription
{
  v2 = [(ATXMenuItem *)self description];

  return v2;
}

- (NSString)description
{
  v2 = self;
  sub_22679E59C();

  v3 = sub_2268363F8();

  return v3;
}

- (int64_t)hash
{
  sub_226836C58();
  v3 = *((*MEMORY[0x277D85000] & *self) + 0x90);
  v4 = self;
  v3();
  sub_226836498();

  v5 = sub_226836C38();

  return v5;
}

+ (id)fullMenuPathStringFromMenuPathWithMenuPath:(id)a3
{
  sub_226836568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50);
  sub_226836388();

  v3 = sub_2268363F8();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_22679EA58(v8);

  sub_2267A1DC0(v8, &qword_27D7A1AA0, &qword_2268732C0);
  return v6 & 1;
}

- (ATXMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end