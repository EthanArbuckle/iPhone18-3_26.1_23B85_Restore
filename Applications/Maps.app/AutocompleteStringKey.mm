@interface AutocompleteStringKey
- (AutocompleteStringKey)initWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation AutocompleteStringKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NSString *)self->_string isEqualToString:v5->_string];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AutocompleteStringKey)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AutocompleteStringKey;
  v5 = [(AutocompleteStringKey *)&v9 init];
  if (v5)
  {
    v6 = [v4 lowercaseString];
    string = v5->_string;
    v5->_string = v6;
  }

  return v5;
}

@end