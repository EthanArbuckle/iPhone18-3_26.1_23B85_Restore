@interface MLCRNNCPUDeviceOps
- (void)dealloc;
@end

@implementation MLCRNNCPUDeviceOps

- (void)dealloc
{
  v3 = [(MLCCPUDeviceOps *)self weightsMomentumData];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v7 = [v6 objectAtIndexedSubscript:v5];
      v8 = [v7 bytes];

      v9 = *(v8 + 136);
      if (v9)
      {
        free(v9);
      }

      ++v5;
      v10 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v11 = [v10 count];
    }

    while (v5 < v11);
  }

  v12.receiver = self;
  v12.super_class = MLCRNNCPUDeviceOps;
  [(MLCCPUDeviceOps *)&v12 dealloc];
}

@end