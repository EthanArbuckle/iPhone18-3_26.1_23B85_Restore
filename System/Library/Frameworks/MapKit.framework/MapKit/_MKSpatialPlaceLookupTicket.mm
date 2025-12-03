@interface _MKSpatialPlaceLookupTicket
- (_MKSpatialPlaceLookupTicket)initWithTicket:(id)ticket;
- (void)submitWithHandler:(id)handler queue:(id)queue;
@end

@implementation _MKSpatialPlaceLookupTicket

- (void)submitWithHandler:(id)handler queue:(id)queue
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    spatialPlaceLookupTicket = self->_spatialPlaceLookupTicket;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55___MKSpatialPlaceLookupTicket_submitWithHandler_queue___block_invoke;
    v9[3] = &unk_1E76C8530;
    v9[4] = self;
    v10 = handlerCopy;
    [(GEOMapServiceSpatialPlaceLookupTicket *)spatialPlaceLookupTicket submitWithHandler:v9 queue:queue];
  }
}

- (_MKSpatialPlaceLookupTicket)initWithTicket:(id)ticket
{
  ticketCopy = ticket;
  v9.receiver = self;
  v9.super_class = _MKSpatialPlaceLookupTicket;
  v6 = [(_MKSpatialPlaceLookupTicket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spatialPlaceLookupTicket, ticket);
  }

  return v7;
}

@end