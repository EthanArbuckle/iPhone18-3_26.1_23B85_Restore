@interface _MKSearchTicket
- (_MKSearchTicket)initWithSearchTicket:(id)a3;
@end

@implementation _MKSearchTicket

- (_MKSearchTicket)initWithSearchTicket:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKSearchTicket;
  return [(_MKTicket *)&v4 initWithTicket:a3];
}

@end