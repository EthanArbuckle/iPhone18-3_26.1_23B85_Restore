@interface MTLBinaryEntry
- (MTLBinaryEntry)initWithData:(id)a3 binaryPosition:(unint64_t)a4;
- (MTLBinaryEntry)initWithData:(id)a3 importedSymbols:(id)a4 importedLibraries:(id)a5;
- (MTLBinaryEntry)initWithData:(id)a3 reflectionBlock:(id)a4;
- (MTLBinaryEntry)initWithData:(id)a3 reflectionBlock:(id)a4 binaryPosition:(unint64_t)a5;
- (id)description;
- (void)addReflectionWithData:(id)a3 flag:(int)a4;
- (void)dealloc;
- (void)internalInitWithData:(id)a3 reflectionBlock:(id)a4 binaryPosition:(unint64_t)a5;
- (void)setAirScript:(id)a3;
- (void)setBitcode:(id)a3;
- (void)setLinkedBitcodes:(id)a3;
@end

@implementation MTLBinaryEntry

- (void)dealloc
{
  dispatch_release(self->_data);
  bitcode = self->_bitcode;
  if (bitcode)
  {
    dispatch_release(bitcode);
  }

  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  reflectionBlock = self->_reflectionBlock;
  if (reflectionBlock)
  {
    dispatch_release(reflectionBlock);
  }

  v6.receiver = self;
  v6.super_class = MTLBinaryEntry;
  [(MTLBinaryEntry *)&v6 dealloc];
}

- (MTLBinaryEntry)initWithData:(id)a3 importedSymbols:(id)a4 importedLibraries:(id)a5
{
  v13.receiver = self;
  v13.super_class = MTLBinaryEntry;
  v8 = [(MTLBinaryEntry *)&v13 init];
  if (v8)
  {
    dispatch_retain(a3);
    v8->_data = a3;
    v9 = MEMORY[0x1E695E0F0];
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    v8->_importedSymbols = v10;
    if (a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = v9;
    }

    v8->_importedLibraries = v11;
    v8->_bitcode = 0;
    v8->_airScript = 0;
    v8->_linkedBitcodes = 0;
    v8->_binaryPosition = 0xFFFFFFFFLL;
  }

  return v8;
}

- (MTLBinaryEntry)initWithData:(id)a3 binaryPosition:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = MTLBinaryEntry;
  v6 = [(MTLBinaryEntry *)&v9 init];
  if (v6)
  {
    dispatch_retain(a3);
    v6->_data = a3;
    v7 = MEMORY[0x1E695E0F0];
    v6->_importedSymbols = MEMORY[0x1E695E0F0];
    v6->_importedLibraries = v7;
    v6->_bitcode = 0;
    v6->_airScript = 0;
    v6->_binaryPosition = a4;
    v6->_linkedBitcodes = 0;
  }

  return v6;
}

- (void)internalInitWithData:(id)a3 reflectionBlock:(id)a4 binaryPosition:(unint64_t)a5
{
  self->_reflectionFlags = 0;
  dispatch_retain(a3);
  self->_data = a3;
  if (a4)
  {
    self->_reflectionBlock = a4;
    dispatch_retain(a4);
    self->_reflectionFlags = MTLGetReflectionFlags(a4);
  }

  self->_binaryPosition = a5;
  *&self->_importedLibraries = 0u;
  *&self->_linkedBitcodes = 0u;
  self->_airScript = 0;
}

- (MTLBinaryEntry)initWithData:(id)a3 reflectionBlock:(id)a4 binaryPosition:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = MTLBinaryEntry;
  v8 = [(MTLBinaryEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTLBinaryEntry *)v8 internalInitWithData:a3 reflectionBlock:a4 binaryPosition:a5];
  }

  return v9;
}

- (MTLBinaryEntry)initWithData:(id)a3 reflectionBlock:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTLBinaryEntry;
  v6 = [(MTLBinaryEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTLBinaryEntry *)v6 internalInitWithData:a3 reflectionBlock:a4 binaryPosition:0xFFFFFFFFLL];
  }

  return v7;
}

- (void)addReflectionWithData:(id)a3 flag:(int)a4
{
  v5 = MTLNewReflectionBlock(self->_reflectionBlock, a3, a4);
  reflectionBlock = self->_reflectionBlock;
  if (reflectionBlock)
  {
    dispatch_release(reflectionBlock);
  }

  self->_reflectionBlock = v5;
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = MTLBinaryEntry;
  v3 = [(MTLBinaryEntry *)&v5 description];
  return [v3 stringByAppendingFormat:@" (%lu bytes)", dispatch_data_get_size(self->_data)];
}

- (void)setBitcode:(id)a3
{
  bitcode = self->_bitcode;
  if (bitcode)
  {
    dispatch_release(bitcode);
  }

  self->_bitcode = a3;

  dispatch_retain(a3);
}

- (void)setAirScript:(id)a3
{
  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  self->_airScript = a3;

  dispatch_retain(a3);
}

- (void)setLinkedBitcodes:(id)a3
{
  linkedBitcodes = self->_linkedBitcodes;
  if (linkedBitcodes)
  {
    v6 = a3;

    a3 = v6;
  }

  self->_linkedBitcodes = a3;

  v5 = a3;
}

@end