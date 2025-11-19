@interface NEIKEv2TransportClient
- (id)description;
@end

@implementation NEIKEv2TransportClient

- (id)description
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    v5 = objc_getProperty(self, v3, 8, 1);
    v7 = objc_getProperty(self, v6, 16, 1);
    self = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  v8 = [v4 initWithFormat:@"[NEIKEv2TransportClient %@-%@ %@]", v5, v7, self];

  return v8;
}

@end