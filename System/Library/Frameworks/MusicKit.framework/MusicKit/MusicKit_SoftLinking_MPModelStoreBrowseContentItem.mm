@interface MusicKit_SoftLinking_MPModelStoreBrowseContentItem
+ (int64_t)_genericObjectTypeForItemType:(unint64_t)type;
- (MusicKit_SoftLinking_MPModelObject)innerObject;
- (MusicKit_SoftLinking_MPModelStoreBrowseContentItem)initWithInnerObject:(id)object;
@end

@implementation MusicKit_SoftLinking_MPModelStoreBrowseContentItem

- (MusicKit_SoftLinking_MPModelStoreBrowseContentItem)initWithInnerObject:(id)object
{
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelStoreBrowseContentItem;
  v5 = [(MusicKit_SoftLinking_MPModelStoreBrowseContentItem *)&v20 init];
  if (v5)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v6 = getMPModelStoreBrowseContentItemClass_softClass_2;
    v25 = getMPModelStoreBrowseContentItemClass_softClass_2;
    if (!getMPModelStoreBrowseContentItemClass_softClass_2)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __getMPModelStoreBrowseContentItemClass_block_invoke_2;
      v21[3] = &unk_278229610;
      v21[4] = &v22;
      __getMPModelStoreBrowseContentItemClass_block_invoke_2(v21);
      v6 = v23[3];
    }

    v7 = v6;
    _Block_object_dispose(&v22, 8);
    v8 = [v6 alloc];
    underlyingObject = [objectCopy underlyingObject];
    identifiers = [underlyingObject identifiers];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __74__MusicKit_SoftLinking_MPModelStoreBrowseContentItem_initWithInnerObject___block_invoke;
    v18 = &unk_27822A128;
    v19 = objectCopy;
    v11 = [v8 initWithIdentifiers:identifiers block:&v15];

    if (![v11 itemType])
    {

      v13 = 0;
      goto LABEL_8;
    }

    underlyingItem = v5->_underlyingItem;
    v5->_underlyingItem = v11;
  }

  v13 = v5;
LABEL_8:

  return v13;
}

- (MusicKit_SoftLinking_MPModelObject)innerObject
{
  v3 = [MusicKit_SoftLinking_MPModelObject alloc];
  innerObject = [(MPModelStoreBrowseContentItem *)self->_underlyingItem innerObject];
  v5 = [(MusicKit_SoftLinking_MPModelObject *)v3 initWithUnderlyingModelObject:innerObject];

  return v5;
}

+ (int64_t)_genericObjectTypeForItemType:(unint64_t)type
{
  if (type - 1 > 0xE)
  {
    return 0;
  }

  else
  {
    return qword_2177565D0[type - 1];
  }
}

@end