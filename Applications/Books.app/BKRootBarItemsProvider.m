@interface BKRootBarItemsProvider
+ (BOOL)isDefaultCollectionFor:(id)a3;
+ (BOOL)requiresURLFor:(id)a3;
+ (NSArray)placeholderStandardItems;
+ (NSString)AudiobooksIdentifier;
+ (NSString)BooksIdentifier;
+ (NSString)HomeIdentifier;
+ (NSString)LibraryAllIdentifier;
+ (NSString)LibraryAudiobooksIdentifier;
+ (NSString)LibraryBooksIdentifier;
+ (NSString)LibraryDownloadedIdentifier;
+ (NSString)LibraryFinishedIdentifier;
+ (NSString)LibraryMySamplesIdentifier;
+ (NSString)LibraryPDFIdentifier;
+ (NSString)LibraryUserCollectionIdentifier;
+ (NSString)LibraryWantToReadIdentifier;
+ (NSString)MangaIdentifier;
+ (NSString)NewCollectionIdentifier;
+ (NSString)SearchIdentifier;
+ (id)automationIdentifierFor:(id)a3;
+ (id)customCollectionIDFromItemIdentifier:(id)a3;
+ (id)defaultCollectionIDFromItemIdentifier:(id)a3;
+ (id)itemIdentifierForCollectionID:(id)a3;
+ (id)itemIdentifierForCustomCollectionID:(id)a3;
+ (id)itemIdentifierForDefaultCollectionID:(id)a3;
+ (id)standardItemsFromBagWith:(id)a3 countryCode:(id)a4;
+ (id)stringForReturnToRootBarItemFor:(id)a3;
+ (int64_t)tabTypeFor:(id)a3;
- (BKRootBarItemsProvider)init;
@end

@implementation BKRootBarItemsProvider

+ (NSString)HomeIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)BooksIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)AudiobooksIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)MangaIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)SearchIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryAllIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryWantToReadIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryFinishedIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryBooksIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryAudiobooksIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryPDFIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryMySamplesIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryDownloadedIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)LibraryUserCollectionIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSString)NewCollectionIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (NSArray)placeholderStandardItems
{
  _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0();
  type metadata accessor for RootBarItem();
  v2.super.isa = sub_1007A25D4().super.isa;

  return v2.super.isa;
}

+ (id)standardItemsFromBagWith:(id)a3 countryCode:(id)a4
{
  v5 = sub_1007A25E4();
  if (a4)
  {
    v6 = sub_1007A2254();
    a4 = v7;
  }

  else
  {
    v6 = 0;
  }

  _s5Books20RootBarItemsProviderC08standardD7FromBag4with11countryCodeSayAA0bC4ItemCGSayypG_SSSgtFZ_0(v5, v6, a4);

  type metadata accessor for RootBarItem();
  v8.super.isa = sub_1007A25D4().super.isa;

  return v8.super.isa;
}

+ (BOOL)isDefaultCollectionFor:(id)a3
{
  v3 = sub_1007A2254();
  v5 = v4;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v3, v4);
  if (v6)
  {

    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v3, v5);
    v7 = 0x1FE0u >> v8;
    if (v8 > 0x10u)
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7 & 1;
}

+ (id)itemIdentifierForDefaultCollectionID:(id)a3
{
  v3 = a3;
  _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0();
  v5 = v4;

  if (v5)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)defaultCollectionIDFromItemIdentifier:(id)a3
{
  v3 = sub_1007A2254();
  v5 = _s5Books20RootBarItemsProviderC19defaultCollectionID18fromItemIdentifierSo09BCDefaultgH0aSgSS_tFZ_0(v3, v4);

  return v5;
}

+ (id)itemIdentifierForCustomCollectionID:(id)a3
{
  v6._countAndFlagsBits = sub_1007A2254();
  sub_1007A23D4(v6);

  v3 = sub_1007A2214();

  return v3;
}

+ (id)customCollectionIDFromItemIdentifier:(id)a3
{
  v3 = sub_1007A2254();
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v3, v4);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)itemIdentifierForCollectionID:(id)a3
{
  v3 = sub_1007A2254();
  v5 = v4;
  v6 = sub_1007A2214();
  _s5Books20RootBarItemsProviderC14itemIdentifier22forDefaultCollectionIDSSSgSo09BCDefaultjK0a_tFZ_0();
  v8 = v7;

  if (!v8)
  {
    v12._countAndFlagsBits = v3;
    v12._object = v5;
    sub_1007A23D4(v12);
  }

  v9 = sub_1007A2214();

  return v9;
}

+ (BOOL)requiresURLFor:(id)a3
{
  v3 = sub_1007A2254();
  v5 = v4;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v3, v4);
  if (v6)
  {

    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v3, v5);
    v7 = 0x1E01Fu >> v8;
    if (v8 > 0x10u)
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7 & 1;
}

+ (id)stringForReturnToRootBarItemFor:(id)a3
{
  v3 = sub_1007A2254();
  v5 = v4;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v3, v4);
  if (v6)
  {

    sub_10047FA38(0xEu);
    if (v7)
    {
LABEL_3:
      v8 = sub_1007A2214();

      goto LABEL_8;
    }
  }

  else
  {
    v9 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v3, v5);
    if (v9 == 16)
    {
      v9 = 15;
    }

    sub_10047FA38(v9);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

+ (int64_t)tabTypeFor:(id)a3
{
  v3 = sub_1007A2254();
  v5 = _s5Books20RootBarItemsProviderC7tabType3for13BookAnalytics010BridgedTabG0OSS_tFZ_0(v3, v4);

  return v5;
}

+ (id)automationIdentifierFor:(id)a3
{
  v3 = sub_1007A2254();
  v5 = v4;
  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v3, v4);
  if (v6)
  {

    v7 = 14;
  }

  else
  {
    v7 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v3, v5);
    if (v7 == 16)
    {
      v7 = 15;
    }
  }

  sub_100480680(v7);
  v8 = sub_1007A2214();

  return v8;
}

- (BKRootBarItemsProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RootBarItemsProvider();
  return [(BKRootBarItemsProvider *)&v3 init];
}

@end