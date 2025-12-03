@interface ContactCellItem
- (ContactCellItem)initWithType:(unint64_t)type editable:(BOOL)editable required:(BOOL)required;
@end

@implementation ContactCellItem

- (ContactCellItem)initWithType:(unint64_t)type editable:(BOOL)editable required:(BOOL)required
{
  v9.receiver = self;
  v9.super_class = ContactCellItem;
  result = [(ContactCellItem *)&v9 init];
  if (result)
  {
    result->_type = type;
    result->_editable = editable;
    result->_required = required;
  }

  return result;
}

@end