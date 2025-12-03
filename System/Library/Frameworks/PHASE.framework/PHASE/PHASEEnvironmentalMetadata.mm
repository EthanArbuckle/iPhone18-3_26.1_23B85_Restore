@interface PHASEEnvironmentalMetadata
- (BOOL)isEqual:(id)equal;
- (NSArray)directionalElements;
- (PHASEEnvironmentalMetadata)init;
- (PHASEEnvironmentalMetadata)initWithData:(id)data;
- (id)serializeToFormat:(int64_t)format;
- (unint64_t)hash;
- (void)addDirectionalElement:(id)element;
- (void)removeDirectionalElement:(id)element;
- (void)setDirectionalElements:(id)elements;
@end

@implementation PHASEEnvironmentalMetadata

- (PHASEEnvironmentalMetadata)init
{
  v6.receiver = self;
  v6.super_class = PHASEEnvironmentalMetadata;
  v2 = [(PHASEEnvironmentalMetadata *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    internalDirectionalElements = v2->_internalDirectionalElements;
    v2->_internalDirectionalElements = array;
  }

  return v2;
}

- (PHASEEnvironmentalMetadata)initWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = PHASEEnvironmentalMetadata;
  v3 = [(PHASEEnvironmentalMetadata *)&v7 init];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    internalDirectionalElements = v3->_internalDirectionalElements;
    v3->_internalDirectionalElements = array;
  }

  return v3;
}

- (void)addDirectionalElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v4 = self->_internalDirectionalElements;
    objc_sync_enter(v4);
    if ([(NSMutableArray *)self->_internalDirectionalElements containsObject:elementCopy])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement already exists in directionalElements."];
    }

    [(NSMutableArray *)self->_internalDirectionalElements addObject:elementCopy];
    objc_sync_exit(v4);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement is nil."];
  }
}

- (void)removeDirectionalElement:(id)element
{
  elementCopy = element;
  if (elementCopy)
  {
    v4 = self->_internalDirectionalElements;
    objc_sync_enter(v4);
    if (([(NSMutableArray *)self->_internalDirectionalElements containsObject:elementCopy]& 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement does not exist in directionalElements."];
    }

    [(NSMutableArray *)self->_internalDirectionalElements removeObject:elementCopy];
    objc_sync_exit(v4);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement is nil."];
  }
}

- (void)setDirectionalElements:(id)elements
{
  elementsCopy = elements;
  v10 = elementsCopy;
  if (elementsCopy)
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(elementsCopy, "count")}];
    v6 = 0;
    v7 = *MEMORY[0x277CBE660];
    while (1)
    {
      if (v6 >= [v10 count])
      {
        v9 = self->_internalDirectionalElements;
        objc_sync_enter(v9);
        [(NSMutableArray *)self->_internalDirectionalElements setArray:v10];
        objc_sync_exit(v9);

        goto LABEL_11;
      }

      v8 = [v10 objectAtIndexedSubscript:v6];
      if (!v8)
      {
        break;
      }

      if ([v5 containsObject:v8])
      {
        [MEMORY[0x277CBEAD8] raise:v7 format:{@"directionalElements[%lu] is a duplicate entry.", v6}];
      }

      [v5 addObject:v8];

      ++v6;
    }

    [MEMORY[0x277CBEAD8] raise:v7 format:{@"directionalElements[%lu] is nil.", v6}];
LABEL_11:
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElements is nil."];
  }
}

- (NSArray)directionalElements
{
  v3 = self->_internalDirectionalElements;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_internalDirectionalElements copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)serializeToFormat:(int64_t)format
{
  v5 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:1];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      directionalElements = [(PHASEEnvironmentalMetadata *)self directionalElements];
      if (directionalElements || ([(PHASEEnvironmentalMetadata *)v6 directionalElements], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        directionalElements2 = [(PHASEEnvironmentalMetadata *)self directionalElements];
        directionalElements3 = [(PHASEEnvironmentalMetadata *)v6 directionalElements];
        v10 = [directionalElements2 isEqualToArray:directionalElements3];

        if (directionalElements)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_11;
    }

    v10 = 0;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  directionalElements = [(PHASEEnvironmentalMetadata *)self directionalElements];
  v3 = [directionalElements hash];

  return v3;
}

@end