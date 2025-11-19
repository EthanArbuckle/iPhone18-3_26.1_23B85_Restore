@interface MTLResourceList
- (MTLResourceList)initWithCapacity:(int)a3;
- (void)dealloc;
- (void)releaseAllObjectsAndReset;
@end

@implementation MTLResourceList

- (void)releaseAllObjectsAndReset
{
  nextChunk = self->_listPriv.currentChunk.nextChunk;
  if (nextChunk)
  {
    do
    {
      v4 = nextChunk->nextChunk;
      MTLResourceListChunkFreeEntries(nextChunk);
      free(nextChunk);
      nextChunk = v4;
    }

    while (v4);
  }

  MTLResourceListChunkFreeEntries(&self->_listPriv.currentChunk);
  self->_listPriv.currentChunk.currentEntry = 0;
  self->_listPriv.currentChunk.nextChunk = 0;
  hopInfo = self->_listPriv.hopInfo;
  if (hopInfo)
  {
    bzero(hopInfo, 4 * self->_listPriv.hashSize);
  }

  usedInfo = self->_listPriv.usedInfo;
  if (usedInfo)
  {
    v7 = self->_listPriv.hashSize >> 3;

    bzero(usedInfo, v7);
  }
}

- (MTLResourceList)initWithCapacity:(int)a3
{
  v7.receiver = self;
  v7.super_class = MTLResourceList;
  v4 = [(MTLResourceList *)&v7 init];
  *&v4->_listPriv.hashSize = 0xB00000800;
  v4->_listPriv.hopInfo = v4->_defaultHopInfo;
  v4->_listPriv.hashTable = v4->_defaultHashTable;
  v4->_listPriv.usedInfo = v4->_defaultUsedInfo;
  v4->_listPriv.chunkEntryCapacity = a3;
  v4->_listPriv.currentChunk.currentEntry = 0;
  v4->_listPriv.currentChunk.nextChunk = 0;
  v5 = malloc_type_malloc(8 * a3 + 24, 0x1030040B05087B7uLL);
  *v5 = 0;
  v5[1] = v5 + 3;
  v5[2] = 0;
  v4->_listPriv.currentChunk.entries = v5 + 3;
  return v4;
}

- (void)dealloc
{
  hashTable = self->_listPriv.hashTable;
  if (hashTable != self->_defaultHashTable)
  {
    free(hashTable);
  }

  hopInfo = self->_listPriv.hopInfo;
  if (hopInfo != self->_defaultHopInfo)
  {
    free(hopInfo);
  }

  usedInfo = self->_listPriv.usedInfo;
  if (usedInfo != self->_defaultUsedInfo)
  {
    free(usedInfo);
  }

  self->_listPriv.usedInfo = 0;
  self->_listPriv.hopInfo = 0;
  [(MTLResourceList *)self releaseAllObjectsAndReset];
  free(self->_listPriv.currentChunk.entries - 3);
  v6.receiver = self;
  v6.super_class = MTLResourceList;
  [(MTLResourceList *)&v6 dealloc];
}

@end