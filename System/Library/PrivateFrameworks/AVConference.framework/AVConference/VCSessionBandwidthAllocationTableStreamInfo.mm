@interface VCSessionBandwidthAllocationTableStreamInfo
- (BOOL)addTableEntry:(id)a3;
- (VCSessionBandwidthAllocationTableStreamInfo)init;
- (id)entryForQualityIndex:(unsigned int)a3;
- (void)dealloc;
@end

@implementation VCSessionBandwidthAllocationTableStreamInfo

- (VCSessionBandwidthAllocationTableStreamInfo)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCSessionBandwidthAllocationTableStreamInfo;
  v2 = [(VCSessionBandwidthAllocationTableStreamInfo *)&v4 init];
  if (v2)
  {
    v2->_sortedEntries = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_qualityIndexToTableEntry = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionBandwidthAllocationTableStreamInfo;
  [(VCSessionBandwidthAllocationTableStreamInfo *)&v3 dealloc];
}

- (BOOL)addTableEntry:(id)a3
{
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_qualityIndexToTableEntry, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "qualityIndex")}]);
  if (!v5)
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_qualityIndexToTableEntry, "setObject:forKeyedSubscript:", a3, [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "qualityIndex")}]);
    [(NSMutableArray *)self->_sortedEntries addObject:a3];
    [(NSMutableArray *)self->_sortedEntries sortUsingComparator:&__block_literal_global_114];
  }

  return v5 == 0;
}

uint64_t __61__VCSessionBandwidthAllocationTableStreamInfo_addTableEntry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 qualityIndex];
  if (v5 < [a3 qualityIndex])
  {
    return -1;
  }

  v7 = [a2 qualityIndex];
  return v7 > [a3 qualityIndex];
}

- (id)entryForQualityIndex:(unsigned int)a3
{
  qualityIndexToTableEntry = self->_qualityIndexToTableEntry;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&a3];

  return [(NSMutableDictionary *)qualityIndexToTableEntry objectForKeyedSubscript:v4];
}

@end