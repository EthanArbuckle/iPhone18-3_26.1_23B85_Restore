@interface NSConcretePipe
- (NSConcretePipe)init;
- (id)fileHandleForReading;
- (id)fileHandleForWriting;
- (void)_closeOnDealloc;
- (void)dealloc;
@end

@implementation NSConcretePipe

- (NSConcretePipe)init
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSConcretePipe;
  v2 = [(NSPipe *)&v12 init];
  if (v2)
  {
    if (pipe(v13) < 0)
    {
      v11 = v2;
      v7 = &v11;
      goto LABEL_8;
    }

    v3 = objc_allocWithZone(NSConcreteFileHandle);
    v4 = [v3 initWithFileDescriptor:v13[0] closeOnDealloc:1];
    v2->_readHandle = v4;
    if (!v4)
    {
      close(v13[0]);
      close(v13[1]);
      v10.receiver = v2;
      v7 = &v10;
      goto LABEL_8;
    }

    v5 = objc_allocWithZone(NSConcreteFileHandle);
    v6 = [v5 initWithFileDescriptor:v13[1] closeOnDealloc:1];
    v2->_writeHandle = v6;
    if (!v6)
    {

      close(v13[1]);
      v9 = v2;
      v7 = &v9;
LABEL_8:
      v7->super_class = NSConcretePipe;
      [(objc_super *)v7 dealloc];
      return 0;
    }
  }

  return v2;
}

- (id)fileHandleForWriting
{
  v2 = self->_writeHandle;

  return v2;
}

- (id)fileHandleForReading
{
  v2 = self->_readHandle;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcretePipe;
  [(NSConcretePipe *)&v3 dealloc];
}

- (void)_closeOnDealloc
{
  [(NSFileHandle *)self->_writeHandle _closeOnDealloc];
  readHandle = self->_readHandle;

  [(NSFileHandle *)readHandle _closeOnDealloc];
}

@end