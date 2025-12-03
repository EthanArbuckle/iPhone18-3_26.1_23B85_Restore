@interface MTLBinaryEntry
- (MTLBinaryEntry)initWithData:(id)data binaryPosition:(unint64_t)position;
- (MTLBinaryEntry)initWithData:(id)data importedSymbols:(id)symbols importedLibraries:(id)libraries;
- (MTLBinaryEntry)initWithData:(id)data reflectionBlock:(id)block;
- (MTLBinaryEntry)initWithData:(id)data reflectionBlock:(id)block binaryPosition:(unint64_t)position;
- (id)description;
- (void)addReflectionWithData:(id)data flag:(int)flag;
- (void)dealloc;
- (void)internalInitWithData:(id)data reflectionBlock:(id)block binaryPosition:(unint64_t)position;
- (void)setAirScript:(id)script;
- (void)setBitcode:(id)bitcode;
- (void)setLinkedBitcodes:(id)bitcodes;
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

- (MTLBinaryEntry)initWithData:(id)data importedSymbols:(id)symbols importedLibraries:(id)libraries
{
  v13.receiver = self;
  v13.super_class = MTLBinaryEntry;
  v8 = [(MTLBinaryEntry *)&v13 init];
  if (v8)
  {
    dispatch_retain(data);
    v8->_data = data;
    v9 = MEMORY[0x1E695E0F0];
    if (symbols)
    {
      symbolsCopy = symbols;
    }

    else
    {
      symbolsCopy = MEMORY[0x1E695E0F0];
    }

    v8->_importedSymbols = symbolsCopy;
    if (libraries)
    {
      librariesCopy = libraries;
    }

    else
    {
      librariesCopy = v9;
    }

    v8->_importedLibraries = librariesCopy;
    v8->_bitcode = 0;
    v8->_airScript = 0;
    v8->_linkedBitcodes = 0;
    v8->_binaryPosition = 0xFFFFFFFFLL;
  }

  return v8;
}

- (MTLBinaryEntry)initWithData:(id)data binaryPosition:(unint64_t)position
{
  v9.receiver = self;
  v9.super_class = MTLBinaryEntry;
  v6 = [(MTLBinaryEntry *)&v9 init];
  if (v6)
  {
    dispatch_retain(data);
    v6->_data = data;
    v7 = MEMORY[0x1E695E0F0];
    v6->_importedSymbols = MEMORY[0x1E695E0F0];
    v6->_importedLibraries = v7;
    v6->_bitcode = 0;
    v6->_airScript = 0;
    v6->_binaryPosition = position;
    v6->_linkedBitcodes = 0;
  }

  return v6;
}

- (void)internalInitWithData:(id)data reflectionBlock:(id)block binaryPosition:(unint64_t)position
{
  self->_reflectionFlags = 0;
  dispatch_retain(data);
  self->_data = data;
  if (block)
  {
    self->_reflectionBlock = block;
    dispatch_retain(block);
    self->_reflectionFlags = MTLGetReflectionFlags(block);
  }

  self->_binaryPosition = position;
  *&self->_importedLibraries = 0u;
  *&self->_linkedBitcodes = 0u;
  self->_airScript = 0;
}

- (MTLBinaryEntry)initWithData:(id)data reflectionBlock:(id)block binaryPosition:(unint64_t)position
{
  v11.receiver = self;
  v11.super_class = MTLBinaryEntry;
  v8 = [(MTLBinaryEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTLBinaryEntry *)v8 internalInitWithData:data reflectionBlock:block binaryPosition:position];
  }

  return v9;
}

- (MTLBinaryEntry)initWithData:(id)data reflectionBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = MTLBinaryEntry;
  v6 = [(MTLBinaryEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MTLBinaryEntry *)v6 internalInitWithData:data reflectionBlock:block binaryPosition:0xFFFFFFFFLL];
  }

  return v7;
}

- (void)addReflectionWithData:(id)data flag:(int)flag
{
  v5 = MTLNewReflectionBlock(self->_reflectionBlock, data, flag);
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

- (void)setBitcode:(id)bitcode
{
  bitcode = self->_bitcode;
  if (bitcode)
  {
    dispatch_release(bitcode);
  }

  self->_bitcode = bitcode;

  dispatch_retain(bitcode);
}

- (void)setAirScript:(id)script
{
  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  self->_airScript = script;

  dispatch_retain(script);
}

- (void)setLinkedBitcodes:(id)bitcodes
{
  linkedBitcodes = self->_linkedBitcodes;
  if (linkedBitcodes)
  {
    bitcodesCopy = bitcodes;

    bitcodes = bitcodesCopy;
  }

  self->_linkedBitcodes = bitcodes;

  bitcodesCopy2 = bitcodes;
}

@end