@interface PHASEEnvironmentalMetadata
- (BOOL)isEqual:(id)a3;
- (NSArray)directionalElements;
- (PHASEEnvironmentalMetadata)init;
- (PHASEEnvironmentalMetadata)initWithData:(id)a3;
- (id)serializeToFormat:(int64_t)a3;
- (unint64_t)hash;
- (void)addDirectionalElement:(id)a3;
- (void)removeDirectionalElement:(id)a3;
- (void)setDirectionalElements:(id)a3;
@end

@implementation PHASEEnvironmentalMetadata

- (PHASEEnvironmentalMetadata)init
{
  v6.receiver = self;
  v6.super_class = PHASEEnvironmentalMetadata;
  v2 = [(PHASEEnvironmentalMetadata *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    internalDirectionalElements = v2->_internalDirectionalElements;
    v2->_internalDirectionalElements = v3;
  }

  return v2;
}

- (PHASEEnvironmentalMetadata)initWithData:(id)a3
{
  v7.receiver = self;
  v7.super_class = PHASEEnvironmentalMetadata;
  v3 = [(PHASEEnvironmentalMetadata *)&v7 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    internalDirectionalElements = v3->_internalDirectionalElements;
    v3->_internalDirectionalElements = v4;
  }

  return v3;
}

- (void)addDirectionalElement:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = self->_internalDirectionalElements;
    objc_sync_enter(v4);
    if ([(NSMutableArray *)self->_internalDirectionalElements containsObject:v5])
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement already exists in directionalElements."];
    }

    [(NSMutableArray *)self->_internalDirectionalElements addObject:v5];
    objc_sync_exit(v4);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement is nil."];
  }
}

- (void)removeDirectionalElement:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = self->_internalDirectionalElements;
    objc_sync_enter(v4);
    if (([(NSMutableArray *)self->_internalDirectionalElements containsObject:v5]& 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement does not exist in directionalElements."];
    }

    [(NSMutableArray *)self->_internalDirectionalElements removeObject:v5];
    objc_sync_exit(v4);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"directionalElement is nil."];
  }
}

- (void)setDirectionalElements:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
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

- (id)serializeToFormat:(int64_t)a3
{
  v5 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:1];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(PHASEEnvironmentalMetadata *)self directionalElements];
      if (v7 || ([(PHASEEnvironmentalMetadata *)v6 directionalElements], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(PHASEEnvironmentalMetadata *)self directionalElements];
        v9 = [(PHASEEnvironmentalMetadata *)v6 directionalElements];
        v10 = [v8 isEqualToArray:v9];

        if (v7)
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
  v2 = [(PHASEEnvironmentalMetadata *)self directionalElements];
  v3 = [v2 hash];

  return v3;
}

@end