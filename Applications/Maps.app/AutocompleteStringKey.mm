@interface AutocompleteStringKey
- (AutocompleteStringKey)initWithString:(id)string;
- (BOOL)isEqual:(id)equal;
@end

@implementation AutocompleteStringKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NSString *)self->_string isEqualToString:v5->_string];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AutocompleteStringKey)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = AutocompleteStringKey;
  v5 = [(AutocompleteStringKey *)&v9 init];
  if (v5)
  {
    lowercaseString = [stringCopy lowercaseString];
    string = v5->_string;
    v5->_string = lowercaseString;
  }

  return v5;
}

@end