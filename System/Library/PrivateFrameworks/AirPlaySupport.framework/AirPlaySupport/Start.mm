@interface Start
@end

@implementation Start

void __dataSource_Start_block_invoke(uint64_t a1)
{
  if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 32);
    LogPrintF();
  }

  v2 = *(a1 + 32);

  dataSource_updateDevicePSGInfos(v2, 1);
}

@end