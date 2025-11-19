@interface MKPlaceItemActionDataProvider
- (BOOL)canShowCallAction;
- (BOOL)supportsMessagesForBusiness;
- (CNContact)contact;
- (id)messagesForBusinessURL;
- (void)updateWithPlaceItem:(id)a3 options:(unint64_t)a4;
@end

@implementation MKPlaceItemActionDataProvider

- (CNContact)contact
{
  v3 = [(_MKPlaceItem *)self->_placeItem contact];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v5 = [v6 _placeCardContact];
  }

  return v5;
}

- (BOOL)canShowCallAction
{
  v3 = [(MKPlaceItemActionDataProvider *)self contact];
  v4 = [v3 phoneNumbers];
  if ([v4 count])
  {
    v5 = [(MKPlaceItemActionDataProvider *)self placeItem];
    v6 = ([v5 options] & 8) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)messagesForBusinessURL
{
  if ([(MKPlaceItemActionDataProvider *)self supportsMessagesForBusiness])
  {
    v3 = MEMORY[0x1E695DFF8];
    v4 = [(MKPlaceItemActionDataProvider *)self mapItem];
    v5 = [v4 _messageURLString];
    v6 = [v3 URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsMessagesForBusiness
{
  v2 = [(MKPlaceItemActionDataProvider *)self mapItem];
  v3 = [v2 _messageURLString];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)updateWithPlaceItem:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  if (*&self->_placeItem != __PAIR128__(a4, v7))
  {
    v8 = v7;
    objc_storeStrong(&self->_placeItem, a3);
    self->_options = a4;
    [(MKPlaceItemActionDataProvider *)self _placeItemDidUpdate];
    v7 = v8;
  }
}

@end