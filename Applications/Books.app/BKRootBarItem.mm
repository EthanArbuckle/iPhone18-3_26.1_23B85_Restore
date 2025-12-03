@interface BKRootBarItem
- (BKRootBarItem)init;
- (BKRootBarItem)initWithIdentifier:(id)identifier isPlaceholder:(BOOL)placeholder url:(id)url titleOverride:(id)override iconNameOverride:(id)nameOverride selectedIconNameOverride:(id)iconNameOverride countryCode:(id)code editNameOnSelect:(BOOL)self0;
- (BOOL)isCustomCollection;
- (BOOL)isDefaultCollection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLibraryCollection;
- (BOOL)isSearch;
- (BOOL)requiresURL;
- (NSString)automationID;
- (NSString)description;
- (NSString)identifier;
- (NSString)sidebarTitle;
- (NSString)suggestedTrackerName;
- (NSString)tabBarTitle;
- (id)createTabWithViewControllerProvider:(id)provider;
- (id)resolvedNavigationItemTitleWithIsCompact:(BOOL)compact;
- (int64_t)defaultLargeTitleDisplayMode;
- (void)configureDynamicTitleFor:(id)for;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKRootBarItem

- (BKRootBarItem)initWithIdentifier:(id)identifier isPlaceholder:(BOOL)placeholder url:(id)url titleOverride:(id)override iconNameOverride:(id)nameOverride selectedIconNameOverride:(id)iconNameOverride countryCode:(id)code editNameOnSelect:(BOOL)self0
{
  v14 = sub_1007A2254();
  v37 = v15;
  v38 = v14;
  if (url)
  {
    v16 = sub_1007A2254();
    v35 = v17;
    v36 = v16;
    codeCopy2 = code;
    if (override)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    v21 = 0;
    if (nameOverride)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v35 = 0;
  v36 = 0;
  codeCopy2 = code;
  if (!override)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = sub_1007A2254();
  v21 = v20;
  if (nameOverride)
  {
LABEL_4:
    v22 = sub_1007A2254();
    nameOverride = v23;
    goto LABEL_8;
  }

LABEL_7:
  v22 = 0;
LABEL_8:
  iconNameOverrideCopy = iconNameOverride;
  v25 = codeCopy2;
  v26 = v25;
  if (!iconNameOverrideCopy)
  {
    v27 = 0;
    v29 = 0;
    selectCopy2 = select;
    if (v25)
    {
      goto LABEL_10;
    }

LABEL_12:
    v31 = 0;
    v33 = 0;
    return RootBarItem.init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(v38, v37, placeholder, v36, v35, v19, v21, v22, nameOverride, v27, v29, v31, v33, selectCopy2);
  }

  v27 = sub_1007A2254();
  v29 = v28;

  selectCopy2 = select;
  if (!v26)
  {
    goto LABEL_12;
  }

LABEL_10:
  v31 = sub_1007A2254();
  v33 = v32;

  return RootBarItem.init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(v38, v37, placeholder, v36, v35, v19, v21, v22, nameOverride, v27, v29, v31, v33, selectCopy2);
}

- (NSString)description
{
  selfCopy = self;
  RootBarItem.description.getter();

  v3 = sub_1007A2214();

  return v3;
}

- (NSString)identifier
{

  v2 = sub_1007A2214();

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = RootBarItem.isEqual(_:)(v8);

  sub_100007840(v8, &unk_100AD5B40);
  return v6 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  RootBarItem.encode(with:)(coderCopy);
}

- (BKRootBarItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isSearch
{
  selfCopy = self;
  v3 = RootBarItem.isSearch.getter();

  return v3 & 1;
}

- (BOOL)isDefaultCollection
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  selfCopy = self;
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
  selfCopy = self;
  v3 = RootBarItem.isCustomCollection.getter();

  return v3 & 1;
}

- (BOOL)isLibraryCollection
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  selfCopy = self;
  LOBYTE(v2) = _s5Books20RootBarItemsProviderC19isLibraryCollection3forSbSS_tFZ_0(v2, v3);

  return v2 & 1;
}

- (BOOL)requiresURL
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  selfCopy = self;
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

  v8 = *(selfCopy + OBJC_IVAR___BKRootBarItem_isPlaceholder);

  v9 = v8 ^ 1;
  return v9 & 1;
}

- (NSString)automationID
{
  v2 = *(self + OBJC_IVAR___BKRootBarItem_identifier);
  v3 = *(self + OBJC_IVAR___BKRootBarItem_identifier + 8);
  selfCopy = self;
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

- (id)resolvedNavigationItemTitleWithIsCompact:(BOOL)compact
{
  compactCopy = compact;
  selfCopy = self;
  if (compactCopy && (RootBarItem.title.getter(v7), v9 = v7[2], sub_1000077D8(&v9, &v8, &qword_100AD4F30), sub_100007840(v7, &qword_100ADFAD0), *(&v9 + 1)))
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
  selfCopy = self;
  if (_UISolariumEnabled())
  {
    if ([(BKRootBarItem *)selfCopy isSearch]&& isPad())
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

- (id)createTabWithViewControllerProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = RootBarItem.createTab(viewControllerProvider:)(sub_10059EDD0, v5);

  return v7;
}

- (void)configureDynamicTitleFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  RootBarItem.configureDynamicTitle(for:)(forCopy);
}

- (NSString)suggestedTrackerName
{
  selfCopy = self;
  if (![(BKRootBarItem *)selfCopy isLibraryCollection])
  {
  }

  v3 = sub_1007A2214();

  return v3;
}

- (NSString)tabBarTitle
{
  selfCopy = self;
  RootBarItem.title.getter(&v5);

  sub_100007840(&v5, &qword_100ADFAD0);
  v3 = sub_1007A2214();

  return v3;
}

- (NSString)sidebarTitle
{
  selfCopy = self;
  RootBarItem.title.getter(v5);

  sub_100007840(v5, &qword_100ADFAD0);
  v3 = sub_1007A2214();

  return v3;
}

@end