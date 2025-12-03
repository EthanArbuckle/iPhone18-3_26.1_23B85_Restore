@interface CNEntitySpotlightIndexing
+ (void)associateAttributeSet:(id)set withContactEntityIdentifiedBy:(id)by;
@end

@implementation CNEntitySpotlightIndexing

+ (void)associateAttributeSet:(id)set withContactEntityIdentifiedBy:(id)by
{
  setCopy = set;
  byCopy = by;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getLNSpotlightAppEntityMapperClass_softClass;
  v17 = getLNSpotlightAppEntityMapperClass_softClass;
  if (!getLNSpotlightAppEntityMapperClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getLNSpotlightAppEntityMapperClass_block_invoke;
    v13[3] = &unk_1E7412110;
    v13[4] = &v14;
    __getLNSpotlightAppEntityMapperClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = +[_TtC8Contacts33CNContactEntityIdentifierProvider EntityTypeIdentifier];
  displayName = [setCopy displayName];
  v11 = displayName;
  if (displayName)
  {
    v12 = displayName;
  }

  else
  {
    v12 = &stru_1F094DAB0;
  }

  [v7 tagCSSearchableItem:setCopy entityInstanceIdentifier:byCopy typeIdentifier:v9 displayTitle:v12 displaySubtitle:0 displaySynonyms:0 typeDisplayName:0 typeDisplaySynonyms:0 propertyDictionary:0 priority:&unk_1F0987210];
}

@end