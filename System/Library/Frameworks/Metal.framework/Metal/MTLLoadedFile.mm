@interface MTLLoadedFile
- (MTLLoadedFile)initWithData:(id)data parent:(void *)parent;
- (void)dealloc;
@end

@implementation MTLLoadedFile

- (void)dealloc
{
  if (self->_isCached)
  {
    LoaderGlobalState::deallocFile(self->_parent, self);
  }

  v3.receiver = self;
  v3.super_class = MTLLoadedFile;
  [(MTLLoadedFile *)&v3 dealloc];
}

- (MTLLoadedFile)initWithData:(id)data parent:(void *)parent
{
  v9.receiver = self;
  v9.super_class = MTLLoadedFile;
  v6 = [(MTLLoadedFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_fileData = data;
    v6->_parent = parent;
  }

  else
  {
  }

  return v7;
}

@end