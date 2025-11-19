@interface AVOutputDeviceFrecentsWriter
- (AVOutputDeviceFrecentsWriter)initWithFrecentsFilePath:(id)a3;
- (BOOL)persistToDiskReturningError:(id *)a3;
- (void)dealloc;
@end

@implementation AVOutputDeviceFrecentsWriter

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceFrecentsWriter;
  [(AVOutputDeviceFrecentsWriter *)&v3 dealloc];
}

- (AVOutputDeviceFrecentsWriter)initWithFrecentsFilePath:(id)a3
{
  v8.receiver = self;
  v8.super_class = AVOutputDeviceFrecentsWriter;
  v4 = [(AVOutputDeviceFrecentsWriter *)&v8 init];
  if (v4 && (v5 = [a3 copy], (v4->_frecentsFilePath = v5) != 0))
  {
    v4->_frecents = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)persistToDiskReturningError:(id *)a3
{
  v7 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:self->_frecents format:200 options:0 error:&v7];
  if (v5)
  {
    LOBYTE(v5) = [v5 writeToFile:self->_frecentsFilePath options:0 error:&v7];
  }

  if (a3 && (v5 & 1) == 0)
  {
    *a3 = v7;
  }

  return v5;
}

@end