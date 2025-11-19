@interface MTLPrivateDataTable
- (BOOL)getPrivateDataAndOffset:(id)a3 privateData:(id *)a4 privateDataOffset:(unint64_t *)a5;
- (MTLPrivateDataTable)init;
- (void)release;
- (void)setPrivateData:(id)a3 privateDataOffset:(unint64_t)a4 logState:(id)a5;
- (void)setReportBufferInPrivateData:(id)a3 privateDataOffset:(unint64_t)a4 logState:(id)a5;
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

- (BOOL)getPrivateDataAndOffset:(id)a3 privateData:(id *)a4 privateDataOffset:(unint64_t *)a5
{
  if (MTLGPUDebugEnabled())
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  *a4 = [a3 newBufferWithLength:v8 options:0];
  *a5 = 0;
  return *a4 != 0;
}

- (void)setPrivateData:(id)a3 privateDataOffset:(unint64_t)a4 logState:(id)a5
{
  if (a5)
  {
    v6 = *(a5 + 3);
    v7 = [a3 contents];
    *(v7 + a4) = [v6 gpuAddress];
  }
}

- (void)setReportBufferInPrivateData:(id)a3 privateDataOffset:(unint64_t)a4 logState:(id)a5
{
  if (*(a5 + 56) == 1)
  {
    v5 = *(a5 + 3);
    v6 = [a3 contents] + a4;
    *(v6 + 8) = [v5 gpuAddress];
  }
}

@end