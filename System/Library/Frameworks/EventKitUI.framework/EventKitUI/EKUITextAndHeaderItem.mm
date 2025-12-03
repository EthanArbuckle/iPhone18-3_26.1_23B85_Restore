@interface EKUITextAndHeaderItem
+ (EKUITextAndHeaderItem)itemWithText:(id)text andHeader:(id)header;
- (EKUITextAndHeaderItem)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation EKUITextAndHeaderItem

- (EKUITextAndHeaderItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = EKUITextAndHeaderItem;
  v5 = [(EKUITextAndHeaderItem *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"header"];
    header = v5->_header;
    v5->_header = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"lines"];
    integerValue = [v10 integerValue];
    if (integerValue <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = integerValue;
    }

    v5->_lines = v12;
  }

  return v5;
}

+ (EKUITextAndHeaderItem)itemWithText:(id)text andHeader:(id)header
{
  headerCopy = header;
  textCopy = text;
  v7 = objc_opt_new();
  [v7 setText:textCopy];

  [v7 setHeader:headerCopy];
  [v7 setLines:1];

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = v3;
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKeyedSubscript:@"text"];
  }

  header = self->_header;
  if (header)
  {
    [v4 setObject:header forKeyedSubscript:@"header"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_lines];
  [v4 setObject:v7 forKeyedSubscript:@"lines"];

  v8 = [v4 copy];

  return v8;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = EKUITextAndHeaderItem;
  v3 = [(EKUITextAndHeaderItem *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"%@ text: %@ header: %@ lines: %d", v3, self->_text, self->_header, self->_lines];

  return v4;
}

@end