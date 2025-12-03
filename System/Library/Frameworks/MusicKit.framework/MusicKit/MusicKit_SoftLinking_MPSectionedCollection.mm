@interface MusicKit_SoftLinking_MPSectionedCollection
- (BOOL)hasSameContentAsSectionedCollection:(id)collection;
- (BOOL)isEqual:(id)equal;
- (MusicKit_SoftLinking_MPSectionedCollection)init;
- (MusicKit_SoftLinking_MPSectionedCollection)initWithUnderlyingSectionedCollection:(id)collection;
- (id)identifiersForItemAtIndexPath:(id)path;
- (id)identifiersForSectionAtIndex:(int64_t)index;
- (id)itemAtIndexPathBlock;
- (id)sectionIdentifiersAtIndexBlock;
- (id)sectionItemAtIndexPathBlock;
- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)index usingBlock:(id)block;
- (void)enumerateItemIdentifiersUsingBlock:(id)block;
- (void)enumerateSectionIdentifiersUsingBlock:(id)block;
- (void)enumerateTitledSectionsUsingBlock:(id)block;
@end

@implementation MusicKit_SoftLinking_MPSectionedCollection

- (MusicKit_SoftLinking_MPSectionedCollection)init
{
  v8.receiver = self;
  v8.super_class = MusicKit_SoftLinking_MPSectionedCollection;
  v2 = [(MusicKit_SoftLinking_MPSectionedCollection *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMPSectionedCollectionClass_softClass;
    v13 = getMPSectionedCollectionClass_softClass;
    if (!getMPSectionedCollectionClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getMPSectionedCollectionClass_block_invoke;
      v9[3] = &unk_278229610;
      v9[4] = &v10;
      __getMPSectionedCollectionClass_block_invoke(v9);
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

- (MusicKit_SoftLinking_MPSectionedCollection)initWithUnderlyingSectionedCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPSectionedCollection;
  v6 = [(MusicKit_SoftLinking_MPSectionedCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingSectionedCollection, collection);
  }

  return v7;
}

- (id)sectionIdentifiersAtIndexBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__MusicKit_SoftLinking_MPSectionedCollection_sectionIdentifiersAtIndexBlock__block_invoke;
  aBlock[3] = &unk_278229E50;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (id)itemAtIndexPathBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__MusicKit_SoftLinking_MPSectionedCollection_itemAtIndexPathBlock__block_invoke;
  aBlock[3] = &unk_278229E78;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (id)sectionItemAtIndexPathBlock
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MusicKit_SoftLinking_MPSectionedCollection_sectionItemAtIndexPathBlock__block_invoke;
  aBlock[3] = &unk_278229E50;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

- (id)identifiersForSectionAtIndex:(int64_t)index
{
  v5 = [(MPSectionedCollection *)self->_underlyingSectionedCollection identifiersForSectionAtIndex:?];
  if (([v5 musicKit_hasValidIdentifier] & 1) == 0)
  {
    v6 = [(MPSectionedCollection *)self->_underlyingSectionedCollection sectionAtIndex:index];
    identifiers = [v6 identifiers];

    if (identifiers)
    {
      v8 = identifiers;

      v5 = v8;
    }
  }

  return v5;
}

- (id)identifiersForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MPSectionedCollection *)self->_underlyingSectionedCollection identifiersForItemAtIndexPath:pathCopy];
  if (([v5 musicKit_hasValidIdentifier] & 1) == 0)
  {
    v6 = [(MPSectionedCollection *)self->_underlyingSectionedCollection itemAtIndexPath:pathCopy];
    identifiers = [v6 identifiers];

    if (identifiers)
    {
      v8 = identifiers;

      v5 = v8;
    }
  }

  return v5;
}

- (void)enumerateItemIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__MusicKit_SoftLinking_MPSectionedCollection_enumerateItemIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_278229EA0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateItemIdentifiersUsingBlock:v7];
}

- (void)enumerateSectionIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__MusicKit_SoftLinking_MPSectionedCollection_enumerateSectionIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_278229EC8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateSectionIdentifiersUsingBlock:v7];
}

- (void)enumerateTitledSectionsUsingBlock:(id)block
{
  blockCopy = block;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__MusicKit_SoftLinking_MPSectionedCollection_enumerateTitledSectionsUsingBlock___block_invoke;
  v7[3] = &unk_278229EF0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateSectionsUsingBlock:v7];
}

- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)index usingBlock:(id)block
{
  blockCopy = block;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__MusicKit_SoftLinking_MPSectionedCollection_enumerateItemIdentifiersInSectionAtIndex_usingBlock___block_invoke;
  v9[3] = &unk_278229F18;
  v10 = blockCopy;
  indexCopy = index;
  v9[4] = self;
  v8 = blockCopy;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateItemIdentifiersInSectionAtIndex:index usingBlock:v9];
}

- (BOOL)hasSameContentAsSectionedCollection:(id)collection
{
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  _underlyingSectionedCollection = [collection _underlyingSectionedCollection];
  LOBYTE(underlyingSectionedCollection) = [(MPSectionedCollection *)underlyingSectionedCollection hasSameContentAsSectionedCollection:_underlyingSectionedCollection];

  return underlyingSectionedCollection;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if ([(MusicKit_SoftLinking_MPSectionedCollection *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    underlyingSectionedCollection = self->_underlyingSectionedCollection;
    _underlyingSectionedCollection = [(MusicKit_SoftLinking_MPSectionedCollection *)equalCopy _underlyingSectionedCollection];
    v7 = [(MPSectionedCollection *)underlyingSectionedCollection isEqual:_underlyingSectionedCollection];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end