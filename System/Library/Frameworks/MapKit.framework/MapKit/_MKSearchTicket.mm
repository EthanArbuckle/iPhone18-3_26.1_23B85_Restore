@interface _MKSearchTicket
- (_MKSearchTicket)initWithSearchTicket:(id)ticket;
@end

@implementation _MKSearchTicket

- (_MKSearchTicket)initWithSearchTicket:(id)ticket
{
  v4.receiver = self;
  v4.super_class = _MKSearchTicket;
  return [(_MKTicket *)&v4 initWithTicket:ticket];
}

@end