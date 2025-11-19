@interface MTLLoadedFileContentsWrapper
- (MTLLoadedFileContentsWrapper)initWithData:(id)a3;
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

- (MTLLoadedFileContentsWrapper)initWithData:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLLoadedFileContentsWrapper;
  v4 = [(MTLLoadedFileContentsWrapper *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->_sourceContents = v5;
    v4->_dispatchData = _MTLNSDataToDispatchData(v5, 0);
  }

  return v4;
}

@end