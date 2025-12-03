@interface _MKContactPlaceItem
+ (id)placeItemWithMapItem:(id)item contact:(id)contact options:(unint64_t)options;
- (NSString)name;
@end

@implementation _MKContactPlaceItem

+ (id)placeItemWithMapItem:(id)item contact:(id)contact options:(unint64_t)options
{
  itemCopy = item;
  contactCopy = contact;
  v11 = objc_alloc_init(self);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 1, item);
    objc_storeStrong(v12 + 2, contact);
    v12[3] = options;
  }

  return v12;
}

- (NSString)name
{
  contact = self->_contact;
  if (contact)
  {
    nickname = [(CNContact *)contact nickname];
    if ([nickname length])
    {
      v5 = nickname;
    }

    else
    {
      v5 = [MEMORY[0x1E695CD80] stringFromContact:self->_contact style:0];
    }

    name = v5;
    if ([v5 length])
    {

      goto LABEL_9;
    }
  }

  name = [(MKMapItem *)self->_mapItem name];
LABEL_9:

  return name;
}

@end