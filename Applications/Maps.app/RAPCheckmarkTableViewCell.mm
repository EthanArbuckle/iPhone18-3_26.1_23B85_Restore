@interface RAPCheckmarkTableViewCell
- (RAPCheckmarkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setChecked:(BOOL)checked;
@end

@implementation RAPCheckmarkTableViewCell

- (void)setChecked:(BOOL)checked
{
  if (self->_checked != checked)
  {
    self->_checked = checked;
    if (checked)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    [(RAPCheckmarkTableViewCell *)self setAccessoryType:v3];
  }
}

- (RAPCheckmarkTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = RAPCheckmarkTableViewCell;
  result = [(RAPSingleLineTableViewCell *)&v5 initWithStyle:style reuseIdentifier:identifier];
  if (result)
  {
    result->_checked = 0;
  }

  return result;
}

@end