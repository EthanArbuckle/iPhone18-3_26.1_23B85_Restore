@interface MLCRNNCPUDeviceOps
- (void)dealloc;
@end

@implementation MLCRNNCPUDeviceOps

- (void)dealloc
{
  weightsMomentumData = [(MLCCPUDeviceOps *)self weightsMomentumData];
  v4 = [weightsMomentumData count];

  if (v4)
  {
    v5 = 0;
    do
    {
      weightsMomentumData2 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v7 = [weightsMomentumData2 objectAtIndexedSubscript:v5];
      bytes = [v7 bytes];

      v9 = *(bytes + 136);
      if (v9)
      {
        free(v9);
      }

      ++v5;
      weightsMomentumData3 = [(MLCCPUDeviceOps *)self weightsMomentumData];
      v11 = [weightsMomentumData3 count];
    }

    while (v5 < v11);
  }

  v12.receiver = self;
  v12.super_class = MLCRNNCPUDeviceOps;
  [(MLCCPUDeviceOps *)&v12 dealloc];
}

@end