@interface MTMonogramConfig
+ (id)monogramWithURL:(id)a3;
- (CGSize)size;
- (MTMonogramConfig)initWithURL:(id)a3;
- (NSString)formattedValue;
- (double)floatForKey:(id)a3 fromURL:(id)a4;
- (id)numberFormatter;
- (id)valueForKey:(id)a3 fromURL:(id)a4;
@end

@implementation MTMonogramConfig

+ (id)monogramWithURL:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithURL:v3];

  return v4;
}

- (MTMonogramConfig)initWithURL:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MTMonogramConfig;
  v5 = [(MTMonogramConfig *)&v21 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = [(MTMonogramConfig *)v5 initalsFromURL:v4];
  if (v7)
  {
    [(MTMonogramConfig *)v6 setValue:v7];
    v8 = 1;
  }

  else
  {
    v9 = [(MTMonogramConfig *)v6 nameFromURL:v4];
    [(MTMonogramConfig *)v6 setValue:v9];

    v8 = 0;
  }

  [(MTMonogramConfig *)v6 setType:v8];
  [(MTMonogramConfig *)v6 widthFromURL:v4];
  v11 = v10;
  [(MTMonogramConfig *)v6 heightFromURL:v4];
  [(MTMonogramConfig *)v6 setSize:v11, v12];
  v13 = [(MTMonogramConfig *)v6 value];
  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = v13;
  v15 = [(MTMonogramConfig *)v6 value];
  if (![v15 length] || (-[MTMonogramConfig size](v6, "size"), v16 <= 0.0))
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

- (double)floatForKey:(id)a3 fromURL:(id)a4
{
  v5 = [(MTMonogramConfig *)self valueForKey:a3 fromURL:a4];
  v6 = [(MTMonogramConfig *)self numberFormatter];
  v7 = [v6 numberFromString:v5];
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

- (id)valueForKey:(id)a3 fromURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSURLComponents alloc] initWithURL:v6 resolvingAgainstBaseURL:0];
  v8 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v7 queryItems];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 value];
        v16 = [v14 name];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [v8 objectForKeyedSubscript:v5];

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
    v3 = [(MTMonogramConfig *)self value];
  }

  else
  {
    v4 = [(MTMonogramConfig *)self value];
    v5 = [CNContact contactWithDisplayName:v4 emailOrPhoneNumber:0];

    v3 = [CNContactFormatter stringFromContact:v5 style:1002];
  }

  return v3;
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