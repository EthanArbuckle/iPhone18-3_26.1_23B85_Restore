@interface ContactCellItem
- (ContactCellItem)initWithType:(unint64_t)a3 editable:(BOOL)a4 required:(BOOL)a5;
@end

@implementation ContactCellItem

- (ContactCellItem)initWithType:(unint64_t)a3 editable:(BOOL)a4 required:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = ContactCellItem;
  result = [(ContactCellItem *)&v9 init];
  if (result)
  {
    result->_type = a3;
    result->_editable = a4;
    result->_required = a5;
  }

  return result;
}

@end