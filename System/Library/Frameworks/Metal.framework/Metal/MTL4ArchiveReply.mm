@interface MTL4ArchiveReply
- (MTL4ArchiveReply)initWithData:(id)data reflectionBlock:(id)block airScript:(id)script;
- (MTL4ArchiveReply)initWithError:(id)error;
- (void)dealloc;
@end

@implementation MTL4ArchiveReply

- (MTL4ArchiveReply)initWithData:(id)data reflectionBlock:(id)block airScript:(id)script
{
  v11.receiver = self;
  v11.super_class = MTL4ArchiveReply;
  v8 = [(MTL4ArchiveReply *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_errorMessage = 0;
    v8->_binary = data;
    v9->_reflectionBlock = block;
    v9->_airScript = script;
  }

  return v9;
}

- (MTL4ArchiveReply)initWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = MTL4ArchiveReply;
  v4 = [(MTL4ArchiveReply *)&v6 init];
  if (v4)
  {
    v4->_errorMessage = [error copy];
    v4->_reflectionBlock = 0;
    v4->_airScript = 0;
    v4->_binary = 0;
  }

  return v4;
}

- (void)dealloc
{
  errorMessage = self->_errorMessage;
  if (errorMessage)
  {
  }

  binary = self->_binary;
  if (binary)
  {
  }

  v5.receiver = self;
  v5.super_class = MTL4ArchiveReply;
  [(MTL4ArchiveReply *)&v5 dealloc];
}

@end