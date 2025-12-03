@interface VCReportingUpdateAndReportServices
- (VCReportingUpdateAndReportServices)initWithServiceBlock:(id)block needToUpdate:(BOOL)update needToReport:(BOOL)report;
- (void)dealloc;
@end

@implementation VCReportingUpdateAndReportServices

- (VCReportingUpdateAndReportServices)initWithServiceBlock:(id)block needToUpdate:(BOOL)update needToReport:(BOOL)report
{
  v11.receiver = self;
  v11.super_class = VCReportingUpdateAndReportServices;
  v8 = [(VCReportingUpdateAndReportServices *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_needToUpdate = update;
    v8->_needToReport = report;
    v8->_block = _Block_copy(block);
  }

  return v9;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  v4.receiver = self;
  v4.super_class = VCReportingUpdateAndReportServices;
  [(VCReportingUpdateAndReportServices *)&v4 dealloc];
}

@end