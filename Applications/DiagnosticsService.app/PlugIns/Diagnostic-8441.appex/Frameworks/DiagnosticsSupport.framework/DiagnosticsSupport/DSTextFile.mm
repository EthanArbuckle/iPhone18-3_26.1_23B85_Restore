@interface DSTextFile
+ (id)textFileWithPath:(id)path;
- (BOOL)advanceToNextLine:(id *)line;
- (BOOL)searchForNextLineFromCurrentPosition:(id *)position;
- (DSTextFile)initWithFilePath:(id)path withBufferSize:(unint64_t)size;
- (id)extractLine:(unint64_t)line;
- (id)readDataOfLength:(unint64_t)length;
- (unint64_t)currentOffset;
- (unint64_t)getOffsetAtLineIndex:(unint64_t)index;
- (void)enumerateUsingBlock:(id)block;
- (void)resetEnumerator;
- (void)seekToBeginning;
- (void)seekToOffset:(unint64_t)offset;
@end

@implementation DSTextFile

- (DSTextFile)initWithFilePath:(id)path withBufferSize:(unint64_t)size
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = DSTextFile;
  v7 = [(DSTextFile *)&v17 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [NSFileHandle fileHandleForReadingAtPath:pathCopy];
  fileHandle = v7->_fileHandle;
  v7->_fileHandle = v8;

  if (v7->_fileHandle)
  {
    v7->_bufferSize = size;
    v10 = [NSMutableArray arrayWithObject:&off_1EDD0];
    linePositions = v7->_linePositions;
    v7->_linePositions = v10;

    v12 = [NSData dataWithBytes:&kDALineBreak length:1];
    lineBreak = v7->_lineBreak;
    v7->_lineBreak = v12;

    v7->_isEnumerating = 0;
    v7->_skipCount = 0;
    v7->_currentLineIndex = 0;
LABEL_4:
    v14 = v7;
    goto LABEL_8;
  }

  v15 = DiagnosticLogHandleForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [DSTextFile initWithFilePath:pathCopy withBufferSize:v15];
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)enumerateUsingBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  [(DSTextFile *)self setIsEnumerating:1];
  do
  {
    if ([(DSTextFile *)self skipCount])
    {
      v5 = [(DSTextFile *)self advanceToNextLine:0];
      [(DSTextFile *)self setSkipCount:[(DSTextFile *)self skipCount]- 1];
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v10 = 0;
      v5 = [(DSTextFile *)self advanceToNextLine:&v10];
      v7 = v10;
      v8 = [[NSString alloc] initWithData:v7 encoding:4];

      objc_autoreleasePoolPop(v6);
      v9 = objc_loadWeakRetained(&location);
      blockCopy[2](blockCopy, v8, v9, [(DSTextFile *)self currentLineIndex]);
    }
  }

  while (([(DSTextFile *)self isEnumerating]& v5 & 1) != 0);
  [(DSTextFile *)self resetEnumerator];
  objc_destroyWeak(&location);
}

+ (id)textFileWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithFilePath:pathCopy];

  return v5;
}

- (id)readDataOfLength:(unint64_t)length
{
  fileHandle = [(DSTextFile *)self fileHandle];
  v5 = [fileHandle readDataOfLength:length];

  return v5;
}

- (unint64_t)currentOffset
{
  fileHandle = [(DSTextFile *)self fileHandle];
  offsetInFile = [fileHandle offsetInFile];

  return offsetInFile;
}

- (void)seekToBeginning
{
  fileHandle = [(DSTextFile *)self fileHandle];
  [fileHandle seekToFileOffset:0];
}

- (void)seekToOffset:(unint64_t)offset
{
  fileHandle = [(DSTextFile *)self fileHandle];
  [fileHandle seekToFileOffset:offset];
}

- (void)resetEnumerator
{
  [(DSTextFile *)self setIsEnumerating:0];
  [(DSTextFile *)self setSkipCount:0];

  [(DSTextFile *)self setCurrentLineIndex:0];
}

- (BOOL)advanceToNextLine:(id *)line
{
  linePositions = [(DSTextFile *)self linePositions];
  v6 = [linePositions count];
  currentLineIndex = [(DSTextFile *)self currentLineIndex];

  if (v6 > currentLineIndex)
  {
    [(DSTextFile *)self seekToOffset:[(DSTextFile *)self getOffsetAtLineIndex:[(DSTextFile *)self currentLineIndex]]];
  }

  linePositions2 = [(DSTextFile *)self linePositions];
  v9 = [linePositions2 count];
  v10 = [(DSTextFile *)self currentLineIndex]+ 1;

  if (v9 <= v10)
  {
    v11 = [(DSTextFile *)self searchForNextLineFromCurrentPosition:line];
  }

  else
  {
    if (line)
    {
      *line = [(DSTextFile *)self extractLine:[(DSTextFile *)self currentLineIndex]];
    }

    v11 = 1;
  }

  [(DSTextFile *)self setCurrentLineIndex:[(DSTextFile *)self currentLineIndex]+ 1];
  return v11;
}

- (unint64_t)getOffsetAtLineIndex:(unint64_t)index
{
  linePositions = [(DSTextFile *)self linePositions];
  v5 = [linePositions objectAtIndex:index];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)extractLine:(unint64_t)line
{
  v5 = [(DSTextFile *)self getOffsetAtLineIndex:?];
  v6 = [(DSTextFile *)self getOffsetAtLineIndex:line + 1]+ ~v5;

  return [(DSTextFile *)self readDataOfLength:v6];
}

- (BOOL)searchForNextLineFromCurrentPosition:(id *)position
{
  if (position)
  {
    v5 = [NSMutableData dataWithCapacity:[(DSTextFile *)self bufferSize]];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = 0;
  while (1)
  {
    v8 = v7;
    v7 = [(DSTextFile *)self readDataOfLength:[(DSTextFile *)self bufferSize]];

    v9 = [v7 length];
    if (!v9)
    {
      break;
    }

    v10 = [v7 length];
    lineBreak = [(DSTextFile *)self lineBreak];
    v12 = [v7 rangeOfData:lineBreak options:0 range:{0, v10}];

    if (v5 && v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 appendData:v7];
    }

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      currentOffset = [(DSTextFile *)self currentOffset];
      v14 = &v12[currentOffset] - [v7 length];
      if (position && v12)
      {
        v15 = [v7 subdataWithRange:{0, v12}];
        [v5 appendData:v15];
      }

      linePositions = [(DSTextFile *)self linePositions];
      v17 = [NSNumber numberWithUnsignedLongLong:v14 + 1];
      [linePositions addObject:v17];

      goto LABEL_17;
    }
  }

  if (v5 && [v7 length])
  {
    [v5 appendData:v7];
  }

LABEL_17:

  objc_autoreleasePoolPop(v6);
  if (position)
  {
    v18 = v5;
    *position = v5;
  }

  return v9 != 0;
}

- (void)initWithFilePath:(uint64_t)a1 withBufferSize:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to init handle for file at path %@", &v2, 0xCu);
}

@end