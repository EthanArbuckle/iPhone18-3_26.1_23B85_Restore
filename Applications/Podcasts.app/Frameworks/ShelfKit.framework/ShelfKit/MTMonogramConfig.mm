@interface MTMonogramConfig
+ (id)monogramWithURL:(id)l;
- (CGSize)size;
- (MTMonogramConfig)initWithURL:(id)l;
- (NSString)formattedValue;
- (double)floatForKey:(id)key fromURL:(id)l;
- (id)numberFormatter;
- (id)valueForKey:(id)key fromURL:(id)l;
@end

@implementation MTMonogramConfig

+ (id)monogramWithURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(objc_opt_class()) initWithURL:lCopy];

  return v4;
}

- (MTMonogramConfig)initWithURL:(id)l
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = MTMonogramConfig;
  v5 = [(MTMonogramConfig *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [(MTMonogramConfig *)v5 initalsFromURL:lCopy];
  if (v7)
  {
    [(MTMonogramConfig *)v6 setValue:v7];
    v8 = 1;
  }

  else
  {
    v9 = [(MTMonogramConfig *)v6 nameFromURL:lCopy];
    [(MTMonogramConfig *)v6 setValue:v9];

    v8 = 0;
  }

  [(MTMonogramConfig *)v6 setType:v8];
  [(MTMonogramConfig *)v6 widthFromURL:lCopy];
  v11 = v10;
  [(MTMonogramConfig *)v6 heightFromURL:lCopy];
  [(MTMonogramConfig *)v6 setSize:v11, v12];
  value = [(MTMonogramConfig *)v6 value];
  if (!value)
  {
    goto LABEL_11;
  }

  v14 = value;
  value2 = [(MTMonogramConfig *)v6 value];
  if (![value2 length] || (-[MTMonogramConfig size](v6, "size"), v16 <= 0.0))
  {

LABEL_11:
    goto LABEL_12;
  }

  [(MTMonogramConfig *)v6 size];
  v18 = v17;

  if (v18 <= 0.0)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v19 = v6;
LABEL_13:

  return v19;
}

- (double)floatForKey:(id)key fromURL:(id)l
{
  v5 = [(MTMonogramConfig *)self valueForKey:key fromURL:l];
  numberFormatter = [(MTMonogramConfig *)self numberFormatter];
  v7 = [numberFormatter numberFromString:v5];
  [v7 doubleValue];
  if (v8 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (id)valueForKey:(id)key fromURL:(id)l
{
  keyCopy = key;
  lCopy = l;
  v7 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  v8 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  queryItems = [v7 queryItems];
  v10 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(queryItems);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        value = [v14 value];
        name = [v14 name];
        [v8 setObject:value forKeyedSubscript:name];
      }

      v11 = [queryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [v8 objectForKeyedSubscript:keyCopy];

  return v17;
}

- (id)numberFormatter
{
  if (numberFormatter_onceToken != -1)
  {
    [MTMonogramConfig numberFormatter];
  }

  v3 = numberFormatter_fmt;

  return v3;
}

void __35__MTMonogramConfig_numberFormatter__block_invoke(id a1)
{
  numberFormatter_fmt = objc_opt_new();

  _objc_release_x1();
}

- (NSString)formattedValue
{
  if ([(MTMonogramConfig *)self type])
  {
    value = [(MTMonogramConfig *)self value];
  }

  else
  {
    value2 = [(MTMonogramConfig *)self value];
    v5 = [CNContact contactWithDisplayName:value2 emailOrPhoneNumber:0];

    value = [CNContactFormatter stringFromContact:v5 style:1002];
  }

  return value;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end