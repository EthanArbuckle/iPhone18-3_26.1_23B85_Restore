@interface MTLAirEntry
- (MTLAirEntry)initWithData:(id)data;
- (MTLAirEntry)initWithData:(id)data bitcode:(id)bitcode airScript:(id)script;
- (void)dealloc;
- (void)setLinkedBitcodes:(id)bitcodes;
@end

@implementation MTLAirEntry

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

  v5.receiver = self;
  v5.super_class = MTLAirEntry;
  [(MTLAirEntry *)&v5 dealloc];
}

- (MTLAirEntry)initWithData:(id)data bitcode:(id)bitcode airScript:(id)script
{
  v10.receiver = self;
  v10.super_class = MTLAirEntry;
  v8 = [(MTLAirEntry *)&v10 init];
  if (v8)
  {
    dispatch_retain(data);
    if (bitcode)
    {
      dispatch_retain(bitcode);
    }

    dispatch_retain(script);
    v8->_data = data;
    v8->_bitcode = bitcode;
    v8->_airScript = script;
    v8->_linkedBitcodes = 0;
  }

  return v8;
}

- (MTLAirEntry)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = MTLAirEntry;
  v4 = [(MTLAirEntry *)&v6 init];
  if (v4)
  {
    dispatch_retain(data);
    v4->_data = data;
    v4->_bitcode = 0;
    v4->_airScript = 0;
    v4->_linkedBitcodes = 0;
  }

  return v4;
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