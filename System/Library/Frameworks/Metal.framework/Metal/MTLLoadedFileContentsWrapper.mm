@interface MTLLoadedFileContentsWrapper
- (MTLLoadedFileContentsWrapper)initWithData:(id)data;
- (void)dealloc;
@end

@implementation MTLLoadedFileContentsWrapper

- (void)dealloc
{
  dispatch_release(self->_dispatchData);

  v3.receiver = self;
  v3.super_class = MTLLoadedFileContentsWrapper;
  [(MTLLoadedFileContentsWrapper *)&v3 dealloc];
}

- (MTLLoadedFileContentsWrapper)initWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = MTLLoadedFileContentsWrapper;
  v4 = [(MTLLoadedFileContentsWrapper *)&v7 init];
  if (v4)
  {
    dataCopy = data;
    v4->_sourceContents = dataCopy;
    v4->_dispatchData = _MTLNSDataToDispatchData(dataCopy, 0);
  }

  return v4;
}

@end