@interface MusicKit_SoftLinking_MPMutableSectionedCollection
- (MusicKit_SoftLinking_MPMutableSectionedCollection)init;
- (MusicKit_SoftLinking_MPMutableSectionedCollection)initWithUnderlyingSectionedCollection:(id)collection;
- (void)appendItem:(id)item;
- (void)appendItems:(id)items;
- (void)appendSection:(id)section;
@end

@implementation MusicKit_SoftLinking_MPMutableSectionedCollection

- (MusicKit_SoftLinking_MPMutableSectionedCollection)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPMutableSectionedCollection;
  v2 = [(MusicKit_SoftLinking_MPSectionedCollection *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPMutableSectionedCollectionClass_softClass_0;
    v13 = getMPMutableSectionedCollectionClass_softClass_0;
    if (!getMPMutableSectionedCollectionClass_softClass_0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getMPMutableSectionedCollectionClass_block_invoke_0;
      v9[3] = &unk_278229610;
      v9[4] = &v10;
      __getMPMutableSectionedCollectionClass_block_invoke_0(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    underlyingSectionedCollection = v2->_underlyingSectionedCollection;
    v2->_underlyingSectionedCollection = v5;
  }

  return v2;
}

- (MusicKit_SoftLinking_MPMutableSectionedCollection)initWithUnderlyingSectionedCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPMutableSectionedCollection;
  v6 = [(MusicKit_SoftLinking_MPSectionedCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingSectionedCollection, collection);
  }

  return v7;
}

- (void)appendSection:(id)section
{
  sectionCopy = section;
  underlyingObject = sectionCopy;
  if ([sectionCopy conformsToProtocol:&unk_28298E028])
  {
    underlyingObject = [sectionCopy underlyingObject];
  }

  [(MPMutableSectionedCollection *)self->_underlyingSectionedCollection appendSection:underlyingObject];
}

- (void)appendItem:(id)item
{
  itemCopy = item;
  underlyingObject = itemCopy;
  if ([itemCopy conformsToProtocol:&unk_28298E028])
  {
    underlyingObject = [itemCopy underlyingObject];
  }

  [(MPMutableSectionedCollection *)self->_underlyingSectionedCollection appendItem:underlyingObject];
}

- (void)appendItems:(id)items
{
  v4 = [items msv_map:&__block_literal_global_7];
  [(MPMutableSectionedCollection *)self->_underlyingSectionedCollection appendItems:v4];
}

@end