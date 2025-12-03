@interface MKSearchFoundationActionItem
+ (id)defaultActionItemDestinationMapItemData:(id)data mapItem:(id)item;
@end

@implementation MKSearchFoundationActionItem

+ (id)defaultActionItemDestinationMapItemData:(id)data mapItem:(id)item
{
  dataCopy = data;
  itemCopy = item;
  v7 = objc_alloc_init(MKSearchFoundationActionItem);
  _messageID = [itemCopy _messageID];

  v9 = _messageID == 0;
  if (_messageID)
  {
    _messageID2 = [itemCopy _messageID];
    [(SFActionItem *)v7 setMessageIdentifier:_messageID2];

    v11 = MEMORY[0x1E695DFF8];
    _messageURLString = [itemCopy _messageURLString];
    v13 = [v11 URLWithString:_messageURLString];
    [(SFActionItem *)v7 setMessageURL:v13];
  }

  if ([itemCopy _isStandAloneBrand])
  {
    phoneNumber = [itemCopy phoneNumber];
  }

  else
  {
    if (dataCopy && [itemCopy _canGetDirections])
    {
      [(SFActionItem *)v7 setMapsData:dataCopy];
    }

    else
    {
      v9 = 1;
    }

    phoneNumber = [itemCopy phoneNumber];

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (phoneNumber)
  {
    phoneNumber2 = [itemCopy phoneNumber];
    [(SFActionItem *)v7 setPhoneNumber:phoneNumber2];
  }

LABEL_12:

  return v7;
}

@end