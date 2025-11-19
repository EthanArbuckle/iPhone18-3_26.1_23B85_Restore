@interface WKNSData
- (void)dealloc;
@end

@implementation WKNSData

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    CFRetain(*&self->_data.m_storage.data[8]);
    (**self->_data.m_storage.data)(&self->_data);
    CFRelease(*&self->_data.m_storage.data[8]);
    v4.receiver = self;
    v4.super_class = WKNSData;
    [(WKNSData *)&v4 dealloc];
  }
}

@end