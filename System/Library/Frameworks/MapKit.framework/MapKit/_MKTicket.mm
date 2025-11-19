@interface _MKTicket
- (MKMapItemIdentifier)mapItemIdentifierForSpotlight;
- (NSString)description;
- (_MKTicket)initWithTicket:(id)a3;
- (void)submitWithHandler:(id)a3 timeout:(int64_t)a4 queue:(id)a5 networkActivity:(id)a6;
- (void)submitWithRefinedHandler:(id)a3 timeout:(int64_t)a4 networkActivity:(id)a5;
@end

@implementation _MKTicket

- (MKMapItemIdentifier)mapItemIdentifierForSpotlight
{
  v2 = [(GEOMapServiceTicket *)self->_ticket geoMapItemIdentifierForSpotlight];
  if (v2)
  {
    v3 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)submitWithHandler:(id)a3 timeout:(int64_t)a4 queue:(id)a5 networkActivity:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    ticket = self->_ticket;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke;
    v14[3] = &unk_1E76CAA98;
    v14[4] = self;
    v15 = v11;
    v16 = v10;
    [(GEOMapServiceTicket *)ticket submitWithHandler:v14 timeout:a4 networkActivity:a6];
  }
}

- (void)submitWithRefinedHandler:(id)a3 timeout:(int64_t)a4 networkActivity:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    ticket = self->_ticket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke;
    v11[3] = &unk_1E76C8440;
    v11[4] = self;
    v12 = v8;
    [(GEOMapServiceTicket *)ticket submitWithRefinedHandler:v11 timeout:a4 networkActivity:a5];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _MKTicket;
  v4 = [(_MKTicket *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@", v4, self->_ticket];

  return v5;
}

- (_MKTicket)initWithTicket:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _MKTicket;
  v6 = [(_MKTicket *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, a3);
    v8 = v7;
  }

  return v7;
}

@end