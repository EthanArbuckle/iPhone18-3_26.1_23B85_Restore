@interface BKRootBarItem
- (BKRootBarItem)init;
- (BKRootBarItem)initWithIdentifier:(id)a3 isPlaceholder:(BOOL)a4 url:(id)a5 titleOverride:(id)a6 iconNameOverride:(id)a7 selectedIconNameOverride:(id)a8 countryCode:(id)a9 editNameOnSelect:(BOOL)a10;
- (BOOL)isCustomCollection;
- (BOOL)isDefaultCollection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLibraryCollection;
- (BOOL)isSearch;
- (BOOL)requiresURL;
- (NSString)automationID;
- (NSString)description;
- (NSString)identifier;
- (NSString)sidebarTitle;
- (NSString)suggestedTrackerName;
- (NSString)tabBarTitle;
- (id)createTabWithViewControllerProvider:(id)a3;
- (id)resolvedNavigationItemTitleWithIsCompact:(BOOL)a3;
- (int64_t)defaultLargeTitleDisplayMode;
- (void)configureDynamicTitleFor:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKRootBarItem

- (BKRootBarItem)initWithIdentifier:(id)a3 isPlaceholder:(BOOL)a4 url:(id)a5 titleOverride:(id)a6 iconNameOverride:(id)a7 selectedIconNameOverride:(id)a8 countryCode:(id)a9 editNameOnSelect:(BOOL)a10
{
  v14 = sub_1007A2254();
  v37 = v15;
  v38 = v14;
  if (a5)
  {
    v16 = sub_1007A2254();
    v35 = v17;
    v36 = v16;
    v18 = a9;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    v21 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 0;
  v36 = 0;
  v18 = a9;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_1007A2254();
  v21 = v20;
  if (a7)
  {
LABEL_4:
    v22 = sub_1007A2254();
    a7 = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  v24 = a8;
  v25 = v18;
  v26 = v25;
  if (!v24)
  {
    v27 = 0;
    v29 = 0;
    v30 = a10;
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_12:
    v31 = 0;
    v33 = 0;
    return RootBarItem.init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(v38, v37, a4, v36, v35, v19, v21, v22, a7, v27, v29, v31, v33, v30);
  }

  v27 = sub_1007A2254();
  v29 = v28;

  v30 = a10;
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_10:
  v31 = sub_1007A2254();
  v33 = v32;

  return RootBarItem.init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(v38, v37, a4, v36, v35, v19, v21, v22, a7, v27, v29, v31, v33, v30);
}

- (NSString)description
{
  v2 = self;
  RootBarItem.description.getter();

  v3 = sub_1007A2214();

  return v3;
}

- (NSString)identifier
{

  v2 = sub_1007A2214();

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = RootBarItem.isEqual(_:)(v8);

  sub_100007840(v8, &unk_100AD5B40);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  RootBarItem.encode(with:)(v4);
}

- (BKRootBarItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isSearch
{
  v2 = self;
  v3 = RootBarItem.isSearch.getter();

  return v3 & 1;
}

- (BOOL)isDefaultCollection
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  v4 = self;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v3);
  if (v5)
  {

    LOBYTE(v6) = 0;
  }

  else
  {

    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v3);
    if (v7 > 0x10u)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = 0x1FE0u >> v7;
    }
  }

  return v6 & 1;
}

- (BOOL)isCustomCollection
{
  v2 = self;
  v3 = RootBarItem.isCustomCollection.getter();

  return v3 & 1;
}

- (BOOL)isLibraryCollection
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  v4 = self;
  LOBYTE(v2) = _s5Books20RootBarItemsProviderC19isLibraryCollection3forSbSS_tFZ_0(v2, v3);

  return v2 & 1;
}

- (BOOL)requiresURL
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  v4 = self;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v3);
  if (v5)
  {
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v3);
    if (v6 > 0x10u || ((1 << v6) & 0x1E01F) == 0)
    {

      v9 = 0;
      return v9 & 1;
    }
  }

  v8 = *(v4 + OBJC_IVAR___BKRootBarItem_isPlaceholder);

  v9 = v8 ^ 1;
  return v9 & 1;
}

- (NSString)automationID
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  v4 = self;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v3);
  if (v5)
  {

    v6 = 14;
  }

  else
  {

    v6 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v3);
    if (v6 == 16)
    {
      v6 = 15;
    }
  }

  sub_100480680(v6);

  v7 = sub_1007A2214();

  return v7;
}

- (id)resolvedNavigationItemTitleWithIsCompact:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if (v3 && (RootBarItem.title.getter(v7), v9 = v7[2], sub_1000077D8(&v9, &v8, &qword_100AD4F30), sub_100007840(v7, &qword_100ADFAD0), *(&v9 + 1)))
  {
  }

  else
  {
    RootBarItem.title.getter(&v8);

    sub_100007840(&v8, &qword_100ADFAD0);
  }

  v5 = sub_1007A2214();

  return v5;
}

- (int64_t)defaultLargeTitleDisplayMode
{
  v2 = self;
  if (_UISolariumEnabled())
  {
    if ([(BKRootBarItem *)v2 isSearch]&& isPad())
    {

      return 2;
    }

    else
    {
      v4 = isPhone();

      if (v4)
      {
        return 3;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {

    return 1;
  }
}

- (id)createTabWithViewControllerProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = RootBarItem.createTab(viewControllerProvider:)(sub_10059EDD0, v5);

  return v7;
}

- (void)configureDynamicTitleFor:(id)a3
{
  v4 = a3;
  v5 = self;
  RootBarItem.configureDynamicTitle(for:)(v4);
}

- (NSString)suggestedTrackerName
{
  v2 = self;
  if (![(BKRootBarItem *)v2 isLibraryCollection])
  {
  }

  v3 = sub_1007A2214();

  return v3;
}

- (NSString)tabBarTitle
{
  v2 = self;
  RootBarItem.title.getter(&v5);

  sub_100007840(&v5, &qword_100ADFAD0);
  v3 = sub_1007A2214();

  return v3;
}

- (NSString)sidebarTitle
{
  v2 = self;
  RootBarItem.title.getter(v5);

  sub_100007840(v5, &qword_100ADFAD0);
  v3 = sub_1007A2214();

  return v3;
}

@end