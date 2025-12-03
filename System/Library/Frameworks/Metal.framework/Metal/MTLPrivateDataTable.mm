@interface MTLPrivateDataTable
- (BOOL)getPrivateDataAndOffset:(id)offset privateData:(id *)data privateDataOffset:(unint64_t *)dataOffset;
- (MTLPrivateDataTable)init;
- (void)release;
- (void)setPrivateData:(id)data privateDataOffset:(unint64_t)offset logState:(id)state;
- (void)setReportBufferInPrivateData:(id)data privateDataOffset:(unint64_t)offset logState:(id)state;
@end

@implementation MTLPrivateDataTable

- (MTLPrivateDataTable)init
{
  v3.receiver = self;
  v3.super_class = MTLPrivateDataTable;
  return [(MTLPrivateDataTable *)&v3 init];
}

- (void)release
{
  v2.receiver = self;
  v2.super_class = MTLPrivateDataTable;
  [(MTLPrivateDataTable *)&v2 release];
}

- (BOOL)getPrivateDataAndOffset:(id)offset privateData:(id *)data privateDataOffset:(unint64_t *)dataOffset
{
  if (MTLGPUDebugEnabled())
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  *data = [offset newBufferWithLength:v8 options:0];
  *dataOffset = 0;
  return *data != 0;
}

- (void)setPrivateData:(id)data privateDataOffset:(unint64_t)offset logState:(id)state
{
  if (state)
  {
    v6 = *(state + 3);
    contents = [data contents];
    *(contents + offset) = [v6 gpuAddress];
  }
}

- (void)setReportBufferInPrivateData:(id)data privateDataOffset:(unint64_t)offset logState:(id)state
{
  if (*(state + 56) == 1)
  {
    v5 = *(state + 3);
    v6 = [data contents] + offset;
    *(v6 + 8) = [v5 gpuAddress];
  }
}

@end