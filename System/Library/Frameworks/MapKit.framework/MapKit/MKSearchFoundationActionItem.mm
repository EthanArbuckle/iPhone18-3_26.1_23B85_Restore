@interface MKSearchFoundationActionItem
+ (id)defaultActionItemDestinationMapItemData:(id)a3 mapItem:(id)a4;
@end

@implementation MKSearchFoundationActionItem

+ (id)defaultActionItemDestinationMapItemData:(id)a3 mapItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MKSearchFoundationActionItem);
  v8 = [v6 _messageID];

  v9 = v8 == 0;
  if (v8)
  {
    v10 = [v6 _messageID];
    [(SFActionItem *)v7 setMessageIdentifier:v10];

    v11 = MEMORY[0x1E695DFF8];
    v12 = [v6 _messageURLString];
    v13 = [v11 URLWithString:v12];
    [(SFActionItem *)v7 setMessageURL:v13];
  }

  if ([v6 _isStandAloneBrand])
  {
    v14 = [v6 phoneNumber];
  }

  else
  {
    if (v5 && [v6 _canGetDirections])
    {
      [(SFActionItem *)v7 setMapsData:v5];
    }

    else
    {
      v9 = 1;
    }

    v14 = [v6 phoneNumber];

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (v14)
  {
    v15 = [v6 phoneNumber];
    [(SFActionItem *)v7 setPhoneNumber:v15];
  }

LABEL_12:

  return v7;
}

@end