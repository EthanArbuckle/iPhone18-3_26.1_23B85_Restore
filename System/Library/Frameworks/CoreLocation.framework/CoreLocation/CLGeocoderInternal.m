@interface CLGeocoderInternal
- (CLGeocoderInternal)init;
- (void)dealloc;
@end

@implementation CLGeocoderInternal

- (CLGeocoderInternal)init
{
  v4.receiver = self;
  v4.super_class = CLGeocoderInternal;
  v2 = [(CLGeocoderInternal *)&v4 init];
  if (v2)
  {
    v2->_responseSilo = [MEMORY[0x1E69AD380] main];
    v2->_queue = dispatch_queue_create("CLGeocoder", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_queue);

  self->_responseSilo = 0;
  v3.receiver = self;
  v3.super_class = CLGeocoderInternal;
  [(CLGeocoderInternal *)&v3 dealloc];
}

@end