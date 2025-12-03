@interface HomeOutlineSectionBuilderStack
- (HomeOutlineSectionBuilderStack)initWithSectionIdentifier:(id)identifier sectionIndex:(int64_t)index;
- (IdentifierPath)topIdentifierPath;
- (id)parentItem;
- (int64_t)topIndex;
- (void)_pop;
- (void)_pushItem:(id)item index:(int64_t)index;
- (void)_setTopIdentifier:(id)identifier;
@end

@implementation HomeOutlineSectionBuilderStack

- (int64_t)topIndex
{
  lastObject = [(NSMutableArray *)self->_indices lastObject];
  integerValue = [lastObject integerValue];

  return integerValue;
}

- (IdentifierPath)topIdentifierPath
{
  lastObject = [(NSMutableArray *)self->_identifiers lastObject];
  v4 = [lastObject length];

  if (v4)
  {
    topIdentifierPath = self->_topIdentifierPath;
    if (!topIdentifierPath)
    {
      v6 = [IdentifierPath identifierPathWithIdentifiers:self->_identifiers];
      v7 = self->_topIdentifierPath;
      self->_topIdentifierPath = v6;

      topIdentifierPath = self->_topIdentifierPath;
    }

    v8 = topIdentifierPath;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)parentItem
{
  depth = self->_depth;
  if (depth >= 2)
  {
    v5 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:depth - 2, v2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_pop
{
  depth = self->_depth;
  if (depth >= 2)
  {
    self->_depth = depth - 1;
    [(NSMutableArray *)self->_items removeLastObject];
    [(NSMutableArray *)self->_identifiers removeLastObject];
    [(NSMutableArray *)self->_indices removeLastObject];
    topIdentifierPath = self->_topIdentifierPath;
    self->_topIdentifierPath = 0;
  }
}

- (void)_setTopIdentifier:(id)identifier
{
  depth = self->_depth;
  if (depth >= 2)
  {
    [(NSMutableArray *)self->_identifiers setObject:identifier atIndexedSubscript:depth - 1];
    topIdentifierPath = self->_topIdentifierPath;
    self->_topIdentifierPath = 0;
  }
}

- (void)_pushItem:(id)item index:(int64_t)index
{
  ++self->_depth;
  [(NSMutableArray *)self->_items addObject:item];
  [(NSMutableArray *)self->_identifiers addObject:&stru_1016631F0];
  indices = self->_indices;
  v7 = [NSNumber numberWithInteger:index];
  [(NSMutableArray *)indices addObject:v7];

  topIdentifierPath = self->_topIdentifierPath;
  self->_topIdentifierPath = 0;
}

- (HomeOutlineSectionBuilderStack)initWithSectionIdentifier:(id)identifier sectionIndex:(int64_t)index
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = HomeOutlineSectionBuilderStack;
  v7 = [(HomeOutlineSectionBuilderStack *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_depth = 1;
    v9 = +[NSNull null];
    v24 = v9;
    v10 = [NSArray arrayWithObjects:&v24 count:1];
    v11 = [NSMutableArray arrayWithArray:v10];
    items = v8->_items;
    v8->_items = v11;

    v23 = identifierCopy;
    v13 = [NSArray arrayWithObjects:&v23 count:1];
    v14 = [NSMutableArray arrayWithArray:v13];
    identifiers = v8->_identifiers;
    v8->_identifiers = v14;

    v16 = [NSNumber numberWithInteger:index];
    v22 = v16;
    v17 = [NSArray arrayWithObjects:&v22 count:1];
    v18 = [NSMutableArray arrayWithArray:v17];
    indices = v8->_indices;
    v8->_indices = v18;
  }

  return v8;
}

@end