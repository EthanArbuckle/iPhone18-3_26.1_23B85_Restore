@interface ATFileBuffer
- (ATFileBuffer)init;
- (id)readDataOfLength:(unint64_t)length;
- (void)appendData:(id)data;
- (void)rewind:(unint64_t)rewind;
- (void)rewindData:(id)data;
@end

@implementation ATFileBuffer

- (void)rewind:(unint64_t)rewind
{
  currentReadLocation = self->_currentReadLocation;
  v4 = currentReadLocation >= rewind;
  v5 = currentReadLocation - rewind;
  if (!v4)
  {
    v5 = 0;
  }

  self->_currentReadLocation = v5;
}

- (id)readDataOfLength:(unint64_t)length
{
  [(NSFileHandle *)self->_bufferFileHandle seekToFileOffset:self->_currentReadLocation];
  v5 = [(NSFileHandle *)self->_bufferFileHandle readDataOfLength:length];
  self->_currentReadLocation += [v5 length];
  v6 = self->_length - [v5 length];
  self->_length = v6;
  if (!v6)
  {
    [(NSFileHandle *)self->_bufferFileHandle truncateFileAtOffset:0];
    self->_currentReadLocation = 0;
  }

  [(NSFileHandle *)self->_bufferFileHandle seekToEndOfFile];

  return v5;
}

- (void)rewindData:(id)data
{
  if (self->_currentReadLocation)
  {
    self->_currentReadLocation -= [data length];
  }

  else
  {

    [(ATFileBuffer *)self appendData:data];
  }
}

- (void)appendData:(id)data
{
  bufferFileHandle = self->_bufferFileHandle;
  dataCopy = data;
  [(NSFileHandle *)bufferFileHandle writeData:dataCopy];
  v6 = [dataCopy length];

  self->_length += v6;
}

- (ATFileBuffer)init
{
  v8.receiver = self;
  v8.super_class = ATFileBuffer;
  v2 = [(ATFileBuffer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCA9F8]);
    v4 = tmpfile();
    v5 = [v3 initWithFileDescriptor:fileno(v4) closeOnDealloc:1];
    bufferFileHandle = v2->_bufferFileHandle;
    v2->_bufferFileHandle = v5;
  }

  return v2;
}

@end