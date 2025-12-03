@interface MKPlaceItemActionDataProvider
- (BOOL)canShowCallAction;
- (BOOL)supportsMessagesForBusiness;
- (CNContact)contact;
- (id)messagesForBusinessURL;
- (void)updateWithPlaceItem:(id)item options:(unint64_t)options;
@end

@implementation MKPlaceItemActionDataProvider

- (CNContact)contact
{
  contact = [(_MKPlaceItem *)self->_placeItem contact];
  v4 = contact;
  if (contact)
  {
    _placeCardContact = contact;
  }

  else
  {
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    _placeCardContact = [mapItem _placeCardContact];
  }

  return _placeCardContact;
}

- (BOOL)canShowCallAction
{
  contact = [(MKPlaceItemActionDataProvider *)self contact];
  phoneNumbers = [contact phoneNumbers];
  if ([phoneNumbers count])
  {
    placeItem = [(MKPlaceItemActionDataProvider *)self placeItem];
    v6 = ([placeItem options] & 8) == 0;
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
    mapItem = [(MKPlaceItemActionDataProvider *)self mapItem];
    _messageURLString = [mapItem _messageURLString];
    v6 = [v3 URLWithString:_messageURLString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsMessagesForBusiness
{
  mapItem = [(MKPlaceItemActionDataProvider *)self mapItem];
  _messageURLString = [mapItem _messageURLString];
  v4 = [_messageURLString length] != 0;

  return v4;
}

- (void)updateWithPlaceItem:(id)item options:(unint64_t)options
{
  itemCopy = item;
  if (*&self->_placeItem != __PAIR128__(options, itemCopy))
  {
    v8 = itemCopy;
    objc_storeStrong(&self->_placeItem, item);
    self->_options = options;
    [(MKPlaceItemActionDataProvider *)self _placeItemDidUpdate];
    itemCopy = v8;
  }
}

@end