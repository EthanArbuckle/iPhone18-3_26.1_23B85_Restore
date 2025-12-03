@interface CBEditableTableCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CBEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation CBEditableTableCell

- (CBEditableTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = CBEditableTableCell;
  result = [(CBEditableTableCell *)&v6 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (result)
  {
    result->_characterLimit = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  v11 = length + location;
  text = [fieldCopy text];
  v13 = [text length];

  if (v11 <= v13)
  {
    text2 = [fieldCopy text];
    v16 = [text2 length];
    v17 = &v16[[stringCopy length] - length];

    v14 = v17 <= [(CBEditableTableCell *)self characterLimit];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end