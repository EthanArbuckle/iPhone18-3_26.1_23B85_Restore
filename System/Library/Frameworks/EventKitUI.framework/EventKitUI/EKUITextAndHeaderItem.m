@interface EKUITextAndHeaderItem
+ (EKUITextAndHeaderItem)itemWithText:(id)a3 andHeader:(id)a4;
- (EKUITextAndHeaderItem)initWithDictionary:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation EKUITextAndHeaderItem

- (EKUITextAndHeaderItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EKUITextAndHeaderItem;
  v5 = [(EKUITextAndHeaderItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 objectForKeyedSubscript:@"header"];
    header = v5->_header;
    v5->_header = v8;

    v10 = [v4 objectForKeyedSubscript:@"lines"];
    v11 = [v10 integerValue];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v5->_lines = v12;
  }

  return v5;
}

+ (EKUITextAndHeaderItem)itemWithText:(id)a3 andHeader:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setText:v6];

  [v7 setHeader:v5];
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