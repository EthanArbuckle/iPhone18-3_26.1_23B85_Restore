@interface CBEditableTableCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CBEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation CBEditableTableCell

- (CBEditableTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v6.receiver = self;
  v6.super_class = CBEditableTableCell;
  result = [(CBEditableTableCell *)&v6 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  if (result)
  {
    result->_characterLimit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = length + location;
  v12 = [v9 text];
  v13 = [v12 length];

  if (v11 <= v13)
  {
    v15 = [v9 text];
    v16 = [v15 length];
    v17 = &v16[[v10 length] - length];

    v14 = v17 <= [(CBEditableTableCell *)self characterLimit];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end