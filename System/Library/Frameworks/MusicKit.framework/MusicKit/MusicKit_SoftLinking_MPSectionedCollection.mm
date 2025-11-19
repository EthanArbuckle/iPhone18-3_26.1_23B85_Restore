@interface MusicKit_SoftLinking_MPSectionedCollection
- (BOOL)hasSameContentAsSectionedCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MusicKit_SoftLinking_MPSectionedCollection)init;
- (MusicKit_SoftLinking_MPSectionedCollection)initWithUnderlyingSectionedCollection:(id)a3;
- (id)identifiersForItemAtIndexPath:(id)a3;
- (id)identifiersForSectionAtIndex:(int64_t)a3;
- (id)itemAtIndexPathBlock;
- (id)sectionIdentifiersAtIndexBlock;
- (id)sectionItemAtIndexPathBlock;
- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4;
- (void)enumerateItemIdentifiersUsingBlock:(id)a3;
- (void)enumerateSectionIdentifiersUsingBlock:(id)a3;
- (void)enumerateTitledSectionsUsingBlock:(id)a3;
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

- (MusicKit_SoftLinking_MPSectionedCollection)initWithUnderlyingSectionedCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPSectionedCollection;
  v6 = [(MusicKit_SoftLinking_MPSectionedCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingSectionedCollection, a3);
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

- (id)identifiersForSectionAtIndex:(int64_t)a3
{
  v5 = [(MPSectionedCollection *)self->_underlyingSectionedCollection identifiersForSectionAtIndex:?];
  if (([v5 musicKit_hasValidIdentifier] & 1) == 0)
  {
    v6 = [(MPSectionedCollection *)self->_underlyingSectionedCollection sectionAtIndex:a3];
    v7 = [v6 identifiers];

    if (v7)
    {
      v8 = v7;

      v5 = v8;
    }
  }

  return v5;
}

- (id)identifiersForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedCollection *)self->_underlyingSectionedCollection identifiersForItemAtIndexPath:v4];
  if (([v5 musicKit_hasValidIdentifier] & 1) == 0)
  {
    v6 = [(MPSectionedCollection *)self->_underlyingSectionedCollection itemAtIndexPath:v4];
    v7 = [v6 identifiers];

    if (v7)
    {
      v8 = v7;

      v5 = v8;
    }
  }

  return v5;
}

- (void)enumerateItemIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__MusicKit_SoftLinking_MPSectionedCollection_enumerateItemIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_278229EA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateItemIdentifiersUsingBlock:v7];
}

- (void)enumerateSectionIdentifiersUsingBlock:(id)a3
{
  v4 = a3;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__MusicKit_SoftLinking_MPSectionedCollection_enumerateSectionIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_278229EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateSectionIdentifiersUsingBlock:v7];
}

- (void)enumerateTitledSectionsUsingBlock:(id)a3
{
  v4 = a3;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__MusicKit_SoftLinking_MPSectionedCollection_enumerateTitledSectionsUsingBlock___block_invoke;
  v7[3] = &unk_278229EF0;
  v8 = v4;
  v6 = v4;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateSectionsUsingBlock:v7];
}

- (void)enumerateItemIdentifiersInSectionAtIndex:(int64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__MusicKit_SoftLinking_MPSectionedCollection_enumerateItemIdentifiersInSectionAtIndex_usingBlock___block_invoke;
  v9[3] = &unk_278229F18;
  v10 = v6;
  v11 = a3;
  v9[4] = self;
  v8 = v6;
  [(MPSectionedCollection *)underlyingSectionedCollection enumerateItemIdentifiersInSectionAtIndex:a3 usingBlock:v9];
}

- (BOOL)hasSameContentAsSectionedCollection:(id)a3
{
  underlyingSectionedCollection = self->_underlyingSectionedCollection;
  v4 = [a3 _underlyingSectionedCollection];
  LOBYTE(underlyingSectionedCollection) = [(MPSectionedCollection *)underlyingSectionedCollection hasSameContentAsSectionedCollection:v4];

  return underlyingSectionedCollection;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else if ([(MusicKit_SoftLinking_MPSectionedCollection *)v4 isMemberOfClass:objc_opt_class()])
  {
    underlyingSectionedCollection = self->_underlyingSectionedCollection;
    v6 = [(MusicKit_SoftLinking_MPSectionedCollection *)v4 _underlyingSectionedCollection];
    v7 = [(MPSectionedCollection *)underlyingSectionedCollection isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end