@interface MTLAirEntry
- (MTLAirEntry)initWithData:(id)a3;
- (MTLAirEntry)initWithData:(id)a3 bitcode:(id)a4 airScript:(id)a5;
- (void)dealloc;
- (void)setLinkedBitcodes:(id)a3;
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

- (MTLAirEntry)initWithData:(id)a3 bitcode:(id)a4 airScript:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLAirEntry;
  v8 = [(MTLAirEntry *)&v10 init];
  if (v8)
  {
    dispatch_retain(a3);
    if (a4)
    {
      dispatch_retain(a4);
    }

    dispatch_retain(a5);
    v8->_data = a3;
    v8->_bitcode = a4;
    v8->_airScript = a5;
    v8->_linkedBitcodes = 0;
  }

  return v8;
}

- (MTLAirEntry)initWithData:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLAirEntry;
  v4 = [(MTLAirEntry *)&v6 init];
  if (v4)
  {
    dispatch_retain(a3);
    v4->_data = a3;
    v4->_bitcode = 0;
    v4->_airScript = 0;
    v4->_linkedBitcodes = 0;
  }

  return v4;
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