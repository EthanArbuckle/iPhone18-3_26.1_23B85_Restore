@interface _MKTicket
- (MKMapItemIdentifier)mapItemIdentifierForSpotlight;
- (NSString)description;
- (_MKTicket)initWithTicket:(id)ticket;
- (void)submitWithHandler:(id)handler timeout:(int64_t)timeout queue:(id)queue networkActivity:(id)activity;
- (void)submitWithRefinedHandler:(id)handler timeout:(int64_t)timeout networkActivity:(id)activity;
@end

@implementation _MKTicket

- (MKMapItemIdentifier)mapItemIdentifierForSpotlight
{
  geoMapItemIdentifierForSpotlight = [(GEOMapServiceTicket *)self->_ticket geoMapItemIdentifierForSpotlight];
  if (geoMapItemIdentifierForSpotlight)
  {
    v3 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:geoMapItemIdentifierForSpotlight];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)submitWithHandler:(id)handler timeout:(int64_t)timeout queue:(id)queue networkActivity:(id)activity
{
  handlerCopy = handler;
  queueCopy = queue;
  v12 = queueCopy;
  if (handlerCopy)
  {
    ticket = self->_ticket;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61___MKTicket_submitWithHandler_timeout_queue_networkActivity___block_invoke;
    v14[3] = &unk_1E76CAA98;
    v14[4] = self;
    v15 = queueCopy;
    v16 = handlerCopy;
    [(GEOMapServiceTicket *)ticket submitWithHandler:v14 timeout:timeout networkActivity:activity];
  }
}

- (void)submitWithRefinedHandler:(id)handler timeout:(int64_t)timeout networkActivity:(id)activity
{
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlerCopy)
  {
    ticket = self->_ticket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62___MKTicket_submitWithRefinedHandler_timeout_networkActivity___block_invoke;
    v11[3] = &unk_1E76C8440;
    v11[4] = self;
    v12 = handlerCopy;
    [(GEOMapServiceTicket *)ticket submitWithRefinedHandler:v11 timeout:timeout networkActivity:activity];
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

- (_MKTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v10.receiver = self;
  v10.super_class = _MKTicket;
  v6 = [(_MKTicket *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ticket, ticket);
    v8 = v7;
  }

  return v7;
}

@end