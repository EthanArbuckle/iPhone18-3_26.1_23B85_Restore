@interface _MKContactPlaceItem
+ (id)placeItemWithMapItem:(id)a3 contact:(id)a4 options:(unint64_t)a5;
- (NSString)name;
@end

@implementation _MKContactPlaceItem

+ (id)placeItemWithMapItem:(id)a3 contact:(id)a4 options:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(a1);
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 1, a3);
    objc_storeStrong(v12 + 2, a4);
    v12[3] = a5;
  }

  return v12;
}

- (NSString)name
{
  contact = self->_contact;
  if (contact)
  {
    v4 = [(CNContact *)contact nickname];
    if ([v4 length])
    {
      v5 = v4;
    }

    else
    {
      v5 = [MEMORY[0x1E695CD80] stringFromContact:self->_contact style:0];
    }

    v6 = v5;
    if ([v5 length])
    {

      goto LABEL_9;
    }
  }

  v6 = [(MKMapItem *)self->_mapItem name];
LABEL_9:

  return v6;
}

@end